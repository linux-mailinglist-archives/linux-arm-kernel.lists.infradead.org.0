Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7E9B4C2C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 12:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZCrohAO6gIln+iqatiYLsCxjCdu9aI54VpIeLVuGV4=; b=nfU5gm6wwCzQlx
	1q3d5QMMbWBo3TLhtcRHcMXRgHtH8Wf0tfQTIRpMi8hZVS777esW1sK8G0JUqgS9uIU5k+h36PXo2
	oxIyh7zUZc77RN2lRjHUMzKj492L4ad/td4BoA4M39qQIWGSI/nqArMPnE7ptR1f0wpfW6xc8xLOj
	uP+lFDKq3gsBELJT6VSPG7sp34HLCC1eblM0CfyETqOlTdJ9Hd5ghcqLrrNWvgiuzVQgYzILB9Gt2
	2e4/GHn+MlRmqmSv6euHnBc5m/RnJhwKzAE4VnUYZxbduDMO5+Ht6wt3Xnqom1fa7/h8RfY8a42Zo
	AT73IbT2LWPRflJRkA5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAAzM-0000b0-5V; Tue, 17 Sep 2019 10:45:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAAz6-0000aF-Vj
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 10:45:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9309521852;
 Tue, 17 Sep 2019 10:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568717124;
 bh=lRD33XVMU31YDKixMT8vCEatLaoLNEVQy4Wzf/bj7LU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AFxODCLVmBmUj01R26irYPN8YQuPyH1UaOrRml1WD7+1jCwimkkB1M6KsQFFUYhqi
 PRr2K9zMWyVz9E9koZIbr5XJPWVkIzDVPatCfKxXuyECrCN/Y2DUxWQvq1N6KBI1Zv
 /nWXbB5STf9OLjKm5R+/bGAn9MIO+UHk1+LmoYG8=
Date: Tue, 17 Sep 2019 11:45:19 +0100
From: Will Deacon <will@kernel.org>
To: Xogium <contact@xogium.me>
Subject: Re: [breakage] panic() does not halt arm64 systems under certain
 conditions
Message-ID: <20190917104518.ovg6ivadyst7h76o@willie-the-truck>
References: <BX1W47JXPMR8.58IYW53H6M5N@dragonstone>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BX1W47JXPMR8.58IYW53H6M5N@dragonstone>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_034525_046682_AB6CCAE8 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk, mingo@redhat.com,
 bp@alien8.de, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[Expanding CC list; original message is here:
 https://lore.kernel.org/linux-arm-kernel/BX1W47JXPMR8.58IYW53H6M5N@dragonstone/]

On Mon, Sep 16, 2019 at 09:35:36PM -0400, Xogium wrote:
> On arm64 in some situations userspace will continue running even after a
> panic. This means any userspace watchdog daemon will continue pinging,
> that service managers will keep running and displaying messages in certain
> cases, and that it is possible to enter via ssh in the now unstable system
> and to do almost anything except reboot/power off and etc. If
> CONFIG_PREEMPT=n is set in the kernel's configuration, the issue is fixed.
> I have reproduced the very same behavior with linux 4.19, 5.2 and 5.3. On
> x86/x86_64 the issue does not seem to be present at all.

I've managed to reproduce this under both 32-bit and 64-bit ARM kernels.
The issue is that the infinite loop at the end of panic() can run with
preemption enabled (particularly when invoking by echoing 'c' to
/proc/sysrq-trigger), so we end up rescheduling user tasks. On x86, this
doesn't happen because smp_send_stop() disables the local APIC in
native_stop_other_cpus() and so interrupts are effectively masked while
spinning.

A straightforward fix is to disable preemption explicitly on the panic()
path (diff below), but I've expanded the cc list to see both what others
think, but also in case smp_send_stop() is supposed to have the side-effect
of disabling interrupt delivery for the local CPU.

Will

--->8

diff --git a/kernel/panic.c b/kernel/panic.c
index 057540b6eee9..02d0de31c42d 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -179,6 +179,7 @@ void panic(const char *fmt, ...)
	 * after setting panic_cpu) from invoking panic() again.
	 */
	local_irq_disable();
+	preempt_disable_notrace();
 
	/*
	 * It's possible to come here directly from a panic-assertion and

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
