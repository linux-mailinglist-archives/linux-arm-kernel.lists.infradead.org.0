Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB63E7D79D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzUrfpK5CypaCWsXdfzXCqgupM3WlAXnhPA5G1BeIIY=; b=ckXJXGlg5TyQTB
	JKl4c1jj4NlvwZNAqcNWbJZmr2NE6FZshSls6XfpXNHwVvx74eejMOqQkaPhfSqioNXY454LGUBaK
	P38LOBAgtt7oVBhEeLL9n+qQATq5sDoxscXj/H1SEorljBEtPNQ+gDW9/wagcIAaPeA0xNkcKHweg
	MBxCtgXYFbufoCPqX4dEQByWs6NM2RCv8gVyIGl3xJacGwz8Ys25uPkUxL7Y0EfQ1BcMBUUtdEOby
	+7y34PCQ9DPDewUWJXYB0CgERUeEB0IvuUx3VxCgqtZ1WplHG91g1owIBZ9OdcS/xm5fHOqkFK1e/
	/htEZnJGudaI85IzJO0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Sl-00077I-KA; Thu, 01 Aug 2019 08:29:27 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Lk-0004mH-Nz
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:22:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 559D4FB03;
 Thu,  1 Aug 2019 10:22:11 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Gg7twQCHvA7; Thu,  1 Aug 2019 10:22:09 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 84CBD46DEA; Thu,  1 Aug 2019 10:22:09 +0200 (CEST)
Date: Thu, 1 Aug 2019 10:22:09 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH 2/2] reset: imx7: Fix IMX8MQ_RESET_MIPI_DSI_ defines
Message-ID: <20190801082209.GA7524@bogon.m.sigxcpu.org>
References: <cover.1564591352.git.agx@sigxcpu.org>
 <bd1504122f6797536a253a37f3604f5c46f02ab2.1564591352.git.agx@sigxcpu.org>
 <1564591585.7267.22.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564591585.7267.22.camel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012213_110644_40756261 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lucas,
On Wed, Jul 31, 2019 at 06:46:25PM +0200, Lucas Stach wrote:
> Am Mittwoch, den 31.07.2019, 18:43 +0200 schrieb Guido G=FCnther:
> > Some of the mipi dsi resets were called
> > =

> > =A0 IMX8MQ_RESET_MIPI_DIS_
> > =

> > instead of
> > =

> > =A0 IMX8MQ_RESET_MIPI_DSI_
> > =

> > Since they're DSI related this looks like a typo.
> > =

> > I wasn't sure if this should be a single patch since it otherwise breaks
> > bisectability. I couldn't find any device trees using this yet.
> =

> Yes, I think this should be squashed into a single commit. Other than
> that, the change looks correct.

Thanks for having a look. Sent out v2 as a single patch.
Cheers,
 -- Guido

> =

> Regards,
> Lucas
> =

> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > ---
> > =A0drivers/reset/reset-imx7.c | 12 ++++++------
> > =A01 file changed, 6 insertions(+), 6 deletions(-)
> > =

> > diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
> > index 3ecd770f910b..1443a55a0c29 100644
> > --- a/drivers/reset/reset-imx7.c
> > +++ b/drivers/reset/reset-imx7.c
> > @@ -169,9 +169,9 @@ static const struct imx7_src_signal imx8mq_src_sign=
als[IMX8MQ_RESET_NUM] =3D {
> > > > =A0	[IMX8MQ_RESET_OTG2_PHY_RESET]		=3D { SRC_USBOPHY2_RCR, BIT(0) },
> > > > =A0	[IMX8MQ_RESET_MIPI_DSI_RESET_BYTE_N]	=3D { SRC_MIPIPHY_RCR, BIT=
(1) },
> > > > =A0	[IMX8MQ_RESET_MIPI_DSI_RESET_N]		=3D { SRC_MIPIPHY_RCR, BIT(2) =
},
> > > > -	[IMX8MQ_RESET_MIPI_DIS_DPI_RESET_N]	=3D { SRC_MIPIPHY_RCR, BIT(3)=
 },
> > > > -	[IMX8MQ_RESET_MIPI_DIS_ESC_RESET_N]	=3D { SRC_MIPIPHY_RCR, BIT(4)=
 },
> > > > -	[IMX8MQ_RESET_MIPI_DIS_PCLK_RESET_N]	=3D { SRC_MIPIPHY_RCR, BIT(5=
) },
> > > > +	[IMX8MQ_RESET_MIPI_DSI_DPI_RESET_N]	=3D { SRC_MIPIPHY_RCR, BIT(3)=
 },
> > > > +	[IMX8MQ_RESET_MIPI_DSI_ESC_RESET_N]	=3D { SRC_MIPIPHY_RCR, BIT(4)=
 },
> > > > +	[IMX8MQ_RESET_MIPI_DSI_PCLK_RESET_N]	=3D { SRC_MIPIPHY_RCR, BIT(5=
) },
> > > > =A0	[IMX8MQ_RESET_PCIEPHY]			=3D { SRC_PCIEPHY_RCR,
> > > =A0						=A0=A0=A0=A0BIT(2) | BIT(1) },
> > > > =A0	[IMX8MQ_RESET_PCIEPHY_PERST]		=3D { SRC_PCIEPHY_RCR, BIT(3) },
> > @@ -220,9 +220,9 @@ static int imx8mq_reset_set(struct reset_controller=
_dev *rcdev,
> > =A0
> > > =A0	case IMX8MQ_RESET_PCIE_CTRL_APPS_EN:
> > > > =A0	case IMX8MQ_RESET_PCIE2_CTRL_APPS_EN:	/* fallthrough */
> > > > -	case IMX8MQ_RESET_MIPI_DIS_PCLK_RESET_N:	/* fallthrough */
> > > > -	case IMX8MQ_RESET_MIPI_DIS_ESC_RESET_N:	/* fallthrough */
> > > > -	case IMX8MQ_RESET_MIPI_DIS_DPI_RESET_N:	/* fallthrough */
> > > > +	case IMX8MQ_RESET_MIPI_DSI_PCLK_RESET_N:	/* fallthrough */
> > > > +	case IMX8MQ_RESET_MIPI_DSI_ESC_RESET_N:	/* fallthrough */
> > > > +	case IMX8MQ_RESET_MIPI_DSI_DPI_RESET_N:	/* fallthrough */
> > > > =A0	case IMX8MQ_RESET_MIPI_DSI_RESET_N:	/* fallthrough */
> > > > =A0	case IMX8MQ_RESET_MIPI_DSI_RESET_BYTE_N:	/* fallthrough */
> > > =A0		value =3D assert ? 0 : bit;
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
