Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6B7EC4AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 15:26:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfLx+dWIku0gEb1ZF8EXk405KIYepN25qWj2qtBlX5c=; b=RUyua3g4Axnkd4
	R1CjMGDunC7ALPvjHesVl1b2fK3nw81tjvy7qNR1ytuK3YX811l4foBZNg9ogc7mDzOhpUwDZGyXr
	989lOhfxM6W8oPIpka1v/t39nnwAaqEp0gMxNuV+R4d5ODTshjWsGbBFynxmQra4nA8+k0GKW/7lw
	YIWbXfCGhF/H5B4YRW4x+51GncctUCCbAyuwxyMsDLucUTUqavwqekGdlxxqelDZCAcgKnT76stiq
	K+id4tNel20mRnzeKZfQvwyGjIeGwtoHc01tZvvrMxL7Pk9NrWgQPWeDKLy8t23K+qB2eW0ZhJdut
	6b1F3f7p1JPM11o7c6mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXsp-0003No-Ra; Fri, 01 Nov 2019 14:26:35 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXsi-0003MW-K8
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 14:26:30 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 8CdFUQhd9wrAwmO8o5DQMUeVdTlK2L0GGdr5jlSSquBiuoytO0xbI8ivnXlsZIRn2P4YoX52iC
 1QtgZypqKsBoPlUY+OmcM+3WI5TcRbWzSd4htAgYLYRWR4iCm/9qgbYbVBj18MoyCq3qhnMwio
 v+J4T1fadVOhlH1tl+GmhpwbekbZCoqIxXd3uqT2aM/t+lvgW6SkZeYn165uJuSrxh3jpqp4C4
 tSqCLhu3p+HU/EQgVn8QwiaHX+0C9+r81OvAG4KA75lvu46aaOFCSCSUSbaqzVrZ3by/4Jt9G2
 Qac=
X-IronPort-AV: E=Sophos;i="5.68,255,1569308400"; d="scan'208";a="53823068"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Nov 2019 07:26:22 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 Nov 2019 07:26:14 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 1 Nov 2019 07:26:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FY/Cn/S2tHF1xzuZkQqjtueVhYDVpPc/TKcEhnIwpx/ya0gPmQ75Vx+VtVOVNtkPbUC62z3zom2oUh6o3hz0ksAs0l5IcZlGf5CAXUuEeDzPgmCosEbkkIrr3KTvlHNFM2sLGIut1OW5mH5mE3ue8LzkUNOCp+3V8aZ5ix70iefg9ImbDaf+Otkhki7imXIff38kR/TBFcbLJDpFT5EdruRN2k3QwfvMAz5jeEsMNnFB0AQ722ZtsNlbaZh0DLxVDX+W5U6tQALdHA4sJniieb/DoFNWw4+0p1eA4lLCa879RZORgqv9w7QnTDLVLOFAVqMHuBVKBGK9FK9IVjAYCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZyJO+BjyhQwwlhi1qVv7ecc4vRoQQBxF9ABVX6+nU1o=;
 b=IgDetbDWmttj58nHC4t2VzYHfZk6/yJX02EqskRxckV24/5EIuuJ/+yH9AT0YKARpDNv8rkZ51nEdy2BKzEvrXUZXzHw5Yd1Y67FmThh/5Lmc4Nkd0bju/4xpKJmXyjqaEmgfEvST1MogghW3cgqx5Fn9eW0SCH8UDfnZ7pl3dY00uLdpLMfLRw7ELHh0qpiSJIcYVVFzlV0v9pDRsXiNHXxWp7YY15CkbYHf61Z3Vi46Qcdozjiqb1ruch0Hnlz+dvtIV+c6AVp9l+tcP2FJlDENpLR4yFP8QltVePVdoq0sYRjz5JMyriqMcByDq2bzR0FeunzkUle0ejOJdDzMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZyJO+BjyhQwwlhi1qVv7ecc4vRoQQBxF9ABVX6+nU1o=;
 b=UPZO8OtBn/yNrgUNbIYDcArt8eklg4Mbz9m8g7kXJgJCRMZ80n+2Cgi9KHtbm6j24Xy/G+PZCviVxnweo2c/DFJpf1l0JAeoNBXngiFi3Hc3N7B6X0dLRdzCpA5jiJVy+0onPocWCkVcKvD81gWq0iDkJ3lNJbO8mquRaBzhiC0=
Received: from BY5PR11MB3895.namprd11.prod.outlook.com (10.255.162.149) by
 BY5PR11MB4210.namprd11.prod.outlook.com (52.132.253.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.17; Fri, 1 Nov 2019 14:26:11 +0000
Received: from BY5PR11MB3895.namprd11.prod.outlook.com
 ([fe80::7421:5f52:f95a:2ae7]) by BY5PR11MB3895.namprd11.prod.outlook.com
 ([fe80::7421:5f52:f95a:2ae7%7]) with mapi id 15.20.2408.018; Fri, 1 Nov 2019
 14:26:11 +0000
From: <Ludovic.Desroches@microchip.com>
To: <Codrin.Ciubotariu@microchip.com>
Subject: Re: [PATCH v2] pinctrl: at91: Enable slewrate by default on SAM9X60
Thread-Topic: [PATCH v2] pinctrl: at91: Enable slewrate by default on SAM9X60
Thread-Index: AQHVkJWwWZ15LZwW00ihLtm4ve/EKad2X2iA
Date: Fri, 1 Nov 2019 14:26:09 +0000
Message-ID: <20191101142602.voj2jeexvvgwgr23@M43218.corp.atmel.com>
References: <20191101092031.24896-1-codrin.ciubotariu@microchip.com>
In-Reply-To: <20191101092031.24896-1-codrin.ciubotariu@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR2PR09CA0022.eurprd09.prod.outlook.com
 (2603:10a6:101:16::34) To BY5PR11MB3895.namprd11.prod.outlook.com
 (2603:10b6:a03:18e::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77c5314a-7882-45fd-0495-08d75ed7703d
x-ms-traffictypediagnostic: BY5PR11MB4210:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4210FBFB5DD3AE501C755E20EF620@BY5PR11MB4210.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(346002)(136003)(366004)(396003)(189003)(199004)(5660300002)(66446008)(52116002)(99286004)(486006)(229853002)(6436002)(8936002)(446003)(476003)(25786009)(11346002)(6116002)(76176011)(102836004)(26005)(186003)(71190400001)(71200400001)(6862004)(2906002)(1076003)(386003)(6506007)(86362001)(478600001)(8676002)(66476007)(14444005)(6636002)(66946007)(316002)(54906003)(256004)(66556008)(305945005)(3846002)(107886003)(14454004)(6486002)(4326008)(6246003)(7736002)(81156014)(66066001)(9686003)(6512007)(64756008)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4210;
 H:BY5PR11MB3895.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:3; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NckErDsEkxyAMfL/zCmguTKCSL2RkCy3daIaEZihOPf/0AehRfGy0hUJuHNhI4hYOl4ieMv6b8LyhCKRy1+kA/MAIndvYrg1XNKCFhWB94f5FkI6HURzOaKzd0w89TgzxZFnfJxC2BwvgNA3WthcKu12p8NtLWmRNy3gyI0z1zmfWXraTxSi9BVWU37MJBoaUyhf/Sv0Jovljv0sgA4oDFhYjrHJCuyqxseaoKYUItX6EDtqDrefdx7C897gA/3YkjOuw9UAuwBXxtg2Pw752ve1rwDjtNkKwPR6cB6aWSCYbZ2k6sU0QiTb0NkyAEwtLQXXeaY3i7zaakI/lg0A2R3GZDPNAr9DBJmjwaM+3nyWfhXMLC+xIy2ZEX5teeM00ZN+B7ak+vaAz2GHTGQP35Y9qlAtZsfU8K5qt1D27Gyps0Dlw/rsajC27CGoGgu9
Content-ID: <379D81F24D960043BE8C2E730B0BDF76@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 77c5314a-7882-45fd-0495-08d75ed7703d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 14:26:10.6581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2QDSnOIQjavG9FjeDC/4vj4I+5bb8i5i3w6+2DPiOwe6/lvOq8EPd28bysFpqujDhsUqb6345/bfAEakx26sJhrPA/HJwk6mxrIVJZPQiqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_072628_696595_3535A1ED 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, Claudiu.Beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 11:20:31AM +0200, Codrin Ciubotariu wrote:
> On SAM9X60, slewrate should be enabled on pins with a switching frequency
> below 50Mhz. Since most of our pins do not exceed this value, we enable
> slewrate by default. Pins with a switching value that exceeds 50Mhz will
> have to explicitly disable slewrate.
> 
> This patch changes the ABI. However, the slewrate macros are only used
> by SAM9X60 and, at this moment, there are no device-tree files available
> for this platform.
> 
> Suggested-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Thanks

> ---
> 
> Changes in v2:
>  - updated commit message to reflect the ABI change
> 
>  drivers/pinctrl/pinctrl-at91.c     | 4 ++--
>  include/dt-bindings/pinctrl/at91.h | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
> index 117075b5798f..c135149e84e9 100644
> --- a/drivers/pinctrl/pinctrl-at91.c
> +++ b/drivers/pinctrl/pinctrl-at91.c
> @@ -85,8 +85,8 @@ enum drive_strength_bit {
>  					 DRIVE_STRENGTH_SHIFT)
>  
>  enum slewrate_bit {
> -	SLEWRATE_BIT_DIS,
>  	SLEWRATE_BIT_ENA,
> +	SLEWRATE_BIT_DIS,
>  };
>  
>  #define SLEWRATE_BIT_MSK(name)		(SLEWRATE_BIT_##name << SLEWRATE_SHIFT)
> @@ -669,7 +669,7 @@ static void at91_mux_sam9x60_set_slewrate(void __iomem *pio, unsigned pin,
>  {
>  	unsigned int tmp;
>  
> -	if (setting < SLEWRATE_BIT_DIS || setting > SLEWRATE_BIT_ENA)
> +	if (setting < SLEWRATE_BIT_ENA || setting > SLEWRATE_BIT_DIS)
>  		return;
>  
>  	tmp = readl_relaxed(pio + SAM9X60_PIO_SLEWR);
> diff --git a/include/dt-bindings/pinctrl/at91.h b/include/dt-bindings/pinctrl/at91.h
> index 3831f91fb3ba..e8e117306b1b 100644
> --- a/include/dt-bindings/pinctrl/at91.h
> +++ b/include/dt-bindings/pinctrl/at91.h
> @@ -27,8 +27,8 @@
>  #define AT91_PINCTRL_DRIVE_STRENGTH_MED			(0x2 << 5)
>  #define AT91_PINCTRL_DRIVE_STRENGTH_HI			(0x3 << 5)
>  
> -#define AT91_PINCTRL_SLEWRATE_DIS	(0x0 << 9)
> -#define AT91_PINCTRL_SLEWRATE_ENA	(0x1 << 9)
> +#define AT91_PINCTRL_SLEWRATE_ENA	(0x0 << 9)
> +#define AT91_PINCTRL_SLEWRATE_DIS	(0x1 << 9)
>  
>  #define AT91_PIOA	0
>  #define AT91_PIOB	1
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
