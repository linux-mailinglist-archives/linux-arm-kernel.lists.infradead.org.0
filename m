Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67319172217
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:18:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oIKP+6LnRwZWln2l2hqL9ItnB+jIqhJlKxyXq6DaPs=; b=A/crpsd4FLbHr1
	l9nBP+uOtWOUtwAHD5/7nGb+TS7RuVYV6f0kT93AlzV/JowQJ/qCoKOp2Qq+xL4QWAngxP9Anm1aB
	Z56BTDNwQM9c0doZtJfieQrFH6hmzK+Foq2k1y5qjaft6OtEWK52AzIgtoKd64Wfiiy50TZuS1OZO
	9Jxh8at7d0lZgklLFTOIRE4kJDTSF/1x9qdzLx1qmm8x1RzaGRFL26Fm27gyEL5cPpVxiR/DHOuUc
	d6UOj14mgQycGSZii8dyjVD8zsFrATntbr3eud8ESFCywAiX0yU122TenhT8m51hKw6Xd/pmOl/+m
	Oh1lK8yEJzS1iLxIDjZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7KvQ-0003gY-Rg; Thu, 27 Feb 2020 15:18:08 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7KvD-0003fo-KM
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:17:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/amHjcp1m9GoN8wK56yOYd/PS1D0Vy3heZyNFBxc3ds=; b=PFbYRJJMzHEFkfxOTRfSgTi3G
 gE5m1bTrwGEHezS9/LTsHpkZz4dteZuwm74wT0ghQVY1F1f6MMHbJRBr5vQyn9xCE1qv+YGPllo0S
 xZ6Th/U0hZEY0pu6gQHj3eRjq9P6kQBTe87swuLU0Ci1NdlGzZaZAN3FLMcorpLZ1mtEj2Ct4PwVB
 UQsOuU6LiErdmCFJQxZe4kf0Pnr0Ij8dUhrtqN3DmEAGdjQK4MpyJQwdy+1Lmcj7KQE+UlrnVCmmy
 fGDQKyu5aSfn3isWf3vw0wILNTtRfKhY+RXo6w3f/AZZqfgqmjgsNtShUqh03T+WWEpo4RV8rhKet
 NfxR8xXdA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:53522)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j7Kuz-0006Jo-8N; Thu, 27 Feb 2020 15:17:41 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j7Kux-00014m-3H; Thu, 27 Feb 2020 15:17:39 +0000
Date: Thu, 27 Feb 2020 15:17:39 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-sr-som-ti: indicate powering off wifi
 is safe
Message-ID: <20200227151738.GM25745@shell.armlinux.org.uk>
References: <E1j7I7v-0004dS-5u@rmk-PC.armlinux.org.uk>
 <CAOMZO5A6os4myE41ZLBvW639bjRudg8Tax4yBa5JOyY5+oJW+g@mail.gmail.com>
 <20200227134538.GK25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227134538.GK25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_071755_665742_5902E79A 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 01:45:39PM +0000, Russell King - ARM Linux admin wrote:
> On Thu, Feb 27, 2020 at 09:57:40AM -0300, Fabio Estevam wrote:
> > Hi Russell,
> > 
> > On Thu, Feb 27, 2020 at 9:19 AM Russell King <rmk+kernel@armlinux.org.uk> wrote:
> > >
> > > We need to indicate that powering off the TI WiFi is safe, to avoid:
> > >
> > > wl18xx_driver wl18xx.2.auto: Unbalanced pm_runtime_enable!
> > > wl1271_sdio mmc0:0001:2: wl12xx_sdio_power_on: failed to get_sync(-13)
> > >
> > > which prevents the WiFi being functional.
> > >
> > > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > 
> > Shouldn't this have a Fixes tag so that it can be backported to stable kernels?
> 
> If I knew where the breakage happened and what commit was responsible
> for it, then yes - but it used to work with earlier kernels (I don't
> know which) and at some point it broke.
> 
> The suggestion for how to fix it came from Jon Nettleton.

Jon says:

"It was changes to the mmc power handling.  Basically telling the
controller that the card should be able to wake it up from a sleep
state.

"I think it has to do with the runtime PM addition.  This was added
to the TI driver in commit, 9b71578de08748defb3bcae3ce8ed1a75cb6a8d7
I don't know if that is what broke it, but that was the initial
integration.

"That was added after changes to the MMC layer were done I believe."

Jon thinks the idea for fixing it came from a post on one of the
mailing lists, but is unable to find it now.

So, I think the cause is now lost in the mists of time.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
