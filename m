Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD131FAB28
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:41:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7J2Nv1liPH3dTKD0Xcya2Zq1dGMUK1u7L14wcLtb4c=; b=a8O1CECmZcxfOv
	eF6b6+LPRg0fOUDxXOLJtme4pwG93sE+M0Xuw51Lif8vU/wM+KtotEyEKzFtsYr8XpFr1M4Kqk3wb
	vUkbqd0kR8c5V97NjNyLiW59mIdq8hxItbyKnfSVagKXsH8/GSn8kH6H5ScJ1/KBNx2zqY7XICBUL
	qxgZP0mZGeIS9SoqEzrSAk/vcmpRnNKvbJLoxXW+n2+iXBg5FV0mscx4k5aGK8CJTO+GpW6uIeLXJ
	IYXwpV2u1yA7PyfvO2xGfKu4rzcXG1oOCJsJfnWIs/NNUq5r5OUEGloPxhTeu96l+XoxD0d2Kt/gM
	1ty5FBxN6R4pLcd2FAVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUnHM-0002z3-Ag; Wed, 13 Nov 2019 07:41:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUnHE-0002yL-9B
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:41:21 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iUnGz-0007gc-KI; Wed, 13 Nov 2019 08:41:05 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iUnGy-0007xK-Ci; Wed, 13 Nov 2019 08:41:04 +0100
Date: Wed, 13 Nov 2019 08:41:04 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCHv7 2/3] ARM: dts: Add support for i.MX6 UltraLite DART
 Variscite Customboard
Message-ID: <20191113074104.nbcc6kopsr3ow4kt@pengutronix.de>
References: <1573586526-15007-1-git-send-email-oliver.graute@gmail.com>
 <1573586526-15007-3-git-send-email-oliver.graute@gmail.com>
 <CAOMZO5DX_-zSHJjDigK2c=dVLEMxvfd_dFCu=0fbyjht1gsr=A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5DX_-zSHJjDigK2c=dVLEMxvfd_dFCu=0fbyjht1gsr=A@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:40:28 up 179 days, 13:58, 119 users,  load average: 0.13, 0.07,
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_234120_321392_BCF2308B 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 <devicetree@vger.kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Oliver Graute <oliver.graute@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-11-12 20:17, Fabio Estevam wrote:
> Hi Oliver,
> 
> On Tue, Nov 12, 2019 at 4:22 PM Oliver Graute <oliver.graute@gmail.com> wrote:
> 
> > +&lcdif {
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&pinctrl_lcdif>;
> > +       display = <&display0>;
> > +       status = "okay";
> > +
> > +       display0: display0 {
> > +               bits-per-pixel = <16>;
> > +               bus-width = <24>;
> > +
> > +               display-timings {
> > +                       native-mode = <&timing0>;
> > +                       timing0: timing0 {
> > +                               clock-frequency =<35000000>;
> > +                               hactive = <800>;
> > +                               vactive = <480>;
> > +                               hfront-porch = <40>;
> > +                               hback-porch = <40>;
> > +                               hsync-len = <48>;
> > +                               vback-porch = <29>;
> > +                               vfront-porch = <13>;
> > +                               vsync-len = <3>;
> > +                               hsync-active = <0>;
> > +                               vsync-active = <0>;
> > +                               de-active = <1>;
> > +                               pixelclk-active = <0>;
> > +                       };
> > +               };
> > +       };
> > +};
> 
> You are using the deprecated bindings.
> 
> Please switch to the DRM bindings as stated at
> Documentation/devicetree/bindings/display/mxsfb.txt
> 
> You should also add your panel to the simple panel driver.

That would be the best solution :)

Regards,
  Marco

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
