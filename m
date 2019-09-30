Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B448BC227D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:53:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cp8XECjWOtqjnxGrM0NxXx4scUaB+9WXTByD4OrH1WY=; b=WZKxbsZH5g2k5I
	Xoqbut3D4Lmfqe0MD6GIaeE3DsfDA/aAlUcGHlXFjx+A6Sd+ouC/m/ionV3SmZ9icaF1aHZJlaFiL
	uxAHwbBFbXZQTHamZrEmzdefdGeN5UoutBFHHLwW/0AZP8TFsoKhoHEM7YSHMS2UOuxnbgeCtKXmU
	/Pno38H1YQrz2UeQmQz53x6SA4q0FJ2cfaZmpLFSYRf6G+ExSYYhKAPoo6Ck9Fft5dFmYaRsnq05y
	MzYeXpYkPtonzjpT6WF4SuG8zsw+gkjiulFrT7kxmZCeWmHks0LV+KlW6lP6QCvUCvo+D8RRwhpMi
	UsQuYoRm+2kradsYfiTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEw7C-0007JW-H0; Mon, 30 Sep 2019 13:53:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEw6y-0007Iq-6Z
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:53:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1FD282086A;
 Mon, 30 Sep 2019 13:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569851591;
 bh=Nhh2vGJB8S4qKF2pVJfJQWMF1IqgVIe1hzK5L13M6BI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ayDenw/bCTAHtwhYp4fyI3E0oMsrHlnzfT9mfM6hSRzUHrL4BkakOVzMHBV97Knxc
 Zlaik0HKfae0TMciZIuhvL7AyGAZ7up6EAMKJ80pazwZceHlMJGjpsVBEOH5cNgU6f
 dC0uBOswbPP26FOOqAhJkQTYyOU5ppiTWyh0ZRX8=
Date: Mon, 30 Sep 2019 14:53:07 +0100
From: Will Deacon <will@kernel.org>
To: Jookia <166291@gmail.com>
Subject: Re: [breakage] panic() does not halt arm64 systems under certain
 conditions
Message-ID: <20190930135306.p5r4sy2bbmq5zxgm@willie-the-truck>
References: <BX1W47JXPMR8.58IYW53H6M5N@dragonstone>
 <20190917104518.ovg6ivadyst7h76o@willie-the-truck>
 <20190920042501.GA5516@novena-choice-citizen-recovery.gateway>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920042501.GA5516@novena-choice-citizen-recovery.gateway>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_065312_264852_53E3028F 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, gregkh@linuxfoundation.org,
 Xogium <contact@xogium.me>, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, mingo@redhat.com, bp@alien8.de, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 02:25:01PM +1000, Jookia wrote:
> On Tue, Sep 17, 2019 at 11:45:19AM +0100, Will Deacon wrote:
> > A straightforward fix is to disable preemption explicitly on the panic()
> > path (diff below), but I've expanded the cc list to see both what others
> > think, but also in case smp_send_stop() is supposed to have the side-effect
> > of disabling interrupt delivery for the local CPU.
> > 
> > diff --git a/kernel/panic.c b/kernel/panic.c
> > index 057540b6eee9..02d0de31c42d 100644
> > --- a/kernel/panic.c
> > +++ b/kernel/panic.c
> > @@ -179,6 +179,7 @@ void panic(const char *fmt, ...)
> > 	 * after setting panic_cpu) from invoking panic() again.
> > 	 */
> > 	local_irq_disable();
> > +	preempt_disable_notrace();
> >  
> > 	/*
> > 	 * It's possible to come here directly from a panic-assertion and
> > 
> When you run with panic=... it will send you to a loop earlier in the
> panic code before local_irq_disable() is hit, working around the bug.
> A patch like this would make the behaviour the same:
> 
> diff --git a/kernel/panic.c b/kernel/panic.c
> index 4d9f55bf7d38..92abbb5f8d38 100644
> --- a/kernel/panic.c
> +++ b/kernel/panic.c
> @@ -331,7 +331,6 @@ void panic(const char *fmt, ...)
> 
>         /* Do not scroll important messages printed above */
>         suppress_printk = 1;
> -       local_irq_enable();
>         for (i = 0; ; i += PANIC_TIMER_STEP) {
>                 touch_softlockup_watchdog();
>                 if (i >= i_next) {

The reason I kept irqs enabled is because I figured they might be useful
for magic sysrq keyboard interrupts (e.g. if you wanted to reboot the box).

With 'panic=', the reboot happens automatically, so there's no issue there
afaict.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
