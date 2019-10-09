Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 250FFD0E85
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 14:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izH8a/+yt/FzEYg4v/RpXclDBmhbORmnWy0exfilvnw=; b=IRiIzq7axtnPIF
	gOdjFvDIANtjLMJy3ckzA64hvzZU/R7mxoEgY9zEV34PTtGo2HPspEHtosHc1SioNTO2737nc+r8C
	+fkWAu4/tqdub/0SDtOVThmCKUbYxw9f97O+vn45Om/gzJCKGe4a/pZSnuQalHtTav+TyJKvrNYS8
	Pzh8GZSe/ievZ+J3PB12bBsrhoZXpBzkOHBARTjDYZusWhTFtmjOiwnxcbdIb7maRM1t68iUXwVx/
	E4ptbQfQIF1DYn10EJrWvEeaJuRqipS6IESBuXX8eroCV1WgMtnRxXrGZECUdJ053kQXAlh7d3sYv
	2hSsQ1DHOCP50W6zfrMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAuF-0006tI-IU; Wed, 09 Oct 2019 12:17:27 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAu4-0006sI-10
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 12:17:19 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: /B5xqw6ZRQcqDUyWhFaZzCpb/nzlC/t9uvmou9GcM0ptDO2eolTBE1Lpcurh3IwwVONzy5268I
 fHn9TRYbuDnvuO8qmsAu0jzaZgQeCx7r7N4fEY2cn0jlNh3jOh0Kf2OUhPHmdieyL5j8RsS4fr
 8iPLiWAuFBZN4KiKBf0SKRESeFPKD3ua+rI8LWsmn1ix/hzgfDkFc7NsQJVxkF/e6c5ViNlGHe
 6ldlZ2HVKqQaalEYlZhS5oj93DELa/Zw1NWCDfx9wVIW4sZpF6tTBiRPmNlXsoYVHyGMXWQOxx
 XYI=
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="49383324"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Oct 2019 05:17:12 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Oct 2019 05:17:11 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 9 Oct 2019 05:17:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gN8Qx07bSxLiQExq2y+lpinXtrKVQaRSNZn3KI+CscwQKe4CGAxzVRFv0KF9slFuYIeD++117djpaxeY5B7KvKfYcZIVQ5gpptUTc1gE8W28hh9mvE9XPCgFG7zLNCMvPRcgiZdenhqg8XQHTRavHezUhtB+p5H/NynkLgNb2DFaNdBGzKOpTXofB5YJq5vfPEs2MyPVbma75K+yxeNQfxirBuH+py36E3GC7Tu+QFrvNcqxyJ6GUGnCTZwLl8Dkx+HXNcQA259dJRrZ4i+PCK2fZUDXEafP09xGK3b6ovA9cRC882JFWXP7ptTXaMI2qTFoD+M86XdlfTJ1m+tvAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q7OdLL4pPgL/gbwOhX2Ssl78A7o/CmMB22o9vA2mRmQ=;
 b=fAwmigcGTgHiQwEXIsCZc+yy8pAqZZe9w1p2OHYMBFfYcykmNR+k9AKGgRAerqPqGaeQIkla8BCXXUbrkcmfbCfpKWxXIsyvwMUFSn9qjlORbO1lyxYqSz/KSrX5yK9hrgRAr1cyg02kQBP2/CNG4YDvFnCQ7p0uWYuNJYcAQepY23f+ksufeI+ecnCqt1N3B0eF4sI1m655ZxhMOyOelCiyOXoqdCeIeVp4XGGtRYuvSK/noF7yZh/AEHmH1xNpeImoHSs2Z9G5/00YY2V0fYwo24oBeCbdwjQuMgKe6f3JcSaLm6+HU+xtY1Zisk59MJ6kKeiTHRVMs2OzsVe09Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q7OdLL4pPgL/gbwOhX2Ssl78A7o/CmMB22o9vA2mRmQ=;
 b=kcMgkEtwEcbLTmBwHD1+nSpFI4bwNC/FQjdAzpaZaBT+Y9uxVoRIhz/1BztrRId8ndZjnoHkcE3jozp2/33dA81W5B4O6STUNklR0yanNmjbws2F3FafHJEOlIuuL1bDdIGSaYaFVue3c6iEzeCogbsUi+W0G2P04v5wtTM+g+0=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.85) by
 DM6PR11MB4009.namprd11.prod.outlook.com (20.176.125.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 9 Oct 2019 12:17:10 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22%6]) with mapi id 15.20.2327.026; Wed, 9 Oct 2019
 12:17:10 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] clk: at91: add compatible for sam9x60
Thread-Topic: [PATCH] clk: at91: add compatible for sam9x60
Thread-Index: AQHVfpt5ONriexrfSEW8pLtSnh8Lvw==
Date: Wed, 9 Oct 2019 12:17:10 +0000
Message-ID: <f8fabb4e-81be-6219-ec5c-8d236a8959e7@microchip.com>
References: <1570553186-24691-1-git-send-email-claudiu.beznea@microchip.com>
 <20191008165449.GA4254@piout.net>
In-Reply-To: <20191008165449.GA4254@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR10CA0095.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::24) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:59::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191009151701835
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3704880f-b05d-4449-e5a4-08d74cb29c21
x-ms-traffictypediagnostic: DM6PR11MB4009:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4009EC22E7F8EFBA7819E85287950@DM6PR11MB4009.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(376002)(136003)(346002)(396003)(189003)(199004)(14454004)(31696002)(66946007)(478600001)(66446008)(256004)(66476007)(66556008)(64756008)(186003)(446003)(26005)(2616005)(229853002)(6116002)(8936002)(81166006)(71190400001)(8676002)(36756003)(86362001)(71200400001)(81156014)(486006)(476003)(11346002)(3846002)(76176011)(6916009)(4326008)(7736002)(53546011)(102836004)(52116002)(25786009)(99286004)(6486002)(66066001)(386003)(6506007)(6436002)(2906002)(5660300002)(31686004)(6246003)(6512007)(316002)(305945005)(54906003)(138113003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4009;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uA/4uGRXWV6NZN2fs6kfCNbuFVv5z+VE94NqHTnelTth+KN7iLX9u6qH69SinuvAeQ/DW48D7dCxhcpoPovVLzwjJ26D2ULXeDl8eOrRX6oHCK3BxXtY20m97J2Pxk7/zPNrSKHqZn1XCPjN0jjW5u0NlCjwim8nAjkgWW5IpGIg+HHsUfmO/3/Qkwuxql6rJTkmKzNifxCEjGAKPqy7uzhocj2+QizXtWBzZUZZMTy1ZYqKbuqJUa77Os9o9GmHYhwP8JOAxVp0mai5vBmaUpadTxQgmaBv1zMSiEfY+8kHG8fA8kX7Jq/ZYmyu8GSV1tzET6LPmqgtwhjOu8vZycr4TjwS7khZjV6QGEr13m4m6Z5wMx1zlHjPeG0XOuboA/RNOHOf4UykSrFaldCtxUmgt50lIQ9YseUSYy2W7CM=
Content-ID: <F43B7904A770BC4689100B45F00F892D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3704880f-b05d-4449-e5a4-08d74cb29c21
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 12:17:10.6190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: teh3WiyfYkXOsTdCrMG/fpXyyDdNgFUkX4O5iw84w+NKUZyyzC6y7X8cLtdRdEvXLHtGsfaiPUOc7Mla2va5Y+KS9hU4LD0KA8H+zurG590=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_051716_128748_22E65B51 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 08.10.2019 19:54, Alexandre Belloni wrote:
> Hi,
> 
> On 08/10/2019 19:46:26+0300, Claudiu Beznea wrote:
>> Add compatible for SAM9X60's PMC.
> 
> I think the commit log could be clearer and mention why this is needed
> and the compatible string in sam9x60 is not sufficient.

I had issues with waking up from ULP1 without even having configuring
wakeup sources.

But, investigating more I discovered that this patch breaks other things
so please ignore it.

Sorry for the noise,
Claudiu Beznea

> 
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> ---
>>  drivers/clk/at91/pmc.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
>> index db24539d5740..24975bca608e 100644
>> --- a/drivers/clk/at91/pmc.c
>> +++ b/drivers/clk/at91/pmc.c
>> @@ -271,6 +271,7 @@ static struct syscore_ops pmc_syscore_ops = {
>>  
>>  static const struct of_device_id sama5d2_pmc_dt_ids[] = {
> 
> Maybe rename the array?
> 
>>  	{ .compatible = "atmel,sama5d2-pmc" },
>> +	{ .compatible = "microchip,sam9x60-pmc" },
>>  	{ /* sentinel */ }
>>  };
>>  
>> -- 
>> 2.7.4
>>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
