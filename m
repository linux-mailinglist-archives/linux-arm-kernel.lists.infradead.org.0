Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3A219BE80
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcX3z7JstRPO8liFDD31a4rNIOz6rpnh04JtWJFHWpQ=; b=NPV8/I6QMY3G3L
	T9vsSWID+ZJaGqwga0iWJ7WV0PERVra/JMy73UvGdfEe2qCs7qkoSFu/75ZPWNhZYil3EZKbKp0aw
	uCEuP12N52eceAwP1E9jMGzN2yqCFxZWm8k/FR0PcOgDledknSx0RX9DDLOuBGIjTGwCYdLRdE3SC
	6E27JTWZz+62FDtvyim+REd9QONTx3b/wjP+Le9aJ8ZJk+Lj+UhPwsEAz4B40L+QKE5SdFBhp9xDu
	xoCL04YYlrEk7fytR7psuNsMISGXMiMjAHvy6//DNEZ+jginMCNgFGFfYOQ/ZN1twJcADYZY4bvLQ
	Wc3MWWJL1jr5RV8Bv7wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJw1d-0004p2-5H; Thu, 02 Apr 2020 09:20:37 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJw1U-0004lZ-OU
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:20:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585819228; x=1617355228;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0tnkNGFJwDR2X3GDM0UJTgtjW/tJBv5VhMrWITSit4s=;
 b=kYVww5xotGB/6tlHMn71j5OVxr84G/JlXXCafbcv2ySfadkFMORiTqKk
 isn2MZffmc6hhY61FwtJPr0FfoOajPiiMqIFcJuvOt3sG9lF7x+tnyEVB
 sqgzOQTNYH/bLTJmQC6VtwPpT3G6Kz8VrAE1wEP0uVAglqaZ4T7mZdzXQ
 vvfQl5pg0iuq6q2LvtwIYAFHHHFZ4M7FcXD2SLEP1m5i57GE2A3gaUU63
 nRJUsxfM7TId51bKLEuDH6gQkbWe3Gj+iNNmn0emUCZNx2GXOwExW7/AV
 ElEnU4ApqhaN92BrU2GkeihKDLDSdffbIoRY4bAdFDX7GIZqRFTjUwNQt Q==;
IronPort-SDR: YQQF7/MrLdja26WsFhYscwJ3lDzOeh0qNu2t6GlozNF7wH8fbHnKJsco0kZgni0VpWZSCpcqvb
 MG+5kBkbAYt1N/zqCOK87V9765KWF+aU9jtaeeIHzH/q4CzS0+hkE6C0VlTGdJlVftXLm0VmK3
 Iuh01bSoSx1lTdv2BEl5Z/orICpzKkCmdJ0z5JO38AIam1Xjo1YU4d2i48Ili8miyFeAYkfBVi
 d1OudaysuNtrW9Aelo2fPkpM4wsA3qOM2IIjKlaTCAxGool6tu3gyldeECGApBIpOOohWUfMhq
 v/g=
X-IronPort-AV: E=Sophos;i="5.72,335,1580799600"; d="scan'208";a="72060561"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Apr 2020 02:20:18 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 2 Apr 2020 02:20:18 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 2 Apr 2020 02:20:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B85pQ+ZeaUqHxseXZRP+G9KbZZ5V+tvUDjos+16BZsE+WEQ2EsuoEevH6pzI9egnNTQpZ+naIUPiPVhtdOmdEtB7WuP/8OwuhbeF2WDs52dzBske7cuYwu8Heb+lONjDT1gIXtZpzDxLJa50cqTI5W6sZIhzFhisx77CDi8WBVf+0rziqtosWZ73+ihyh4hASUD3av56r/1jj66TJV8eTOsRrB+FKI2czre15X6vYqQALffZ9zj5Jp2DNuKmLilLBzKGNjS+M5dz4IYHkiX/2vawVbN7bjSTX/Kf7VnuElA91JKQHfHX8hQnTJS0o64j5DXLzK1IDkLoUXzQ4VoAQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0tnkNGFJwDR2X3GDM0UJTgtjW/tJBv5VhMrWITSit4s=;
 b=cHxCDbj+F/o0LbE5pr5Bbi/WLzzMiAULu8LSwT2GK3gW5hKNBNGX/w7Akg9tLoEtdNs3VoiYV4oOGNzNkNpOxoHiTdBfScL4M1YwGdMXX355Ilp2gRgHC3icr48QQNqW8keY6aQYXecwj88eRQQ57gcovkgwVKHzQhVuEGWiW/yMdcSIwGtNuErhdICbBIQ5b8hxZellIR8K2V3lYKhTWTPCsns0h7+R0CGrgpbpHBcXF72XgNHP8W6XBH0qdSXkRp+SbuZfGw9nSwTnx79OsfiIFT1F01ZmCjCudWczXho8VVt966Z10htdjBcZTtTJt0avmp5vt/tDm40fOVWblw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0tnkNGFJwDR2X3GDM0UJTgtjW/tJBv5VhMrWITSit4s=;
 b=gNW+tVJjY4bTIKPE9EVNy9L+m4EwtvSccwsFo+gFVu1yLfpL4zhukaoH7g/AGlF2snLXuPZBfOJc3ncLC7yVQV8ARAfxjzgvpsZWnwExU+E0anDTfSFkZVbP6kaeD2Vs5k4VPMN+nfpPLbCrtipN0d+7YlxiggtT3xf51jsMj0A=
Received: from DM6PR11MB4123.namprd11.prod.outlook.com (2603:10b6:5:196::12)
 by DM6PR11MB4249.namprd11.prod.outlook.com (2603:10b6:5:1d9::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Thu, 2 Apr
 2020 09:20:16 +0000
Received: from DM6PR11MB4123.namprd11.prod.outlook.com
 ([fe80::f42c:82b3:ecda:5ff4]) by DM6PR11MB4123.namprd11.prod.outlook.com
 ([fe80::f42c:82b3:ecda:5ff4%6]) with mapi id 15.20.2878.017; Thu, 2 Apr 2020
 09:20:16 +0000
From: <Eugen.Hristev@microchip.com>
To: <Ludovic.Desroches@microchip.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: Re: [PATCH 1/5] ARM: dts: at91: sama5d2_ptc_ek: fix sdmmc0 node
 description
Thread-Topic: [PATCH 1/5] ARM: dts: at91: sama5d2_ptc_ek: fix sdmmc0 node
 description
Thread-Index: AQHWCHMUVzqU8dzz1022okz8VD+yc6hljvCA
Date: Thu, 2 Apr 2020 09:20:16 +0000
Message-ID: <b4fe14af-a812-8798-187e-704541a6a75f@microchip.com>
References: <20200401221504.41196-1-ludovic.desroches@microchip.com>
In-Reply-To: <20200401221504.41196-1-ludovic.desroches@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Eugen.Hristev@microchip.com; 
x-originating-ip: [86.120.188.33]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d899c4b-dcab-495e-604f-08d7d6e70e73
x-ms-traffictypediagnostic: DM6PR11MB4249:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4249B38EFB4C84EC079E6DF1E8C60@DM6PR11MB4249.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0361212EA8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4123.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(366004)(39860400002)(346002)(396003)(376002)(4326008)(53546011)(76116006)(5660300002)(31696002)(6506007)(91956017)(8936002)(2616005)(186003)(36756003)(66946007)(26005)(2906002)(86362001)(66556008)(107886003)(110136005)(6486002)(31686004)(316002)(81156014)(8676002)(66476007)(71200400001)(64756008)(6512007)(81166006)(66446008)(54906003)(478600001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j+zIPEU9OGOjous2Wvk/GMoT/DNcxRVysITPbumAGB9hw6x6+TqkcQMY8PgdmGXxNVz9ak9UPwAa0AnyGONC5HVppNhYuwqpgwPp+pmljL5M8IrBZk+/SgQdA2IQucmJN56I+MozDG2SAddnemYYp6rLiKpKiblal/GZeALXJO4hUQS33KYIcGnIgO4gvBZyvdHyVN2Ba+qce56WzIukIoYPy70+1GbFOcyXvp3F2/oUPmeU2SX9alD3XwjddemPL4YnjKNAnlwdr8ULLEatvf54H1hwVstOtCp10o/2nEy9q2fCov2Woi9dleEZc6q/HVrd43zHRa21olBdbJHVcximCBf10qAEFMIayJZ+5GiJCFQwM45Dmmdgev5hZIsve+pos5B84nfz9gUGlCTzZbKZb1PwSmgQgBY2ZPf3Kn+adNUB1uxhznz5dN8e1HrT
x-ms-exchange-antispam-messagedata: L1WVr/RjAKNMgUOpjwbZsrLGckVep6rLoHaSWNScMjGIhYkajcqgvM+FF7jvyonb5KpAKEBFF9d6Eu4N91IhYiwHEgLqKgXEFc2krI8pJz8teHRh5sc1Gt93seeCif5gADQPiCnkj3sfBCL8wWP1hw==
Content-ID: <65AF3050EA25D84F80ACCC7817B4FF62@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d899c4b-dcab-495e-604f-08d7d6e70e73
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2020 09:20:16.3207 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZbyMCU9/6b0mJ/c1ZEzhRfdhnEmceScWL2evO/VadMrO7uRI4p4UjYd4uikx1gT1uoMcabmxomIOFpAyjRdF/83gPbsgnyaYW26JbyLKNcU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4249
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_022029_791242_5496D808 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Cristian.Birsan@microchip.com, Codrin.Ciubotariu@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02.04.2020 01:15, Ludovic Desroches wrote:
> Remove non-removable and mmc-ddr-1_8v properties from the sdmmc0
> node which come probably from an unchecked copy/paste.
> 
> Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> Fixes:42ed535595ec "ARM: dts: at91: introduce the sama5d2 ptc ek board"
> Cc: stable@vger.kernel.org # 4.19 and later
> ---
>   arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
> index 1c24ac8019ba7..772809c54c1f3 100644
> --- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
> +++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
> @@ -125,8 +125,6 @@ sdmmc0: sdio-host@a0000000 {
>   			bus-width = <8>;
>   			pinctrl-names = "default";
>   			pinctrl-0 = <&pinctrl_sdmmc0_default>;
> -			non-removable;
> -			mmc-ddr-1_8v;

Hi Ludovic,

I am not sure about the removal of mmc-ddr-1_8v; this means eMMCs 
connected on this slot won't work in high speed mode, some people use 
eMMC to SD-Card adapters and stick them into SD-Card slots.
Would it be a problem to keep this property here ?

Thanks,
Eugen

>   			status = "okay";
>   		};
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
