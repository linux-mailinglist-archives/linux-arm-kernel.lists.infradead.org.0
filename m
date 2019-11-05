Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762FFF05EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 20:26:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=najExg/VdD9HBceZsQ1pCazly2Af4XaP9tSQVDJl2is=; b=gJ9l+eLLtiaumv
	RGH6VDG0Lc/Soi4EqabzeBREYQCZzjYb0kzuXlBTvcZu0hDRcXCf5c7h7ridQWL0q5pW+uft1Gvs4
	d4xltrOgevrLcfcil4mpBW213ehvnNRH8atjsry/xIMkjVcFVRiqAto1d6hXmeGLMlLk86g49arLU
	w6k3BWcuhil1nREysXNr3HS7m/VcDIYM6NuzNT4KTRB5HEEtZcyQpv7NLNuui4dtKxn/7dinRMS4m
	dZbrjuw59Vv+g/ZxK5RE85TrlIVHv9uvfxR2Z8WycsqQARoStgvIUdHzsUMcOm0wXOKvZsjUq3bb7
	VeT00p0Zpuv1SiS/qDog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS4Sz-0004G5-P6; Tue, 05 Nov 2019 19:26:13 +0000
Received: from mail-eopbgr10051.outbound.protection.outlook.com ([40.107.1.51]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS4Sp-0004EQ-Om
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 19:26:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G8GJcIbZ0JLnP3fHrgMIQhYTTaOukFilNoKhbPYmZkFe0ynm+Nse/AHh1UE+x/Vv3zVw61XAEVrb0zOpYT5QbkGmaFk10RpWn96cG4332qDpHzQ6k/ALD8XDoxV7ssal+G3QHCHcO9Bm9sWnWkIk64I9jQ4K8i0s+Gc2DIk5A4vZDI5AS2tVuMnDR+ivjnqC35T7zAgQvofXFZSxFepNRFcoOpdvKIkVFxX/ILE+u5CeyBsPg/vsuqyLlysbPOgQBXehcNuLMLMy9YKPyuSVF02wVV2UCaxIIYfpkEmXO64aFBZZ+oN6toK4ujavqvhU948Kzq+8tXy5/EhoPOueDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ddzith1KCgIQvGUdk2FllzeY1o8XmIkimAvZ7eZbiYs=;
 b=COAAhHsclhEZuBQzouJ0PXBlvbbzqQakeqDC9TmimKaXFSx9Zx+dLesIrsAt+mqVeQRdkGPMgKO99v3DHG36cByPtAHs9AeRibYTWwB+U+bhmZAKbQUb5AsvH1SLOfnxPqefXh0/HpizoivvD+PcIYnyB8mcwAYlWepqEIqHqWaOjaerl+v7GPqt+cCEqEKuJKrpGvcR4O3M2DL9cRi8SE8kgfptrIMxi4VAK0Js3EGcvJp66JadcsBRxROlkyVxPTnTNvLdmTJQgM9N+nR6qU/7HP//Q80T33D1lnDW2i91powk8GORqMqE7Ky2PtF+qX0bjMlAEGVqfPCXeC8Irw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ddzith1KCgIQvGUdk2FllzeY1o8XmIkimAvZ7eZbiYs=;
 b=TiRRiiKd3PMgcKZa8aTGsNLsH1rEnm8rKWzx36QC0XlBJAq80e3nRDeUuSZfUmMeDBzCp2QOYkeRzja5xR3T1/o6fpBBIWkRi5A5dyk/HQW7/QGTYYefHVmzftqVOfmYvgwT/PFNnAlJwpfwMrHA4QdMXAyzckr5+e4QEZneZPE=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5759.eurprd04.prod.outlook.com (20.178.125.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 19:25:57 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 19:25:57 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Rob Herring <robh@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi
 <cw00.choi@samsung.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: devfreq: Add bindings for imx ddr
 controller
Thread-Topic: [PATCH v3 3/6] dt-bindings: devfreq: Add bindings for imx ddr
 controller
Thread-Index: AQHVkDU6emQ0aN+uuUOlCrShp6WAog==
Date: Tue, 5 Nov 2019 19:25:57 +0000
Message-ID: <VI1PR04MB7023F375AEDC4549FA12247FEE7E0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
 <b9a87c69eb603622303add4f0c02dd4c1262462a.1572558427.git.leonard.crestez@nxp.com>
 <20191104222126.GB5218@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7825f8c0-8c2c-4ef3-babd-08d76225fc19
x-ms-traffictypediagnostic: VI1PR04MB5759:|VI1PR04MB5759:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5759EF7E2A85C3636D71C34CEE7E0@VI1PR04MB5759.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(366004)(136003)(346002)(396003)(189003)(199004)(476003)(6246003)(9686003)(256004)(102836004)(81156014)(8676002)(76176011)(446003)(66556008)(25786009)(3846002)(71200400001)(6116002)(66476007)(6306002)(6436002)(71190400001)(14454004)(66946007)(45080400002)(76116006)(66446008)(316002)(4326008)(478600001)(966005)(7696005)(2906002)(186003)(6506007)(110136005)(86362001)(26005)(7736002)(8936002)(305945005)(64756008)(55016002)(7416002)(91956017)(486006)(99286004)(66066001)(5660300002)(44832011)(33656002)(229853002)(52536014)(74316002)(81166006)(54906003)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5759;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xOa7ZzTL1I5s6UPvJLkyJ9akHpwqlqN4jM8FQgWliUnzpUJo5UaZ1eQ4ftkyq/7Vrm5+8YCLdEY6kEcnm0Khr6du5HDqMWKWwLwFPf1GoqDEiGkBeGyvsGlMyG6Jes4ta/ggAQqyMvRZ4gg7N7BjhA6Mj25Fl43cNibbJG/7CD1KMZNKUYWdd4aUaJfpTLrVbrPTrVnjOrwlu84T3N0n1sV2lqzjqoXPStTkJTw52sQ1AT8X/0Gjwqzqlon0V+FTmSTfE5+NTQTLP3HdEtsRXzFEoMGkfA5T52DuiWahwAp2eGhEhWJk4Uyg6nwEZgR88FTGPnRytcFHe61MWA+pae/F0yVTwAWJIFoiS9mP7m/Eqhiv3EfoLp9Y9KuiZf55BYaywtNGeO0nrL53xm9lA2uK2ulh5AAmNeE85n0eUVWMVIperKlprNPzcAF9bDHcNblRfKjS2VtoSJ7IQBtY49h7l2UcWX579SEN2F2drxM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7825f8c0-8c2c-4ef3-babd-08d76225fc19
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 19:25:57.7010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YXe8EaZx92W5tqBZ1CuAbY9i5q0W5GALgOEt4d1n23gxr0hJlzHlYXUrfN1tDkhAqVTMYFzjODj5vW2X+I0AjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5759
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_112603_895035_919E33AD 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Matthias Kaehlcke <mka@chromium.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05.11.2019 00:21, Rob Herring wrote:
> On Thu, Oct 31, 2019 at 11:50:24PM +0200, Leonard Crestez wrote:
>> Add devicetree bindings for the i.MX DDR Controller on imx8m series
>> chips. It supports dynamic frequency switching between multiple data
>> rates and this is exposed to Linux via the devfreq subsystem.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   .../devicetree/bindings/devfreq/imx-ddrc.yaml | 60 +++++++++++++++++++
> 
> .../bindings/memory-controllers/

Okay, but I'm not sure about the rules here. Usually there is a 1:1 
mapping between subsystems and bindings directory but I guess devfreq is 
odd since it's not really a physical class of device.

I saw there is also a drivers/memory and there is already a 
devfreq-using driver in there (EXYNOS5422_DMC).

It's not clear if my driver fits in there; as far as I can see the only 
"core" functionality in drivers/memory is parsing DDR timings from DTS 
but for imx8m this is all controlled in firmware.

>>   1 file changed, 60 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml b/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
>> new file mode 100644
>> index 000000000000..31db204e6845
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
>> @@ -0,0 +1,60 @@
>> +# SPDX-License-Identifier: GPL-2.0
> 
> For new bindings:
> 
> # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> 
>> +%YAML 1.2
>> +---
>> +$id: https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fdevfreq%2Fimx-devfreq.yaml%23&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cba47e72161764d5a969a08d761755736%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637085028918247356&amp;sdata=2DjKgyATOPu7qhzpOCfRrmUM0%2FSAQrV9R7AxZxib8gk%3D&amp;reserved=0
> 
> Run 'make dt_binding_check'. This will fail as the filename doesn't
> match.
> 
>> +$schema: https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cba47e72161764d5a969a08d761755736%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637085028918247356&amp;sdata=EbyVK2ZF6Z22vE%2F4LfIVv0S1LoMe7%2BxhM43H1i8nxtE%3D&amp;reserved=0
>> +
>> +title: i.MX DDR Controller
> 
> Perhaps i.MX8x as it's not all i.MX chips. And the filename too?

Ok, will rename to imx8m-ddrc since it's not even for all imx8.

>> +
>> +maintainers:
>> +  - Leonard Crestez <leonard.crestez@nxp.com>
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - enum:
>> +        - fsl,imx8mn-ddrc
>> +        - fsl,imx8mm-ddrc
>> +        - fsl,imx8mq-ddrc
>> +      - const: fsl,imx8m-ddrc
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 4
>> +
>> +  clock-names:
>> +    items:
>> +      - const: dram_core
>> +      - const: dram_pll
>> +      - const: dram_alt
>> +      - const: dram_apb
> 
> Drop 'dram_'

OK

>> +
>> +  operating-points-v2: true
>> +
>> +  devfreq-events:
>> +    description: Phandle of PMU node
>> +    $ref: "/schemas/types.yaml#/definitions/phandle"
>> +
>> +required:
>> +  - reg
>> +  - compatible
>> +  - clocks
>> +  - clock-names
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/imx8mm-clock.h>
>> +    ddrc: dram-controller@3d400000 {
>> +        compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
>> +        reg = <0x3d400000 0x400000>;
>> +        clock-names = "dram_core", "dram_pll", "dram_alt", "dram_apb";
>> +        clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
>> +                 <&clk IMX8MM_DRAM_PLL>,
>> +                 <&clk IMX8MM_CLK_DRAM_ALT>,
>> +                 <&clk IMX8MM_CLK_DRAM_APB>;
>> +        operating-points-v2 = <&ddrc_opp_table>;
>> +    };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
