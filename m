Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC961451E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 10:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lh0zz1ui9A+uc1NHcIzTjX6FcM+S2L27tsFQ1pfoxD8=; b=S15ZEAKtj7td9E
	vUvr2rH4d+1Gl8aXhGIxn+bhC1g+rz5g/HwCPUZ1ATHEH9tP3V5HuAgfbH0cV9RnDlpUOsgNGhWOn
	vWVq0s2lnqNIcifGbXaBdWnBlQOyKLW+cn6X8WB4Z1Rw7YPaGY3oUeMz+R39JZu5pddljcA6Jvlj/
	brTjooSJMDd9CMYOuDjA9FgGS9w2gxLXsmawJQNOx545vH66tMB4lz+oQfFcY6LjlqdoxxQ6SR+3N
	vfakMDshLfgTABWkQn66Jx0ejRk60o1qf3CTHyJEjOTQU5xh9ktCGhnNrRQV3SUIn4QuecUg8fHO4
	x+2r3KsfT4ojjSRJQETw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuClF-0002m1-J6; Wed, 22 Jan 2020 09:57:21 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuCkL-00026Y-Ic; Wed, 22 Jan 2020 09:56:26 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 6C2543060D3;
 Wed, 22 Jan 2020 10:54:43 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id EE68D20983E31; Wed, 22 Jan 2020 10:56:22 +0100 (CET)
Date: Wed, 22 Jan 2020 10:56:22 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v8 5/5] locking/qspinlock: Introduce the shuffle
 reduction optimization into CNA
Message-ID: <20200122095622.GS14914@hirez.programming.kicks-ass.net>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-6-alex.kogan@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191230194042.67789-6-alex.kogan@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, steven.sistare@oracle.com,
 linux-kernel@vger.kernel.org, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 longman@redhat.com, tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 02:40:42PM -0500, Alex Kogan wrote:
> @@ -251,8 +281,11 @@ __always_inline u32 cna_pre_scan(struct qspinlock *lock,
>  	struct cna_node *cn = (struct cna_node *)node;
>  
>  	cn->pre_scan_result =
> -		cn->intra_count == intra_node_handoff_threshold ?
> -			FLUSH_SECONDARY_QUEUE : cna_scan_main_queue(node, node);
> +		(node->locked <= 1 && probably(SHUFFLE_REDUCTION_PROB_ARG)) ?
> +			PASS_LOCK_IMMEDIATELY :
> +			cn->intra_count == intra_node_handoff_threshold ?
> +				FLUSH_SECONDARY_QUEUE :
> +				cna_scan_main_queue(node, node);
>  
>  	return 0;
>  }

Let me just, once again, remind people that the Linux Kernel is not part
of the Obfuscated C code contest.

> Reviewed-by: Steve Sistare <steven.sistare@oracle.com>

Seriously, in what universe is that actually readable code? Steve quick,
say what it does.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
