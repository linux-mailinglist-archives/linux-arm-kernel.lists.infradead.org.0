Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFBF1CC32E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 19:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iug2J6XLu76icBgVUfW8BWJq3DqhlZVRtzg+N4qksAs=; b=P6fesp/buuUSHJ
	hSswrMEOayhVtgyXNMPalONGc7KvPr++bpaUCxYNpogrtYtc1O74ZfomWLAUIV/N3F7gR9Sw1O+hr
	th1zo/yFM3kww5tzelYJWoP3gnJGGYQyAcGnOOAl7baBfSUPnRcMAJz4W/YcofCh4x/DVd1DmMYAv
	pnpod7SjJ1U4wmOtXkmikptrov4xy5tKh7dTLQHIgZ52r1vcRshwR3O/e1oFTLVmAx2qiphYipKuc
	+LU1IOMmiTUDbnFVVM6EUGvEAdy8Ddwd/xEl6D8nSFVr7PEsGcAyd2IsZWlhfzco7sAwQ6U7txVJK
	9A/i0XEd9ghzhDsSWb8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXTGM-0003zr-OR; Sat, 09 May 2020 17:27:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXTGF-0003yl-5Z
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 17:27:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eA6zPwUAfsQm1w0Nmrjy4EvhkeArGomb4D8sTfYI5Jw=; b=xfOv35rVdMnTnm7BCEp6i1iyh
 jcn3+drA3NPfXsmhOtc6bzRBpAGWHgT8kI7MEaZEXboVZ610QLsZdYPehF+bRp2FsmdW2CxSev1aM
 YC2+69RqKDmilfvUZJ8DTBnP5J9Mt/T8btEjEpcB3h9vIz4TWpBBNz5F+uWca4jDo0Ltky9cTWbSC
 j2L7bWBwi/Om9bEPBa+NNSuqMujHDspKt2LzjmTrsDs5lRJHHDbUdPgeWyHIIBCGVXz3quhTt0+Q6
 JbxR/uwa9n4EiM/kvI9OILasKYfrEboP8UwYLsop0boLqwNC/jajz+Dw3Ib3brZlWeJwq6bSr3SPx
 9juq4A+mw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:58268)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jXTG3-0004dA-Nl; Sat, 09 May 2020 18:27:27 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jXTG0-00031g-UW; Sat, 09 May 2020 18:27:24 +0100
Date: Sat, 9 May 2020 18:27:24 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v1 2/3] armv8: gpio: add gpio feature
Message-ID: <20200509172724.GG1551@shell.armlinux.org.uk>
References: <20200509103956.26038-3-hui.song_1@nxp.com>
 <20200509103956.26038-2-hui.song_1@nxp.com>
 <20200509153315.GR208718@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509153315.GR208718@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_102739_376705_CFAD15C4 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
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
Cc: u-boot@linux.nxdi.nxp.com, Hui Song <hui.song_1@nxp.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, jiafei.pan@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 05:33:15PM +0200, Andrew Lunn wrote:
> On Sat, May 09, 2020 at 06:39:55PM +0800, Hui Song wrote:
> > From: "hui.song" <hui.song_1@nxp.com>
> > 
> > add one struct mpc8xxx_gpio_plat to enable gpio feature.
> > 
> > Signed-off-by: hui.song <hui.song_1@nxp.com>
> > ---
> >  .../include/asm/arch-fsl-layerscape/gpio.h    | 22 +++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> >  create mode 100644 arch/arm/include/asm/arch-fsl-layerscape/gpio.h
> > 
> > diff --git a/arch/arm/include/asm/arch-fsl-layerscape/gpio.h b/arch/arm/include/asm/arch-fsl-layerscape/gpio.h
> > new file mode 100644
> > index 0000000000..d8dd750a72
> > --- /dev/null
> > +++ b/arch/arm/include/asm/arch-fsl-layerscape/gpio.h
> > @@ -0,0 +1,22 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * Copyright 2014 Freescale Semiconductor, Inc.
> > + */
> > +
> > +/*
> > + * Dummy header file to enable CONFIG_OF_CONTROL.
> > + * If CONFIG_OF_CONTROL is enabled, lib/fdtdec.c is compiled.
> > + * It includes <asm/arch/gpio.h> via <asm/gpio.h>, so those SoCs that enable
> > + * OF_CONTROL must have arch/gpio.h.
> > + */
> 
> This does not seem right. You would expect each sub arch to have a
> subdirectory in arch/arm/include/asm/ when in fact none do.

From what I can tell, these patches are not for the kernel.  The
filenames don't match th kernel layout.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
