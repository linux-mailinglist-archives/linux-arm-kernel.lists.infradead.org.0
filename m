Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6E61121E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 04:42:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+20TLshgDv3iKvD2H2AUp7zm0wIDIHGYqjv+PuZUOg=; b=pJxwJoXCMFYFLP
	3mzkXogFyd51B0Z/VOI67hWLIwPVH1XBNcrH++Bs2TWJIovo6sVZ+Rq8ODlb2vbFVA+IFoo+XhY7M
	wjpc8Wa00Qm7RAxMVogu9MLKxz6vl60E16NOLvr/Wxt0k6ZvqVOFm+rUMUEO+SCA1Jfr+fB2vG+ZM
	Gxrzg32mc6rw61M9yXYgAQaQkJm2Aurxkb/I6dQwDKdHrvMs6/yiz7OWZ/XS4uToN3VrrIyYi+Pvv
	dZqhMT1nJnxIpmthQ7Z9FjfHbbBC11qPipa8A0sfuNTlzzdw+7vL7RGN9lUYhz916/TXVHrTDZvdQ
	x4m2Rjm0rMgHajvtqJGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icLYf-0008PR-Ic; Wed, 04 Dec 2019 03:42:33 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icLYY-0008Oe-48
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 03:42:27 +0000
Received: by mail-il1-x143.google.com with SMTP id b15so5392029iln.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 19:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ExIWnawdKF70agAdo5JVD422cp6pCtZ9lw7kUZGa1FU=;
 b=Cf9gX9S3qrLYmV7m/6SHzqliu6YENpTGUyUE4pX1i7bs8EJlZxtNPkQ5dzY98CQjsM
 Fum1blKgKPNts6/635cpTig9uePC1/vFL6y8M6jVhtZ5d6kmWnw6NFdFY1dEGWTqBjgL
 md1E2i7PTA5dM+JV+Zy9ske5zDyEeGl57Wr/xoFdu5tmEhef2j63pfBGPc59EWhZ6ZvQ
 4lYQtrQ/rCsCMxVNEwUrw4hlVIRoOQF2bYaCW9CMCMhbjeU3pYjq+Fwj+uQNCe5FglIo
 aNSKif3Dp7/wF8AQjgNzfSTPv997Pwj75MX8FUJALQMu1LVGJtUHXJ7CKXAYseFIYGd+
 AzmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ExIWnawdKF70agAdo5JVD422cp6pCtZ9lw7kUZGa1FU=;
 b=sa3wopO6C+KxHsec/oyRQKFumWYwDez0hB57dU6BIIcRZgG+2c+HWLbjkOwU8v5H/j
 v54KBx3IOJ4sv68xqJGuHw67iSDIxxcSRSBIIisYbqJzO4QzRXipLbWIUOFLcAGEvULk
 Gjof1YvIYVSa1BBbqAZbqYaPLFb6r6Aql6UeAvuwWNhRZ7p+ERg44nPADsntKDcU8Z/N
 xGLpu52QlF90bHgRNS0Ybl0qaJRyf+lsppGAB7PvfLJa6/ggk8QaMZ6mkfVyHnOzgHH8
 j9jOChUUKE+gejdSuNsAxsejLdISMnFXbCzerOSVuTI7hYGKi/0T2BRMX85DYPJ8j/o6
 Mezw==
X-Gm-Message-State: APjAAAWh7RlyEXMnR/G4YWB2zL+6s7/2X+Rk+NWAhU9FeoSAA2jRaUDr
 iIg/B0eSN9Hvgs5O6VQ7XvmP4RBgTXcbJ2TQyck=
X-Google-Smtp-Source: APXvYqyxQ5jL8sVwLhQNqvFEVB6V+hXobWVcBj6xjKMw4Rz99e0kASbdfNa05PQQF4hckZkfqLCxmT7mOOeoFFlzuoU=
X-Received: by 2002:a05:6e02:c2c:: with SMTP id
 q12mr1620093ilg.205.1575430944433; 
 Tue, 03 Dec 2019 19:42:24 -0800 (PST)
MIME-Version: 1.0
References: <20191129234108.12732-1-aford173@gmail.com>
 <3dff516c16dbb8c654293e16c49b4c59d29fd707.camel@pengutronix.de>
 <CAHCN7x+LLBci7BJNGHkoGK7Ljgn0NbVJKitv9vR+vonrO9r2tg@mail.gmail.com>
In-Reply-To: <CAHCN7x+LLBci7BJNGHkoGK7Ljgn0NbVJKitv9vR+vonrO9r2tg@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 3 Dec 2019 21:42:13 -0600
Message-ID: <CAHCN7xLZt4QVZgH9zwZYprmmYyhVN=d7zc9-PUPdknOErwPX2g@mail.gmail.com>
Subject: Re: [PATCH 1/2] soc: imx: gpcv2: Add support for imx8mm
To: Philipp Zabel <p.zabel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_194226_190019_1AC8EAD7 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
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

On Mon, Dec 2, 2019 at 9:17 AM Adam Ford <aford173@gmail.com> wrote:
>
> On Mon, Dec 2, 2019 at 8:28 AM Philipp Zabel <p.zabel@pengutronix.de> wrote:
> >
> > On Fri, 2019-11-29 at 17:41 -0600, Adam Ford wrote:
> > > The technical reference manual for both the i.MX8MQ and i.MX8M Mini
> > > appear to show the same register definitions and locations for the
> > > General Power Controller (GPC).
> > >
> > > This patch expands the table of compatible SoC's to include
> > > the i.MX8m Mini
> > >
> > > Signed-off-by: Adam Ford <aford173@gmail.com>
> > >
> > > diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> > > index b0dffb06c05d..67c54cbb6c81 100644
> > > --- a/drivers/soc/imx/gpcv2.c
> > > +++ b/drivers/soc/imx/gpcv2.c
> > > @@ -641,6 +641,7 @@ static int imx_gpcv2_probe(struct platform_device *pdev)
> > >  static const struct of_device_id imx_gpcv2_dt_ids[] = {
> > >       { .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data, },
> > >       { .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
> > > +     { .compatible = "fsl,imx8mm-gpc", .data = &imx8m_pgc_domain_data, },
> >
> > According to the 5.2.5.1 "PGC power domains" chapters in both the i.MX
> > 8M Dual/8M QuadLite/8M Quad and i.MX 8M Mini Applications Processor
> > Reference Manuals (Rev.1), the two SoCs have a different list of power
> > domains:
>
> Shoot.  I needed to go further down in the table.  I stopped after the
> first four.
>
> Sorry for the noise.
>
> adam
> >
> > i.MX8MQ:
> >         PGC_C0
> >         PGC_C1
> >         PGC_C2
> >         PGC_C3
> >         PGC_SCU
> >         PGC_MF
> >         PGC_OTG1
> >         PGC_OTG2
> >         PGC_PCIE
> >         PGC_MIPI
> >         PGC_DDR1
> >         PGC_DDR2
> >         PGC_VPU
> >         PGC_GPU
> >         PGC_HDMI
> >         PGC_DISP
> >         PGC_MIPI_CSI1
> >         PGC_MIPI_CSI2
> >         PGC_PCIE2
> >
> > i.MX8MM:
> >         PGC_C0
> >         PGC_C1
> >         PGC_C2
> >         PGC_C3
> >         PGC_SCU
> >         PGC_NOC
> >         PGC_PCIE
> >         PGC_OTG1
> >         PGC_OTG2
> >         PGC_DDR1
> >         PGC_DISPMIX
> >         GPC_MIPI
> >         PGC_GPUMIX
> >         PGC_GPU_3D
> >         PGC_GPU_2D
> >         PGC_VPUMIX
> >         PGC_VPU_G1
> >         PGC_VPU_G2
> >         PGC_VPU_H1
Philipp,

Thanks for reviewing it and catching my mistake.

I went though the datasheet more thoroughly, and I think I have the
table correct for the i.MX8M Mini.  With that and a small tweak to the
OTG nodes, I was able to use USB OTG1 and OTG2 ports.

I am going to submit a V2 fix tomorrow after I clean it up.  I'll do a
multi-part series where part 1 is the GPC, part 2 will be the OTG
updates, and if I get more peripherals working, I'll add them as
additional parts to the series.

adam
> >
> > regards
> > Philipp
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
