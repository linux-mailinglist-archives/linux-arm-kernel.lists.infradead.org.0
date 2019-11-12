Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F64F936C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:56:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4hPeivU2n46aNzc9K2UkgVxdIBaA66hEjTICtXQJHA=; b=YGeH7cEEMJhWAv
	XvtVXLls5xUjzq+mtUnZcUBUAUulqc32cLRpIUYcJOJv/evVYeGOMsaluBfdYqadNzJBC7BIzwnZL
	TfB34WX8sTbBXvjVnLrdG4sv46Dpjigif/faifinFKPTKSh3Ym3PIGzFboMFaXB48tEwpb95HOQ8S
	iNi3WyL/tPIWRMRVOkbshrqEpRAgjfNNgilsEGD63mgembNAkV/EQPTQ214mdaHcbrFNL903zgjZa
	hKzgPCDh6vwqqk+NCvaLfYhoslP7X2TLG1ZPuXqvYdYoCEyOPE2JtgpukOqX4KQrpMs+7yX0Z+Ahk
	QmyncuCz5ElHjqLk1UEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXag-0003L7-Pm; Tue, 12 Nov 2019 14:56:22 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXaY-0003Ja-JI
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:56:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CC6CDOjq53lam0n3yDiGEmY1dG4I1rOGEfq4W7Fmwjw=; b=Ah4mAq6xeMy0RJp4jo/JkpuRf
 8hfsp1qtuvNn+wWx+lc6z+YAcUxqHvrqbqBkYnd0Vhpffd5Ooy3oI9PmOFUFwAMf2MCZ0E8bkKWVy
 qnql9BefveI2ESRbHqnV5FTIPK5//sb8dTaZDdyOdrr2NweIC/cfBF3c3k4NmRMVy3Yh4TaQmWYU3
 PcyMMv5qmWCXrjX9FkzlbLHIkSXCfMGRlPEsfq7/069xjqRVs79HJXIZ596SjfcGMgnFloIR3WDZQ
 N4FzaSiG2ev1S5TbOdBMSyg6WDvC7yDskKCTdHP02N6XRAFDBqw3fl9IQGZXvOsHaZn/7Inls3ms/
 A7jqS2qhg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:38692)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iUXaC-0006Gb-1Q; Tue, 12 Nov 2019 14:55:52 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iUXa1-0001Td-TE; Tue, 12 Nov 2019 14:55:41 +0000
Date: Tue, 12 Nov 2019 14:55:41 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH] arm: kernel: initialize broadcast hrtimer based clock
 event device
Message-ID: <20191112145541.GK25745@shell.armlinux.org.uk>
References: <20191112120625.20173-1-benjamin.gaignard@st.com>
 <alpine.DEB.2.21.1911121547490.1833@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1911121547490.1833@nanos.tec.linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_065614_632844_3254F94B 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: gregkh@linuxfoundation.org, linux-stm32@st-md-mailman.stormreply.com,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 03:48:10PM +0100, Thomas Gleixner wrote:
> On Tue, 12 Nov 2019, Benjamin Gaignard wrote:
> 
> > On platforms implementing CPU power management, the CPUidle subsystem
> > can allow CPUs to enter idle states where local timers logic is lost on power
> > down. To keep the software timers functional the kernel relies on an
> > always-on broadcast timer to be present in the platform to relay the
> > interrupt signalling the timer expiries.
> > 
> > For platforms implementing CPU core gating that do not implement an always-on
> > HW timer or implement it in a broken way, this patch adds code to initialize
> > the kernel hrtimer based clock event device upon boot (which can be chosen as
> > tick broadcast device by the kernel).
> > It relies on a dynamically chosen CPU to be always powered-up. This CPU then
> > relays the timer interrupt to CPUs in deep-idle states through its HW local
> > timer device.
> > 
> > Having a CPU always-on has implications on power management platform
> > capabilities and makes CPUidle suboptimal, since at least a CPU is kept
> > always in a shallow idle state by the kernel to relay timer interrupts,
> > but at least leaves the kernel with a functional system with some working
> > power management capabilities.
> > 
> > The hrtimer based clock event device is unconditionally registered, but
> > has the lowest possible rating such that any broadcast-capable HW clock
> > event device present will be chosen in preference as the tick broadcast
> > device.
> > 
> > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> 
> Reviewed-by: Thomas Gleixner <tglx@linutronix.de>

Thanks.  Benjamin, please put it in the patch system, thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
