Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF138AC71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 03:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=tDeki5IV5pRhQ7GU+yqVqfByl2M4aKzYTH5ApZQ/cds=; b=JBB7g8bDk2QLkr
	Q1JfsIuGlBGQGr84IOdyOuT2N35k+6g0k1tkDh6T1l0cFl4vPU2B0fypEiLjkk/EEG4HtAufJslWU
	FlDKlhGd51iwwu3r8H0VLENPlJkJ/sJEu64EGOX0j3tKSF7FUhb8jMwzADN5YswmNdGLTo98YHIfX
	opkmSkcsDsru++rl8Ey72i7s7RzCi5EXGkQm/pGf5ed1JE5spJJU81mKZtI+83WWRAzM8B+dswT8X
	SgeszN3OioTTu/R/lboTg9i5vJXJcCK04WKjELM2wKhjCTz3RoeJUTaNyJRo86b4Eh64YRPz9WuT/
	WeMRcVRbllRySY4XAZgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxLgH-0003QJ-5b; Tue, 13 Aug 2019 01:32:57 +0000
Received: from mail-eopbgr140075.outbound.protection.outlook.com
 ([40.107.14.75] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxLg3-0003Py-Kn
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 01:32:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=igUY937e0dPyPtf59GJn4GGEwO+ZtAqx9cGDVtMuuflyHFT058y0gS+QLKZ1EFBWYtx5GtqYNU0w39zk7kMkg4NRjVkq6V/BghEqi9o/ZnGLiGMiSijiWUv/Ubsz2Wd/56VssJtwPhcoUTFFcjjPbEQKlVgt0D96k2/bNgTGg72PvQd6UHwFO66c6i7iSK2se79BXtkNN/nxgcNzja1PYp++svlGigV09LFgbHt+56JAZpnon3t1gPvhFwjzwY8QaK2qKNJP/lElYCLD2YmUPT0T9SbbTIKibwIiK1tUuBJnWlwb9QVQSJZdh0Yp6Sc6Fqur9zXb5elE4uxaA6T7QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2F/GHF+LcJBNP9VqkS2Sr8areeFp2zd6pKB4x0wWO30=;
 b=XeyHCBtESflldYnnlRIphxdqsLm5Hb3+Z4ViJqONQ9Z9mkDTLobtALOPpwzpChs9i4v9WV9FHKSAAzXm1QpHjaJhmAVwDS2wUxbLxc1akhIz++myFX5aVrTi6K/aRszM+Mg7WZilOTOLwcuiC/388xjNQqX5MmPoKFJu/1I5Ldw+fGyGEy75OYlfcWcynfEdSjuqS1YEw9WTBUtMFKMKOiX7XTr+efbwKW+jq9LjBIjz3ZusgbFjqOYw+m0iYoA8EIAMsPl2ytX2AA8UGru8aSVycy6B/yU1KLt8F4uqTJaukyPce3/ovD+QDGyIsPkEnx82a22ndg+pksI/NvKShw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2F/GHF+LcJBNP9VqkS2Sr8areeFp2zd6pKB4x0wWO30=;
 b=cBNogo8mCFLoyJRusUYhWH7RkkoZineFpFEvTlPE5BQcBLLCofOmX9nBtgULU0b78fN3M9KL82muNXg3Uf4HhUXipO//ZHlEyNZcXdEDHrVqUV+ci3rMecO9Li+GzkLAJ57gh7teMTzgHJ4hTdxulzp+as5QTBmtcXjKwTUV8Aw=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6848.eurprd04.prod.outlook.com (52.133.244.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Tue, 13 Aug 2019 01:32:36 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::e53d:e6a9:79bd:f970]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::e53d:e6a9:79bd:f970%2]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 01:32:36 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/7] dt-bindings: devfreq: Add bindings for generic imx
 buses
Thread-Topic: [PATCH 2/7] dt-bindings: devfreq: Add bindings for generic imx
 buses
Thread-Index: AQHVUT6+xLIyJJ3RiUKs8c+X3Pwpzw==
Date: Tue, 13 Aug 2019 01:32:36 +0000
Message-ID: <VI1PR04MB702300C8C78BC033D16EDB85EED20@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1565633880.git.leonard.crestez@nxp.com>
 <97b0bff95ddb85b06ef3d2f8079faa36562a956d.1565633880.git.leonard.crestez@nxp.com>
 <CAL_JsqJWpQN2oTm8Q2_Gzd0GJ+YZoc9j-zh-U1s4eGhMxDEmEA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03bd23e7-bf29-4f2c-2721-08d71f8e1f46
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6848; 
x-ms-traffictypediagnostic: VI1PR04MB6848:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB68487F739F783A11C00A0165EED20@VI1PR04MB6848.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(346002)(396003)(39860400002)(136003)(199004)(189003)(486006)(76116006)(476003)(229853002)(66476007)(256004)(6436002)(14444005)(66556008)(66066001)(5660300002)(8936002)(966005)(14454004)(54906003)(91956017)(446003)(64756008)(44832011)(66446008)(478600001)(71190400001)(71200400001)(316002)(99286004)(2906002)(3846002)(66946007)(6246003)(4326008)(53936002)(55016002)(53546011)(33656002)(6306002)(6506007)(86362001)(81156014)(9686003)(81166006)(8676002)(102836004)(52536014)(25786009)(7736002)(76176011)(6116002)(186003)(26005)(7416002)(74316002)(305945005)(7696005)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6848;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vFGqizbOGjSbppZmrbLaRekQpzEObVzzRVo5hspwXBdvWgcSRUl7pVU/p68sNmAlK7u/f670yoGU7uqSvevBAmizLpi8PwxXWv1QyqSKI4QmEolhG9LA+WFmRSjYjnhqxWqPihDyAwRnKgmLxaU2g7hUuo0tihDVnBFOzfP0dEwr+OlTQz3bwXvMna2ZnzNpDZjNpe9aljbhXERDMmJySXbtd7xLtf0t5BpJ5/GGyvJPmc/HW1znyIGD0GJlMCSVvFGfEdVexuV/vIrznOc7rSsYOwVaqmC4fWqvb3/roWbHgCEWgVFRcGVHPxqoh1D+i2OFGJUkDl8OuEtfxrhtAjyGxF87vfT2PPt6FMemsTViENPz12+2rHGDh/g4WaziE9GWYS5Szi2Sr+DWVcsKIZRkqQaY0XRyLDqNj7ZOfm4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03bd23e7-bf29-4f2c-2721-08d71f8e1f46
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 01:32:36.4892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rP8tIh8ndc5H9FJkZhfSeZbs1WqownX8g+ffCeKzyEVLfi0kg3TfGzzF3spBBN1d3NFxlwufQEhst3CUd8zZAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6848
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_183243_773549_1509BADE 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Michael Turquette <mturquette@baylibre.com>,
 Alexandre Bailon <abailon@baylibre.com>, Will Deacon <will@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "open
 list:THERMAL" <linux-pm@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/12/2019 10:47 PM, Rob Herring wrote:
> On Mon, Aug 12, 2019 at 12:49 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:

>> Add initial dt bindings for the interconnects inside i.MX chips.
>> Multiple external IPs are involved but SOC integration means the
>> software controllable interfaces are very similar.
>>
>> +description: |
>> +  The i.MX SoC family has multiple buses for which clock frequency (and sometimes
>> +  voltage) can be adjusted.
>> +
>> +  Some of those buses expose register areas mentioned in the memory maps as GPV
>> +  ("Global Programmers View") but not all. Access to this area might be denied for
>> +  normal world.
>> +
>> +  The buses are based on externally licensed IPs such as ARM NIC-301 and Arteris
>> +  FlexNOC but DT bindings are specific to the integration of these bus
>> +  interconnect IPs into imx SOCs.
> 
> No need to use the interconnect binding?

Separate RFC: https://patchwork.kernel.org/patch/11078673/

The interconnect is represented by a separate "virtual" node which might 
not be OK. There was also a recent RFC from samsung which turns devfreq 
nodes into interconnect providers:
     https://patchwork.kernel.org/cover/11054417/

Is that preferable?

>> +required:
>> +  - compatible
>> +  - clocks
> 
> reg?

This is deliberately optional: for some NICs the GPV register area is 
not exposed in the memory map. This is unusual but an accurate 
description of the hardware.

The current driver doesn't even attempt to map registers, it only 
adjusts the clock.

>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/imx8mm-clock.h>
>> +    noc: noc@32700000 {
>> +            compatible = "fsl,imx8mm-noc", "fsl,imx8m-noc";
> 
> Doesn't match the schema. (Well, it does with 'contains', but
> fsl,imx8mm-noc is not documented.)

I'm confused about how per-SOC compatible strings works with validation. 
There is a rule that every SOC dtsi needs to add soc prefix to all 
device nodes but of_device_id in driver code doesn't need to be updated.

Without using "contains" on the "compatible" property then all 
SOC-specific compatible strings would need to be mentioned in every yaml 
files. Unless I'm missing something this means updating update every 
binding file for each new SOC?

I guess it can be useful because it also validates the compatible 
sequence itself.

For this current example something like this seems to work:

   compatible:
     oneOf:
       - items:
         - enum:
           - fsl,imx8mm-nic
           - fsl,imx8mq-nic
         - const: fsl,imx8m-nic
       - items:
         - enum:
           - fsl,imx8mm-noc
           - fsl,imx8mq-noc
         - const: fsl,imx8m-noc

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
