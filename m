Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE56F1155FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:59:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nF32t/kJVi4SRD9Y1z9njPnlXlOmoYj8sm66gGBAjCE=; b=Jajj6olzYGfGOu
	nFltABo9Tw8eXm2qGdlSnca3N0aE1qrfT3GWqND92LL8SnTQA90f4sWsUotZMLCa9xry2nTROX4JY
	aGpwiL3L4z9lbFgu+gutmb8/F0mRlMa+hW2NCyo6rIG7Jx6WhPfKLa3TxKJrmVtav5feMX9wD4TjX
	PTuzrF/UxXUL0Gk5tWpglxSaVIndU9U90a56e+9+77Pdj7Ght1HE/3YKDdojk+WdEYz95KpyjnIQb
	0slyAe0q9rfHUDG6RFn90i5bEjCbuaJMlyVIgAUg6iM229BdMtu/mVbRhZqXMuAMMUxe3F5F8MKV9
	mgu1fZtSU4iVJ+OgYnJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGwf-0002Ft-Ag; Fri, 06 Dec 2019 16:59:09 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGwU-0002Eh-Mt
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 16:59:02 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: dKosNgJHfZQ0/A6WBOpD5/ufMMAWFOumrbuYgSPsAJKY97RK8X1HhJLqhTwyheKoS2YHaTal/n
 17MlyA+YSNAO4ozUCBt7LDa+8w5L06SzRgCIwkepsGBJZ/4TgF9v4czWUjcNVv4ZRDskq+9yFg
 3cfQbHXEd2lATnlTNU9cCfgjpwmXT0KKlPVoxI90A16sLJoTImw+x+gK/k2b9LQH/Wswk9Ej/q
 7+mZGxDyF3Cqyh3yRaKtf+hVDBSVTK/nBqDWfXsGcD+9MC10oH1ebev64Bi58MOXrVPhqDToRI
 8Hk=
X-IronPort-AV: E=Sophos;i="5.69,285,1571727600"; d="scan'208";a="58105049"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Dec 2019 09:58:55 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 6 Dec 2019 09:58:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 6 Dec 2019 09:58:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kG6V+rQdXhXSuBXozcKx8E4Vh3WkDavz4WK1QJKW/oJXYIK05oZC120CTBT352Yu/7Yy7OmT8Kwp/xHHxByKADaAIkC0HpexLfYowFURD3sweKONtPDP7Kjuwf3zbdkfMn5pxXaXuiS7C+uZ/UEQW5FQKgOBlN4itTDcmo1vbt6yRWB5/EKfL7droZ09GqzPT7LUYprSk6WNIxonhE4s3hSFtkSxJnEbo0NJAUgPqBruCr+DBciR8b2yEh+RKMo4tdfBO4yaWe4oh95uNBGwyFGnyOrD2tlM1Y0ewLjk35xrUXR0k2v7xDSZtfo2AXQzDpQnqoVocxVrcfdGcpuKYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XyoNdPy74N+2xviunhx0ZAdGqwDeOcHpt4Z50ToVUWg=;
 b=hKyXlIwSB5jL38e19hpaNf7ZpFAOcTp6qs1sMbJxtoYgP9Zh8ksTWEvuUXEL8YOf5jXEYuL1XjwnIL6EKprGY7xWUcTCxqixivNJ4j7L5rnbO3nzOfnh9GwmnKK+5b9aX8DiKJYJzQu+9+7TkYrcIHpDT8XVkpRcHcw0lXlXk1VE1JJ3nKTrCpqmT52e+hE/3N7Ga5HgbflKdrlj5vlE2ivpRMeX8Nz7mWVOOP4nfGxGY+1ez1WuodVlpbRvcksMAt2z5w5/GKrEckpsnuBD2Lv7hPJm4jM9PpYr8aPxJx+V4KM0UcAYfPf2J/SdlBUkVnSO3Oyw7M1Lrmz4kmIiow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XyoNdPy74N+2xviunhx0ZAdGqwDeOcHpt4Z50ToVUWg=;
 b=Jc3fFCFsw290I+wU9kz1CA7Mrp0UrRt4AeBoQmvq7+XOJne9bcm/Z4FAyiZpY3TwbdLKz6+7Hk1VYfvQ/gDzlE0CYitDvM8SA/vdqAVx7bQSsGsmDI9AtZiXjAOhhfUonUJJ3sXB8pW5FuY/ROc4lI7VVvyrDtDgfm4G3bHdmKk=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) by
 BY5PR11MB4275.namprd11.prod.outlook.com (52.132.253.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Fri, 6 Dec 2019 16:58:53 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::b034:f6be:ee33:8fe6]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::b034:f6be:ee33:8fe6%7]) with mapi id 15.20.2516.013; Fri, 6 Dec 2019
 16:58:53 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <Eugen.Hristev@microchip.com>, <robh+dt@kernel.org>,
 <Ludovic.Desroches@microchip.com>, <wsa@the-dreams.de>,
 <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <peda@axentia.se>
Subject: Re: [PATCH 2/3] i2c: at91: fix clk_offset for sama5d2
Thread-Topic: [PATCH 2/3] i2c: at91: fix clk_offset for sama5d2
Thread-Index: AQHVqO5phmRDsF11wkuKIRrB0InCP6etWvsA
Date: Fri, 6 Dec 2019 16:58:53 +0000
Message-ID: <8b911756-e1ad-0a49-f553-7d58b2f3c155@microchip.com>
References: <1575276957-5615-1-git-send-email-eugen.hristev@microchip.com>
 <1575276957-5615-2-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1575276957-5615-2-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR11CA0058.namprd11.prod.outlook.com
 (2603:10b6:a03:80::35) To BY5PR11MB4497.namprd11.prod.outlook.com
 (2603:10b6:a03:1cc::28)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 968d272b-03a5-44eb-49eb-08d77a6d92be
x-ms-traffictypediagnostic: BY5PR11MB4275:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB427563DD7FC14B7D12A8E9A9E75F0@BY5PR11MB4275.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0243E5FD68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(396003)(366004)(136003)(199004)(189003)(52116002)(305945005)(81166006)(76176011)(81156014)(66476007)(53546011)(31686004)(71200400001)(71190400001)(26005)(8676002)(31696002)(99286004)(66446008)(64756008)(2906002)(102836004)(8936002)(110136005)(4326008)(2616005)(5660300002)(66946007)(66556008)(316002)(6486002)(186003)(6506007)(86362001)(107886003)(6512007)(36756003)(478600001)(229853002)(138113003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4275;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5FeYWCR9f0H6Y+RLZ3BEjiFrYQhhgSYk1wwTS1vjdByPlKXXUaCaESOmrnIyTNzhJS/4CAFOZ7Fs+P9AAA0IuWt0t8+LktiDZChdGvp+n3ka+FDZCdiwfcQzzvj+fkEBZnoi0DRbNYUY/bFw/BaNhsLxLvswn9KXvJSPEjtreyxKQpb9+PvexNVChmoPFZGJtg2BHHbm7X/Qfktx2pGqz8wmp8haiEWUjHMX/4taaxL2UVpopVk7iXlSiG1FukPPz0UmmqaQPPpQyh74DQgUL9z0fTyx0AHZOB2LE+vahd0ac8joMOccBJwYGrepMZqNWx/eW429k+yk1w7ThcSkhwInLBEcuAQwRBO4o8mfSCKYwXr/uqdHF55iD7gH4TsN6j2BR2csCqpJfhDH+BMo92/raumn3mT6xDETFlBIlpHtH7wmB7fzxkHE+e/7jEalasysWgAOTpT24d3o6mo0/98oerBAMxLn3yaReA1rKfOaurWqADdvwawGTpvtdMmr
Content-ID: <FC865B96EAA9D24DA092B77F09DD1490@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 968d272b-03a5-44eb-49eb-08d77a6d92be
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2019 16:58:53.0681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: haRjIHlUi9Axqjs5849WLOaxDfjfznMwM9oRKL76stABZR493eeOpi3+1viJ9pq4Ggd6DqHcZxsXoZ5HbEFXWazIGJQzFZ9XMXNp1RMl6fA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4275
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_085858_775082_C8B443AC 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02.12.2019 10:56, Eugen Hristev - M18282 wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> In SAM9X60 datasheet, FLEX_TWI_CWGR register rescription mentions clock
> offset of 3 cycles (compared to 4 in eg. SAMA5D3).
> This is the same offset as in SAMA5D2.
> 
> Fixes: b00277923743 ("i2c: at91: add new platform support for sam9x60")
> Suggested-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Reviewed-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

Thanks!

Best regards,
Codrin

> ---
>   drivers/i2c/busses/i2c-at91-core.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
> index e13af48..5137e62 100644
> --- a/drivers/i2c/busses/i2c-at91-core.c
> +++ b/drivers/i2c/busses/i2c-at91-core.c
> @@ -174,7 +174,7 @@ static struct at91_twi_pdata sama5d2_config = {
>   
>   static struct at91_twi_pdata sam9x60_config = {
>   	.clk_max_div = 7,
> -	.clk_offset = 4,
> +	.clk_offset = 3,
>   	.has_unre_flag = true,
>   	.has_alt_cmd = true,
>   	.has_hold_field = true,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
