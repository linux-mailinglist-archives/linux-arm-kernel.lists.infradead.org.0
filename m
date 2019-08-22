Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BDA99791
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 17:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b2/5wguOT2WxLMWs1RhuCFNNM86YDA0tAzawiqH6U+8=; b=fq8bt56qIcpMpx
	d9y6+A+kTAPlj56TWFilVhdw95kmC+YY682SN8FKUmxozJF9P4Dux2N2BZywx24tMeW4i/5NcnGV7
	U/VoIt3Q3xhKwSNz/7ZVhEaoROCLjvhXUQW04iZ2EZMoY+wVWsVqDKO8gmhuXf3lZkjOkX9IL2oZp
	6VJtRtGe42WLJJ5Rm1G1awm6G2yfzeXD75T7C+wtp853i4vy2hZJygWE1KwCItEdTpQDmbOvMZ+Nq
	HKFJvATjV0KBj5YY0b8zeNhaGV6AJCfNyDyLJ5RmF4QC4Y/9o5f2xgcGEc8YumNAE5LcZaUXzyAi1
	4dS0UH3s/tY+YyuxaVnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oaj-0005NO-EY; Thu, 22 Aug 2019 15:01:33 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oZa-0005F9-9S
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 15:00:26 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: X7f4+q/mxeiGHuydG+ip6MKS2GGaVdwC6vFpwZnfPQgUy1N2GzIdyQPH53a4eiCO2gsV/rgcqL
 Yv17GZSMElkCjdOgRehNk6vJVDMe3UR4haf9nwes29MrdMMTNDaMoT03ouOIQIXVI/IHyMCzNP
 CM5PbIUlxNox3/cM1P9I7x9faLP5melrqItSpO1gSD565RN3FriGZHpke1FuNC6KhFll2HjG2o
 C1yF6WTRHu3J8/nD/FAOKulK9R22WbF2Dx1Wqe7+9Ywx2uaC9y/f1IB5ktnBsOtueOdDTfck34
 3Gg=
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="44613787"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Aug 2019 08:00:18 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 22 Aug 2019 08:00:15 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 22 Aug 2019 08:00:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kan7eV//VPz3nQehNhRL56TmDaGZWL1/6jtgjUTzMcP5soWb4HWYlXS1umUI0JyVly9+qNYa0vQWyd47QxWW65d8N2POpIit68gY8nFWPyYwni7vFqNm0hjyZCPXOt0aU1uYOrbF+L4/rQVG3d9zxCkG7PW8Sw9ojWdDRRewPBOtxl5rMuW+nxFsgz6uGXzHVuWzf2sQuTSxC6DftI0bFYV+zGpcS57jkFBkwiJnszS/WMKZkBz0sGtu86cy67ufWh2/4QJkQ5oaNZSF7ERQME7XDW9hggLmAY1LFxF4Z/vHuzKaMN5AgFNDvlpRO/3gDthgDuVbcRhN1DbUIkku6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kl0VYrt3KK9LyPp6QznMAEVCycM+JW/WI/7ZZfDGv5E=;
 b=jPoL7J9IIzBVHzFS1I6YgBC1UjeIQX21HKm/oXE+Zc/upKQJwwfsFnBzI7nKCOBhsZ/LJJCCJVEY/3FKIBM6v8dkexOHpyaDqG2aQao7dm2ZkkvV+bmb4+m+mHxE5EPDU/Detj45zJxrQqjLQeLVswjYmeNbqOcspz7339pdI9f69S/kdUS7pTdD+j8bzflbKRhfk5ViSvGp2hIZkl6xNOI5IMVl/Q7FWfgIMm6nSJf7algUY5OJ5LIPszVtT4g2eDXNcUVF1NCTrRpLpsDYiJRs1dSWxEgQZGsPlw4zeM1x6SZm3JR/p3b4PBQdKbQDeVhKtfSfZ3IHPFkF5uKUYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kl0VYrt3KK9LyPp6QznMAEVCycM+JW/WI/7ZZfDGv5E=;
 b=QZiGuQ//qdNSaSIycZtTcbpGlEmT2Hcy/ual7DRYEz0Feq5PCPr/PRnkLHvuIMbTIJJ6F0vD5XqQrmqkFSNnvsEuq0uxPRi5w321iipfVhtbxCsKcA6HFECpjpGYK37YTmE/xqxWveIO9S4fox7GMd8MxxFsGJME4v5P6aNAJhk=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1993.namprd11.prod.outlook.com (10.168.107.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 15:00:14 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2178.020; Thu, 22 Aug
 2019 15:00:14 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <pierre-yves.mordret@st.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: Re: [PATCH v3 0/9] i2c: add support for filters
Thread-Topic: [PATCH v3 0/9] i2c: add support for filters
Thread-Index: AQHVNljuO/4Zfm2qEEOYNYIbMTanpabGqLQAgEDdtAA=
Date: Thu, 22 Aug 2019 15:00:14 +0000
Message-ID: <867070c3-02c8-da1b-04d9-0a1b628577de@microchip.com>
References: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
 <20190712082044.6eteunzehyptsibk@M43218.corp.atmel.com>
In-Reply-To: <20190712082044.6eteunzehyptsibk@M43218.corp.atmel.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0801CA0083.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::27) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190822175452533
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e89e3d0-5a7d-4999-f064-08d727116fef
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DM5PR11MB1993; 
x-ms-traffictypediagnostic: DM5PR11MB1993:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1993FEBB5FEC75E8E8D64FBEE8A50@DM5PR11MB1993.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(376002)(136003)(396003)(189003)(199004)(6486002)(53546011)(52116002)(386003)(6506007)(66446008)(53936002)(8936002)(76176011)(6512007)(4326008)(31696002)(66946007)(110136005)(66476007)(5660300002)(26005)(14454004)(54906003)(102836004)(6246003)(478600001)(186003)(316002)(486006)(36756003)(99286004)(25786009)(107886003)(66556008)(2501003)(81166006)(3846002)(2201001)(71190400001)(71200400001)(64756008)(6436002)(229853002)(86362001)(446003)(8676002)(81156014)(11346002)(256004)(305945005)(476003)(6116002)(7416002)(66066001)(2906002)(7736002)(2616005)(31686004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1993;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RvTJ2z+oiYSmHAA0K91VXWfwjRToaeEtf6i1z0nZBNyzJRTxXYJp3UAprd/ulpOIB6jHbYCjeiuyiDc54X05e/QMj/42FV91xRJkkGoWDhdzLFGLpqP80ycnkPo20RPS2MkYze4z2CFWKeoyfo2IUQpBS9GFeX3mFoGi6S2Asmpowsllg2eSBZVVyhZhK7XSSuQ6l49OW0+PaIjjH5r/VY4C4DvFd5z6IX3+rj3EDHduK3MHQSJRuuvBgwZ2fFOc0V9MK3B7XoAWGyyrdWJ+goP7zN1lCLOz3pt6dJgZilTnQZNV+OMDFwdnlWPfv976eK1nzvnvN5Zn9oUmqbgPW0RMrGBA4SA9uS8+Y1RMO1wa3pG0Wq4ao7U5l1cP72ej8ul5ALUsQusnSz/HxmEbfEk1+eeVmVSxBtyGkmSc0FE=
Content-ID: <19D95610CCA5FD42B389A130ED300BED@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e89e3d0-5a7d-4999-f064-08d727116fef
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 15:00:14.3996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0l2sVt/c0QpVwnGYq/kOMuRcz/jHaVw5YYuPZWNz3CHyd5y/dX+Q7n0wvfCM8+LMmxFDUv6xO2DDo224TwO7/NFTSCM/AW1RB7DdcBpd2vo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_080022_458981_8661F674 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, peda@axentia.se
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12.07.2019 11:20, Ludovic Desroches wrote:
> On Tue, Jul 09, 2019 at 03:19:26PM +0200, Eugen Hristev - M18282 wrote:
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> Hello,
>>
>> This series adds support for analog and digital filters for i2c controllers
>>
>> This series is based on the series:
>> [PATCH v2 0/9] i2c: at91: filters support for at91 SoCs
>> and enhanced to add the bindings for all controllers plus an extra binding
>> for the width of the spikes in nanoseconds.
>>
>> First, bindings are created for
>> 'i2c-ana-filter'
>> 'i2c-dig-filter'
>> 'i2c-filter-width-ns'
>>
>> The support is added in the i2c core to retrieve filter width and add it
>> to the timings structure.
>> Next, the at91 driver is enhanced for supporting digital filter, advanced
>> digital filter (with selectable spike width) and the analog filter.
>>
>> Finally the device tree for two boards are modified to make use of the
>> new properties.
>>
>> This series is the result of the comments on the ML in the direction
>> requested: to make the bindings globally available for i2c drivers.
>>
>> Changes in v3:
>> - made bindings global for i2c controllers and modified accordingly
>> - gave up PADFCDF bit because it's a lack in datasheet
>> - the computation on the width of the spike is based on periph clock as it
>> is done for hold time.
>>
>> Changes in v2:
>> - added device tree bindings and support for enable-ana-filt and
>> enable-dig-filt
>> - added the new properties to the DT for sama5d4_xplained/sama5d2_xplained
>>
>> Eugen Hristev (9):
>>    dt-bindings: i2c: at91: add new compatible
>>    dt-bindings: i2c: add bindings for i2c analog and digital filter
>>    i2c: add support for filter-width-ns optional property
>>    i2c: at91: add new platform support for sam9x60
>>    i2c: at91: add support for digital filtering
>>    i2c: at91: add support for advanced digital filtering
>>    i2c: at91: add support for analog filtering
>>    ARM: dts: at91: sama5d2_xplained: add analog and digital filter for
>>      i2c
>>    ARM: dts: at91: sama5d4_xplained: add analog filter for i2c
>>
>>   Documentation/devicetree/bindings/i2c/i2c-at91.txt |  3 +-
>>   Documentation/devicetree/bindings/i2c/i2c.txt      | 11 +++++
>>   arch/arm/boot/dts/at91-sama5d2_xplained.dts        |  6 +++
>>   arch/arm/boot/dts/at91-sama5d4_xplained.dts        |  1 +
>>   drivers/i2c/busses/i2c-at91-core.c                 | 38 +++++++++++++++++
>>   drivers/i2c/busses/i2c-at91-master.c               | 49 ++++++++++++++++++++--
>>   drivers/i2c/busses/i2c-at91.h                      | 13 ++++++
>>   drivers/i2c/i2c-core-base.c                        |  2 +
>>   include/linux/i2c.h                                |  2 +
>>   9 files changed, 121 insertions(+), 4 deletions(-)
> 
> Hi,
> 
> I don't know if it will fit other vendors need concerning the binding
> but for Microchip it sounds good.
> 
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> for the whole serie.
> 
> Regards
> 
> Ludovic
> 

Hello Wolfram,

What is the plan for this patch series?

Thanks,
Eugen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
