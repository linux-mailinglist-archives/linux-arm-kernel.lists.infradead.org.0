Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE06C120954
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 16:10:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=pPXIQu/ZhoQOT8JLy5SHBskJzWIHVC8cYesgcLngJAk=; b=M0eQIrQY/lGx4r
	v85PwtsQbIPTHnbewKkXdXcoP3tLhlbKFl+YvjDfGJ0LpweS3+t0gbPbXQYDjx3EAvLmHsSuoUoEw
	V8oJM9VQqscSsf/P0+SYIsmxVdqzsTGTAowvuIEtV7Ne7hlHhahOd6wZ8+evPPv+Uu1s376/E+07/
	8qaPh+82ARJ8UNRxaebcPN4i3u3Yuvw7qqZe6pY9JqtLaRVN4JX16ulFjHkC/QguQIVrScsHeqchX
	TRlc1gmUIdHCr18NR4ya2ZtUqbmXIF72Aw1bIFNxpCZWutmmL9v3cG1/I3GhM8ve5VCU5vA9jfsdt
	0FEmImpWxsh+00ewDdZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igs0W-0008WR-KG; Mon, 16 Dec 2019 15:10:00 +0000
Received: from mail-ve1eur01on061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::61f]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igs0N-0008VY-JH
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 15:09:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m1qpe112iG0KYV+JtdEV66lNgUGaDMWqBQ8I3Fr4BXb3YJeSIMYVGIYkrlXh5VLg7EoWJE+JAi9t7FhdPnJK3uMW1Rbo3YKa7kPBdVRJOXEjYG1VXwRgmn0IhKIa/rxGq6UYMKanT3YFsLSB/Hqm+QBivvCbAUcZwK5tNVWr7ljA3J1yOAIX1cjVxeVxxt720PDXBZ9zgEaJ89AVTW6dQfKuLxRgJ3f4Qr8BNRkqR2VojvEpDD5mPC6xaXb1nico1Rf+FS3ORUocfSNX4Q4RdKQ48NPd3Xzp4NrD2Hj9J3XEisnQgT0Uos7oAcTIhA5uV+FjJ2mvn+NzgNcPfnmCow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gHt18L0MfLv/x5OEWWvgLf3TZk0dXRy3dbsYLxUdt+M=;
 b=jqkueMDRFoukJEo6yB0UYYGHBmdc15hubRBUmtz2qslQ6LOI2IQYD0nUxsjri2em1A7d1Zmuv+yhDXEkux0WArpwUCcCkRhwLMBpb/uq5jpylHUh83oss8QJqLat+o7SWlpeMiL++ceg+/mOM/OdUW2nxbKC/jstbM519PgM0z1FS7a6ZgtbfG4Yuxtvf9KbgOR5Cgrq9dDhq9KSMcMV+Fw3gJrr8Vi3Q6Xae+iob2VoJUChMSwp3aEOBiMiBjxb6oRF+NB/fVmqsqrP5h/7xjvNt53wsKm1osDtaLc97A4WuU8b488okJyeAGi5WCbQe084pDwqC3Rp9C+BwR+ySQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gHt18L0MfLv/x5OEWWvgLf3TZk0dXRy3dbsYLxUdt+M=;
 b=I5zjZunFNQ1IGFJVOPDtI+kZzt241H6Lk5L7u8V1wZw4JJEJuk3x3MT8ddJV3XL2HPXxCqh+avCtjY8Nqr5kh+T9UhC48qRvoFkYXjg/wMvOe2K57+ckeyuCkBlXYdAHXK+PRP89fXXPBtuF9Dv+hgwN9XNG9Gjp1XrE+sDuVPU=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4560.eurprd04.prod.outlook.com (20.177.55.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Mon, 16 Dec 2019 15:09:47 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 15:09:47 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Georgi Djakov
 <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH RFC v6 1/9] dt-bindings: interconnect: Add bindings for
 imx8m noc
Thread-Topic: [PATCH RFC v6 1/9] dt-bindings: interconnect: Add bindings for
 imx8m noc
Thread-Index: AQHVmyeXQvJfRqjmjUWtYoVDBCNHfg==
Date: Mon, 16 Dec 2019 15:09:47 +0000
Message-ID: <VI1PR04MB7023A61DD48302CF0E0B3B81EE510@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <CGME20191114201051epcas5p2a6b58f0d86fb8bed72a206ecd5df295d@epcas5p2.samsung.com>
 <6db2ce55ee62dd8548aa8e1e0ecdf8c06eda868f.1573761527.git.leonard.crestez@nxp.com>
 <c1c03b30-d82a-6f2b-156d-0e1948e0df5b@samsung.com>
 <afd618d6-d78c-a989-2d1e-60c368ec267f@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8ba88407-b895-42ae-3fb8-08d78239fd6b
x-ms-traffictypediagnostic: VI1PR04MB4560:|VI1PR04MB4560:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4560B8068CCAFAEEE1C8ECCDEE510@VI1PR04MB4560.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(136003)(376002)(396003)(51444003)(199004)(189003)(186003)(7696005)(66476007)(66556008)(66946007)(64756008)(66446008)(91956017)(5660300002)(53546011)(6506007)(81166006)(45080400002)(71200400001)(316002)(8936002)(54906003)(110136005)(478600001)(52536014)(8676002)(33656002)(966005)(55016002)(44832011)(2906002)(26005)(7416002)(76116006)(9686003)(81156014)(86362001)(4326008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4560;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +pHMj8VUMFKb4+fU0jA92g2dvWQkR8QTvf9WSeq/4hrG+xSvuexw8wQXC3rQ9Gsz0TlrElOBlxM03xEQxDs8ZP7gm3mqfZCt/Ud/mgAhWq3duz07yfFujCTuA5PYW9vfhV5i47e+qqRLIN1kFITvEF4dfoyzOWNi/5ZLOqJ/U63SNENNPNyHx2GoLon3Xj04h6nGLOimUqzEjWmzdGaIIHZRCeCxCR1AE8qlJ2BQ9buhcWsd2c1GdG2A+ng/68Ddu44r+BMdhKRzGmnp7CRMTbhTSlcDIS988raRPveRvqUhSyDcP3kUgznC9mnI3Xi2aXc6oWIDVoCBFWqQBcGl6cTaetjlXXhQofQbmpBGA2ksCY+MqWBwevNbTrx7WocF7QsZrYfdwdry7JV6OCgf7ZCVMDHnRP+nndPQbdkA3kcvxidZ46sGlAauexSViTRkuNKbE4xBHUK3RILNU/+TeIUSndz9TMeJ8kVqa8WD8ABbiJOmKYjJ3LAxwKVZTwXDU+hsWMKMp34/tpipZc0BR04lLxH8bASjJwcrCk7GZmk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ba88407-b895-42ae-3fb8-08d78239fd6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 15:09:47.0295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VjxH6YErQUkzLGMo4V66ec9ciX/nfL1fA2CW01hDBT7JF+SUbn/ckZo0N0QJMd6v5dPJL4Kza9QSY1G22V1mWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4560
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_070951_642212_781D6FA2 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:61f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16.12.2019 05:18, Chanwoo Choi wrote:
> Hi,
> 
> On 12/16/19 10:12 AM, Chanwoo Choi wrote:
>> On 11/15/19 5:09 AM, Leonard Crestez wrote:
>>> Add initial dt bindings for the interconnects inside i.MX chips.
>>> Multiple external IPs are involved but SOC integration means the
>>> software controllable interfaces are very similar.
>>>
>>> Main NOC node acts as interconnect provider if #interconnect-cells is
>>> present.
>>>
>>> Multiple interconnects can be present, each with their own OPP table.
>>>
>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>> ---
>>>   .../bindings/interconnect/fsl,imx8m-noc.yaml  | 104 ++++++++++++++++++
>>>   1 file changed, 104 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
>>> new file mode 100644
>>> index 000000000000..5cd94185fec3
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
>>> @@ -0,0 +1,104 @@
>>> +# SPDX-License-Identifier: GPL-2.0
>>> +%YAML 1.2
>>> +---
>>> +$id: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fprotect2.fireeye.com%2Furl%3Fk%3D0c13f3e0-51df3f45-0c1278af-0cc47a30d446-77e809543b673ffd%26u%3Dhttp%3A%2F%2Fdevicetree.org%2Fschemas%2Finterconnect%2Ffsl%2Cimx8m-noc.yaml%23&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C2d1f1868afa140702a6b08d781d6ab68%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637120631307418544&amp;sdata=H2q5nQlKYyLIivkBYUTaRD1Nu3WcnphPJny3k%2BK%2BGFE%3D&amp;reserved=0
>>> +$schema: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fprotect2.fireeye.com%2Furl%3Fk%3D87c672dc-da0abe79-87c7f993-0cc47a30d446-414d3b4d0127419a%26u%3Dhttp%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C2d1f1868afa140702a6b08d781d6ab68%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637120631307418544&amp;sdata=T6PgQ1DWI4OLOx3gifRRt%2FNImdVrgDUoswZ%2FNKw3oR8%3D&amp;reserved=0
>>> +
>>> +title: Generic i.MX bus frequency device
>>> +
>>> +maintainers:
>>> +  - Leonard Crestez <leonard.crestez@nxp.com>
>>> +
>>> +description: |
>>> +  The i.MX SoC family has multiple buses for which clock frequency (and
>>> +  sometimes voltage) can be adjusted.
>>> +
>>> +  Some of those buses expose register areas mentioned in the memory maps as GPV
>>> +  ("Global Programmers View") but not all. Access to this area might be denied
>>> +  for normal (non-secure) world.
>>> +
>>> +  The buses are based on externally licensed IPs such as ARM NIC-301 and
>>> +  Arteris FlexNOC but DT bindings are specific to the integration of these bus
>>> +  interconnect IPs into imx SOCs.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    oneOf:
>>> +      - items:
>>> +        - enum:
>>> +          - fsl,imx8mn-nic
>>> +          - fsl,imx8mm-nic
>>> +          - fsl,imx8mq-nic
>>> +        - const: fsl,imx8m-nic
>>> +      - items:
>>> +        - enum:
>>> +          - fsl,imx8mn-noc
>>> +          - fsl,imx8mm-noc
>>> +          - fsl,imx8mq-noc
>>> +        - const: fsl,imx8m-noc
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  clocks:
>>> +    maxItems: 1
>>> +
>>> +  operating-points-v2: true
>>> +  opp-table: true
>>> +
>>> +  devfreq:
>>> +    $ref: "/schemas/types.yaml#/definitions/phandle"
>>> +    description:
>>> +      Phandle to another devfreq device to match OPPs with by using the
>>
>> Better to use 'parent' instead of 'another' word for improving the understanding.
> 
> I think that 'devfreq' is not proper way to get the parent node
> in devicetree. Because 'devfreq' name is linuxium. The property name
> didn't indicate the any h/w device. So, I'll make 'devfreq' property deprecated.
> 
> So, you better to make the specific property for this device driver
> like as following: and use devfreq_get_devfreq_by_node() function
> which is developed by you in order to get the devfreq instance node.
> 
> 	fsl,parent-device = <&parent devfreq device>;

This is only a "parent" in the sense that it's assigned to 
devfreq_passive.data.parent. The "devfreq" name is indeed too generic.

The DDRC can measure bandwith usage and I want to use the passive 
governor to make the main NOC match OPPs. But at the bus level DDRC only 
has AXI and APB slave ports.

Buses on imx don't have a parent/child relationship; in fact there are 
even a few cycles.

> 
> [1] [PATCH RFC v5 04/10] PM / devfreq: Add devfreq_get_devfreq_by_node
> 
>>
>>> +      passive governor.
>>> +
>>> +  '#interconnect-cells':
>>> +    description:
>>> +      If specified then also act as an interconnect provider. Should only be
>>> +      set once per soc on main noc.
>>> +    const: 1
>>> +
>>> +  fsl,scalable-node-ids:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>> +    description:
>>> +      Array of node ids for scalable nodes. Uses same numeric identifier
>>> +      namespace as the consumer "interconnects" binding.
>>> +
>>> +  fsl,scalable-nodes:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>> +    description:
>>> +      Array of phandles to scalable nodes. Must be of same length as
>>> +      fsl,scalable-node-ids.
>>> +
>>> +required:
>>> +  - compatible
>>> +  - clocks
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>
>> Is it enough example to understand the relation between
>> imx8m-ddrc.c, imx-devfreq.c and imx interconnect driver?
>>
>> In my case, if possible, hope to show the more detailed
>> example. This example seems that don't contain the ddrc
>> dt node (imx8m-ddrc.c).

OK, I'll elaborate explanation on noc binding.

>>
>>> +    #include <dt-bindings/clock/imx8mq-clock.h>
>>> +    #include <dt-bindings/interconnect/imx8mq.h>
>>> +    noc: interconnect@32700000 {
>>> +            compatible = "fsl,imx8mq-noc", "fsl,imx8m-noc";
>>> +            reg = <0x32700000 0x100000>;
>>> +            clocks = <&clk IMX8MQ_CLK_NOC>;
>>> +            #interconnect-cells = <1>;
>>> +            fsl,scalable-node-ids = <IMX8MQ_ICN_NOC>,
>>> +                                    <IMX8MQ_ICS_DRAM>;
>>> +            fsl,scalable-nodes = <&noc>,
>>> +                                 <&ddrc>;
>>> +            operating-points-v2 = <&noc_opp_table>;
>>> +
>>> +            noc_opp_table: opp-table {
>>> +                    compatible = "operating-points-v2";
>>> +
>>> +                    opp-133M {
>>> +                            opp-hz = /bits/ 64 <133333333>;
>>> +                    };
>>> +                    opp-800M {
>>> +                            opp-hz = /bits/ 64 <800000000>;
>>> +                    };
>>> +            };
>>> +    };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
