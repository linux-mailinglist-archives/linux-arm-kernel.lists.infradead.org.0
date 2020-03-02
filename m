Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB26176618
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:39:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5q451e+9JxeOhxNsWJsY+DYeA6T6UI5Nop1eyMoG+U=; b=b4vmgAXedvA23K
	hMgGGZwFQnOinT4pGGbJCmAKFoTbLn3eEuH+fyASpYWAn1jaY9pv0R3P0DvFmzJK1RWsfKnMihB8t
	Ewjw9Hp38lTi4h0IHEPi8DPRAloRrHhZNLBnKximsDpYFV+7PxSnz5GFAa+vOpoEisQ0ACYQ3BFuW
	+vOMrGbGEkcePy539LB13NGkLeNklQrwUA9qB/W69QmsVGC/+BhnGEbQZpBSGXEP9iz4QdbJDe3oc
	YetXBeMUw9BlvuZ2g7SPz+rTum1OeSNmo5vvixA5mBsIn3Akx6NjEWFOh+nAvYsOWDj1pySMNMsA+
	AKDA6qNW1withuxWAATA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8smc-0000vq-Ic; Mon, 02 Mar 2020 21:39:26 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8smU-0000vV-Ol
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:39:19 +0000
Received: by mail-yw1-xc44.google.com with SMTP id o186so1370408ywc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 13:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8BEzvz9oitySKcp5OKoa7suFFvhmHKYouPeCm8HxVkc=;
 b=sEXyPhSBrxy8VBGgDTKwilffCgrHYIAfzVqyhWUVsjwsCIGA5ieS4gdG7DngaBQVgt
 9ttFX2WUHnNTenr2P4BVT2YPSBdjJb4CFHPhyiMnXR8G0jwHBm3740ZW8K1XfLytpwEg
 RweQlb7Bo5hpHOvuOKj8ZPShu1onab8fcao+SiC2ZP1cGJE85zkIREShJ2W0oeKl+P2A
 WgnH17WxcSNmKJAPmz+k02nldLhUk0lAjWn2W5xkyu0IbijVxg3ZmKeZ0Is1oZZ/VKPl
 U0Fi0jgVFP98O6DPW0S0sCEwZxRffkYCAEBz0nRzS9IWjg+PUGJ7swKduVpMurLOjsv+
 g5TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8BEzvz9oitySKcp5OKoa7suFFvhmHKYouPeCm8HxVkc=;
 b=THy7VoBXN9OXK3vM5G4voq71rmqK1waXVkGphF5Dj4/oIY299DK0lEqkM9L01kzRUs
 ItlQonE1FSyG0Q71sXe33amZ+gcGoFKxoccyX8srrTF8trspzfIvKrAY1EmKSk1iSWPw
 896Qw2zzn4HtIZoctzA123+06WHjkKv5OzkWZ5gVUUMszgPZ7d2QSuTA6VYLkUJNQmL1
 pGGSMiWCJf1OjWeYU7N/GLM6zWPqW+iGpiF/JN+Sg+T3DxJkTaef/lXcc2Bpb/+yIaHQ
 +34InaQCbv6l2X/oVWLLSlFu5HIgrEQZ7l/OBnsIQuDv7apMjKxyQvbP1WgquEqX1d1T
 q1oQ==
X-Gm-Message-State: ANhLgQ0CCl9bQC3DhKFDZbqyj67NQiwlGdA8UCmmH3e32GALN2pAE0Kz
 Ax9oM5wyav5hoNWxaQiG2YJ8jy37zHNnXuEn5oNZCQ==
X-Google-Smtp-Source: ADFU+vumAWzaEuI+PR4QiUMQSq+I5PMgIrDF38ORvv7gu2fZRTH9d/drH7VkenQZc1i0EWZDWAOxEbt3LAldAwqI+Ww=
X-Received: by 2002:a81:7015:: with SMTP id l21mr1373795ywc.425.1583185157939; 
 Mon, 02 Mar 2020 13:39:17 -0800 (PST)
MIME-Version: 1.0
References: <20200302001150.27952-1-vitor@massaru.org>
 <CAOMZO5DQ=sg9Qf7N4N9S-5DpS4EQFG1w6ZqK0nS9P3M0ghSzDg@mail.gmail.com>
 <334242262a770f99a441f15eeba1bc55081eba40.camel@massaru.org>
In-Reply-To: <334242262a770f99a441f15eeba1bc55081eba40.camel@massaru.org>
From: Vitor Massaru Iha <vitor@massaru.org>
Date: Mon, 2 Mar 2020 18:38:42 -0300
Message-ID: <CADQ6JjXQCDEM7Ep5UsFR1eS_9FUuciURA+rH6QugzZLmmL_r1A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: freescale: add gpio-fan/thermal support
 for Google i.MX 8MQ Phanbell
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_133918_806194_DB2B8883 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, lkcamp@lists.libreplanetbr.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Marco Franchi <marco.franchi@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

I fixed the tabs on MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5 line too.

BR,
Vitor

On Mon, Mar 2, 2020 at 6:05 PM Vitor Massaru Iha <vitor@massaru.org> wrote:
>
> Hi Fabio,
>
> Thanks for your review.
>
> On Mon, 2020-03-02 at 14:03 -0300, Fabio Estevam wrote:
> > Hi Vitor,
> >
> > Forgot to say in the previous revision, but the typical Subject
> > pattern is:
> >
> > arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal support
> >
> > On Sun, Mar 1, 2020 at 9:11 PM Vitor Massaru Iha <vitor@massaru.org>
> > wrote:
> >
> > >  &A53_0 {
> > > @@ -373,4 +383,58 @@
> > >                         MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B 0xc6
> > >                 >;
> > >         };
> > > +
> > > +       pinctrl_gpio_fan: gpiofanp {
> >
> > Please keep the pinctrl entries in alphabetical order.
> >
> > > +               fsl,pins = <
> > > +                       MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5 0x01
> >
> > This pad comes as 0x16 after POR, so please add it as:
> >
> > MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5 0x16
> >
> > > +&cpu_thermal {
> >
> > Please put it prior to the &i2c1 node in order to keep the
> > alphabetical order.
> >
> > With these changes you can add:
> >
> > Reviewed-by: Fabio Estevam <festevam@gmail.com>
>
> I'll send the PATCH v3.
>
> BR,
> Vitor
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
