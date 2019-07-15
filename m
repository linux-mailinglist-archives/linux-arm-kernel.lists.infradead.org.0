Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3E868538
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 10:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbFHkfG0G8Er6BXCjFcp162ERB/feoshGwCeTDNldg0=; b=r3yY1I7nuA4RZY
	Xpci007hUqlh+LLQIJZNFu6z8UsuHfRqjTCxlqMc0TqhjVggOBlWvy4bgHBqAveZo0tAgyaa2UY3z
	Pu2ykYgY6YCdWMNRdLQS91EtIJvbdkbMCxs+HsgRflSQTiMBskrLz4JqxRwGROBqh5xcjummQSx2k
	e+7gN2HzHkDZafHOdExRjpk3GVmk/Fm2b7ExOkGjFE2rd+B7eqUyYqwka1N6x2xlLFhJ7KIgd5QhZ
	c2tgfaostcu3JyRHccrlSQJg53zJtH7sBhyfr1CAOYCdH8zvtvFPrCBl03Auf7xZ1vIw4EgYes/kL
	N/f6FiS4I0JMEadu+Wmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmwMo-0005qD-Gg; Mon, 15 Jul 2019 08:29:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmwMa-0005pN-Gx
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 08:29:37 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94BD3214C6;
 Mon, 15 Jul 2019 08:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563179375;
 bh=ayBD0Y5sJDpKf1w1/YXOS05x9dQwEx5X2dm1cMdrgQQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qFsCo5FmFQ/XW4yNKLK+yYFUVFJ6yeqU2p5lkUuyAzYVD4ZHdej4O8rwdcWywwP99
 8H2G9rLMnYjZ05Wr6oXyOlvOrbSmTaXdMverFo5ceeb8J/arfaBzcQ+EqgQttO5esB
 so4ncBpx/M/Wh1wVM0k00MQjs0oA8obOWWm1OJqA=
Date: Mon, 15 Jul 2019 09:29:30 +0100
From: Will Deacon <will@kernel.org>
To: Changbin Du <changbin.du@gmail.com>
Subject: Re: [PATCH] tracing/fgraph: support recording function return values
Message-ID: <20190715082930.uyxn2kklgw4yri5l@willie-the-truck>
References: <20190713121026.11030-1-changbin.du@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713121026.11030-1-changbin.du@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_012936_578522_90E1DD5C 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: corbet@lwn.net, catalin.marinas@arm.com, x86@kernel.org,
 linux-doc@vger.kernel.org, linux@armlinux.org.uk, rostedt@goodmis.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 13, 2019 at 08:10:26PM +0800, Changbin Du wrote:
> This patch adds a new trace option 'funcgraph-retval' and is disabled by
> default. When this option is enabled, fgraph tracer will show the return
> value of each function. This is useful to find/analyze a original error
> source in a call graph.
> 
> One limitation is that the kernel doesn't know the prototype of functions.
> So fgraph assumes all functions have a retvalue of type int. You must ignore
> the value of *void* function. And if the retvalue looks like an error code
> then both hexadecimal and decimal number are displayed.

This seems like quite a significant drawback and I think it could be pretty
confusing if you have to filter out bogus return values from the trace.

For example, in your snippet:

>  3)               |  kvm_vm_ioctl() {
>  3)               |    mutex_lock() {
>  3)               |      _cond_resched() {
>  3)   0.234 us    |        rcu_all_qs(); /* ret=0x80000000 */
>  3)   0.704 us    |      } /* ret=0x0 */
>  3)   1.226 us    |    } /* ret=0x0 */
>  3)   0.247 us    |    mutex_unlock(); /* ret=0xffff8880738ed040 */

mutex_unlock() is wrongly listed as returning something.

How much of this could be achieved from userspace by placing kretprobes on
non-void functions instead?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
