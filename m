Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F153822ED1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2fTUqw2aTMY6HDEHljftf8cVW8mKa4ftpQanPrzJ48=; b=bqqR2jmYumeG4g
	N5oNLm9Pw/DKwbo7f7mK9md8IIcrIBmitnAtdrVGUCXmOH+GZmg5o+Muw4fvPEmNC7w4d2t2+qzp6
	zJOd0c0KpKpPtXPEBehszFMEcuspvJR3ekxI7PzkIoTxZ4qULxkJIVA/0oAowBoNmLZsL1tFhrAWF
	CWjJlpkHTK+7TNAvEhAw4KpkfZlWJuHh/PXrxnFfW2IoGDKs/R82/X2cV+7Qb4R7UL8IM2/A1My7H
	I9WrsPIXmhWrOrLHTSnai9599Q37+NP01UXKubfO9dvnw5vUvjU4fcUkMFHC/Wco15GeRIFiIdAdx
	o+ep2hp/Hy6rxlwJXabA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdeR-0000bx-TQ; Mon, 20 May 2019 08:28:07 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdeJ-0000bN-Fg
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:28:02 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,491,1549954800"; d="scan'208";a="33791551"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 20 May 2019 01:27:51 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.49) with Microsoft SMTP Server (TLS) id
 14.3.352.0; Mon, 20 May 2019 01:27:51 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OXOn492L8ZLyiUccWMlJFtUJaPjd4DfDSAQOd44CIPs=;
 b=39kUqRlyYwdY0UdP1OoH4ouM4FGQzY9jqiXiP3jzsgAJOxTtAPd+7+Ba4N8mHNOh+jc504Jh+y+MoD7pQ2JEKZIYFQV8tzX00468aHCOVa/83VlxtVdBH552hW5H/VqR0iZAoTWB1Tf6isAQM4EPgckukzMZpSAuydXrfPLwDi8=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1487.namprd11.prod.outlook.com (10.172.53.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 08:27:46 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::990d:15eb:1a20:3255]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::990d:15eb:1a20:3255%6]) with mapi id 15.20.1900.010; Mon, 20 May 2019
 08:27:46 +0000
From: <Nicolas.Ferre@microchip.com>
To: <robh@kernel.org>, <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] ARM: dts: at91: Avoid colliding 'display' node and
 property names
Thread-Topic: [PATCH] ARM: dts: at91: Avoid colliding 'display' node and
 property names
Thread-Index: AQHVDuXnWnGwQTdZakeZ7AmTr1r8AA==
Date: Mon, 20 May 2019 08:27:46 +0000
Message-ID: <46c85a51-2f2c-3807-4301-dd544a7b5398@microchip.com>
References: <20190516225614.1458-1-robh@kernel.org>
In-Reply-To: <20190516225614.1458-1-robh@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0230.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1e::26) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 844af231-31a1-4d4a-4def-08d6dcfd0979
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR11MB1487; 
x-ms-traffictypediagnostic: MWHPR11MB1487:
x-microsoft-antispam-prvs: <MWHPR11MB14873F57E095610D5DC312F4E0060@MWHPR11MB1487.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(136003)(366004)(376002)(199004)(189003)(305945005)(7736002)(31696002)(54906003)(14454004)(6116002)(66066001)(256004)(5660300002)(72206003)(486006)(71200400001)(71190400001)(3846002)(110136005)(66946007)(476003)(446003)(11346002)(2616005)(66556008)(316002)(8936002)(229853002)(81156014)(81166006)(86362001)(64756008)(25786009)(66446008)(68736007)(66476007)(73956011)(36756003)(6486002)(4326008)(53936002)(6506007)(386003)(26005)(478600001)(53546011)(186003)(8676002)(2906002)(6436002)(99286004)(6246003)(31686004)(6512007)(102836004)(76176011)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1487;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aMD6PSPcF6f3Jkz19m87L6e7O3AWplM4w47f/a8JS+9elsS2WyDWHUgSaE6857IDUmsPW7CdvpONqNh7W9FWGUJz3mpmm0wgf1pwSM5peljtQKpiZBfxR/ENcGB1n7gZJ73VYmQuEH0KpcO3pBakb6Qe7F2c3DBqdex+Fac+7uzKT9P3apoMHcUM8cp8DYwFhmKCgp4KFYFs50l9p6md3KohYJ1dc6KDZjzdTyNIV4EV7pyfPDew5nUWY0KUnADwjJkQ1lDk4HCedN0KEVG+n6qgphdG/kv09KCQUZdo1el172GR6OFXbLS0OiEyem92QhVaNeplDb3Oq6CNkGuLzBVEOB9X9Y6Gx5lAUd32SkeJ30FOgbxBETCIrcBqfC7C9nBDLWFHovPfeL1TRjMApMh6wK/NC3xjVDMGKZZKkN8=
Content-ID: <5E287A6DB015DD4E8F435428E1BCBAAB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 844af231-31a1-4d4a-4def-08d6dcfd0979
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 08:27:46.6788 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1487
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_012759_561416_1AEA5551 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/05/2019 at 00:56, Rob Herring wrote:
> While properties and child nodes with the same name are valid DT, the
> practice is not encouraged. Furthermore, the collision is problematic for
> YAML encoded DT. Let's just avoid the issue and rename the nodes.
> 
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>

Good for me:
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>   arch/arm/boot/dts/at91sam9261ek.dts    | 2 +-
>   arch/arm/boot/dts/at91sam9263ek.dts    | 2 +-
>   arch/arm/boot/dts/at91sam9m10g45ek.dts | 2 +-
>   arch/arm/boot/dts/at91sam9rlek.dts     | 2 +-
>   4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/at91sam9261ek.dts b/arch/arm/boot/dts/at91sam9261ek.dts
> index f681cd727010..02b116b48c3b 100644
> --- a/arch/arm/boot/dts/at91sam9261ek.dts
> +++ b/arch/arm/boot/dts/at91sam9261ek.dts
> @@ -49,7 +49,7 @@
>   			atmel,power-control-gpio = <&pioA 12 GPIO_ACTIVE_LOW>;
>   			status = "okay";
>   
> -			display0: display {
> +			display0: panel {
>   				bits-per-pixel = <16>;
>   				atmel,lcdcon-backlight;
>   				atmel,dmacon = <0x1>;
> diff --git a/arch/arm/boot/dts/at91sam9263ek.dts b/arch/arm/boot/dts/at91sam9263ek.dts
> index 13d415c22a69..924fe563f6fa 100644
> --- a/arch/arm/boot/dts/at91sam9263ek.dts
> +++ b/arch/arm/boot/dts/at91sam9263ek.dts
> @@ -111,7 +111,7 @@
>   			display = <&display0>;
>   			status = "okay";
>   
> -			display0: display {
> +			display0: panel {
>   				bits-per-pixel = <16>;
>   				atmel,lcdcon-backlight;
>   				atmel,dmacon = <0x1>;
> diff --git a/arch/arm/boot/dts/at91sam9m10g45ek.dts b/arch/arm/boot/dts/at91sam9m10g45ek.dts
> index 46107c2f1ab9..5226e952a729 100644
> --- a/arch/arm/boot/dts/at91sam9m10g45ek.dts
> +++ b/arch/arm/boot/dts/at91sam9m10g45ek.dts
> @@ -236,7 +236,7 @@
>   			display = <&display0>;
>   			status = "okay";
>   
> -			display0: display {
> +			display0: panel {
>   				bits-per-pixel = <32>;
>   				atmel,lcdcon-backlight;
>   				atmel,dmacon = <0x1>;
> diff --git a/arch/arm/boot/dts/at91sam9rlek.dts b/arch/arm/boot/dts/at91sam9rlek.dts
> index 27d8a1f44233..a000a459f17b 100644
> --- a/arch/arm/boot/dts/at91sam9rlek.dts
> +++ b/arch/arm/boot/dts/at91sam9rlek.dts
> @@ -37,7 +37,7 @@
>   			display = <&display0>;
>   			status = "okay";
>   
> -			display0: display {
> +			display0: panel {
>   				bits-per-pixel = <16>;
>   				atmel,lcdcon-backlight;
>   				atmel,dmacon = <0x1>;
> 


-- 
Nicolas Ferre
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
