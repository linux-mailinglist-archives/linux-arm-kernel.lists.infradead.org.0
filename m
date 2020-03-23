Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EA318F31E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 11:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7c0jktVPTZyxtC9sDTQAARSzup2SOBEg17bciPkbkgw=; b=ez357+rCGGnKu5
	qjbaKALZVP/iuoybXGpmWokfLR9ac/h57K5tuN6jefqsARv4/axjPM96gFUrNfXSiZqdIgv2r1xCr
	TV7o9IinmTIMxrb/hS6+2Mw6ymI8QALI0i1cQZqXKlZlqjl2+y1iS+zKWZYqCk7+VCLMVyLGhFQY2
	6I3Aav4zjass5XGgEtyGdS1zLT24BtxbDve0N17q9e2Rd7uTz2NwAussm7BWR+Dy4yZ5g/B0DHwe0
	CgxuQ84Q7JR/KRznmg9lrAWeY0t5iPOPvtj7YT922AhiYkWpHvPGggadwCrs86tHoDRK42XCu7nJ2
	fmh7+rDPRgsZ9rRqDEbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKd8-00076X-Kf; Mon, 23 Mar 2020 10:48:26 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKd0-00075e-Ol
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 10:48:20 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6DC0F2011BD;
 Mon, 23 Mar 2020 11:48:15 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5FFA62011A3;
 Mon, 23 Mar 2020 11:48:15 +0100 (CET)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 453CA2035C;
 Mon, 23 Mar 2020 11:48:15 +0100 (CET)
Date: Mon, 23 Mar 2020 12:48:15 +0200
From: Abel Vesa <abel.vesa@nxp.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [RFC 02/11] arm64: dts: imx8mp: Add AIPS 4 and 5
Message-ID: <20200323104815.u5f4cwdrs2nongm2@fsr-ub1664-175>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-3-git-send-email-abel.vesa@nxp.com>
 <AM0PR04MB44814EAE53E091499C639F3188FA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB44814EAE53E091499C639F3188FA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_034818_941903_478F1833 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-03-13 07:44:43, Peng Fan wrote:
> > Subject: [RFC 02/11] arm64: dts: imx8mp: Add AIPS 4 and 5
> > 
> > There are 5 AIPS maps in total, according to the RM. Add the missing ones
> > here.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > index 71b0c8f..a997ca7 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > @@ -603,6 +603,22 @@
> >  			};
> >  		};
> > 
> > +		aips4: bus@32c00000 {
> > +			compatible = "simple-bus";
> 
> "fsl,aips-bus", "simple-bus";
> 
> > +			reg = <0x32c00000 0x400000>;
> 
> Size is 64KB
> 
> > +			#address-cells = <1>;
> > +			#size-cells = <1>;
> > +			ranges;
> > +		};
> > +
> > +		aips5: bus@30c00000 {
> > +			compatible = "simple-bus";
> > +			reg = <0x30c00000 0x400000>;
> 
> Ditto. Please correct compatible and reg.
> 

Will do in the next version.

> Without this, I think there is no need to only
> add bus here? It might be better to also include
> subnodes under aips bus.

AIPS 5 is needed by the next patch in this series.
So it wouldn't make sense to have a patch that adds
only the fifth one, skipping the fourth one.

> 
> Regards,
> Peng.
> 
> > +			#address-cells = <1>;
> > +			#size-cells = <1>;
> > +			ranges;
> > +		};
> > +
> >  		gic: interrupt-controller@38800000 {
> >  			compatible = "arm,gic-v3";
> >  			reg = <0x38800000 0x10000>,
> > --
> > 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
