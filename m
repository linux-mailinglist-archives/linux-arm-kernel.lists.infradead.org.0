Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD4B10EC2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 16:18:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uj157qUl8t55fQDkksmjd0R5t+ryOPeC1Wj+mPZ7rcM=; b=J4TG3GhfVVqgK4
	C+7BQf5sDUvg8TM6Fb2gtuJRHMnTdfCKGkWhRGRrf1svDkQ52FS9o0gVNGsUVODekCw7LRWndtzNE
	soszfCt4X/xiflmaVBtwGJa7g2Wn5wG/p4wFE/5etk9X9Dt44DdjcMgdYVAzqhsWEt426tGqZ7vgt
	rdlU4O6Zvd5T3QfjDA099UsRAsb7+6YO9ybMu2hyh89Zn9Qckwk6MbnsLU8UVxJbVGKRP/dj0DuJd
	6OQjBj4OKA2h29fbLBLEurY5Jqej6h+tK5dx2+UN17UEurl5q8w+wajR3y4IFox6vM7Wk9i6aWJBX
	V+HdQSGoNBQ4s/T+88Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibnSy-00032c-1E; Mon, 02 Dec 2019 15:18:24 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnSp-00031x-Cu
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 15:18:17 +0000
Received: by mail-il1-x144.google.com with SMTP id u16so7717264ilg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 07:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UjeogKFi5KS3aQSbHG8R3fUmgd8lYS9MSCQDuVh2WvE=;
 b=lbQcHztOV2MzGE2/KhjJZaflYVbeXHPQxAJNZCKuilOJpGS/AL+QfBLYWsf5g0pPuQ
 R1tdBxUr12jiCk5jhml3Brom5a+22HYlwD0V6DMGhXnD9QzJVKjqICeUZNhtI+DRQr50
 zFAPz/L8DspLaKgjY+erR0pVe+6clAiGBomgAeaSmEpbXd4aGFX4GhZDvKBkVaU/V7hi
 dcbzHUG6JGUNBo5tPspZRAywNzIq5UlWSt/+PGhtOv2kVuLGbXg7XdoHwa2e+RmE6xkN
 bXeNX0iCQQ2HqrH5+JcIyNmi9SDrX6s7dUElLZvO2F7sxdqMBHoWfvPGO9qUuhlEfSgV
 09Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UjeogKFi5KS3aQSbHG8R3fUmgd8lYS9MSCQDuVh2WvE=;
 b=YIWII5PM0v2byaoayNQFzvkhMXdm5SetL6+TOseeHmLcu4RMPVkzdWqfuWjLtCYW3e
 iLJrBxCu+IohKN+6lGYOUmE38FyMo6pR4rTgs+MS6mt7aJGdrpVyDdn2+Buy3bptK1NT
 iYHBIxmxLb0z4m543ZYSKDcdG1gjDbFOxfRy9BJLAKHd38Fl/EFFaPd/QksnZpceIWfl
 4i6DJgGiOdXy8IeynD7BxbsVNtZF0KRO0FfDC5ipbmogsB6lhaEVO0U4NpheCsxjAxxK
 fvfqqWWwz+WSrFEDYY7gGHu6/SJeidJ+mms58EHqq0BkfX9Qx+UVGR9a3NDyGb2b3uRO
 3gbQ==
X-Gm-Message-State: APjAAAUa9C0WlwzKInuxV1awUKlQzsYA3rDJKvrECfxbsYtYHXwXQNYY
 IlGDcGPemuR6N4VIE93eo13UBF9rRzD3/YzBMxs=
X-Google-Smtp-Source: APXvYqwcnblataYwOUw2bbo0E9yr/M4cASJ9KZg0wuqkBi3i3JEubcxY6cy5v/gLNt/N/fKvvHvkkA2vlVSHpYRwLX0=
X-Received: by 2002:a92:1547:: with SMTP id v68mr24633087ilk.58.1575299892254; 
 Mon, 02 Dec 2019 07:18:12 -0800 (PST)
MIME-Version: 1.0
References: <20191129234108.12732-1-aford173@gmail.com>
 <3dff516c16dbb8c654293e16c49b4c59d29fd707.camel@pengutronix.de>
In-Reply-To: <3dff516c16dbb8c654293e16c49b4c59d29fd707.camel@pengutronix.de>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 2 Dec 2019 09:17:59 -0600
Message-ID: <CAHCN7x+LLBci7BJNGHkoGK7Ljgn0NbVJKitv9vR+vonrO9r2tg@mail.gmail.com>
Subject: Re: [PATCH 1/2] soc: imx: gpcv2: Add support for imx8mm
To: Philipp Zabel <p.zabel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_071815_463151_2C4987FD 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 2, 2019 at 8:28 AM Philipp Zabel <p.zabel@pengutronix.de> wrote:
>
> On Fri, 2019-11-29 at 17:41 -0600, Adam Ford wrote:
> > The technical reference manual for both the i.MX8MQ and i.MX8M Mini
> > appear to show the same register definitions and locations for the
> > General Power Controller (GPC).
> >
> > This patch expands the table of compatible SoC's to include
> > the i.MX8m Mini
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> >
> > diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> > index b0dffb06c05d..67c54cbb6c81 100644
> > --- a/drivers/soc/imx/gpcv2.c
> > +++ b/drivers/soc/imx/gpcv2.c
> > @@ -641,6 +641,7 @@ static int imx_gpcv2_probe(struct platform_device *pdev)
> >  static const struct of_device_id imx_gpcv2_dt_ids[] = {
> >       { .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data, },
> >       { .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
> > +     { .compatible = "fsl,imx8mm-gpc", .data = &imx8m_pgc_domain_data, },
>
> According to the 5.2.5.1 "PGC power domains" chapters in both the i.MX
> 8M Dual/8M QuadLite/8M Quad and i.MX 8M Mini Applications Processor
> Reference Manuals (Rev.1), the two SoCs have a different list of power
> domains:

Shoot.  I needed to go further down in the table.  I stopped after the
first four.

Sorry for the noise.

adam
>
> i.MX8MQ:
>         PGC_C0
>         PGC_C1
>         PGC_C2
>         PGC_C3
>         PGC_SCU
>         PGC_MF
>         PGC_OTG1
>         PGC_OTG2
>         PGC_PCIE
>         PGC_MIPI
>         PGC_DDR1
>         PGC_DDR2
>         PGC_VPU
>         PGC_GPU
>         PGC_HDMI
>         PGC_DISP
>         PGC_MIPI_CSI1
>         PGC_MIPI_CSI2
>         PGC_PCIE2
>
> i.MX8MM:
>         PGC_C0
>         PGC_C1
>         PGC_C2
>         PGC_C3
>         PGC_SCU
>         PGC_NOC
>         PGC_PCIE
>         PGC_OTG1
>         PGC_OTG2
>         PGC_DDR1
>         PGC_DISPMIX
>         GPC_MIPI
>         PGC_GPUMIX
>         PGC_GPU_3D
>         PGC_GPU_2D
>         PGC_VPUMIX
>         PGC_VPU_G1
>         PGC_VPU_G2
>         PGC_VPU_H1
>
> regards
> Philipp
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
