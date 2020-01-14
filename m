Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00999139EE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 02:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yT4r1zn7zHCDo4jz7UB1KRE3MUuhGBBfRmJ8vGCxp2c=; b=scm86K0CWi5/F8
	3mKRD3jvmb5tzCtcRG0lP107L+uvLAXtM7z7GfKDY5HgmeB8ZTacya/5I/gZwbzNOqB9hR7NywuCu
	XvuY4hyVKcPbdSI/+HhVo8+TBlyxQTJAciFYdNgLmuGFlto1Mf9NDWPnlOmh/pRf71IxSIKNApmv/
	p5SUpCYVOb6088DzN/XWnE0Tc/6LZi1z+ZTaxxWr4e4iTxYyqMJRGMyXQGI2b513KBUI9WAYDZRiD
	Uu5jSqYxXrWdSu8WLrjroYmWuwXmjs7sxSLD7t4cwzcBWc8f+TeBsAxTXGVcMUlBaEJJlBvhxEonl
	zWZbaJSbkZsifPKxNO4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irAxq-0002z1-PS; Tue, 14 Jan 2020 01:25:50 +0000
Received: from mail-am6eur05on2045.outbound.protection.outlook.com
 ([40.107.22.45] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irAxg-0002yT-GN
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 01:25:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BOUmCTN3SlJh7nM4+7R9H23PGmg163B0h9L95JUUKMiXA6y0ExR5KRhNY58NwrdqDAij3Kn6qsoBjqGWx43wwkuUP5UjZFka8hViOiHefz5BKB2gfTWR5lismx7ctWEIxDZDSH6u8IAaYBS8TGVcFN2o1gq5VBsuQNgQeCrle+TbruYsYUOfu/HYVryFy1SQu/L/FuDRggTCYVRjIcGtXC6BKmu5glmcd6o7S6+Wmi6lK+9ZcjwbFF5WfhLpX9d7OI2MpRGEXP8mdImY9gQQmelEeEqz1neBJJmbvxWBucCqA0+5C8Ak/CDxvdxNQN2+KSGCYO0U2LxD1bdu8PNWIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ivmqQCMOBKURI/U4sDGZa03bwIe4+ZecI4XMXFKlaRM=;
 b=ZbrEQewC8I0qzEVIhGpAtYS4GAJHoQKywOejyWYtQJl/NOcM2OcdQpaV/TRIsudwM+MRxsWxoPaH3dvjlCZZhCxHiktW+5xgg9F1Bz3eeU6QHOMUTFtR2PBZ43vtaQEzwgpYBGYuFE8YhJ1iXluJgNVu2znpVNXWzBIzUOgYTkgufRF6iMYffuxXTaSye6E5gOZrgObLPS1sSE2prq9C3+51URDfGHE1c3VhfM+9ZCvWHtH00qVyPJDeoGQUk9NsjF8MF9mUX3W4ywVCBlIFrr+IOw5Qo3gBjf97WNpLTSwB48PL2vcI5fXr9OqFXApoMAjlmsfBaotObjdTXWQFAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ivmqQCMOBKURI/U4sDGZa03bwIe4+ZecI4XMXFKlaRM=;
 b=fqg9bsI0vT0aUb3e6r6B+sNoKeZ1kvTnbMtw+JeRohJCrRpSLFNNGdgSTXapoI36yzWZILw3ka/dls65efoH1GSDgdDvKXP4mEwLPouD9VD9acHoDlq/GL6unyJZIlfcYXMg/0+O3iOjFA0K6iROQNGrd2yi7StaFfNC4bisTlI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3769.eurprd04.prod.outlook.com (52.134.71.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.16; Tue, 14 Jan 2020 01:25:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 01:25:36 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH 1/3] dt-bindings: clock: Convert i.MX8MQ to json-schema
Thread-Topic: [PATCH 1/3] dt-bindings: clock: Convert i.MX8MQ to json-schema
Thread-Index: AQHVx4vbRwDkRSfO1EW8Ves0taMPv6fpIXOAgABBktA=
Date: Tue, 14 Jan 2020 01:25:36 +0000
Message-ID: <DB3PR0402MB391644F6152A726A13B8F628F5340@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1578642914-838-1-git-send-email-Anson.Huang@nxp.com>
 <20200113212735.GA9275@bogus>
In-Reply-To: <20200113212735.GA9275@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e7129e71-7a6e-462d-0116-08d79890a872
x-ms-traffictypediagnostic: DB3PR0402MB3769:|DB3PR0402MB3769:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB37694010FB48FBF12053A343F5340@DB3PR0402MB3769.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(39860400002)(396003)(376002)(136003)(346002)(366004)(199004)(189003)(26005)(6506007)(66446008)(54906003)(66556008)(64756008)(2906002)(66946007)(66476007)(316002)(86362001)(7416002)(9686003)(4326008)(7696005)(186003)(76116006)(55016002)(52536014)(33656002)(44832011)(8936002)(5660300002)(81166006)(478600001)(45080400002)(6916009)(71200400001)(8676002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3769;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tk63VTKs5lvWxOplw9LLNNNItSPXGqPbZn4+rFYFlEGCLEM0kk8QyRRenDHkD0f/zKsjHy/eNt9LBnzuCKxgwlciHkeTXq2SUQRSd8aRlX+3Fvs5FWwXIswIOdV/mIa8Hk3VZteDfgOXS4tJpJWYA4JPKGUkTe3eAiZaFLedRK5uBTafDiqwvftb5HHDUTy/zzLmctf9m7AJr0eYlhFR7SgWYRHjzEA0WI4ETtjkZ7uZu9uq5D65Tkv7QrP3d4lxKpD96QhyjK962hYBk+zRzOJHXfxvf+tyDdNTAb4HBb7lGhEjAHwOEewQIE7di6gI7lCrBoYTTmM/ZQ92cysSDdjaMCUHW53vzPMAB6yi/laWJ4Rz5xc0R6Zs4OWWasarsZJQLnNb5RivLqUDJH+WpDooxq3Z5Fw9KahiVb4kTNWWo7jG7x/7pLS7Z3u/55QTkWLppACFCEXZFBOnIP7ozuk71WV8wnDejrjBfacb+mILPGrwoeIg3d7SX3OxcsSDjqEsaxDpob7zlCV2it9basnH+VL8lCVDv/bIG06rhsx9vFlMV9JG76vBT6N525E5gcx4ZKJvCrH+nfMFsgfskQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7129e71-7a6e-462d-0116-08d79890a872
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 01:25:36.1872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CBWAG0TWPAuv9bErLNKaSeIUkYdGF2KkqMv4atO+0aFeSp9QrAQJO/TbAfKHNYE4CBg8Et5Hki7YDiJs88yTzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_172540_700303_78E97505 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Rob

> Subject: Re: [PATCH 1/3] dt-bindings: clock: Convert i.MX8MQ to json-schema
> 
> On Fri, Jan 10, 2020 at 03:55:12PM +0800, Anson Huang wrote:
> > Convert the i.MX8MQ clock binding to DT schema format using
> > json-schema
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  .../devicetree/bindings/clock/imx8mq-clock.txt     | 20 ------
> >  .../devicetree/bindings/clock/imx8mq-clock.yaml    | 72
> ++++++++++++++++++++++
> >  2 files changed, 72 insertions(+), 20 deletions(-)  delete mode
> > 100644 Documentation/devicetree/bindings/clock/imx8mq-clock.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/clock/imx8mq-clock.yaml
> 
> Fails 'make dt_binding_check':
> 
> /builds/robherring/linux-dt-
> review/Documentation/devicetree/bindings/clock/imx8mn-
> clock.example.dt.yaml:
> clock-controller@30380000: clock-names:0: 'ckil' was expected
> /builds/robherring/linux-dt-
> review/Documentation/devicetree/bindings/clock/imx8mn-
> clock.example.dt.yaml:
> clock-controller@30380000: clock-names:1: 'osc_25m' was expected
> /builds/robherring/linux-dt-
> review/Documentation/devicetree/bindings/clock/imx8mn-
> clock.example.dt.yaml:
> clock-controller@30380000: clock-names:2: 'osc_27m' was expected
> /builds/robherring/linux-dt-
> review/Documentation/devicetree/bindings/clock/imx8mn-
> clock.example.dt.yaml:
> clock-controller@30380000: clock-names:3: 'clk_ext1' was expected
> /builds/robherring/linux-dt-
> review/Documentation/devicetree/bindings/clock/imx8mn-
> clock.example.dt.yaml:
> clock-controller@30380000: clock-names:4: 'clk_ext2' was expected
> /builds/robherring/linux-dt-
> review/Documentation/devicetree/bindings/clock/imx8mn-
> clock.example.dt.yaml:
> clock-controller@30380000: clock-names:5: 'clk_ext3' was expected
> /builds/robherring/linux-dt-
> review/Documentation/devicetree/bindings/clock/imx8mn-
> clock.example.dt.yaml:
> clock-controller@30380000: clock-names: ['osc_32k', 'osc_24m', 'clk_ext1',
> 'clk_ext2', 'clk_ext3', 'clk_ext4'] is too short
> /builds/robherring/linux-dt-
> review/Documentation/devicetree/bindings/clock/imx8mn-
> clock.example.dt.yaml:
> clock-controller@30380000: clocks: [[1], [2], [3], [4], [5], [6]] is too short

I did NOT see build fail on my side, anything missed in my environment setup? The failure
log is for i.MX8MN, while this binding doc is i.MX8MQ, is it caused by the incorrect compatible
string which should be "fsl,imx8mq-ccm", but I made it "fsl,imx8mn-ccm" by mistake?

anson@anson-OptiPlex-790:~/workspace/stash/linux-next$ ./zeus.sh
*** Default configuration is based on 'defconfig'
#
# No change to .config
#
  CHKDT   Documentation/devicetree/bindings/clock/imx8mq-clock.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
  DTC     Documentation/devicetree/bindings/clock/imx8mq-clock.example.dt.yaml
  CHECK   Documentation/devicetree/bindings/clock/imx8mq-clock.example.dt.yaml
anson@anson-OptiPlex-790:~/workspace/stash/linux-next$



> 
> >
> > diff --git a/Documentation/devicetree/bindings/clock/imx8mq-clock.txt
> > b/Documentation/devicetree/bindings/clock/imx8mq-clock.txt
> > deleted file mode 100644
> > index 52de826..0000000
> > --- a/Documentation/devicetree/bindings/clock/imx8mq-clock.txt
> > +++ /dev/null
> > @@ -1,20 +0,0 @@
> > -* Clock bindings for NXP i.MX8M Quad
> > -
> > -Required properties:
> > -- compatible: Should be "fsl,imx8mq-ccm"
> > -- reg: Address and length of the register set
> > -- #clock-cells: Should be <1>
> > -- clocks: list of clock specifiers, must contain an entry for each required
> > -          entry in clock-names
> > -- clock-names: should include the following entries:
> > -    - "ckil"
> > -    - "osc_25m"
> > -    - "osc_27m"
> > -    - "clk_ext1"
> > -    - "clk_ext2"
> > -    - "clk_ext3"
> > -    - "clk_ext4"
> > -
> > -The clock consumer should specify the desired clock by having the
> > clock -ID in its "clocks" phandle cell.  See
> > include/dt-bindings/clock/imx8mq-clock.h
> > -for the full list of i.MX8M Quad clock IDs.
> > diff --git a/Documentation/devicetree/bindings/clock/imx8mq-clock.yaml
> > b/Documentation/devicetree/bindings/clock/imx8mq-clock.yaml
> > new file mode 100644
> > index 0000000..881c01c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/imx8mq-clock.yaml
> > @@ -0,0 +1,72 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > +cetree.org%2Fschemas%2Fbindings%2Fclock%2Fimx8mq-
> clock.yaml%23&amp;da
> >
> +ta=02%7C01%7CAnson.Huang%40nxp.com%7C716f35d49b1b4a91be7308d
> 7986f6a81
> >
> +%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637145476602540
> 776&amp;
> >
> +sdata=vzAWrWQgmAz%2FnWaU%2BMKd%2FpbhHs6U1%2FOGljRQQXIp9S
> Q%3D&amp;rese
> > +rved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > +cetree.org%2Fmeta-
> schemas%2Fcore.yaml%23&amp;data=02%7C01%7CAnson.Hua
> >
> +ng%40nxp.com%7C716f35d49b1b4a91be7308d7986f6a81%7C686ea1d3bc2
> b4c6fa92
> >
> +cd99c5c301635%7C0%7C0%7C637145476602540776&amp;sdata=QTYQ6Bh
> %2BLsbGjR
> > +8pU8tTsV9MM2GOT23OnholQfgaxa0%3D&amp;reserved=0
> > +
> > +title: NXP i.MX8M Quad Clock Control Module Binding
> > +
> > +maintainers:
> > +  - Anson Huang <Anson.Huang@nxp.com>
> > +
> > +description: |
> > +  NXP i.MX8M Quad clock control module is an integrated clock
> > +controller, which
> > +  generates and supplies to all modules.
> > +
> > +properties:
> > +  compatible:
> > +    const: fsl,imx8mn-ccm
> 
> Wrong compatible...

Oops, my mistake, I reviewed many times before sending out the patch, but still miss this...
Sorry for that.

Anson

> 
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: 32k osc
> > +      - description: 25m osc
> > +      - description: 27m osc
> > +      - description: ext1 clock input
> > +      - description: ext2 clock input
> > +      - description: ext3 clock input
> > +      - description: ext4 clock input
> > +
> > +  clock-names:
> > +    items:
> > +      - const: ckil
> > +      - const: osc_25m
> > +      - const: osc_27m
> > +      - const: clk_ext1
> > +      - const: clk_ext2
> > +      - const: clk_ext3
> > +      - const: clk_ext4
> > +
> > +  '#clock-cells':
> > +    const: 1
> > +    description:
> > +      The clock consumer should specify the desired clock by having the
> clock
> > +      ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8mq-
> clock.h
> > +      for the full list of i.MX8M Quad clock IDs.
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
> > +        compatible = "fsl,imx8mq-ccm";
> > +        reg = <0x30380000 0x10000>;
> > +        #clock-cells = <1>;
> > +        clocks = <&ckil>, <&osc_25m>, <&osc_27m>,
> > +                 <&clk_ext1>, <&clk_ext2>,
> > +                 <&clk_ext3>, <&clk_ext4>;
> > +        clock-names = "ckil", "osc_25m", "osc_27m",
> > +                      "clk_ext1", "clk_ext2",
> > +                      "clk_ext3", "clk_ext4";
> > +    };
> > +
> > +...
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
