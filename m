Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBC91F39FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVzP36PI96h44LApg/mFKTI847EZk9xueuWkjLAHmng=; b=OzhlXr0Pm03YUH
	fXLPZG15Rt1pSQhKIbVqv/GVuj0lngyCXT1eXan6AjZTkr3uaFhYZjz3tapdi7FFmvgYL4ivUMOg2
	nsx58ArEBCUnLni43O7ILPCuLmtrLCVlObcq10JfqyPqcPK5kMZKvjm1oW6zy45tZlWEaL8lzIW42
	4SLliz5ZZttWbv7ZudMFWnoaAnYNojAZG/yswDrPKNGrSzqz5/uKgrrtda9fJSlX7E8RVL115U6Iv
	zpRFBLXBVb0t5e7pmsFADtW0uzdHTH+Wmg3TkEoL0xHGZASrPIvYOojQHJX8qa6zE0qOGZq79s7Tj
	apYNMyj8OmNmljWAc65g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicf8-0002uP-2M; Tue, 09 Jun 2020 11:43:26 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicey-0002tq-Ua
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:43:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591702996; x=1623238996;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=a71Gi5Pdpc+FRcKZwoDdYv56rVeD6zjCzm6k+L/Irzc=;
 b=UOjbBb+HzXZvxQvQZqF2UUE1YaT2iitkdKBEgzJi4UFXPEbODhccTSAt
 p3lV8QmYNdCYIya1+ZH8NSWow7VgP7jgrIKRx+NHuTNmPOOGNiV4UE0Xj
 8vuQbwHblEFox9zMGbsW4x22NBOYHDNWMng9wOLEHqSd/qVVcThT1FCo0
 r6HRSPvHCuT2Txfit3n2+S3qzyTcpDYZIN6fvRzCyzjxcIZU6zd6ygHUl
 JKPUc/lr+T/MEHhbCMJ7u1smnDemD6lNdgx5QN6XiuXki+Bt3tcFGYH8g
 lwzAGhIgpRX/zCN9oa5mgj5swtQTZK+FQ9Gq3RcgLP7QMXg8LRk5WjXul Q==;
IronPort-SDR: YtuHFa1QpFSXBc+dZh1+nU+AF2kEbGLOJCzU4D9wWqKOWGwdy2kKJeKhaUvBE/nWp6Lxi7AB7S
 glcaBnzp7YGKjtTMNzsf7Qbdo7DcxO8/zgO6rlpErrgmRyZBrTPCPuUN7hD1oJq32G3CMpXvuM
 htF99qq0OnnssBHQvCCWZD9QNpU97pImoWB9kx3Dq6Qhqr3ntwooTEGIe+qCAS1TJ3JD/gZFM1
 bh/nOhzjOEZF40b4L+D71SLAVqVhRwi3JZ4F6BjHau04HqntQ/lGuFJIqiyt/hWjL64ausEQUk
 Sok=
X-IronPort-AV: E=Sophos;i="5.73,491,1583218800"; d="scan'208";a="15086109"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 04:43:13 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 04:43:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1847.3 via Frontend
 Transport; Tue, 9 Jun 2020 04:43:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jD8S2EGWnvnbmBUANxC/nUeD18gVleZwwdx82PL0hFGb6mAGNiK7L40u7bCygNSduqLBOipTU8TQek3KZhJw+tHZMIk4tF74/cEHJkxFYD4ex7Lha0d+NIjbJ/fDz92noz2rxjz570WMLxBBm2i43wmaRl4Hb4W6cSaavOBBrm1IjuoGhFyUmB/hg3wCWUIA+OVP2gcTmBod3c/jA0Vc9WbQlcOTT8SehRnnSZhdgjp2jnUObEGLv+df52QRj53lYIS0HmI9+jV4+/kLPcuBiDWYYzzJdstM2B6diAHadaaTEmfADJeVd2rqYk2GmxurQOEAdk1mOH/oBn1JuxIlkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a71Gi5Pdpc+FRcKZwoDdYv56rVeD6zjCzm6k+L/Irzc=;
 b=Uab72m++Jf9wSsyMQd5Y4aEJPTRIAEOtRdEcZsohRZKkHKYk8OWTinWIl6X5wrsXCRdWtG/Wxn7pxaXKJTUFv0VJl2FCuZ5jzppTwS+rm/zQF0UUnw7VVmRwGe+L4k1SHB3paiTb3FtMhZBl7kSXfDSAFLn8wusIV2su7hGuMyoePbyhp0UBOARoyu5MJvTkilqKCihsHga5AE7b0tPa+awk1wg/Iwp7yqFWniAgeF2LW0eax/cDgvrqw/AOj9AzAP9kYytldTCHitPredjJm/T7FyJPGwVwwQ5zQtfBiP7XOeUiuuNjQ8ZyuV1N546QZg9iwLyJZvFugKXeIgrfJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a71Gi5Pdpc+FRcKZwoDdYv56rVeD6zjCzm6k+L/Irzc=;
 b=YCxhP+mousiIGmoluAh6j0CWEj5fL5QzEgqQ/6YB4Ubb3+vs8lgQLvRE8YUrouZf7tvZI3Ea6HfVPrl9DnqMGD0rrVgQW6sxj8BHXVt7iM7bVCjOeSCgMr9+98UIV7wZsG+WKvxiaVg74cgev9TW3f1PrHqr8F4WapSo6jglPts=
Received: from CY4PR11MB1688.namprd11.prod.outlook.com (2603:10b6:903:25::23)
 by CY4PR11MB1287.namprd11.prod.outlook.com (2603:10b6:903:2d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.22; Tue, 9 Jun
 2020 11:43:10 +0000
Received: from CY4PR11MB1688.namprd11.prod.outlook.com
 ([fe80::d414:b3d8:74c7:7488]) by CY4PR11MB1688.namprd11.prod.outlook.com
 ([fe80::d414:b3d8:74c7:7488%9]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 11:43:10 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <wsa@the-dreams.de>
Subject: Re: Re: Re: [RFC PATCH] i2c: at91: Fix pinmux after devm_gpiod_get()
 for bus recovery
Thread-Topic: Re: Re: [RFC PATCH] i2c: at91: Fix pinmux after devm_gpiod_get()
 for bus recovery
Thread-Index: AQHWEvR+GtAbavRk40KvRq7DN8dZF6iZuWYAgAxN9wCAC1nQAIAfHzQA
Date: Tue, 9 Jun 2020 11:43:10 +0000
Message-ID: <e08c1cb7-351a-8874-44fc-2e44752b170f@microchip.com>
References: <20200415070643.23663-1-codrin.ciubotariu@microchip.com>
 <20200505151256.GF2468@ninjato>
 <c7a35978-03dd-3c73-6e7d-15ed40b5c57c@microchip.com>
 <20200520162724.GG5759@ninjato>
In-Reply-To: <20200520162724.GG5759@ninjato>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
authentication-results: the-dreams.de; dkim=none (message not signed)
 header.d=none;the-dreams.de; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [84.232.220.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d939d02-5617-459a-fa30-08d80c6a48eb
x-ms-traffictypediagnostic: CY4PR11MB1287:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1287056DDFAE7DD103E325BDE7820@CY4PR11MB1287.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 042957ACD7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BV2BjFG58g66/hHuv5bz+fA/zWg3nErCXgOgMyjL9niOT+9Kl5yrsVLYDWxrJG3pDkfUbPL4oOIeejSJEH7eWj8UNCdVGfI1Q3adZ21In5vzgogbi1W7nwGPXgJcJnQ0oQd0tCayOaiaLyjioRZGyKaHgX4Q9TpTKORARITVlFvx2djBfC35G00DCozZl1GGrxdSEgybeUWsz3x4b7w8BLJO584gIQG3+o683hkbd0DTy5d3znPcj9MPPKY8pYLA9knQEXxrCJnmeArdLhFYj3i3mDE/jPaYE9Rm4xsF1Whfoo67EvcBZH23UAs129yn1PJChIv1UAUI78Cmp3cFA1UXSC9WpSezCLpfVfMM3UUPpNvIFKlRCZfmIFBWZuAh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1688.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(64756008)(53546011)(66556008)(31696002)(2906002)(54906003)(31686004)(6506007)(76116006)(86362001)(71200400001)(91956017)(66946007)(2616005)(26005)(6486002)(6512007)(7416002)(66476007)(4326008)(83380400001)(5660300002)(186003)(8936002)(8676002)(36756003)(66446008)(498600001)(6916009)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: d4A+F9V9EuQFiEiBE8e8zKVr4pkOH0p/S5ZCn+LHp8OktGAc90j8Emu5gpVtYYcCMY07e6P5uPGZt4AuS5bkJ1eJ6rEs+4wavRi9hnaYGlsYebCeOMPtnGcmqUrrgSGfQ/2e10MOs5BHwxOOPpQOhfPm0014u6oHcFoYs9AIHmeUqRc0fN5VoEbPzrFZaghnr15BcbQWe2ZMr8LLDUrBPxnfBw/pCIreghNS4F0yzugN8/lHTDdFvtP3m64Q91RiDqrCNatGiyGMukjGKbQ6R8qKIAU1bfvDP5F/cZgRBNqIMk9KEKFMfXLQBqRlj5bup9TK16Kh/rSoC0jYfL/C1Gj9+3jVUwofcz6CztNHNQdvX4pSkxeuCB2dV9QQoHDkdu8H9AwVlGapHjP5vf+yYAdy7kdDgphOdqrSaG6DMJmWRsbc8nLsorvW++/TvCr9xOThogvq6GQXroTP6qfINi13gaADafxNNLVROpR7ZghnpV5PMWcnXFRPL9ijlVrq
Content-ID: <2E64A4B358CB5D4492DD10456E9F8B8A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d939d02-5617-459a-fa30-08d80c6a48eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2020 11:43:10.0407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r2ZkjbgETA6/oPc8xhVPJnXHKvQPsCsZu0jMsNz4D9jCgQLQTh30NdcEZIzfUTRqngv7IbA/Q1U5p7YaqeZ2F1t6KhNVmcG75YoQgOi70sE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1287
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_044317_152739_32FC5A39 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.71.154.253 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alan@softiron.com, kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-i2c@vger.kernel.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.05.2020 19:27, Wolfram Sang wrote:
> 
>>> This will do for 5.7. For 5.8 or 5.9, I can imagine to take the two
>>> pinctrl_state pointers into bus_recovery_info and handle all this in the
>>> core. I will try this later this week if noone is super-eager to try it
>>> out before.
>>>
>>
>> By 'all this' you mean to move the entire function in the core, right?
>> Having just these two pointers bus_recinovery_info won't help much. I
>> can try it, if you haven't already started...
> 
> I mean to add those two pointers to bus_recinovery_info and if they are
> populated, then the I2C core is doing the necessary magic (or maybe just
> the pinctrl handle and assume the states have fixed names?). Russell
> just sent patches to add it to the PXA driver, so we could now double
> check how much could be factored out.
> 
> I haven't started yet, let's keep in touch who started first :)
> 

I started working at this. I added the pinctrl state initialization at 
the beginning of the i2c_init_recovery(). Due to the pinmux state issue 
with the GPIOs, the GPIO part needs to be also moved. The problem I ran 
in to now is the fact that, even if we can ignore if the GPIOs are not 
available, we should at least treat EPROBE_DEFER error. To do this, the 
I2C bus drivers should take into account the fact that 
i2c_register_adapter() can return -EPROBE_DEFER. Is this something to 
consider?

Thanks and best regards,
Codrin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
