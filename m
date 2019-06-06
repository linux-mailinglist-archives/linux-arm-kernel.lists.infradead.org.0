Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D7236EA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKO+l3q8M4Q8YLhKLIYftBJ8Wuqe874I6GR+ZIXGw2g=; b=gPZrnGZajhiP7q
	3zsOZkqzxIuq/Z3RmaclingqRyqbOo49ridYBxDX+TkhPJTMPHiYd3YtVu+3V1iPmcZSBIaWRzn5w
	NjxJ4DLwLbzyGx0czp4H4L2e79Ny0IjXHsp9ogPfD4njzbkfx49+Mn+R0loQTTQ3aaY9VjwU1pX8e
	L3gd7w6Iw9uGvohp5QSsHvLpwcFA7EuUm5bqBn3Y5wNILMFmCVE31q0RfxHPxT/up/pq/RtaPFpwj
	sUGr0wxYuZs1C7ySadD/66XiBC7+gc5xa1DCcXy5hGpPT0GNIUsnDDjlHwFeii12WdPEWX0FYlyMO
	a42gUaheazrOnjJ3u82A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYnm3-0004KX-0S; Thu, 06 Jun 2019 08:29:27 +0000
Received: from mail-eopbgr70083.outbound.protection.outlook.com ([40.107.7.83]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYnlu-0004Jj-Kb
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 08:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C8mBRO1MCnwWDV4bRO5YVT6jPtY8VhZYF2vzfSkXDO4=;
 b=greChKMy5gxKIdziq0jWVypC3sGBp32G/b++51vqAJJncnLSaeYttrJd5PTfou8IMQSKs3SB2NC1qJjbe81bqxQ38tRxPXrbHC++TVUZtS18qQD3iTsfH8J2Q5qpYt1EdKQkDmLThJRu/83qJhP8wLFrvk8P/GQlVTqEBfmlkoY=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3786.eurprd04.prod.outlook.com (52.134.71.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Thu, 6 Jun 2019 08:29:13 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 08:29:13 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: RE: [PATCH V4 1/4] dt-bindings: imx: Add clock binding doc for i.MX8MN
Thread-Topic: [PATCH V4 1/4] dt-bindings: imx: Add clock binding doc for
 i.MX8MN
Thread-Index: AQHVHAeguECfjY+e10iOlRyz227+CqaOPjIAgAAMMnA=
Date: Thu, 6 Jun 2019 08:29:13 +0000
Message-ID: <DB3PR0402MB39160A7975F9D20EF77F6186F5170@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190606013323.3392-1-Anson.Huang@nxp.com>
 <20190606074036.vx2smtauiwxy6wzx@flea>
In-Reply-To: <20190606074036.vx2smtauiwxy6wzx@flea>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 405427fd-aef5-43bd-6c0c-08d6ea590e9c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3786; 
x-ms-traffictypediagnostic: DB3PR0402MB3786:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <DB3PR0402MB3786E57EC53809727D30CB5FF5170@DB3PR0402MB3786.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(346002)(366004)(13464003)(199004)(189003)(9686003)(7416002)(7736002)(478600001)(305945005)(25786009)(6916009)(186003)(4326008)(26005)(53936002)(66446008)(73956011)(5660300002)(81156014)(6246003)(81166006)(8936002)(8676002)(52536014)(68736007)(33656002)(316002)(53376002)(86362001)(74316002)(6506007)(99286004)(6436002)(229853002)(446003)(6306002)(66066001)(55016002)(486006)(11346002)(71190400001)(476003)(76116006)(54906003)(66946007)(966005)(66476007)(14454004)(2906002)(256004)(44832011)(102836004)(3846002)(6116002)(7696005)(71200400001)(76176011)(64756008)(53546011)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3786;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7DWiVbykOzdMKFrgORxPRThhzszJM089GvGvpFOQ8yW5REMxwhBf4QNFHkAttMCdnS9Rbga6ZFbFoM0qRWyT/duewO7HWagFlkKZmsknVnSkiFCPCb/uz2hvQRPUZz1j0WOsdkbo/xwmPoiEl97KcPwb7BOvc+jRqaRQ97vCtrdV6PphxqF+zbcfz46z0SzG5Gf+KfV21sVXoSZiWy/p5F9Upi6ZNwnjuW+pLU5NMt6C6mgST9pWDLYFbh8axGFba3zJHFOaeAsYY78WpBSkmtp7v2+HTyla676YrB8EpmKOfReG5OyVy4cc9tNCZuW/02852BJv03ROTYpwxCeBYP3i4T3uY2lxwEgI72mycTTa8bDQo3+m7McHj6JfH0t8UOSh42OpNfeoPNKQDtmYt255KmjGkH9sjsbb4O0eG9E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 405427fd-aef5-43bd-6c0c-08d6ea590e9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 08:29:13.6275 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3786
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_012918_678699_157DC144 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Maxime

> -----Original Message-----
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> Sent: Thursday, June 6, 2019 3:41 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: mturquette@baylibre.com; sboyd@kernel.org; robh+dt@kernel.org;
> mark.rutland@arm.com; shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; catalin.marinas@arm.com;
> will.deacon@arm.com; olof@lixom.net; jagan@amarulasolutions.com;
> horms+renesas@verge.net.au; bjorn.andersson@linaro.org; Leonard Crestez
> <leonard.crestez@nxp.com>; dinguyen@kernel.org;
> enric.balletbo@collabora.com; Aisheng Dong <aisheng.dong@nxp.com>;
> Abel Vesa <abel.vesa@nxp.com>; Jacky Bai <ping.bai@nxp.com>;
> l.stach@pengutronix.de; Peng Fan <peng.fan@nxp.com>; linux-
> clk@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-imx
> <linux-imx@nxp.com>
> Subject: Re: [PATCH V4 1/4] dt-bindings: imx: Add clock binding doc for
> i.MX8MN
> 
> Hi,
> 
> On Thu, Jun 06, 2019 at 09:33:20AM +0800, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Add the clock binding doc for i.MX8MN.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V3:
> > 	- switch binding doc from .txt to .yaml.
> > ---
> >  .../devicetree/bindings/clock/imx8mn-clock.yaml    | 115 +++++++++++
> >  include/dt-bindings/clock/imx8mn-clock.h           | 215
> +++++++++++++++++++++
> >  2 files changed, 330 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
> >  create mode 100644 include/dt-bindings/clock/imx8mn-clock.h
> >
> > diff --git a/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
> > b/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
> > new file mode 100644
> > index 0000000..8cb8fcf
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
> > @@ -0,0 +1,115 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/bindings/clock/imx8mn-clock.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NXP i.MX8M Nano Clock Control Module Binding
> > +
> > +maintainers:
> > +  - Anson Huang <Anson.Huang@nxp.com>
> > +
> > +description: |
> > +  NXP i.MX8M Nano clock control module is an integrated clock
> > +controller, which
> > +  generates and supplies to all modules.
> > +
> > +  This binding uses common clock bindings  [1]
> > + Documentation/devicetree/bindings/clock/clock-bindings.txt
> 
> Which part exactly are you using?
> 
> I'm not sure it's worth referring to. Any provider property should be listed
> here, and the consumer properties are already checked.

Agreed, I will remove this reference statement in next version.

> 
> > +properties:
> > +  compatible:
> > +    const: fsl,imx8mn-ccm
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: 32k osc
> > +      - description: 24m osc
> > +      - description: ext1 clock input
> > +      - description: ext2 clock input
> > +      - description: ext3 clock input
> > +      - description: ext4 clock input
> > +
> > +  clock-names:
> > +    items:
> > +      - const: osc_32k
> > +      - const: osc_24m
> > +      - const: clk_ext1
> > +      - const: clk_ext2
> > +      - const: clk_ext3
> > +      - const: clk_ext4
> > +
> > +  '#clock-cells':
> > +    const: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - '#clock-cells'
> > +
> > +examples:
> > +  # Clock Control Module node:
> > +  - |
> > +    clk: clock-controller@30380000 {
> > +        compatible = "fsl,imx8mn-ccm";
> > +        reg = <0x0 0x30380000 0x0 0x10000>;
> > +        #clock-cells = <1>;
> > +        clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>,
> > +                 <&clk_ext2>, <&clk_ext3>, <&clk_ext4>;
> > +        clock-names = "osc_32k", "osc_24m", "clk_ext1",
> > +                      "clk_ext2", "clk_ext3", "clk_ext4";
> > +    };
> > +
> > +  # Required external clocks for Clock Control Module node:
> > +  - |
> > +    osc_32k: clock-osc-32k {
> > +        compatible = "fixed-clock";
> > +        #clock-cells = <0>;
> > +        clock-frequency = <32768>;
> > +	clock-output-names = "osc_32k";
> > +    };
> > +
> > +    osc_24m: clock-osc-24m {
> > +        compatible = "fixed-clock";
> > +        #clock-cells = <0>;
> > +        clock-frequency = <24000000>;
> > +        clock-output-names = "osc_24m";
> > +    };
> > +
> > +    clk_ext1: clock-ext1 {
> > +        compatible = "fixed-clock";
> > +        #clock-cells = <0>;
> > +        clock-frequency = <133000000>;
> > +        clock-output-names = "clk_ext1";
> > +    };
> > +
> > +    clk_ext2: clock-ext2 {
> > +        compatible = "fixed-clock";
> > +        #clock-cells = <0>;
> > +        clock-frequency = <133000000>;
> > +        clock-output-names = "clk_ext2";
> > +    };
> > +
> > +    clk_ext3: clock-ext3 {
> > +        compatible = "fixed-clock";
> > +        #clock-cells = <0>;
> > +        clock-frequency = <133000000>;
> > +        clock-output-names = "clk_ext3";
> > +    };
> > +
> > +    clk_ext4: clock-ext4 {
> > +        compatible = "fixed-clock";
> > +        #clock-cells = <0>;
> > +        clock-frequency= <133000000>;
> > +        clock-output-names = "clk_ext4";
> > +    };
> > +
> > +  # The clock consumer should specify the desired clock by having the
> > + clock  # ID in its "clocks" phandle cell. See
> > + include/dt-bindings/clock/imx8mn-clock.h
> > +  # for the full list of i.MX8M Nano clock IDs.
> 
> I guess this could be part of the clock-cells description.
> 

OK.

Thanks,
Anson.

> Once fixed,
> Reviewed-by: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
