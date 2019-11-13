Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF25FAF62
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 12:13:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54uXhIhtFPS6m0zDOR7VFY5uVWJlILdmQFHGGGNUqAE=; b=NQRycMjXURgGog
	efVGTC96hzy8y+sR8/zfh8Bzh2O1tJO0h30/HLeqljmpdTVhY7tDi2LFfa7ez5ozgO+wPCZ6pAjWO
	D3oxFdhvHAaZZHRk2IK5mRpFgR8Y31aF181Iu3+stVcMO1YSgmZ6tat8Gsv/W8Os7WwS233SRPxN1
	PTV5ZJ9cWqW/l+UoCjnOTY5t7V06hxiU+K402PL2rcvct63Son3+NvCopFjfY0C/C1awlpYhAD6Ix
	no2oYBAI/6pGcuATgINS4Yl0n4i/jUz9JtLNZjqfwCZgSN2O5E18MHtygwa6tfcZZh3U8KV5XaaCG
	3gb1ORxkNSd8pmaprXDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUqa3-0000vw-Au; Wed, 13 Nov 2019 11:12:59 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUqZv-0000p6-SW
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 11:12:53 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: YsxYRHhZlze133Hqa+SNjMIxUp++hNpwwicLmMfYBYz+7GQNbcStk9xhY1BWtB2TYDm/NyG3zV
 gRpgvUKtJ4lEk115PYgeda/rDGqCN4gYQKfTemafR/DbjCswJ5gOImtc0cxzRTaBmoVQ+Utfz0
 pHsPQ8ri+eqtM6cRr9wpxUm/USyhDOTUJgyZU3+ktoWi2lYuYDkTYSHerq2KWrfR39aKdt5pL9
 6E84KyjtJTjZKeroNAsfOqFpQEAzU9aeobqjNzbN83Omn3e5SG22VhfGFAPA+T5OEtQZkGKont
 jOU=
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="56886200"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Nov 2019 04:12:51 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 Nov 2019 04:12:51 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 13 Nov 2019 04:12:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kC/nPWtEYncgv1ftpQms+eudhk8EAT907J6Hp3J+1UbbtWXlYvnHTFXr4GrpUsOZHQRha6d6KLFzK6i1ajR0gLmh3cE546kHtIi/SiYoMpmBaOOsK3VgSMAIWiLjxnL3qbmAx5R5Fy2+uwPkxDhPrm7W+iPkpam9KTkovtcbRtLe905MJetXjtWfSXWBrMD2O6qO6mQBdCPd2LGUSuCdzYn8a379ROhrlnfoj4y5CTER5r5OpmoJH4wMkCIxjgA6G/qpyUXuUBrv3FJKNYhngundfhJAgJQAjB8Whrwj7CrfvWfVaU/IG5o0gWFEcsgk5PINn2wybC6uel6iLwLEzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YMeEYAp2IURT/GnEG42jlpDCGRrT8LGYBNWlEPB3C1U=;
 b=UljzBtPzUGPKLmyUkRiASZfW1piVSxxc6AoyZtKbQnwZL5z+OfpTQbx7k6cplGoI6rYGtUVeLKiWfXs2CQLHZapW4mabDAjduQPQ0ld8AlK5u9BKz6RYWqOL2W4OjApG4H9bkiKfE87FsVw/ZqfdBsm/qIzhzSD6/fg/nJRO0SZzwoIUK+WWNcOvbWVo494jDi5lLWpey02aYW91egkQ6yDUtmmmqXjPqPqZoC9qmyqQdDzn2SVFf/VXd0xK2k3ApU6LHfSrplFGJlSKSxOWzzrWbXFSKnVxpnOYLDZhm5BkFf+V+gcukQz3ElZxIZRKn1Y43y8AATsV3p6zl3W8mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YMeEYAp2IURT/GnEG42jlpDCGRrT8LGYBNWlEPB3C1U=;
 b=J/FpmF6EdmNrhn8nBhcIpfaU3W2vTf7ogO+45N+vFWRhfpjVimTkP81Jfxu+XP3mjuHSJRmz+m6GqRa6wP718umdMjlQhgnVlBtOfIBPpxBuhzmsS5YY/Wocyc0BOMxqnXUhICUHXJMgYrytBC3HqHvKbyti/m8b/SJPEndyMPM=
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (20.177.127.88) by
 BYAPR11MB3207.namprd11.prod.outlook.com (20.177.184.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 13 Nov 2019 11:12:49 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::f4eb:2c83:7aec:ee98]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::f4eb:2c83:7aec:ee98%3]) with mapi id 15.20.2430.023; Wed, 13 Nov 2019
 11:12:49 +0000
From: <Claudiu.Beznea@microchip.com>
To: <tglx@linutronix.de>
Subject: Re: [PATCH v2 2/2] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
Thread-Topic: [PATCH v2 2/2] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
Thread-Index: AQHVmhNDyW1jqO+VV0e5ZbsiASmYwg==
Date: Wed, 13 Nov 2019 11:12:48 +0000
Message-ID: <3dc21a11-ac75-2040-62a9-540cf0f6d5ed@microchip.com>
References: <1572880204-4514-1-git-send-email-claudiu.beznea@microchip.com>
 <1572880204-4514-3-git-send-email-claudiu.beznea@microchip.com>
 <alpine.DEB.2.21.1911041851230.17054@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1911041851230.17054@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR06CA0068.eurprd06.prod.outlook.com
 (2603:10a6:208:aa::45) To BYAPR11MB3224.namprd11.prod.outlook.com
 (2603:10b6:a03:77::24)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191113131240659
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 46e5dcf3-9887-46e9-d3fc-08d7682a6ac1
x-ms-traffictypediagnostic: BYAPR11MB3207:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB32070CB7B8B39B5AEF9F6B5587760@BYAPR11MB3207.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(376002)(39860400002)(396003)(136003)(199004)(189003)(71200400001)(64756008)(186003)(86362001)(53546011)(66446008)(6116002)(6436002)(6486002)(54906003)(305945005)(66066001)(66946007)(66476007)(66556008)(102836004)(256004)(14444005)(316002)(6246003)(31686004)(71190400001)(229853002)(478600001)(6512007)(7736002)(52116002)(25786009)(6506007)(2616005)(76176011)(6916009)(8936002)(486006)(31696002)(81166006)(14454004)(26005)(446003)(99286004)(11346002)(386003)(2906002)(4326008)(5660300002)(476003)(8676002)(36756003)(3846002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3207;
 H:BYAPR11MB3224.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vOuJP2LFDwdHRdCj34y3Kk+36ZnKQQUnxJGwYc7L044dYpZQdiouw7bFAE6Z18fryeLhupJETLn1avho7p0o2SzY1oJ2pZLvEKBw7uMcp7wLfgNKCSBL5VeXs5/1YY69ZZ0UBKWYg4+aTuYD4eT1tVTbNO+c1SjEfpc4nfYLduK36oYPLf0ufVOcfzanhwAlzClb2m0hXa5vk4475D30+4+/+F4ZENarsazFHwt42AQG7MemNYA1kVM+XZpDh8YVAfgCQSEOu/ext1U54ElmYTbcY1y3N1qHaJjPpcbxh8ZhWoR7ltk4nDejHJJzxrFb4Z0T8JMteQaR0wQVaJlEEhxmpE4GrIPGGpwwE4MWm9qyq4G+cn6MdAqYJNChjyZz3FQf5x9DX9N59MGMMAKuiai7R8uZExackGRFx+/4LBL+KyS5Gx3tiuCMcEcNN4GN
Content-ID: <5691F41A79D601419049A548418D0037@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 46e5dcf3-9887-46e9-d3fc-08d7682a6ac1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 11:12:48.7745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 02s+9L8Lx8jn8/7uWc599IFEayyjuRWXVzqqMeAkrElqFI37E9EFyuuoJktjImQUq6crTlBEOXsFa09QjTbc7FhkLDj9VrrVL/HhsO5loV4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_031251_940943_A5A45026 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04.11.2019 21:05, Thomas Gleixner wrote:
> On Mon, 4 Nov 2019, Claudiu Beznea wrote:
>> +struct mchp_pit64b_common_data {
>> +	void __iomem *base;
>> +	struct clk *pclk;
>> +	struct clk *gclk;
>> +	u64 cycles;
>> +	u8 pres;

[...]

>> +static int __init mchp_pit64b_pres_compute(u32 *pres, u32 clk_rate,
>> +					   u32 max_rate)
>> +{
>> +	u32 tmp;
>> +
>> +	for (*pres = 0; *pres < MCHP_PIT64B_PRES_MAX; (*pres)++) {
>> +		tmp = clk_rate / (*pres + 1);
>> +		if (tmp <= max_rate)
>> +			break;
>> +	}
>> +
>> +	if (*pres == MCHP_PIT64B_PRES_MAX)
>> +		return -EINVAL;
>> +
>> +	return 0;
>> +}
>> +
>> +static int __init mchp_pit64b_pres_prepare(struct mchp_pit64b_common_data *cd,
>> +					   unsigned long max_rate)
>> +{
>> +	unsigned long pclk_rate, diff = 0, best_diff = ULONG_MAX;
>> +	long gclk_round = 0;
>> +	u32 pres, best_pres = 0;
>> +	int ret = 0;
>> +
>> +	pclk_rate = clk_get_rate(cd->pclk);
>> +	if (!pclk_rate)
>> +		return -EINVAL;
>> +
>> +	if (cd->gclk) {
>> +		gclk_round = clk_round_rate(cd->gclk, max_rate);
>> +		if (gclk_round < 0)
>> +			goto pclk;
>> +
>> +		if (pclk_rate / gclk_round < 3)
>> +			goto pclk;
>> +
>> +		ret = mchp_pit64b_pres_compute(&pres, gclk_round, max_rate);
>> +		if (ret)
>> +			best_diff = abs(gclk_round - max_rate);
>> +		else
>> +			best_diff = abs(gclk_round / (pres + 1) - max_rate);
>> +		best_pres = pres;
>> +	}
>> +
>> +pclk:
>> +	/* Check if requested rate could be obtained using PCLK. */
>> +	ret = mchp_pit64b_pres_compute(&pres, pclk_rate, max_rate);
>> +	if (ret)
>> +		diff = abs(pclk_rate - max_rate);
>> +	else
>> +		diff = abs(pclk_rate / (pres + 1) - max_rate);
>> +
>> +	if (best_diff > diff) {
>> +		/* Use PCLK. */
>> +		cd->gclk = NULL;
>> +		best_pres = pres;
>> +	} else {
>> +		clk_set_rate(cd->gclk, gclk_round);
>> +	}
>> +
>> +	cd->pres = best_pres;
>> +
>> +	pr_info("PIT64B: using clk=%s with prescaler %u, freq=%lu [Hz]\n",
>> +		cd->gclk ? "gclk" : "pclk", cd->pres,
>> +		cd->gclk ? gclk_round / (cd->pres + 1)
>> +			 : pclk_rate / (cd->pres + 1));
>> +
>> +	return 0;
> 
> Lots of undocumented functionality which open codes stuff which exists
> already in the clk framework AFAICT.
> 
> Why are you not simply implementing this as clk framework components?
> 
> 
>             |-----|
>   gclk ---->|     |    |---------|
>             | MUX |--->| Divider |->
>   pclk ---->|     |    |---------|
>             |-----|
> 
> which is exaxtly how your hardware looks like. The clk framework has all
> the selection mechanisms in place and all this conditional clock stuff can
> be removed all over the place simply because you just ask for the desired
> frequency on init. Also suspend/resume and all the other stuff just works
> without all the mess involved.
> 

With regards to this: gclk and pclk are clock inputs to PIT64B hardware
block, GCLK rate could be requested and set from clock subsystem, PCLK rate
is fixed and could not be set via clock subsystem.
PCLK is the one that is feeding the PIT64B hardware block. The hardware
block would not work without it. At the same time it could be selected as
clock source for PIT64B's timer.
GCLK could only be selected as clock source for PIT64B's timer. PIT64B
hardware block with its timer functionality could work with only PCLK but
could not work only with GCLK.

The block diagram is as you pointed it:

                               PIT64B
PMC             +------------------------------------+
----+           |   |-----|                          |
    |-->gclk -->|-->|     |    |---------|  +-----+  |
    |           |   | MUX |--->| Divider |->|timer|  |
    |-->pclk -->|-->|     |    |---------|  +-----+  |
----+           |   |-----|                          |
                |      ^                             |
                |     sel                            |
                +------------------------------------+

The divider could be b/w 1 and 16.
Peripheral clock rate, on the platform that I'm using, is fixed at 200MHz.
In this case the minimum clock rate that could be used for peripheral clock
is 200MHz/16 = 12,5Mhz.
Generic clock rate vary depending on its clock source and dividers.
Lowest clock source of generic clock could be 32Khz, highest clock source
for generic clock could be 600Mhz (on the platform that I'm using).

Implementing a clock driver for this as you pointed it would involve
breaking the timer's driver in 2 parts: one
related to clock selection, one related to timer's functionalities.

Since, I'm thinking, the right place to put this driver is at91 clock tree
(drivers/clk/at91/) I should take a syscon to PIT64B in there so that to be
able to set the proper PIT64B's bits for MUX selection and divider.
Breaking this in multiple blocks will complicate a bit the things (e.g. I
would need to select 2 config flags for PIT64B block).

In the DT bindings I should anyway need to have a phandle to the peripheral
clock and one related to the MUX.

pmc: pmc@fffffc00 {
	compatible = "microchip,sam9x60-pmc", "syscon";
	reg = <0xfffffc00 0x200>;
	interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
	#clock-cells = <2>;
	clocks = <&clk32k 1>, <&clk32k 0>, <&main_xtal>;
	clock-names = "td_slck", "md_slck", "main_xtal";
};

pit64b: timer@f0028000 {
	compatible = "microchip,sam9x60-pit64b";
	reg = <0xf0028000 0x100>;
	interrupts = <37 IRQ_TYPE_LEVEL_HIGH 7>;
	clocks = <&pmc PMC_TYPE_PERIPHERAL 37>, <&pmc PMC_TYPE_MUX>;
	clock-names = "pclk", "mux";
};

One aspect here is that PCLK should be enabled all the time and the mux
should only select b/w PCLK and GCLK. And the mux is not actually part of
the PMC.

One other simpler thing that I can do is to assign GCLK rate directly from
device tree with "assigned-clock-rates" property and go all the time
directly with GCLK (assuming PCLK rate/GCLK rate ratio is all the time the
good one (it should be at least 3 for this IP)) and in this driver to
select all the time the GCLK clock.

Thank you,
Claudiu Beznea


[...]

> 
> So the first invocation of this init function is supposed to init the clock
> event device and the second one inits the clock source. And both allocate
> common data. How is that common?
> 
> Thanks,
> 
> 	tglx
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
