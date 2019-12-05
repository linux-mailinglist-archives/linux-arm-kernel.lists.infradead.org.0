Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB04113A3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 04:14:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92HJ/TlHcgw4Q1lSQvbAGU9joOPQKyHeBAgpGap5vKs=; b=B5yD9WnPMA03Pj
	SMhfBXletHnZSQD75AeLB5bz6X+bThJYXvYEoGuAbJP1CktL6mWmepz9MOxK442x74M5MlEZ8bhJ6
	rhMR/CtIXniBlBLgQbz3CnA3ETFuDafYJdIsdC41L4SN5qB3Xzvyrw9+8Ol87rEBrugAuCuAcUc1p
	zJcGcXjfv1semfW3Xt37fto7KJojNZpXyC3DRO2TUNpkXJVSIvawd3RSI5zoHH6RBwZyR3gzmF6Eu
	MF27aUCyTOHgJFxPg5YyqUEL4eRMKG8rrxSRH/Bhxhsn3FwUlimq8zS3pnOllnjXUqgKhRXwaUWuW
	0jjRB8BK1bSPhKR5RmcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ichac-0004Q6-Hs; Thu, 05 Dec 2019 03:14:02 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ichaV-0004Pb-3b
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 03:13:57 +0000
Received: by mail-io1-xd43.google.com with SMTP id f82so2014251ioa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 19:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WmQsEqtGr2MEYHpj45BxDZGKgHQqoAJj9nMtaNvYuQU=;
 b=HrRHUQ51uX/QT+mjJV9j232+QBomOzO85hzNCfd+ZFedRyXMzBS1qdwlQlJF3PyC1B
 ApzVXoNhCNWsfLirLUqstXoDz+x4JRO0jeRcu+5X5HBeuYEh0pKBmYUu+79owMQ2MUcP
 LQ11jluWW0K+Lt6/03AELiZYWR0pS0WpFdgr93oKiOOkvI4VoUkXKnhj87k6zpkZDQri
 ZwkMGIk1PAn2+6oGoO7PIWdrOFimVjgMN+Z06Iq155ujasHafN4GK2mmEAk/q7BBBVhH
 kRxhlx0b7hccTGJjClBNq8mJVqRulC7sZGIq6fGwsiWfQQyLEHwORPC82jzS1V1MRT51
 UETg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WmQsEqtGr2MEYHpj45BxDZGKgHQqoAJj9nMtaNvYuQU=;
 b=r7ujlwneLAUm2UP6uad2ydhR7FuOGO8tE3YovPIhpGB35XVYVRJIal4MgtWHsMnv3o
 PpfbEgEYfFC8/7KmZpfR8H7In7maJ051gajlBh0WyBz7NoQDi4FDZC/ZEeZDEZv6X6um
 mC1iOUjZP77W7Oh5mC+hBSKB9RMTKEUU4fMc2+OxDxOsbhpbtOFMq9tNWypGEXL6ruSa
 Oit7uQ/Cjp030wYzfiLdM5tFCaDvdrPyyVpF+bYtSqUpXCaCOQZ4WAJYlAIdCl0IER7/
 xjgHZ40lvS8ysFQ550otE9fwZJpColfPM9GEl/gnaxtQevysv3cx6xteaX4qJlOv6dWu
 sFIw==
X-Gm-Message-State: APjAAAU1Ht/kmAAHDI2dde0qUmCjsGXtdrMCQ/1RyqRoI19tE8/Yu4FV
 XCaHi08PeNEKXDSaBerWfzrJsfeyupqBg6GOgDg=
X-Google-Smtp-Source: APXvYqysC2nPRWs1Pyyhu9dbh86EiN9ckvO1dxvoASKACGpG6Au481fIS2irevnYFFovSqqR9vhcU1XGgSLM6thPVNU=
X-Received: by 2002:a5d:9e0a:: with SMTP id h10mr4657032ioh.276.1575515633696; 
 Wed, 04 Dec 2019 19:13:53 -0800 (PST)
MIME-Version: 1.0
References: <20191205021924.25188-1-aford173@gmail.com>
 <20191205021924.25188-4-aford173@gmail.com>
 <DB7PR04MB51785089112C79F97A2BC213875C0@DB7PR04MB5178.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB51785089112C79F97A2BC213875C0@DB7PR04MB5178.eurprd04.prod.outlook.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 4 Dec 2019 21:13:42 -0600
Message-ID: <CAHCN7xLbB2HP6uMiCk0COo5YzBjxMUd69T4kkXLbhiCCWpnZEg@mail.gmail.com>
Subject: Re: [PATCH 3/7] soc: imx: gpcv2: add support for i.MX8M Mini SoC
To: Jacky Bai <ping.bai@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_191355_180764_7CE56EC9 
X-CRM114-Status: GOOD (  23.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 8:33 PM Jacky Bai <ping.bai@nxp.com> wrote:
>
> > -----Original Message-----
> > From: Adam Ford <aford173@gmail.com>
> > Sent: Thursday, December 5, 2019 10:19 AM
> > To: linux-arm-kernel@lists.infradead.org
> > Cc: Adam Ford <aford173@gmail.com>; Rob Herring <robh+dt@kernel.org>;
> > Mark Rutland <mark.rutland@arm.com>; Shawn Guo
> > <shawnguo@kernel.org>; Sascha Hauer <s.hauer@pengutronix.de>;
> > Pengutronix Kernel Team <kernel@pengutronix.de>; Fabio Estevam
> > <festevam@gmail.com>; dl-linux-imx <linux-imx@nxp.com>;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
> > Subject: [PATCH 3/7] soc: imx: gpcv2: add support for i.MX8M Mini SoC
> >
> > The GPCv2 on the Freescale i.MX8M Mini SoC works in the same way as the
> > GPCv2 on the i.MX8MQ, but with slightly different power domains and
> > mapping.
> >
>
> Have you tested all the power domain? Some power domains have to do special power up sequence. I am sure

I haven't because NXP hasn't pushed drivers to support items like the
DSI or the VPU, so trying some of those power domains won't really do
anyone any good, but I have tested USB OTG and some limited testing on
PCIe.

> below change can NOT work for GPU & VPU power domain. Adding code in the GPCv2 driver will make this driver
> hard to maintain over time. i.MX8MM, i.MX8MN, and in the future, we have other new SOC, different SOC has
> different power domain design & on/off sequence. Finally, it will make the GPCv2 very ugly.

I based it off the i.MX8MQ which uses this driver and most of the
registers appear to be the same or similar with some small variation.
Without this driver, features like USB, PCIe and others are
non-functional, so until NXP updates the drivers, it seems like this
is the best of what was available.

What makes the i.MX8M so much different than the i.MX8MQ?  The layout
of the registers is the same, the naming convention is the same, and
for the registers listed, the only apparent difference is the bit
order and possible naming convention.

adam
>
> > This patch adds the necessary tables so the GPC can operate on the i.MX8M
> > Mini.
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> > ---
> >  drivers/soc/imx/gpcv2.c | 244
> > ++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 244 insertions(+)
> >
> > diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c index
> > 250f740d2314..52668e985e8e 100644
> > --- a/drivers/soc/imx/gpcv2.c
> > +++ b/drivers/soc/imx/gpcv2.c
> > @@ -41,6 +41,20 @@
> >  #define IMX8M_PCIE1_A53_DOMAIN                       BIT(3)
> >  #define IMX8M_MIPI_A53_DOMAIN                        BIT(2)
> >
> > +#define IMX8MM_VPU_H1_A53_DOMAIN             BIT(15)
> > +#define IMX8MM_VPU_G2_A53_DOMAIN             BIT(14)
> > +#define IMX8MM_VPU_G1_A53_DOMAIN             BIT(13)
> > +#define IMX8MM_DISP_MIX_A53_DOMAIN           BIT(12)
> > +#define IMX8MM_GPU_3D_A53_DOMAIN             BIT(11)
> > +#define IMX8MM_VPUMIX_A53_DOMAIN             BIT(10)
> > +#define IMX8MM_GPUMIX_A53_DOMAIN             BIT(9)
> > +#define IMX8MM_GPU_2D_A53_DOMAIN             BIT(8)
> > +#define IMX8MM_DDR1_A53_DOMAIN                       BIT(7)
> > +#define IMX8MM_OTG2_A53_DOMAIN                       BIT(5)
> > +#define IMX8MM_OTG1_A53_DOMAIN                       BIT(4)
> > +#define IMX8MM_PCIE_A53_DOMAIN                       BIT(3)
> > +#define IMX8MM_MIPI_A53_DOMAIN                       BIT(2)
> > +
> >  #define GPC_PU_PGC_SW_PUP_REQ                0x0f8
> >  #define GPC_PU_PGC_SW_PDN_REQ                0x104
> >
> > @@ -64,6 +78,20 @@
> >  #define IMX8M_PCIE1_SW_Pxx_REQ                       BIT(1)
> >  #define IMX8M_MIPI_SW_Pxx_REQ                        BIT(0)
> >
> > +#define IMX8MM_VPU_H1_SW_Pxx_REQ             BIT(13)
> > +#define IMX8MM_VPU_G2_SW_Pxx_REQ             BIT(12)
> > +#define IMX8MM_VPU_G1_SW_Pxx_REQ             BIT(11)
> > +#define IMX8MM_DISP_SW_Pxx_REQ                       BIT(10)
> > +#define IMX8MM_GPU_3D_SW_Pxx_REQ             BIT(9)
> > +#define IMX8MM_VPU_SW_Pxx_REQ                        BIT(8)
> > +#define IMX8MM_GPU_SW_Pxx_REQ                        BIT(7)
> > +#define IMX8MM_GPU_2D_SW_PXX_REQ             BIT(6)
> > +#define IMX8MM_DDR1_SW_Pxx_REQ                       BIT(5)
> > +#define IMX8MM_OTG2_SW_Pxx_REQ                       BIT(3)
> > +#define IMX8MM_OTG1_SW_Pxx_REQ                       BIT(2)
> > +#define IMX8MM_PCIE_SW_Pxx_REQ                       BIT(1)
> > +#define IMX8MM_MIPI_SW_Pxx_REQ                       BIT(0)
> > +
> >  #define GPC_M4_PU_PDN_FLG            0x1bc
> >
> >  #define GPC_PU_PWRHSK                        0x1fc
> > @@ -72,6 +100,10 @@
> >  #define IMX8M_VPU_HSK_PWRDNREQN                      BIT(5)
> >  #define IMX8M_DISP_HSK_PWRDNREQN             BIT(4)
> >
> > +#define IMX8MM_GPU_HSK_PWRDNREQN             BIT(9)
> > +#define IMX8MM_VPU_HSK_PWRDNREQN             BIT(8)
> > +#define IMX8MM_DISP_HSK_PWRDNREQN            BIT(7)
> > +
> >  /*
> >   * The PGC offset values in Reference Manual
> >   * (Rev. 1, 01/2018 and the older ones) GPC chapter's @@ -94,6 +126,24
> > @@
> >  #define IMX8M_PGC_MIPI_CSI2          28
> >  #define IMX8M_PGC_PCIE2                      29
> >
> > +/*
> > + * Taken from i.MX8M Mini values from Reference
> > + * Manual, Rev. 2, 08/2019
> > + */
> > +#define IMX8MM_PGC_MIPI                      16
> > +#define IMX8MM_PGC_PCIE                      17
> > +#define IMX8MM_PGC_OTG1                      18
> > +#define IMX8MM_PGC_OTG2                      19
> > +#define IMX8MM_PGC_DDR1                      21
> > +#define IMX8MM_PGC_GPU2D             22
> > +#define IMX8MM_PGC_GPU                       23
> > +#define IMX8MM_PGC_VPU                       24
> > +#define IMX8MM_PGC_GPU3D             25
> > +#define IMX8MM_PGC_DISP                      26
> > +#define IMX8MM_PGC_VPU_G1            27
> > +#define IMX8MM_PGC_VPU_G2            28
> > +#define IMX8MM_PGC_VPU_H1            29
> > +
> >  #define GPC_PGC_CTRL(n)                      (0x800 + (n) * 0x40)
> >  #define GPC_PGC_SR(n)                        (GPC_PGC_CTRL(n) + 0xc)
> >
> > @@ -278,6 +328,7 @@ static const struct imx_pgc_domain_data
> > imx7_pgc_domain_data = {
> >       .reg_access_table = &imx7_access_table,  };
> >
> > +/* i.MX8M dual/QuadLite/Quad */
> >  static const struct imx_pgc_domain imx8m_pgc_domains[] = {
> >       [IMX8M_POWER_DOMAIN_MIPI] = {
> >               .genpd = {
> > @@ -442,6 +493,198 @@ static const struct imx_pgc_domain_data
> > imx8m_pgc_domain_data = {
> >       .reg_access_table = &imx8m_access_table,  };
> >
> > +/* i.MX8M Mini */
> > +static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
> > +     [IMX8MM_POWER_DOMAIN_MIPI] = {
> > +             .genpd = {
> > +                     .name      = "mipi",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_MIPI_SW_Pxx_REQ,
> > +                     .map = IMX8MM_MIPI_A53_DOMAIN,
> > +             },
> > +             .pgc       = IMX8M_PGC_MIPI,
> > +     },
> > +
> > +     [IMX8MM_POWER_DOMAIN_PCIE] = {
> > +             .genpd = {
> > +                     .name = "pcie1",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_PCIE_SW_Pxx_REQ,
> > +                     .map = IMX8MM_PCIE_A53_DOMAIN,
> > +             },
> > +             .pgc   = IMX8MM_PGC_PCIE,
> > +     },
> > +
> > +     [IMX8MM_POWER_DOMAIN_USB_OTG1] = {
> > +             .genpd = {
> > +                     .name = "usb-otg1",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_OTG1_SW_Pxx_REQ,
> > +                     .map = IMX8MM_OTG1_A53_DOMAIN,
> > +             },
> > +             .pgc   = IMX8M_PGC_OTG1,
> > +     },
> > +
> > +     [IMX8MM_POWER_DOMAIN_USB_OTG2] = {
> > +             .genpd = {
> > +                     .name = "usb-otg2",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_OTG2_SW_Pxx_REQ,
> > +                     .map = IMX8MM_OTG2_A53_DOMAIN,
> > +             },
> > +             .pgc   = IMX8M_PGC_OTG2,
> > +     },
> > +
> > +     [IMX8MM_POWER_DOMAIN_DDR1] = {
> > +             .genpd = {
> > +                     .name = "ddr1",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_DDR1_SW_Pxx_REQ,
> > +                     .map = IMX8MM_DDR1_A53_DOMAIN,
> > +             },
> > +             .pgc   = IMX8M_PGC_DDR1,
> > +     },
> > +
> > +     [IMX8MM_POWER_DOMAIN_GPU2D] = {
> > +             .genpd = {
> > +                     .name = "gpu2d",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_GPU_2D_SW_PXX_REQ,
> > +                     .map = IMX8MM_GPU_2D_A53_DOMAIN,
> > +                     .hsk = IMX8MM_GPU_HSK_PWRDNREQN,
> > +             },
> > +             .pgc   = IMX8MM_PGC_GPU2D,
> > +     },
> > +
> > +
> > +     [IMX8MM_POWER_DOMAIN_GPU] = {
> > +             .genpd = {
> > +                     .name = "gpu",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_GPU_SW_Pxx_REQ,
> > +                     .map = IMX8MM_GPUMIX_A53_DOMAIN,
> > +                     .hsk = IMX8MM_GPU_HSK_PWRDNREQN,
> > +             },
> > +             .pgc   = IMX8M_PGC_GPU,
> > +     },
> > +
> > +     [IMX8MM_POWER_DOMAIN_VPU] = {
> > +             .genpd = {
> > +                     .name = "vpu",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_VPU_SW_Pxx_REQ,
> > +                     .map = IMX8MM_VPUMIX_A53_DOMAIN,
> > +                     .hsk = IMX8MM_VPU_HSK_PWRDNREQN,
> > +             },
> > +             .pgc   = IMX8M_PGC_VPU,
> > +     },
> > +
> > +     [IMX8MM_POWER_DOMAIN_GPU3D] = {
> > +             .genpd = {
> > +                     .name = "gpu3d",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_GPU_3D_SW_Pxx_REQ,
> > +                     .map = IMX8MM_GPU_3D_A53_DOMAIN,
> > +                     .hsk = IMX8MM_GPU_HSK_PWRDNREQN,
> > +             },
> > +             .pgc   = IMX8MM_PGC_GPU2D,
> > +     },
> > +
> > +     [IMX8MM_POWER_DOMAIN_DISP] = {
> > +             .genpd = {
> > +                     .name = "disp",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_DISP_SW_Pxx_REQ,
> > +                     .map = IMX8MM_DISP_MIX_A53_DOMAIN,
> > +                     .hsk = IMX8MM_DISP_HSK_PWRDNREQN,
> > +             },
> > +             .pgc   = IMX8M_PGC_DISP,
> > +     },
> > +
> > +     [IMX8MM_POWER_VPU_G1] = {
> > +             .genpd = {
> > +                     .name = "vpu_g1",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_VPU_G1_SW_Pxx_REQ,
> > +                     .map = IMX8MM_VPU_G1_A53_DOMAIN,
> > +             },
> > +             .pgc   = IMX8M_PGC_MIPI_CSI1,
> > +     },
> > +
> > +     [IMX8MM_POWER_VPU_G2] = {
> > +             .genpd = {
> > +                     .name = "vpu_g2",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_VPU_G2_SW_Pxx_REQ,
> > +                     .map = IMX8MM_VPU_G2_A53_DOMAIN,
> > +             },
> > +             .pgc   = IMX8M_PGC_MIPI_CSI2,
> > +     },
> > +
> > +     [IMX8MM_POWER_VPU_H1] = {
> > +             .genpd = {
> > +                     .name = "vpu_h1",
> > +             },
> > +             .bits  = {
> > +                     .pxx = IMX8MM_VPU_H1_SW_Pxx_REQ,
> > +                     .map = IMX8MM_VPU_H1_A53_DOMAIN,
> > +             },
> > +             .pgc   = IMX8M_PGC_PCIE2,
> > +     },
> > +};
> > +
> > +static const struct regmap_range imx8mm_yes_ranges[] = {
> > +             regmap_reg_range(GPC_LPCR_A_CORE_BSC,
> > +                              GPC_PU_PWRHSK),
> > +             regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_MIPI),
> > +                              GPC_PGC_SR(IMX8MM_PGC_MIPI)),
> > +             regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_PCIE),
> > +                              GPC_PGC_SR(IMX8MM_PGC_PCIE)),
> > +             regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_OTG1),
> > +                              GPC_PGC_SR(IMX8MM_PGC_OTG1)),
> > +             regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_OTG2),
> > +                              GPC_PGC_SR(IMX8MM_PGC_OTG2)),
> > +             regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_DDR1),
> > +                              GPC_PGC_SR(IMX8MM_PGC_DDR1)),
> > +             regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_GPU2D),
> > +                              GPC_PGC_SR(IMX8MM_PGC_GPU2D)),
> > +             regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_GPU),
> > +                              GPC_PGC_SR(IMX8MM_PGC_GPU)),
> > +             regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU),
> > +                              GPC_PGC_SR(IMX8MM_PGC_VPU)),
> > +             regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_DISP),
> > +                              GPC_PGC_SR(IMX8MM_PGC_DISP)),
> > +             regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU_G1),
> > +                              GPC_PGC_SR(IMX8MM_PGC_VPU_G1)),
> > +             regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU_G2),
> > +                              GPC_PGC_SR(IMX8MM_PGC_VPU_G2)),
> > +             regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU_H1),
> > +                              GPC_PGC_SR(IMX8MM_PGC_VPU_H1)),
> > +};
> > +
> > +static const struct regmap_access_table imx8mm_access_table = {
> > +     .yes_ranges     = imx8mm_yes_ranges,
> > +     .n_yes_ranges   = ARRAY_SIZE(imx8mm_yes_ranges),
> > +};
> > +
> > +static const struct imx_pgc_domain_data imx8mm_pgc_domain_data = {
> > +     .domains = imx8mm_pgc_domains,
> > +     .domains_num = ARRAY_SIZE(imx8mm_pgc_domains),
> > +     .reg_access_table = &imx8mm_access_table, };
> > +
> >  static int imx_pgc_get_clocks(struct imx_pgc_domain *domain)  {
> >       int i, ret;
> > @@ -641,6 +884,7 @@ static int imx_gpcv2_probe(struct platform_device
> > *pdev)  static const struct of_device_id imx_gpcv2_dt_ids[] = {
> >       { .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data, },
> >       { .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
> > +     { .compatible = "fsl,imx8mm-gpc", .data =
> > &imx8mm_pgc_domain_data, },
> >       { }
> >  };
> >
> > --
> > 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
