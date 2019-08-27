Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4749EB29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 16:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IKO35Acl+A3OfqVO1c28Kn3eTKF6grzggL20oOFQb5U=; b=UNiatrh9HLk6Jx
	axslHtbTgDXIs6ncoIV1Jactjqn9rKsS69tMXnpw3gfXvJkhlSBCBGZ5MrMFS4yRqiPnXy/+f0cMp
	iihVs4KYn0hMUDwB12HwBOTCvj7fwXsmFefK3pwVSIwC9lH8Zy05Pg4JUA29a4VJPZiceWhXrQvbG
	zE6DD+rg13HzKK/vTMA6TnbAOTXzbZRoUq9gf873Io8PFTBUdIvYH2aRERzbQRhv01uPS1unOIOJo
	rQKEP7WBsjRhZHxHXh+ubbIZzXgrtRBS1FNRCjz9hKCdeukWCVDBwB5DFKfPvT6hvrXXPx80mIgJP
	FYKpxwiSrktgJOo5WsSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2caf-0002hv-G4; Tue, 27 Aug 2019 14:36:57 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2caR-0002f5-Rl
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 14:36:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vhzf+dZDreIumgSd/qgIOrRav/zwhEMSkCEy/wY4MGU=; b=t5tRKOdOnczH2Hp+z218qFN8+
 Q6wWgCMBppznidCK3hI63kFTn7KvDPLsVRYWSRJ3U+i7fZZbXNF6UAbbCIOyaiwNszYvHF/G8g2Rv
 DstzRoKm5aVvHtIkRA/CD7ixm0rnM4FErN8Mj+JWDFNP5bNXO/rSEaRRi7GqoFU7r9SZj44Co6y9N
 1JpRW8mRZFDM+uNGTnD/AKX77SlKBCDbpDhOSz1MVRnrOuHIUIYJiPyYUHmKwD6WGcxlLF8Q0Ka4R
 NfcQGOM1W0GAQeajTvp09XKvuEpbFkyeHzyNfeIdYnc6PzkRQpeVm0rAbzu5tGXfUvr5gflfWs+C6
 v2BBQdvQg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:38660)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i2caJ-0004zg-HP; Tue, 27 Aug 2019 15:36:35 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i2caI-0005om-AW; Tue, 27 Aug 2019 15:36:34 +0100
Date: Tue, 27 Aug 2019 15:36:34 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: Continuous SD IO causes hung task messages
Message-ID: <20190827143634.GL13294@shell.armlinux.org.uk>
References: <20190827134337.GK13294@shell.armlinux.org.uk>
 <CAPDyKFp7e2OD_idam3-2sEd0wJU5OcP=H04G1OvHmAUo2Y-bYw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFp7e2OD_idam3-2sEd0wJU5OcP=H04G1OvHmAUo2Y-bYw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_073643_902928_D9813E7D 
X-CRM114-Status: GOOD (  15.10  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 03:55:23PM +0200, Ulf Hansson wrote:
> On Tue, 27 Aug 2019 at 15:43, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > Hi,
> >
> > While dd'ing the contents of a SD card, I get hung task timeout
> > messages as per below.  However, the dd is making progress.  Any
> > ideas?
> >
> > Presumably, mmc_rescan doesn't get a look-in while IO is progressing
> > for the card?
> 
> Is it a regression?
> 
> There not much of recent mmc core and mmc block changes, that I can
> think of at this point.

No idea - I just repaired the SD socket after the D2 line became
disconnected, and decided to run that command as a test.

> > ARM64 host, Macchiatobin, uSD card.
> 
> What mmc host driver is it? mmci?

sdhci-xenon.

I'm just trying with one CPU online, then I'll try with two.  My
suspicion is that there's a problem in the ARM64 arch code where
unlocking a mutex doesn't get noticed on other CPUs.

Hmm, I thought I'd try bringing another CPU online, but it seems
like the ARM64 CPU hotplug code is broken:

[ 3552.029689] CPU1: shutdown
[ 3552.031099] psci: CPU1 killed.
[ 3949.835212] CPU1: failed to come online
[ 3949.837753] CPU1: failed in unknown state : 0x0

which means I can only take CPUs down, I can't bring them back
online without rebooting.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
