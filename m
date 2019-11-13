Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E449FB08A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 13:36:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=pTa9vYbQVOIW3DzRiz8khktHvkmEXP0EtWWS32Bro6U=; b=XieF0GtHw6dWPx
	XUtB3Wcgl+PLMbQo9RnRqsolGowCQKkKo20eDSHNKVGb223KVsla5toKMgQ5UoLXTAq+czXgPFDmr
	PbjzFaBnmt5tqtxUGEMohcIeEQY5BUb1NfDoLgfm9kGOTkCtRKCE+9wZGCvd5M2d7zdYxjmOvW73Y
	M14bLpkyBmp3wdrIC+NM5WKOF99dyo+XpIuGB9A37UQ4sCyoCp0QecQ6rDTFORbltiyQ6LWnRP0xm
	Zl3KejeSGuakC0xqaQZ+gQ4AiA8UHBpekFIM+vV7s++0FHekOAmUGFNsYNE8RH3+HUuRWEH0Cgxsm
	LJMgYmtFq5Ys8voZMptQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUrsF-0007yA-Eb; Wed, 13 Nov 2019 12:35:51 +0000
Received: from mail-eopbgr00055.outbound.protection.outlook.com ([40.107.0.55]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUrs6-0007wy-8u
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 12:35:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sikx7iF3SmyS8HSgLrvowGZOZOLEyLdqn90StQOqek1ryVwDGRb18+VfLm8XrhWXmGej/3FHAT+RyF0nAP+U6xJHuDfxrpuw79vu+ZjOKED2sh9Zq5GIg183JYd8ieUSu/QV/QU6O1cbSASZ+fb/4YF2/FzZCcxQOTGNzBIyTnVAp/q6OwiyXOl3dw9wprFvXtWWv9ArPneYj/Hv3nuUcrOyfLh6MrZ44q9cvbGAdKAgfZtE3e8eGvS4qcT42Sy0ezGpXCz2C62Hxk2iL3hQlogHbQToDJLGgicW2aRk/ZeXzkA1i1sZETbatcY4TCeUjkKkyeoMzzt8kKwjXKtdcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IB+XF+6Gne40W/itLQd8Aj6w0yJfmY850cj+E7Lx+ow=;
 b=MYkuyMDEuDaTG8fY5KQ+Q32o5QuhF+jcItcsABY1hBTarnqMMvbTtAX1jqu05GVk5UaaFMaNJkHRnT/qXSEANf4P2Scjkur0mJ35OZNciAMnT1r4sDZOEpcyVJs8uKhIligux9E11l4PugSraQU0JLtgwu32h6BrGEixafxyqkON7PPoD+IJq3rjoO3KfElHr/839s0lY3XTr/L9RwnmgHZRlOiWZZ6FRAKyIc+cRIhjr86Jpvm10riBvVmNGpoH6WPMuSfB/9dpBi0V89XHuxc2s0WysALJhyX+A4rVxVFIbAWnkDV+/fXAm8S1A68SzfGnZ4lnwRcKumvr7u6oyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IB+XF+6Gne40W/itLQd8Aj6w0yJfmY850cj+E7Lx+ow=;
 b=bk5UGVMqMhbDff25cA1o4e94tvvRqsSamp2lSogSkypxb9LLbNeIu5hZf6FDR6acM55yl7lJmACbCRiKZaOUVauYTnQtrom/eg7fiBDgYoIK444lsqxoae3lk2S3Vp22uocSwZbezkfDzJeGK7Ycp+xoTXCrJbkKQ75aLnVJWbQ=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6928.eurprd04.prod.outlook.com (52.133.246.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 13 Nov 2019 12:35:38 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 12:35:38 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v5 3/5] dt-bindings: memory: Add bindings for imx8m ddr
 controller
Thread-Topic: [PATCH v5 3/5] dt-bindings: memory: Add bindings for imx8m ddr
 controller
Thread-Index: AQHVmaNN8+lTgarJx0yj+3LD9AtsMg==
Date: Wed, 13 Nov 2019 12:35:38 +0000
Message-ID: <VI1PR04MB702328B4F8744FBF42E0D537EE760@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573595318.git.leonard.crestez@nxp.com>
 <CGME20191112215123epcas5p13e9eec7f2209a73bb1a6f09434ec91ba@epcas5p1.samsung.com>
 <872fb6e3117955b679678280483f82b3d73dd376.1573595319.git.leonard.crestez@nxp.com>
 <296a7e8a-78e5-62bb-e4e1-8f5a9095cb6d@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bd5aa2c7-5031-4aed-0490-08d76835fd31
x-ms-traffictypediagnostic: VI1PR04MB6928:|VI1PR04MB6928:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6928E262B6635815F573262DEE760@VI1PR04MB6928.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(199004)(189003)(102836004)(55016002)(8936002)(86362001)(74316002)(305945005)(7736002)(6116002)(3846002)(486006)(81156014)(81166006)(8676002)(52536014)(476003)(66946007)(7696005)(66476007)(66556008)(7416002)(64756008)(66446008)(5660300002)(6506007)(44832011)(76176011)(2906002)(53546011)(6306002)(9686003)(99286004)(6436002)(33656002)(6246003)(26005)(71190400001)(446003)(966005)(14454004)(4326008)(229853002)(256004)(91956017)(76116006)(45080400002)(478600001)(316002)(25786009)(54906003)(186003)(71200400001)(66066001)(110136005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6928;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MnyMAQLDXtldXg5WwAVI9Jy3BmPZ1Su/w4LP92enb+RqvyfgXHyXncCWDhxnFy9nQGIs0ZmNA5kjaMHqWYLts3p15Bv9SLx3tKdQJ40Db+ij0RjeXXLdutiBV/BtR8td3whTvFVI7F9wqz2DNONzRPLL3lLDX5fMJw0L07VK+5dkjOeYqxnZFs7sw90qeefwawdKy2ypkHX58jDmzKpZYTJDR9Jbdtc+2K0UO1+sqYRW17iTFsI0DZYzfeqoWfhR7ShOEYab3ef6Z09zOR4by7oOwpYkK2U+DOHIo/HEyDS2MEVNljovlCuvdfX71z6WVG/u5fryhtAEoCe9l3LTzuLHb5X7cdkpDcZXy/PIxYeAnTUMgDXI5CUHgKuc6Fckq6pGLqfIOH+1JKzC73RCYRgx9+LVDnPvSX5MwokKF0ls5YA9CJKZXGqcGtDI1x7y
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd5aa2c7-5031-4aed-0490-08d76835fd31
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 12:35:38.4467 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HUZSr8CtgGMVTirejB/pimcC9XFoidmUJKj/aKmVLNxO87GewSdp5KEIkeum3W4YWsNqo4YEAUjPzKxgcV2TAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_043542_317735_492987CF 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13.11.2019 04:32, Chanwoo Choi wrote:
> On 11/13/19 6:50 AM, Leonard Crestez wrote:
>> Add devicetree bindings for the i.MX DDR Controller on imx8m series
>> chips. It supports dynamic frequency switching between multiple data
>> rates and this is exposed to Linux via the devfreq subsystem.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   .../memory-controllers/fsl/imx8m-ddrc.yaml    | 57 +++++++++++++++++++
>>   1 file changed, 57 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml b/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
>> new file mode 100644
>> index 000000000000..7c98e3509f75
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
>> @@ -0,0 +1,57 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fmemory-controllers%2Ffsl%2Fimx8m-ddrc.yaml%23&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C23e819d42b664965975808d767e1c084%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637092091602846215&amp;sdata=frWd1MENZm%2FsPjQp%2FWbphMgkkCMtwsgV8hLQyIhC3%2BI%3D&amp;reserved=0
>> +$schema: https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C23e819d42b664965975808d767e1c084%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637092091602846215&amp;sdata=4IweKQJO9ZsB%2B9QxixSQjfYOFm3%2FY7iMHFBSsquK1B0%3D&amp;reserved=0
>> +
>> +title: i.MX8M DDR Controller
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
>> +      - const: core
>> +      - const: pll
>> +      - const: alt
>> +      - const: apb
>> +
>> +  operating-points-v2: true
>> +  opp-table: true
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
>> +    ddrc: memory-controller@3d400000 {
>> +        compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
>> +        reg = <0x3d400000 0x400000>;
> 
> The probe() function doesn't get the IORESOURCE_MEM from dt?
> Is it needed?

This area is not currently mapped by the driver. As far as I understand 
it's acceptable to "describe hardware" even if you don't use the full 
description in driver code.

If I were to remove the "reg" area wouldn't I also have to move the node 
outside of the bus to keep DT validation? It's better to keep the address.

Maybe it will be mapped in the future or maybe firmware will start to 
parse linux DT instead of hardcoding SOC-specific addresses (this 
already happens in some cases).

>> +        clock-names = "core", "pll", "alt", "apb";
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
