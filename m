Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 625AED77F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=vVt1gbnxsifJXu8p72CWaNdG3tRaifsRAU5OBaDfE7c=; b=Mc1T4yPAR76yIa
	Manyc1Qm5+uecqIm/ZWksHNZ3bjxs4xKBKpLj9OzJkNtZoFifCv3nG1JmM/VcnvP6sAm415yZ9gks
	Ct4YOq8Pci+sjWd2WwQm3OB0o66OXyM77rNRfgokE8WRdvt+MtlGnosvQCgUfGFeqHXYa9WAWvwAx
	OOmjgWxVIepNZx4JhC30hY5ZT7nJJQo2Sfmyj5YYVmuZYespja/n+sMDArFyb4Zoi0u0b0BwY40nf
	A2LnT8gmCoCS4FDa7Hi6iHN1IWQpXS9gfPJQobgGiiPHWD2doRUF0i/7rPSfJIGsbGIQsSqjMHpKK
	Frb5/x2tq709ym0iB2MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKNSC-00078V-2w; Tue, 15 Oct 2019 14:05:36 +0000
Received: from mail-eopbgr140054.outbound.protection.outlook.com
 ([40.107.14.54] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNS1-00077b-Rv
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:05:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XHYpO7qi9pBk9mCFkDJ/blAw5akkeosQnd3hMeZ85wYvIPktMwaRAzJT1HQTnW/UP1yJISkf3RCZ4vd+P/A9JvPKfPV+Py1O17xttMFL2xRT5ZGKAjIYs+ppF0gVFww90rJSwwM+zu5EeDm9P24BkplnVNXUyBHiP8V3Xk6FWiEaOpxvOSxWUgPK4TvqXUYxl6KEjY8LSFj/K8lHpCa9tG745R007yWhqe+1zs24o3fmZVh0op8Cc0tsXomhQx0dHpPWO4xXcYqHmYHxFHq8Eyeavb5171BDGAZZ7kd6oqURFGPVuv0CFHu4dHnx6O5E7n1Qzrkn2ABDvGJlV+Q0ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wNAyDx7tTWEvGVsJ9RMoZAwr9Gu9P2QfdGzY76byj+8=;
 b=kaScIWZNNfeGlmwfXorvswSd72VZ8Jjf69tqzMtu3UC2JBGUpsgM3l8mPc1n77PR6ZrXjeIePTB/dLLz3TPTZx4r/Rmba88e3cDHHx46Sw2wOpE762CQ5gOK03XbzAcx8ms12lJI6vnMOiOUzU50XGPTkZz+nwCV4zrfUvIqxoBv1hhuJUT2SzK3k95+qfk6TXmIgJ780umGA3cwn8MNV8cA2mmc4aYhble/eI9yJ1jAN+6gKVKs5A+XwLYCH9Gvca2iNERMJx63PjwECOv1y9EeATssQuD37BZNnZoV+SlVuJNTWKqasKLkEUH9dUe+Kgrnv/y1uD3GQNatWX3mFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wNAyDx7tTWEvGVsJ9RMoZAwr9Gu9P2QfdGzY76byj+8=;
 b=UbXCapYBjzjt2zuWgDkHCHsisUGOvV4tR754MToj2gFM0MBeH6UelPq4UK4mPg1/JTWJRt0i1jlGnQ1dRejw4uXo4SwoXOPU4VUDSaUwoi61wXz2KTMG40XMJ07mG/jINe3Dh9SG6QwQ6byNiguCI9dMv8m45LRaqF2zMaYcKEQ=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5104.eurprd04.prod.outlook.com (20.177.50.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 15 Oct 2019 14:05:19 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::8c20:60f:5a1c:42ef]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::8c20:60f:5a1c:42ef%3]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 14:05:19 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Angus Ainslie <angus@akkea.ca>, Jacky Bai <ping.bai@nxp.com>
Subject: Re: [RFCv3 3/3] interconnect: imx: Add platform driver for imx8mm
Thread-Topic: [RFCv3 3/3] interconnect: imx: Add platform driver for imx8mm
Thread-Index: AQHVTEWKNFF2Yqu6YU66bS83yX49og==
Date: Tue, 15 Oct 2019 14:05:19 +0000
Message-ID: <VI1PR04MB70231CD1535CBCB699F045D4EE930@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1565088423.git.leonard.crestez@nxp.com>
 <cf265add1502a75c4d6e6261ab1570c665e82c83.1565088423.git.leonard.crestez@nxp.com>
 <a2e09a9b-574f-8410-423e-0b0d8ea5c2ab@posteo.de>
 <VI1PR04MB7023E441FEE0D9288CAC0F44EEAA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <be41481b-5184-7878-b25e-41b7a1e1b2d5@posteo.de>
 <7c1452f3d8c13aeadcabf7807049092c@akkea.ca>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8f470be-8a9e-457b-c8a2-08d75178b69d
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB5104:|VI1PR04MB5104:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB51049CAEEEF43457D07D6C77EE930@VI1PR04MB5104.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(39860400002)(396003)(376002)(199004)(189003)(51914003)(305945005)(14444005)(316002)(256004)(71200400001)(71190400001)(6636002)(81166006)(86362001)(91956017)(81156014)(7696005)(76116006)(74316002)(54906003)(6506007)(186003)(76176011)(110136005)(7416002)(99286004)(66446008)(14454004)(64756008)(66946007)(66476007)(8676002)(8936002)(7736002)(53546011)(66556008)(66066001)(6436002)(44832011)(3846002)(2906002)(486006)(6306002)(102836004)(5660300002)(4326008)(966005)(478600001)(229853002)(26005)(6246003)(25786009)(55016002)(476003)(52536014)(33656002)(446003)(9686003)(6116002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5104;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VNKlRh0rxhbVMavRutyFgtg/5KNHJIifWsZe9pHBMUENuGTeFLc6/Ay7qwOc6qiiRIWs6ODA3aAqNkxPGf1LM3k0GZyIi+hIRxYIxom/uiTuJckJy4vU8kCgAEYP2zw/xq2KIzNbsC80uTr//8QnLCLgVuyqd9t000w0dS2kto/7/Wj0mUaSxnEiJ2QGiJ3gFvXcO9QepVl3R6IQGugjN+qdwl8v6TdyfzWwYO6Ec77YB5Rp4aXsd9bY04sOlrQzT7KQxAl8oXU1Y08dWM6GQS6kCKkYfU9vbx2yBkaEddR70ohmfUVwaJM5AGkEpomZ5C7O/sE2lGKlCYNHjN8f424a6J1GDWCtFTBSoBaW1qhJlSQj+yrDS3Xh12tI2Ky1D19FmaAFwBdRO7gtsf/spdaLc0jww6bh/AxV4QPaOicwM9qeXsR99hpsXUFBP5XvG2JjVZq7OHrsjLgFrZZngA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8f470be-8a9e-457b-c8a2-08d75178b69d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 14:05:19.6652 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gexdd1OBQgJPwUQmq1EjMa21UaBtCmkzBsijMu7geVSqBZzLhuVN+5yKdktAphcMPu9rn7cL0ozMvLT9fxASiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_070526_050141_17CEB135 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Alexandre Bailon <abailon@baylibre.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10.10.2019 17:43, Angus Ainslie wrote:

>>>>> This adds a platform driver for the i.MX8MM SoC.
>>>>>
>>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>>> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
>>>>> ---
>>>>>    drivers/interconnect/imx/Kconfig          |   4 +
>>>>>    drivers/interconnect/imx/Makefile         |   1 +
>>>>>    drivers/interconnect/imx/imx8mm.c         | 114
>>>>> ++++++++++++++++++++++
>>>>>    include/dt-bindings/interconnect/imx8mm.h |  49 ++++++++++
>>>>>    4 files changed, 168 insertions(+)
>>>>>    create mode 100644 drivers/interconnect/imx/imx8mm.c
>>>>>    create mode 100644 include/dt-bindings/interconnect/imx8mm.h
>>>>
>>>> Do you plan to add such a driver for imx8mq too?
>>>
>>> Yes! The topology is different (serving different IP blocks) but no
>>> functional code changes are required between 8mm 8mn 8mq.
>>
>> Thanks for the update, that's good to hear. I'll get back to you when I
>> come around to test this and wish you good progress until then :)
>>
> I've taken up this work while Martin is on leave.
> 
> I've integrated your u-boot and ATF on our board and I have a couple of
> questions. Our board is running imx8mq B0 (Rev 2.0) silicon.
> 
> It looks like this line limits the training frequencies to 800 MHz and
> 166 MHz

Yes! This is due to a hardware errata which was solved in B1: DRAM pll 
can't be disabled. This means that instead of 25/100/800 freqs are 
166/800, and this requires code changes.

> Does 100 MHz and 25 MHz not work on B0 ?

No, lower rates require dram clk from a composite slice (dram_alt_root)

> I added the ddrc_and noc opp as well as the 166MHz opp
> 
> I also added the interconnects ( do we need them on imx8mq ? )

The interconnect stuff is not required to switch dram frequency, it's 
for device to make minimum bandwidth requests. It an additional feature 
on top.

As a hack I configured FEC to do so but a saner example would be to 
request bandwidth based on display resolution and color depth.

> I had to add a hack as the PM QoS was limiting the bus speed to 399MHz ,
> if you have any ideas why that would be appreciated.

You probably need to set ethernet down (which is awkward) or better just 
drop the interconnect properties and test using the devfreq userspace 
governor.

> The driver is probing
> 
> [   12.136537] bus: 'platform': driver_probe_device: matched device
> 3d400000.dram-controller with driver imx-ddrc-devfrq
> [   12.147259] bus: 'platform': really_probe: probing driver
> imx-ddrc-devfreq with device 3d400000.dram-controller
> [   12.157382] imx-ddrc-devfreq 3d400000.dram-controller: no pinctrl
> handle
> [   12.164197] arm_smcc rate 0 800000000
> [   12.167880] arm_smcc rate 1 166750000
> [   12.171778] of: _opp_add_static_v2: turbo:0 rate:25000000 uv:0
> uvmin:0 uvmax:0 latency:0
> [   12.179994] of: _opp_add_static_v2: turbo:0 rate:100000000 uv:0
> uvmin:0 uvmax:0 latency:0
> [   12.188311] of: _opp_add_static_v2: turbo:0 rate:166750000 uv:0
> uvmin:0 uvmax:0 latency:0
> [   12.196606] of: _opp_add_static_v2: turbo:0 rate:800000000 uv:0
> uvmin:0 uvmax:0 latency:0
> [   12.204930] imx-ddrc-devfreq 3d400000.dram-controller: events from
> pmu imx8_ddr0
> [   12.212403] Added freq 0 25000000
> [   12.215742] Added freq 1 100000000
> [   12.219177] Added freq 2 166750000
> [   12.222648] Added freq 3 800000000
> [   12.226105] device: 'devfreq0': device_add
> [   12.230287] PM: Adding info for No Bus:devfreq0
> [   12.234864] driver: 'imx-ddrc-devfreq': driver_bound: bound to device
> '3d400000.dram-controller'
> [   12.243699] bus: 'platform': really_probe: bound device
> 3d400000.dram-controller to driver imx-ddrc-devfreq
> 
> Add seems to run correctly until it tries to adjust the clock to 166MHz
> 
> [   19.555482] ddrc checking rate 800000000 166750000
> [   19.555489] ddrc checking rate 166750000 166750000
> [   19.560442] bus: 'usb-serial': really_probe: bound device ttyUSB0 to
> driver option1
> [   19.568751] imx-ddrc-devfreq 3d400000.dram-controller: ddrc about to
> change freq 800000000 to 166750000
> 
> And the board hangs there. Any ideas on how to get past this ?

Please try this ATF patch:

https://github.com/cdleonard/arm-trusted-firmware/commit/783fc2b2c4266bfdb5218e4d9b6b2bc90849e0e9

I tested switching on imx8mq-evk with B0 SoC but a few additional 
changes are required in kernel to support switching between rates which 
are both backed by PLL:

* Mark the PLL CLK_GET_RATE_NOCACHE
* Set the rate to 166935483 exactly (to match clk_get_rate)
* Make the rounding in imx-ddrc more generous.

I will integrate these changes into the next version.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
