Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB70B4C43
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 12:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvSYITNvHrEMBS7wvBMynVpmCwRYZp4ZMLZyXlg6EZQ=; b=U8Dok02aLg/x7Q
	5HuOiZogTWjX/pbRmlojbGWrBuLAi+l+axn273ElugGNKlOo0zDO5bYb8H0wQdmNr23LACvHD3Aja
	W/MgrlL/Hoj0leV3YbwrnR64f0CProsiaLVlcIwL5m1bFyaZjSramFLcRUbjqpFlFpSbJzWZk4vGh
	1bDyMGiFDapjKK7KyaIHEQcZYhfz4eg7DUTtdjSRGnS5CQgsennwtKL0mGzway2PfY+sHzg3WuKCd
	UhvCn7QRbiOslWGvzbEOuozEslmtc5nyaCmtfaT/1UZoQvyEepwIhXrTYsNvf991KykLjlX/eIqR8
	SXHocJzjSL8B18+LAXoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAB5T-0002uK-EB; Tue, 17 Sep 2019 10:51:59 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAB5H-0002tn-45
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 10:51:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YvBhNTx9acndDsH+SN+5uYkrouhq19vxVn9ISJJsZvE=; b=rmnd/YbRkfOrFxA1/PCntNm3m
 iG3wU4V0P4NNzEjO9Rj+C/Uoth/6B1fMJlKQB5ADmS/z9gCQ5dgRACubiuf/l10k+RXwwwh+O7k8p
 7Br4j7yQ+jYlDz9cGH4tJtfTqiQXcWRtb/lwtNF1tP7cRmJmxLJbaXCnHn9rJrMK3iMH7wsoen2HF
 zfZw5Xtsiis70nnxfVAE/f++KNt/684ccfSPHigxz6JF/VOB1u8t5SwfiVP/44hfgkWF18x0v4YB1
 /zZ1lUVD8eB39DLKjfD++TrzHTWRZmPBdlFjAtwbozewRIxO1/YoVCYVQS55ZKSp4fDVxkz9IZ/6E
 I7x7lGCIQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40590)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iAB5A-0001DH-4U; Tue, 17 Sep 2019 11:51:40 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iAB56-0001Dc-Do; Tue, 17 Sep 2019 11:51:36 +0100
Date: Tue, 17 Sep 2019 11:51:36 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Will Deacon <will@kernel.org>
Subject: Re: [breakage] panic() does not halt arm64 systems under certain
 conditions
Message-ID: <20190917105136.GK25745@shell.armlinux.org.uk>
References: <BX1W47JXPMR8.58IYW53H6M5N@dragonstone>
 <20190917104518.ovg6ivadyst7h76o@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917104518.ovg6ivadyst7h76o@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_035147_167277_99E91220 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Xogium <contact@xogium.me>, linux-kernel@vger.kernel.org, mingo@redhat.com,
 bp@alien8.de, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 11:45:19AM +0100, Will Deacon wrote:
> Hi,
> 
> [Expanding CC list; original message is here:
>  https://lore.kernel.org/linux-arm-kernel/BX1W47JXPMR8.58IYW53H6M5N@dragonstone/]
> 
> On Mon, Sep 16, 2019 at 09:35:36PM -0400, Xogium wrote:
> > On arm64 in some situations userspace will continue running even after a
> > panic. This means any userspace watchdog daemon will continue pinging,
> > that service managers will keep running and displaying messages in certain
> > cases, and that it is possible to enter via ssh in the now unstable system
> > and to do almost anything except reboot/power off and etc. If
> > CONFIG_PREEMPT=n is set in the kernel's configuration, the issue is fixed.
> > I have reproduced the very same behavior with linux 4.19, 5.2 and 5.3. On
> > x86/x86_64 the issue does not seem to be present at all.
> 
> I've managed to reproduce this under both 32-bit and 64-bit ARM kernels.
> The issue is that the infinite loop at the end of panic() can run with
> preemption enabled (particularly when invoking by echoing 'c' to
> /proc/sysrq-trigger), so we end up rescheduling user tasks. On x86, this
> doesn't happen because smp_send_stop() disables the local APIC in
> native_stop_other_cpus() and so interrupts are effectively masked while
> spinning.
> 
> A straightforward fix is to disable preemption explicitly on the panic()
> path (diff below), but I've expanded the cc list to see both what others
> think,

Yep, and it looks like this bug goes back into the dim and distant past.
At least to the start of modern git history, 2.6.12-rc2.

> but also in case smp_send_stop() is supposed to have the side-effect
> of disabling interrupt delivery for the local CPU.

That can't fix it.  Consider a preemptive non-SMP kernel.
smp_send_stop() becomes a no-op there.

I'd suggest that a preemptive UP kernel on x86 hardware will suffer
this same issue - it will be able to preempt out of this loop and
continue running userspace.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
