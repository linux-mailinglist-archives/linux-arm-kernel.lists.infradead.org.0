Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5137D34968
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkE3IZ5lPNwNzGUbWLB7Y5skmIBEjnfMnYGx1wPrINM=; b=LTRe70P2Yh3quT
	Vvv2aR7BbbgkT8m5W6WKaVkosFslK/m03NDYce+dfUvv1Ci1EVJoY+oXZbE0vfspFP0ragWrL2kAc
	0zeYJpqymRlbTfl1CeYL/pFC37yYt1xCo/XvoBogSKU9YljXsRBlHZlsZWaqBy8K8dh9G0Kl8vGsp
	11z14fev1yAjTjsa75slmJSuXuS/J/0eyfpZo6mF8K//kV8/zBTHR7omYXU15aGH83fO5tyTIQN7o
	PysT8MBB7OLhwkrR8ibPTwfY4x+2FPgxi7RPjuS+is/IkrZ5YIFROWcSKqwdICznS9nEgfYXjDX/+
	ItSJ36rjeQkyVmbjQ5zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9qA-0006o8-Jz; Tue, 04 Jun 2019 13:51:02 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9q2-0006mO-Rg
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 13:50:56 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1hY9pw-0001pl-94; Tue, 04 Jun 2019 15:50:48 +0200
Date: Tue, 4 Jun 2019 15:50:48 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: KVM Arm Device passthrough and linux-rt
Message-ID: <20190604135047.5bwclgkvvr642ucj@linutronix.de>
References: <26832850-37ee-ae07-08ca-cc3e90978867@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <26832850-37ee-ae07-08ca-cc3e90978867@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_065055_031752_76CBD425 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rt-users <linux-rt-users@vger.kernel.org>, julia@ni.com,
 Marc Zyngier <marc.zyngier@arm.com>, Steven Rostedt <rostedt@goodmis.org>,
 kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-06-04 13:58:51 [+0100], Julien Grall wrote:
> Hi,
Hi,

> This is happening because vgic_v2_fold_lr_state() is expected
> to be called with interrupt disabled. However, some of the path
> (e.g eventfd) will take a spinlock.
> 
> The spinlock is from the waitqueue, so using a raw_spin_lock cannot
> even be considered.
> 
> Do you have any input on how this could be solved?

There is swair (init_swait_queue_head() and friends) in case that works
for you.

> Cheers,

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
