Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD844129B89
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 23:55:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gq1M7bjLaYwZHMW9voC2zf8/ji1/SgU508F04XHHPV4=; b=Smui6OaWhV0q5v
	UKZZ8fpzkZuV7lI5oIwCXOOYv44H5GRXWggnjGBt+rP98ZnHNQVE03SpWpkq2U1cacEXdTyUt/Uvq
	un46RKVhCwCF8XxCvN4oxhiKbBFXR0vUcbF3F0ObuAufHTTNe/x+5aNFT1hnV7ogjVdUnXUhV/yEr
	AsJc0vREus7U34lDD6UKh+POA58pjFuGQFoAzk7FUNmLmwfS1J+pvcHRthwb/f1nvudPk7yZFKEy2
	79nkBU9+bE2x3qadOMNmI1qh1ugpWGGdmgN7UfO/7dFi0yBTDC0mdIR8jrcmO4eOiqMoB45O1TS5w
	9F9eS/rYLspG+JpIKj7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijWby-0007OZ-EM; Mon, 23 Dec 2019 22:55:38 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijWbs-0007Nx-0R
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 22:55:33 +0000
Received: by mail-io1-xd41.google.com with SMTP id r13so7527676ioa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 14:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yCY+BqVcdbrXD0gu/PsP/KokjQz+TuxHQGPsNwzwFVQ=;
 b=WZFpyQFoDNC2LiXKC+BdJ3QRHePv8zANl/ujX87H7RpEgPDnFOgTTy2J4n9hNG1hBV
 mWyZEhcepZUzOKTy8YnaIn7dOiqHt4kReiqM/8Td3CY5pNmFB4weota1r6/wjM4KD2tM
 MUSlhRW/SIvWKpWwQSRHW12ZGU9bnTAm7TUGVRnWEalKTe1ueGJb2SFxe7oRHDrcwqVJ
 Ii0nSylfyhHGA/qJKCQ6E2pqWjx+NRbwfixb4HayWnW9ewNIdkk1eg00nPxbBck/pEb4
 IccyTvyKy3pbYVH8PSO/vJdcK0HUZOU0E2JFYtp/z3rKhVYTcD9DEKiTDllJVwWRGCt4
 /3NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yCY+BqVcdbrXD0gu/PsP/KokjQz+TuxHQGPsNwzwFVQ=;
 b=IKxG9SLbQNF3Vr1jbe9Q2cfci+LdW5CxU+v5OqfRV5rd4PLeGpGJyFGpnX9ao0gRc4
 V5NwBywdacMTJ2wDpLNZFJGKVMxkFW0Z2hA2cru5lq/VczLejUoQSOTCT+XMpCW5Eoi0
 KqMp6FzVufFMWl/Rlqe2B62OdN3HkY34zUj/mIKAFcyflPiwp729hsLbNEIdRHtgitsj
 M5EnkFIO0p0klsGO94oMtcI3s2YJdkgxn+hevCt8ATxidlshXY/xhEuk5Is3wGXZuxrM
 lCQFwuQt5SF0aKoI70OxPIU6LF+CTu81aA/AC4IbrhaFS1oMbr+DmRpdsfmoTg3KWxtw
 jCQg==
X-Gm-Message-State: APjAAAVprUM3tjuWYxHyXcRKEeMOLU/+b1uqknflsLTgj0ru81zVpFzG
 E1oIq8SdYeN0myCuwi6VGgzGmm9ViCqsOR4OEoBIUA==
X-Google-Smtp-Source: APXvYqw5ermERDc5VenZlmctHWndmFEZr/NIjilASC/vSpdvgbvFnE3TMf4Vbb5vFX5lweWQMgDGMe/yNK7ZPHzI8zQ=
X-Received: by 2002:a6b:5917:: with SMTP id n23mr22528622iob.112.1577141730332; 
 Mon, 23 Dec 2019 14:55:30 -0800 (PST)
MIME-Version: 1.0
References: <20191223214412.12259-1-rjones@gateworks.com>
 <20191223214412.12259-2-rjones@gateworks.com>
 <CAOMZO5CLfyZjuz3c+Xr9v0D5h+r83PGgi8BrMnQZOOZSM-iGGw@mail.gmail.com>
In-Reply-To: <CAOMZO5CLfyZjuz3c+Xr9v0D5h+r83PGgi8BrMnQZOOZSM-iGGw@mail.gmail.com>
From: Bobby Jones <rjones@gateworks.com>
Date: Mon, 23 Dec 2019 14:55:19 -0800
Message-ID: <CALAE=UAok8dazxPj16TAV7rQ_6EZvLBp3t5J2CjweMyECkZAHA@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] ARM: dts: imx: Add GW5907 board support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_145532_076626_7D2B1571 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Tim Harvey <tharvey@gateworks.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 2:06 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Robert,
>
> On Mon, Dec 23, 2019 at 6:44 PM Robert Jones <rjones@gateworks.com> wrote:
> >
> > The Gateworks GW5907 is an IMX6 SoC based single board computer with:
> >  - IMX6Q or IMX6DL
> >  - 32bit DDR3 DRAM
> >  - FEC GbE Phy
> >  - bi-color front-panel LED
> >  - 256MB NAND boot device
> >  - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
> >  - Digital IO expander (pca9555)
> >  - Joystick 12bit adc (ads1015)
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > Signed-off-by: Robert Jones <rjones@gateworks.com>
>
> Not clear on the authorship on this patch.
>
> If the original author is Tim, then his name should appear in the From field.
>

Original author for all but the GW5910 patch was myself. It's probably
not clear here but Tim reviewed the patches prior to submission and
had me add him as a Signed-off-by.

Would it be better to just remove those lines from the patches in this case?

> > ---
> >  arch/arm/boot/dts/Makefile            |   2 +
> >  arch/arm/boot/dts/imx6dl-gw5907.dts   |  14 ++
> >  arch/arm/boot/dts/imx6q-gw5907.dts    |  14 ++
> >  arch/arm/boot/dts/imx6qdl-gw5907.dtsi | 399 ++++++++++++++++++++++++++++++++++
> >  4 files changed, 429 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/imx6dl-gw5907.dts
> >  create mode 100644 arch/arm/boot/dts/imx6q-gw5907.dts
> >  create mode 100644 arch/arm/boot/dts/imx6qdl-gw5907.dtsi
> >
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index 1e9e1af..9ee80e2 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -422,6 +422,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
> >         imx6dl-gw560x.dtb \
> >         imx6dl-gw5903.dtb \
> >         imx6dl-gw5904.dtb \
> > +       imx6dl-gw5907.dtb \
>
> You should add an additional patch that add these new boards in
> Documentation/devicetree/bindings/arm/fsl.yaml

So I was planning on just adding an enum line for "gw,ventana" under
the i.MX6DL and i.MX6Q based Boards sections. Would that be
sufficient?

We have a lot of individual custom boards and it doesn't seem correct
to add individual strings for every one in both sections.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
