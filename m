Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346687528F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jLYQ/vm7eofhdE86YI0/3VzR19g+OzwoTmdn3X26YQE=; b=SlNgj00b4aYiwL
	92+xONE0WJIKd5i07FoYjpqIkBuL93aSA4tv+QXWQJiE85n7e30KLksS3AvjmOrI8U+HtETz6xiTK
	apUhwZs8qM46oofjv6vbY40Ox4GY2VFftlh8YrLZ0xCmcAWIgf281Acu+tne1MvZhA7masFFo2z/v
	84M2cBFX6n+jz3H/+spoWTIIC6AD8+E1yCLG+6KWVTytVnTNJ+uoXzGHafaChbpHCiFtM48gu5w1W
	p85hhwHUumFkfncnz8X9AbBIhKMNQ6v7/dsDUgcC5ibHplCl9yvA3xzXolzmj8TFM+OPkfDB/9Cw1
	0uR8yuj/Vtd9l7OrFOzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfek-0000VT-4w; Thu, 25 Jul 2019 15:27:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfeV-0000Uo-Ln
 for linux-arm-kernel@bombadil.infradead.org; Thu, 25 Jul 2019 15:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3atRG/m6AYh+/9G0yh0vx1PbZvw/xlaOQMdF4v05oms=; b=outEFVCjHRFHe8H1TBbRbl8Z//
 +5Lr5MESbA9ETmztVA2PJsVqypl5DIgfmyJbBJ75aIFPtPwaCw1g4ifAnIcOAyv3inuQuIrTfYELG
 ORYmJaq/qfEay1faShRFK0jd8hUoioPwNNQFmNVpZAMFn9+55SKxXV5h9ollT5BOgyepl73WxdvyP
 INmncoMly0op9+7mdTmaroHsF6jV7y1uUoNnzHPK0rdf4kuaXMpj0c9WK0rdO4lMftnfY5ad1hLY7
 NZEeI0Z9duzV8cAIHgwJ/W7W0rLTQDDYXZyACTGAPdmZXhF/inZwWhpKMhznm/UqDaJ1aTVwpZ5Hf
 EA2Jmkfw==;
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfeb-0006Ex-MR
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:27:40 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=temperror (key query timeout)
 header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ltfVioPqU3Op8+G7koVJgFBd7V5O9XZLU6QkFhhKqjFnHd2WvR0BuIAeQ5KCdJvJfyqvwUjVgw
 VFjwaHTLY6GlW5WQ99Wg08nLrP+tESXhoP+oQBVFYgE0eOrY2wJsgUHaLSccrSq7hzej6OT8Ej
 AW9pb2UpAomiJBcANbuB5VOTPPx4SwGrgp4TGkNQ6vSl4VI+atgvxjSU7vCTSfEwUcOdpgIjLE
 4AldmP3bq6chSJDrBeh+JHcTzwlbVMZOHBlhCQfokh0QZ7bb2bgKGgG247t7M5TawUecy2mCW7
 UnQ=
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="44137726"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Jul 2019 08:25:49 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 25 Jul 2019 08:25:42 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 25 Jul 2019 08:25:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P1m0tYfjRmKJnLeqCMEP0DjnUXR9UeIESoF+31JuQi21OISkx//veafvt9NWA8Icj9F19e/g4KrEw4Usi6Bnhu3zN9kJBeG3U5rDmoF0X3Ms++BSEPk42dTfx1+hmrP94WcRNI9lFtg3M5qVIj1OiIf9cJScBP7U9yqkBxu8LOwKVQ9JWYP9waSJT616vppvsUDy2gn9WAFp56LgKMkO0kseptjbltYT57fmq32wXSdSDzcsR/w2E4TICDCyzqH/Kv2EyJ6ygupZ1kIkVWpph1LvIWHDrnGUgzbYDFrsBsK0jGN2zBSu+pcXblmGtupVa20XInI0AxEo8SOn/ggPjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3atRG/m6AYh+/9G0yh0vx1PbZvw/xlaOQMdF4v05oms=;
 b=RuR0JpX89xyeXaMw/JQ8c2VZRuCaVejA6krc4bvRLkuCGMfgoZ8ScDwflNy80Tuemk7dKB6FUkHnrydYpqaZqnl2FaWcFFbqi9fSZKCI5n0IKtwP5CXAVv61x+vdTALRvuVc+RhT8ZP1/Fw67hr9hLS37ZoabvaIiaJwott3rtwhyBciRMJVQ7tO+plLuj01enIFch0oWJLVr4KxptcGGvekRAK+zMuRDg/Dex+yMi2EVhXsF5AqdSC35pe23T5MLO70nNdV1vhrObzBxrD+eo1PgOBNtMNJk8JDuPmPcskFQ+7XXHPFmJBmJf1nz2iraUIQboKalIK8jTjnlBZ7QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3atRG/m6AYh+/9G0yh0vx1PbZvw/xlaOQMdF4v05oms=;
 b=HcRF8MTM3mSjWIKkIPJ4ByRnK0sZEYss6aHJOVCiLoe9BMAYwAVuJN85C7wSRWuBJvOMQ7pJKEpYjBvT3lUE5a3W8q4TUsEwWttpVYcye5JBKIYjHuUgAImxp6osMX7BR8zsrGcf6eQ4KpN7UzID7bTP06502JlChClIY0NkDtA=
Received: from BN6PR11MB0051.namprd11.prod.outlook.com (10.161.153.153) by
 BN6PR11MB1924.namprd11.prod.outlook.com (10.175.100.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Thu, 25 Jul 2019 15:25:42 +0000
Received: from BN6PR11MB0051.namprd11.prod.outlook.com
 ([fe80::7972:d14b:4c60:adb2]) by BN6PR11MB0051.namprd11.prod.outlook.com
 ([fe80::7972:d14b:4c60:adb2%3]) with mapi id 15.20.2094.013; Thu, 25 Jul 2019
 15:25:42 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <mirq-linux@rere.qmqm.pl>, <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 1/5] ASoC: atmel: enable SSC_PCM_DMA in Kconfig
Thread-Topic: [PATCH 1/5] ASoC: atmel: enable SSC_PCM_DMA in Kconfig
Thread-Index: AQHVQLssYvZ9YoKrUEmAJfgllXwkpabYNckAgAA0LwCAACBsgIAAT92AgAKesAA=
Date: Thu, 25 Jul 2019 15:25:42 +0000
Message-ID: <ce981aea-0b0d-571b-e072-f18cdc657393@microchip.com>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <ee65cc7b889b2a8d1139d1d25977842c956d1cf4.1563819483.git.mirq-linux@rere.qmqm.pl>
 <1f3a4256-58de-27a4-8095-54fc6baa6d89@microchip.com>
 <20190723164312.GA4772@qmqm.qmqm.pl> <20190723183915.GJ24911@piout.net>
 <20190723232505.GA21811@qmqm.qmqm.pl>
In-Reply-To: <20190723232505.GA21811@qmqm.qmqm.pl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR04CA0134.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::32) To BN6PR11MB0051.namprd11.prod.outlook.com
 (2603:10b6:405:65::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5529594c-0f57-49fc-2070-08d711145b0c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1924; 
x-ms-traffictypediagnostic: BN6PR11MB1924:
x-microsoft-antispam-prvs: <BN6PR11MB192402D20BC203DC7C14AC83E7C10@BN6PR11MB1924.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(346002)(39860400002)(366004)(189003)(199004)(51444003)(25786009)(7736002)(14454004)(6246003)(6512007)(36756003)(305945005)(4326008)(66574012)(14444005)(81166006)(2501003)(256004)(53546011)(229853002)(8936002)(71200400001)(5660300002)(386003)(8676002)(76176011)(99286004)(31686004)(486006)(68736007)(6506007)(71190400001)(53936002)(2906002)(102836004)(52116002)(54906003)(66066001)(66476007)(66946007)(3846002)(66556008)(6436002)(446003)(478600001)(2616005)(66446008)(81156014)(476003)(31696002)(26005)(6116002)(186003)(110136005)(11346002)(64756008)(6486002)(86362001)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1924;
 H:BN6PR11MB0051.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vn3N4dTsEFMCxa8gHdsPlj5Ul0SRhrl79A79zfVmg1PlAHCglmMRuezSWkiTXcDU3zzhtdN745Z0Xfq+o8kdfnUqMBy3OhEL1d4hru++u8a2WTxQbrljLRMIKAJHAWwoRSpSFwx7Wo6LRFeXM+0DWaji0g8frG9Xbjj5z3l75RgBPynU9/0tkJYrayBgY10V6RPfVWAD2Tgfd9SBpco+ZuoVexQ5AfhaoWkFVimLRGXWAEevoKolclTxxBT12EQ0/OAq+CmqYrA9dWgFEZTNZvktn8CHfYudwv2JfaDijJ9m5QeqL+aESCet7idSTMeiZkGsDG7zsk64Lfan59RiA1Bf6yWaATeCFn0Uc3NNG82lf6PELyP5BXQlr8fsBIWNKUO1LrqJsJOhH3opxt+qCNM/SY6NAJR52eCMiccFMr8=
Content-ID: <88DA55BDF077AE4C849A75890358C997@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5529594c-0f57-49fc-2070-08d711145b0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 15:25:42.3352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Codrin.Ciubotariu@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1924
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_162738_042569_C2A18F5A 
X-CRM114-Status: GOOD (  25.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com, tiwai@suse.com,
 Ludovic.Desroches@microchip.com, broonie@kernel.org, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24.07.2019 02:25, mirq-linux@rere.qmqm.pl wrote:
> External E-Mail
> =

> =

> On Tue, Jul 23, 2019 at 08:39:15PM +0200, Alexandre Belloni wrote:
>> On 23/07/2019 18:43:12+0200, mirq-linux@rere.qmqm.pl wrote:
>>> On Tue, Jul 23, 2019 at 01:36:37PM +0000, Codrin.Ciubotariu@microchip.c=
om wrote:
>>>> On 22.07.2019 21:27, Micha=B3 Miros=B3aw wrote:
>>>>> Allow SSC to be used on platforms described using audio-graph-card
>>>>> in Device Tree.
>>>>>
>>>>> Signed-off-by: Micha=B3 Miros=B3aw <mirq-linux@rere.qmqm.pl>
>>>>> ---
>>>>>    sound/soc/atmel/Kconfig | 2 +-
>>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/sound/soc/atmel/Kconfig b/sound/soc/atmel/Kconfig
>>>>> index 06c1d5ce642c..9ef9d25bb517 100644
>>>>> --- a/sound/soc/atmel/Kconfig
>>>>> +++ b/sound/soc/atmel/Kconfig
>>>>> @@ -25,7 +25,7 @@ config SND_ATMEL_SOC_DMA
>>>>>    	default y if SND_ATMEL_SOC_SSC_DMA=3Dy || (SND_ATMEL_SOC_SSC_DMA=
=3Dm && SND_ATMEL_SOC_SSC=3Dy)
>>>>>    =

>>>>>    config SND_ATMEL_SOC_SSC_DMA
>>>>> -	tristate
>>>>> +	tristate "SoC PCM DAI support for AT91 SSC controller using DMA"
>>>>
>>>> Could you please make something similar for SND_ATMEL_SOC_SSC_PDC? Als=
o,
>>>> I think that it should select ATMEL_SSC, to be able to use
>>>> simple/graph-card with SSC.
>>>
>>> Hmm. The Kconfig dependencies seems overly complicated, do you mind if I
>>> get rid of most of the entries in the process?
>>>
>>
>> Unfortunately, it is just complicated enough. This is done to support
>> all the possible configurations. Removing them will lead to linking
>> errors.
>>
>> After having that discussion back in March, I had a very quick look and
>> didn't send a patch because I still had linking issues. It is not
>> impossible but it required more time than I had.
> =

> Can you try patch below if it covers the configurations you mention?
> This uses Kconfig's m/y resolution instead of open-coded defaults.
> =

> Best Regards,
> Micha=B3 Miros=B3aw
> =

> =

> diff --git a/sound/soc/atmel/Kconfig b/sound/soc/atmel/Kconfig
> index 06c1d5ce642c..f118c229ed82 100644
> --- a/sound/soc/atmel/Kconfig
> +++ b/sound/soc/atmel/Kconfig
> @@ -12,25 +12,31 @@ if SND_ATMEL_SOC
>   config SND_ATMEL_SOC_PDC
>   	tristate
>   	depends on HAS_DMA
> -	default m if SND_ATMEL_SOC_SSC_PDC=3Dm && SND_ATMEL_SOC_SSC=3Dm
> -	default y if SND_ATMEL_SOC_SSC_PDC=3Dy || (SND_ATMEL_SOC_SSC_PDC=3Dm &&=
 SND_ATMEL_SOC_SSC=3Dy)
> -
> -config SND_ATMEL_SOC_SSC_PDC
> -	tristate
>   =

>   config SND_ATMEL_SOC_DMA
>   	tristate
>   	select SND_SOC_GENERIC_DMAENGINE_PCM
> -	default m if SND_ATMEL_SOC_SSC_DMA=3Dm && SND_ATMEL_SOC_SSC=3Dm
> -	default y if SND_ATMEL_SOC_SSC_DMA=3Dy || (SND_ATMEL_SOC_SSC_DMA=3Dm &&=
 SND_ATMEL_SOC_SSC=3Dy)
> -
> -config SND_ATMEL_SOC_SSC_DMA
> -	tristate
>   =

>   config SND_ATMEL_SOC_SSC
>   	tristate
> -	default y if SND_ATMEL_SOC_SSC_DMA=3Dy || SND_ATMEL_SOC_SSC_PDC=3Dy
> -	default m if SND_ATMEL_SOC_SSC_DMA=3Dm || SND_ATMEL_SOC_SSC_PDC=3Dm
> +
> +config SND_ATMEL_SOC_SSC_PDC
> +	tristate "SoC PCM DAI support for AT91 SSC controller using PDC"
> +	depends on ATMEL_SSC
> +	select SND_ATMEL_SOC_PDC
> +	select SND_ATMEL_SOC_SSC
> +	help
> +	  Say Y or M if you want to add support for Atmel SSC interface
> +	  in PDC mode configured using audio-graph-card in device-tree.
> +
> +config SND_ATMEL_SOC_SSC_DMA
> +	tristate "SoC PCM DAI support for AT91 SSC controller using DMA"
> +	depends on ATMEL_SSC
> +	select SND_ATMEL_SOC_DMA
> +	select SND_ATMEL_SOC_SSC
> +	help
> +	  Say Y or M if you want to add support for Atmel SSC interface
> +	  in DMA mode configured using audio-graph-card in device-tree.
>   =

>   config SND_AT91_SOC_SAM9G20_WM8731
>   	tristate "SoC Audio support for WM8731-based At91sam9g20 evaluation bo=
ard"
>

Looks fine to me.

Best regards,
Codrin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
