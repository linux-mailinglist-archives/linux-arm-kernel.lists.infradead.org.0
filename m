Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AACDD231B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 10:45:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rz+BnbC7TIrmsvWU0iKbsDKksNE7BCz+rNHVFcJfu7U=; b=Wm4fZiiZH/6bsm
	4rB1AiHc/yrWIdd8qI2Pvt3XH6d332uV/yLj5eb557weLVMf3UDXphg/lfR0T98GJfD2AAt0T/Lv2
	mWopC2t/1P1jKOq9Tc7a/unUwoCIsmQWvgTfolqXmeU2EMUP/d3svqRpE1Lyyuey+6y+aX957F36M
	rZ8bFLnmdwF+omejcXJlMiI67YbtLUbnL+FXZLgbDVMkN5J6mmaN0kEv2pX1hh04fHATFIHZxEZ+8
	qn6QB42KF+w8x/SpiWNSq0IHZuPvwHEhZhVLsIhIpclfkaD2R4uRju3OWAGCZOJ+06D5A7z35RmRc
	qEqljaEtQyq8LL9fIDPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIU46-0001b0-JY; Thu, 10 Oct 2019 08:44:54 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIU3q-0001Xs-Tw
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 08:44:41 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ndZ6hx2mpF3MhAmK6ZG4ktZ8jy2PtnqLhwxCp78ht3q1OOV4cshjQVu09oeSVcf/+Fbj/3r8qJ
 CJUhqClHSMPnXiDxzpA3wvCOCee65w2EFIAV2v85GP75CHYgLlHYEXNY8k7D9d95B0hxYzOejG
 Rgj4kc6CBAltDu/UhYDJVw6UWTYlqQqveM1M+m7I/qLS1LpGL6Wh7BolfxbG5b0xVEi/crNQIc
 o8UMn1+plRkZie7yju3Ksq7uBeiIhmagshpiEjgW4gAbkTwDYhpZ359pdggNXHzTb3tcBO0M5z
 U3w=
X-IronPort-AV: E=Sophos;i="5.67,279,1566889200"; d="scan'208";a="53702163"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Oct 2019 01:44:34 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 10 Oct 2019 01:44:34 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 10 Oct 2019 01:44:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YgO6W0y9Q6RzHPgz+Z/F7uU00Ki2MIgGY1/33svSlh2Z2JdKwXi+p9JdFPR1jeqTI0mSd9rhEyJnPIQfOWkQ3x1Cx4Bxo94vqG636A8OnrOK3Sv5O2cPRIPioSMCFRHihOnrC1wzWwdUCKD1TJWmVNInng6Ln6wvar0qsOOHPJyjPjz1eebyZ5tUA14fsR3louYqRvTAFhROS/SInB9tbSu0B6hHiqsOReKrZkrIgaxtFQCoDeSeEIYmOj62VWk9jQEgCbObK/gDCN8gZQ7fgWAh8E6NbUjYeDt/Q4eUCdxhRI4UiLAPPJx5sf+Bz99YAkKlLe8pLcTsOKP2WIrErg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5zJ4d2ruffE5HLxiI3jwkRDv9UJWXv991l2Efmof1w8=;
 b=RuPqMSIM0jk9TBh8kJ4J9KmsTxQmXiYyR10gZjz5HcmuGNU7r6F1N6fb2ZJRzsw53DcsPh1AwFDTP2RAgySFMLq2aNjmlCAMj7ymsHIIu/3ze9SYupQFLpqY9gcPMzSJGd5lrViI4mGmDMTBcmakOBJtiyJQ7WmGmherOZ3nlTQzn2+FjujjzYIHrKPo8i3OdXLyfoODvbRjWugZ6Y1GtRt3bwuKAj2psIV4qoCre8XSSvx+4T254lKjOiJekRxlgx1hnzidFkaoezt0zKapa4e4sNrD3/z/3XWwwEC28+7U+A7kphv49/KDhe3b5AmamqbR/iQK5wZHI+VHHo8rzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5zJ4d2ruffE5HLxiI3jwkRDv9UJWXv991l2Efmof1w8=;
 b=BU/F5iw7bj/OMnRcBFJjZcT8GUvnbplyrp0hJ+/foV5DpN1qeORRuQEQyUVUDorUu7KXCo3fTsCVWvcy9v7ywiXMtglhpzN+lkQCOZy8oIk3wHEl5HcDbUyB+6kIJuOWj5TLFRGEFkoydo+6t4gjMnZ+1WzVARDyMLaPiYUbhcc=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1933.namprd11.prod.outlook.com (10.175.54.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Thu, 10 Oct 2019 08:44:33 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::5d81:aef1:f63:3735]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::5d81:aef1:f63:3735%3]) with mapi id 15.20.2347.016; Thu, 10 Oct 2019
 08:44:33 +0000
From: <Nicolas.Ferre@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] ARM: configs: at91: unselect PIT
Thread-Topic: [PATCH] ARM: configs: at91: unselect PIT
Thread-Index: AQHVftqQAUV07MlkkU2jYG8NKWK1+adTkCOA
Date: Thu, 10 Oct 2019 08:44:33 +0000
Message-ID: <7d1be31b-dde0-d42b-745e-a83585ac379b@microchip.com>
References: <20191009194814.15034-1-alexandre.belloni@bootlin.com>
In-Reply-To: <20191009194814.15034-1-alexandre.belloni@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0127.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::19) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21c08659-b5f0-46e1-43d1-08d74d5e1287
x-ms-traffictypediagnostic: MWHPR11MB1933:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB193363FA4388DBC75EEE322BE0940@MWHPR11MB1933.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(136003)(366004)(376002)(346002)(199004)(189003)(6116002)(36756003)(7736002)(305945005)(53546011)(76176011)(6506007)(66476007)(66556008)(64756008)(66446008)(26005)(256004)(31686004)(6436002)(478600001)(102836004)(66946007)(25786009)(316002)(386003)(5660300002)(3846002)(2906002)(86362001)(4326008)(31696002)(6916009)(81166006)(8676002)(6246003)(71190400001)(71200400001)(66066001)(8936002)(6512007)(446003)(14454004)(11346002)(486006)(99286004)(81156014)(52116002)(229853002)(186003)(54906003)(2616005)(476003)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1933;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PNBHtiaJd+a7FJhHnIevSlAEEMGk9b/c3rSx/9DHNGRPkkl2LmlB6GYm2ZQLW4b3dDk01k+sOE3o55Ot9Ibz7AP52kNcazl6B4EIQabD7F4lrq7GJCb5Dsc35aF16nsGu1LCsY3lif5vrBthZkGVb7fxzvVfEkTZjpQOCTRWTZGaFzxlA5EF2qnHu+YWOKjjz03jOJi5MX502s+3uoE2VplfER5FKIe0Zy7Ml5PMbztViNspMqFWlONN118WAEGqcEJPTu2UcoWq7XV+X497AD1KB0gsVKM1ixY8pG7sb7hFaAW+mqLNeSpN/O/Jx2Q7N9Nx0S2yBn6AB6EUSnCdiDj9HLfOk5wgmarp2OOLS5Qy3YjU7FVQI4uMw6WKNTJkTrrBBWckK146CVQHTAxbnxZKWwu2bwLJyqSz8JqjAUU=
Content-ID: <77381642D9192B479A8D1BEF13FED14E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 21c08659-b5f0-46e1-43d1-08d74d5e1287
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 08:44:33.1202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yxQiZh+oYYf4nmpcLj5HRJvB7+xEJGCYOCH0n3Igi0eR8/cpgyPflb5XkeGQZgQyMExGE2XlgiVfWTWebf4TLgTSoeCj5WfgohmSzbggu9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1933
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_014439_030905_724A985D 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: Ludovic.Desroches@microchip.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/2019 at 21:48, Alexandre Belloni wrote:

> The PIT is not required anymore to successfully boot and may actually harm
> in case preempt-rt is used because the PIT interrupt is shared.
> Disable it so the TCB clocksource is used.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

> ---
>   arch/arm/configs/at91_dt_defconfig | 1 +
>   arch/arm/configs/sama5_defconfig   | 1 +
>   2 files changed, 2 insertions(+)
> 
> diff --git a/arch/arm/configs/at91_dt_defconfig b/arch/arm/configs/at91_dt_defconfig
> index 63d09e61b6dc..7e5ffdab47da 100644
> --- a/arch/arm/configs/at91_dt_defconfig
> +++ b/arch/arm/configs/at91_dt_defconfig
> @@ -18,6 +18,7 @@ CONFIG_ARCH_MULTI_V5=y
>   CONFIG_ARCH_AT91=y
>   CONFIG_SOC_AT91RM9200=y
>   CONFIG_SOC_AT91SAM9=y
> +# CONFIG_ATMEL_CLOCKSOURCE_PIT is not set
>   CONFIG_AEABI=y
>   CONFIG_UACCESS_WITH_MEMCPY=y
>   CONFIG_ZBOOT_ROM_TEXT=0x0
> diff --git a/arch/arm/configs/sama5_defconfig b/arch/arm/configs/sama5_defconfig
> index 7255709d46ea..ee7db6cedaa6 100644
> --- a/arch/arm/configs/sama5_defconfig
> +++ b/arch/arm/configs/sama5_defconfig
> @@ -20,6 +20,7 @@ CONFIG_ARCH_AT91=y
>   CONFIG_SOC_SAMA5D2=y
>   CONFIG_SOC_SAMA5D3=y
>   CONFIG_SOC_SAMA5D4=y
> +# CONFIG_ATMEL_CLOCKSOURCE_PIT is not set
>   CONFIG_AEABI=y
>   CONFIG_UACCESS_WITH_MEMCPY=y
>   CONFIG_ZBOOT_ROM_TEXT=0x0
> 


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
