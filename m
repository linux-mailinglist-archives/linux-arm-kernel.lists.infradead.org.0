Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC8DF82DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 23:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8+CgLzh0TGWMOHWxLxVzWiB2Gjeljmob8/Zk3HCZFjw=; b=amofSgSBxy2nwe
	4hPSXmlrwH2PNZEfCb/qiGh6yr/0Sj0wrAZuHJinnAgwu4Qn3Odnl807yozWN7M4Z6LN7V2J+rghC
	X1NubsE6TGY4WrST1CbYjkHjdpHD82uts/bvB60OTQcrhi+rKH88I9LAAJbV8I7fffGPeiHTYrTHe
	NYA51Y3HfCkzNqIwvBEQbu2bP1IDp0WWidc70az8QvSOGEWtMX9Z3hYyEIUG1NthZ3ALHn/L+6+zT
	TQPlO40Xj1aW1FE1IAuxG8I02MuA97F1K9aVubVCyNnlJRFsxLccnFjLpoWcgq9sKa9uNgnrFWMGf
	/jgxae6esK9Bn3A2oW5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUIBK-0002Es-GI; Mon, 11 Nov 2019 22:29:10 +0000
Received: from mail-eopbgr10059.outbound.protection.outlook.com ([40.107.1.59]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUIB8-0002EU-SQ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 22:29:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XYMQ1F8XLHf+MlN5x3kf/U5NxDLcWxg62fFspuGK8yKUn+efyD38nKTbcEsv3I/a5+3vwBT2M0PHSK9lEbke2PX4m8putaeJ4kXJUjY+Obi/NOOZdqgGxVhTf66MME7LGjyq3GMwuu67rtbeDJ5Byd6gR4nHoF+xYUb2aRuOQJ1pazk/TNyaXvH1+wu4zPeqtkkr8ymTbgJ3lyEYkGGyYc3goM1lag/puK1kuXmfEATHjzrIuFB1x6d53irJq81wkvuyLRpcBYzRyDwDT998SVnQ7GOmEs5eCvs14IgUfYssAhtp4VwZEMZQdoR8uZ/1l5li2u78FDph7QdXog9MfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZxKffuqR37xnFlK5JbWKXmgjjah1Kb8kLY6Gr8m3IXw=;
 b=ONxsCJHT+JZzWgq9BURoY6Ol0LrP7LVnFyvqDoS+deGDRVeCENEgn3uvYwKS97Bbji6vYIkRWAI3G9/Ra4gw27LwLkMkbjmCmzKURCwednVXfVyobn5oqcW3QbwL2tclqmu8VOO7qcjXwu0Np3Gvg3Hty/AzTw5FotoLTb2NpykrmG3skKIzhKba2JXvOXE05nXr3ty4H+LksP04mXhxjNPHQOlOVZJBgW5dwrkWOfvfKsdIgy7ESpqHqcRxDPckUuuoXwo5rSXrvtLiS4qe2GnhJTXKnT/mGaIxYaLrNLy3g3wpADg4dztwVfLWFlKEX2cDdzji15cYc/Ikbh3rGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZxKffuqR37xnFlK5JbWKXmgjjah1Kb8kLY6Gr8m3IXw=;
 b=CRm5G9GOw9+8VZL0gdKqv5fvf8cE35c+44EgGjAxT65rSajw9MHGX4xb4dFke6nMqq24YZMpXSW7RfjJNJ8obCCRYvHyyDvz7Y1BCj7x1fU45cCEp7fcTWMN+7ubVMrdei0cCIymO2hEPrHkiRS5e6+VBHCypvyMPUtax+xa0rY=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6207.eurprd04.prod.outlook.com (20.179.28.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Mon, 11 Nov 2019 22:28:53 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2430.027; Mon, 11 Nov 2019
 22:28:53 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Rob Herring <robh@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [PATCH RFC v5 01/10] dt-bindings: devfreq: Add bindings for
 generic imx buses
Thread-Topic: [PATCH RFC v5 01/10] dt-bindings: devfreq: Add bindings for
 generic imx buses
Thread-Index: AQHVkD3as9Sa7H/jhkWE+GL1DYQYRg==
Date: Mon, 11 Nov 2019 22:28:53 +0000
Message-ID: <VI1PR04MB7023FE9E511FDB48DE619F30EE740@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1572562150.git.leonard.crestez@nxp.com>
 <0e4118456f8eb67e1ba8a7c23127fc3def58547b.1572562150.git.leonard.crestez@nxp.com>
 <20191104224946.GB17515@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b95cfc0b-5ecb-493f-fc2d-08d766f688c4
x-ms-traffictypediagnostic: VI1PR04MB6207:|VI1PR04MB6207:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6207786022DA94E3DCA2DD3CEE740@VI1PR04MB6207.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(396003)(136003)(39860400002)(189003)(199004)(26005)(186003)(54906003)(52536014)(71190400001)(71200400001)(110136005)(6116002)(3846002)(316002)(66066001)(6506007)(486006)(102836004)(76176011)(53546011)(476003)(446003)(7696005)(66446008)(64756008)(66556008)(66476007)(99286004)(5660300002)(229853002)(478600001)(8936002)(45080400002)(6436002)(4326008)(305945005)(74316002)(14444005)(25786009)(256004)(7416002)(7736002)(76116006)(9686003)(86362001)(8676002)(55016002)(44832011)(2906002)(6306002)(91956017)(966005)(14454004)(66946007)(81166006)(81156014)(6246003)(33656002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6207;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BdzjInwLpUDPCMsTHvpf6mjF1ZnSldqo5GR0jvsndbZ7X/ow0p2EZkkHABlEnO5BPj4P5E9AnURwuOs4KyZXiV3RcnrEVIuNfBjcFc3/t3VYA6CNOATb6NoTdy8haqb8yfsnQ5+bwvXZvIpYviR9MU5++q9j438Ce5qIuttJKbYuelXi2HLzYAjHlrP2/d+IuuBHz6lPwlrDyHYlvr7oj6zVcJVBq5BfJj3fhbcjl8Jt1TebSpGoezkm+SMo7ULpv+23EAL3fXFOjh+BT4CxM8rN6yS+oPt/BLYXLdxFySbLAiR9nQ2wjcb8KexhEpaTmfFp1gOaxxxag6HC0AO3vAXSxBNZe1JE5iwrYg0ovKzRPSLCVjsKC79Xj8QakX081KAznzuKrk7L0mpUv22V2HNHsXUgi0c2xiDR79qi6VpaG4MdvZNyjHOcI60mkcj4
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b95cfc0b-5ecb-493f-fc2d-08d766f688c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 22:28:53.6473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MUsAcgSuNOoIMm045yNWr45uFeDv+LKwSMvVbp1Wnh4I+nEqwXmH/zzrtnu2w5r+yKyTrTDeLsCoD4Ih0yPfYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_142859_037681_FD19E174 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05.11.2019 00:49, Rob Herring wrote:
> On Fri, Nov 01, 2019 at 12:52:00AM +0200, Leonard Crestez wrote:
>> Add initial dt bindings for the interconnects inside i.MX chips.
>> Multiple external IPs are involved but SOC integration means the
>> software controllable interfaces are very similar.
>>
>> Single node also acts as interconnect provider if #interconnect-cells is
>> present.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> Acked-by: MyungJoo Ham <myungjoo.ham@samsung.com>
>> ---
>>   .../devicetree/bindings/devfreq/imx.yaml      | 83 +++++++++++++++++++
> 
> bindings/interconnect/

Make sense. The only other two files in devicetree/bindings/devfreq are:
  * rk3399_dmc: a memory controller
  * exynos-bus: arguably an interconnect

>>   1 file changed, 83 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/devfreq/imx.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/devfreq/imx.yaml b/Documentation/devicetree/bindings/devfreq/imx.yaml
>> new file mode 100644
>> index 000000000000..bfc825407764
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/devfreq/imx.yaml
>> @@ -0,0 +1,83 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fdevfreq%2Fimx.yaml%23&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C95911400e0834b06269c08d761794cd2%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637085045930647253&amp;sdata=88iAXoKObu%2FXBqZu6hNwnOUIffB8GxVLdGeBWiCjClI%3D&amp;reserved=0
>> +$schema: https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C95911400e0834b06269c08d761794cd2%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637085045930647253&amp;sdata=0phpsG05ZsYc5SnI3FXZODJpJSEB2tzA5v02r7N%2BY2I%3D&amp;reserved=0
>> +
>> +title: Generic i.MX bus frequency device
> 
> i.MX8 specific?

Not really, but it's initially targeted at imx8m.

>> +maintainers:
>> +  - Leonard Crestez <leonard.crestez@nxp.com>
>> +
>> +description: |
>> +  The i.MX SoC family has multiple buses for which clock frequency (and
>> +  sometimes voltage) can be adjusted.
>> +
>> +  Some of those buses expose register areas mentioned in the memory maps as GPV
>> +  ("Global Programmers View") but not all. Access to this area might be denied
>> +  for normal (non-secure) world.
>> +
>> +  The buses are based on externally licensed IPs such as ARM NIC-301 and
>> +  Arteris FlexNOC but DT bindings are specific to the integration of these bus
>> +  interconnect IPs into imx SOCs.
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - items:
>> +        - enum:
>> +          - fsl,imx8mn-nic
>> +          - fsl,imx8mm-nic
>> +          - fsl,imx8mq-nic
>> +        - const: fsl,imx8m-nic
>> +      - items:
>> +        - enum:
>> +          - fsl,imx8mn-noc
>> +          - fsl,imx8mm-noc
>> +          - fsl,imx8mq-noc
>> +        - const: fsl,imx8m-noc
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  operating-points-v2: true
>> +
>> +  devfreq:
>> +    description: |
>> +      Phandle to another devfreq device to match OPPs with by using the
>> +      passive governor.
>> +    $ref: "/schemas/types.yaml#/definitions/phandle"
>> +
>> +  '#interconnect-cells':
>> +    description: |
>> +      If specified then also act as an interconnect provider. Should only be
>> +      set once per soc on main noc.
>> +    const: 1
>> +
>> +  interconnect-node-id:
> 
> Looks like common property, but it's not...
> 
> Generally, we don't do indexes or instance ids. So it needs a better
> explanation or drop this. The driver side looks like an odd marriage
> between interconnect and devfreq drivers that needs better integration,
> but I'm not all that familar with either.

Current interconnect drivers all operate by sending messages via a 
mailbox to a system controller which handles bandwidth requests. They 
only perform request aggregation. On imx8m frequency scaling is also 
implemented in the kernel so the NOC becomes almost like a MFD.

The interconnect-node-id is used to find other scalable nodes for the 
same interconnect provider. I can replace this with a "scalable-nodes" 
array like this:

	noc: interconnect@32700000 {
		compatible = "fsl,imx8mq-noc", "fsl,imx8m-noc";
		reg = <0x32700000 0x100000>;
		clocks = <&clk IMX8MQ_CLK_NOC>;
		#interconnect-cells = <1>;
		fsl,scalable-node-ids = <IMX8MQ_ICN_NOC>,
					<IMX8MQ_ICS_DRAM>;
		fsl,scalable-nodes = <&noc>,
				     <&ddrc>;
		operating-points-v2 = <&noc_opp_table>;

		noc_opp_table: opp-table {
			compatible = "operating-points-v2";

			opp-133M {
				opp-hz = /bits/ 64 <133333333>;
			};
			opp-400M {
				opp-hz = /bits/ 64 <400000000>;
			};
			opp-800M {
				opp-hz = /bits/ 64 <800000000>;
			};
		};
	};

	ddrc: dram-controller@3d400000 {
		compatible = "fsl,imx8mq-ddrc", "fsl,imx8m-ddrc";
		reg = <0x3d400000 0x400000>;
		clock-names = "core", "pll", "alt", "apb";
		clocks = <&clk IMX8MQ_CLK_DRAM_CORE>,
			 <&clk IMX8MQ_DRAM_PLL_OUT>,
			 <&clk IMX8MQ_CLK_DRAM_ALT>,
			 <&clk IMX8MQ_CLK_DRAM_APB>;
		devfreq-events = <&ddr_pmu>;
	};

It's a bit strange that the noc references itself but in advanced 
multiple NOC can be be present and there needs to be a way to map from 
the interconnect graph (node ids) to devicetree nodes.

>> +    description: |
>> +      i.MX chips have multiple scalable buses based on the same IP, this is
>> +      used to distinguish between. Uses same identifier namespace as consumer
> 
> It's not names, so number space? Just guessing because there's no type
> nor example.

Maybe "numeric namespace"?

>> +      "interconnects" property, for example one of the values in
>> +      "include/dt-bindings/interconnect/imx8mm.h"
>> +
>> +    const: 1
>> +
>> +required:
>> +  - compatible
>> +  - clocks
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/imx8mm-clock.h>
>> +    noc: noc@32700000 {
>> +            compatible = "fsl,imx8mm-noc", "fsl,imx8m-noc";
>> +            reg = <0x32700000 0x100000>;
>> +            clocks = <&clk IMX8MM_CLK_NOC>;
>> +            operating-points-v2 = <&noc_opp_table>;
>> +    };
>> -- 
>> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
