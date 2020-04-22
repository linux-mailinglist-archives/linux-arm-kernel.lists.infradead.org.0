Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 243391B3A14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 10:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwYZtx2ZoJJxa0JQuPAbzM6NyK3xaCsn+0P1mLOFXhE=; b=rSkCdE5MqsE2LW
	G4t5+gEVSsF3HCyh67jjxV4jPLX8Ubtubo1gxIRnP8R1vE2Kz5eOp5213IovTJCEyNLNp7gH6lhpW
	ufDxb3gygSPvhIqpK0yX5dajp4KVk83ziM40gsxhKE3mAtCfwtVEcHR4OMr9rNRjK8DdHLlvptXX5
	ZwE+FjYDqkb43VWyRxvWUsZjrl5xGcdSAd+cSAxupjF/WmIgmjPYU+uW9TBdn8ZiewnqH59BnYaYM
	mAfFMoMI5FMXdA+9OCrKzjCTj1mmH2U92QnCx9LK0cv37tbH/BdANif1EvWOw++GCJWIrXZ7S+qt2
	wWqKAenO8dC3nkywmNHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAky-0002gQ-Jf; Wed, 22 Apr 2020 08:29:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRAkq-0002fX-JC
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 08:29:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+ivArRasmeQ/1D4gO3xUY41NoR2M7AcukNVOVwoI4Uw=; b=bv6Qu4/uYlTVGkj2KsQVP5HbU
 K8Upgd2VaDcuo7DbL259K5XX584gebayiLkvzJWP6ZYkkuka9spothAkXHZqUSfvJpHIrxfxVlszH
 SiHdTIlKWprPE8glfaO3PICJza+Zx5HmMysY+NgdzN1jwMGax7VD8myQsG15yGbcG6oHts7jK+rQS
 PcOYoqVbh+KPCs69mH+Y3wF6NkT0SDs5aU24HR5ejP2Z69ku7Ff4c2vLrr77X2h82JQfhyfeA3yNq
 +U6OBu7IMtr/xBzhrk4Hgkx6k0uecGfUi3M72tYvtrzC4JhHx11T+hAdYbSDBOfdb6YRAyUpY+otE
 HxpFeIl+g==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:53664)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jRAkX-0006v6-3L; Wed, 22 Apr 2020 09:28:57 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jRAkG-0007zo-QQ; Wed, 22 Apr 2020 09:28:36 +0100
Date: Wed, 22 Apr 2020 09:28:36 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: alpha_one_x86 <alpha_one_x86@first-world.info>,
 Hu Ziji <huziji@marvell.com>, linux-mmc@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: 2 bug repport
Message-ID: <20200422082836.GL25745@shell.armlinux.org.uk>
References: <408ebea1-725d-2f8e-7d26-a2cb4d7754d3@first-world.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <408ebea1-725d-2f8e-7d26-a2cb4d7754d3@first-world.info>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_012912_637334_E9EE121B 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 03:03:57AM -0400, alpha_one_x86 wrote:
> Hi,
> 
> On mcbin platform I have uSD problem, repported but no reply on linux kernel
> bugzilla, https://bugzilla.kernel.org/show_bug.cgi?id=207083
> 
> Any idea what patch try?

I think that's a question for the MMC people.

If you go back to your working 4.20 kernel, does the problem go away?
If so, it sounds like a regression in the MMC subsystem.  If not, I
wonder if it could be the uSD card going bad.

However, I suspect the former.  I've seen one instance here where a
Clearfog GT8k (Armada 8040 based just like the mcbin) running 5.6 with
the rootfs on eMMC completely lost the ability to talk to the eMMC to
the point that the machine had to be power cycled to recover it -
merely rebooting did not.  I don't know the cause - the initial failure
had vanished from the kernel logs, and because the eMMC was no longer
accessible, the rsyslog files did not contain the details either.
I've since setup remote logging, and I'm currently waiting for it to
happen again.  I couldn't say if _that_ is a regression because I
haven't been using the GT8k until very recently, and I tend not to use
eMMC/uSD on the Macchiatobin that runs 24x7.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
