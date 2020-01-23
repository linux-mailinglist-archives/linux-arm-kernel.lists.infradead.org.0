Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 157CC146B9E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 15:45:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEZRt2IvJGMhVwaw1B5h1x8yBa8hsaCYlt49prv2/EM=; b=ZJpCPhYE5F0xDY
	VteLv9rM1GaUKDElJYS6XfyVgptgUl0UWVo3CbArTYStriC527dd2apKLWIOb0ueECZh+C/oTH2X2
	RJfFeQxF/vk8tKiN9fDpkdeCydXqmDA6ZX4bRT7M658lvqWl89CPB/Prcqz7oUF4UWGOfUrhuqtjz
	5Vtti/TcYD3zoeSprlWYdtq3NscG4eaFSG5STFUWcvYgB+cJcFf9Z7iqoaE21YS0y/iO+FvWsGtzP
	uVt9os2Wlva73F+Grt7f1U/KsRPIcn6CWjWTzF72Ma8B0qR2UjD5dty/PekflBV2YMyYcEVhNHJAp
	9YR7FsqeIB5N90WRswzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudjr-0007f6-SU; Thu, 23 Jan 2020 14:45:43 +0000
Received: from mail-eopbgr80099.outbound.protection.outlook.com ([40.107.8.99]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudji-0007eD-4o
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 14:45:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ie6al1RmL5nWswLTHQxrAKkHyWNhdd1KlBp9QkWsLdYIl4Si5yrU8oFJY03vB28iA6gXxj7tFypVZIuYwHmgZf1r18vZ7GMHIhmJ8mIz2YDvSDqNNYID0ILxlMV9+xkP5PrN4ngG0WVOTvN1K1h7V6k9xqGljoJhVl2j52MG/Vr3BQ7Sa487AK2rIXy9RTvjfYAL6JByMg6YumzX3R7H+opNjC0t00f40uHrbrDbJmWuW3KE1769An+GnvukjtCHSHVXQ6sgm1S2ldJMky8HGEIAL6rwx4+35pyVQjekooQWMEkBQfUHLA9vks+d+R0iMR7zKIofbLrpsw4gPh92Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mFsGCrLedaPH7ntniz0lqgtuCFCWTxRCSv6KwxszsHc=;
 b=bC1/jfQf/nYyHTXafvppFc7c1T7t8rQCAck61/LZTjZbhkKm/WdD60Nj+nARKjC88hgP/KBw9w+CsvJPB+u+JRryWmd/mIb4+ZwKE0eMRElAxQ4L+b33yQj4iejY7M/EShGRSLHCd82Eccc4iV54P5WpVAhVvb+9BpiYmEZwRHv9Wgv71XvuIkDRyUuGP/kIjhCAW0xRaubTTLgsqDDb1l9RDbKY12hOS0/JQPheYpZ0+cpigGm1mvT/AaVIA+sfB7zegBdGdLgrvccZDylHI0mYd9nRkEBUyA8KBheqZsaq86lCjQ4FsdYyxbDTRF9Lvin4NcoJX7soyzvhvbUyuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mFsGCrLedaPH7ntniz0lqgtuCFCWTxRCSv6KwxszsHc=;
 b=TV4nOYNji4n0HJFRR/7q+AWDgXikL1tnBMzmy3FB57QiNH+o5cysbt9KoQWuF5qkQWWN81gxrCw8Yysy0Sb6ahJU2Fti/w7PXi3FvoLFtdn57tw+ar8BkzcP37paDG4IGBleiVSG14IxLyd5/ZYTIkIb8EpvxX0oll7llbJbjq4=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3338.eurprd02.prod.outlook.com (52.134.72.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.25; Thu, 23 Jan 2020 14:45:28 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13%7]) with mapi id 15.20.2644.027; Thu, 23 Jan 2020
 14:45:28 +0000
Received: from [192.168.13.3] (213.112.138.4) by
 HE1P18901CA0019.EURP189.PROD.OUTLOOK.COM (2603:10a6:3:8b::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20 via Frontend Transport; Thu, 23 Jan 2020 14:45:28 +0000
From: Peter Rosin <peda@axentia.se>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] ARM: dts: at91: nattis 2: remove unnecessary include
Thread-Topic: [PATCH] ARM: dts: at91: nattis 2: remove unnecessary include
Thread-Index: AQHVvod43Bw201Hu2UKhmyhbyxCTNqf4em+A
Date: Thu, 23 Jan 2020 14:45:28 +0000
Message-ID: <a0d80517-5528-8646-91c1-60a7c24511f9@axentia.se>
References: <20191229203503.336593-1-alexandre.belloni@bootlin.com>
In-Reply-To: <20191229203503.336593-1-alexandre.belloni@bootlin.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-originating-ip: [213.112.138.4]
x-clientproxiedby: HE1P18901CA0019.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:3:8b::29) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ddfe978a-40c1-49a6-a0d1-08d7a012e3a2
x-ms-traffictypediagnostic: DB3PR0202MB3338:
x-microsoft-antispam-prvs: <DB3PR0202MB3338AF0CAA0CD68069F6FFC3BC0F0@DB3PR0202MB3338.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 029174C036
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(366004)(376002)(39830400003)(346002)(189003)(199004)(26005)(508600001)(66476007)(66946007)(4326008)(66446008)(64756008)(66556008)(16526019)(53546011)(6486002)(36756003)(6916009)(2906002)(52116002)(186003)(956004)(2616005)(81166006)(4744005)(8936002)(54906003)(5660300002)(71200400001)(4001150100001)(31686004)(316002)(81156014)(8676002)(31696002)(86362001)(16576012);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3338;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SU5htzVeZCSH3UvBUWC6YWl/y1g7ntWcj/5LVk/Ulum/AovnzP5LIDKXYP0aZCifipg4qytMseabXkLPI4Be+nKcI9haCMNJFVFTS4xjeN30Cc2nVP+hIcSBRELhWBptTI7Uo9Jdjf9GeVKXC5USiHTxkQwk4MPw4cREfMsOMFE319p6U5ei2ZeJnO7ByHkap7OhEn3Ad7j4TFubnm4Dq/YNvd62B03RFiEcXl6kQ78YC+NCwGUoCEUqwrjlmaOaU2vmDY4AjEuG2L2q3zz9GSkILfFplXYAZnyTaKR3WtMGdMldz3bDiuwakmN10B3pkw9gfcmJnuC/ApD4bScNbu6uh+/vZIJwaXwqiFrCx7OvGi5Uq1WO+X7Nu3ET7C5aGhJ9Mn/lONi5KVrQHSI/1HteBx5fX77FqJJsvjHFW8LMrIIZNJ6/NgsyUy8GDoo/
x-ms-exchange-transport-forked: True
Content-ID: <95C48D244022944F9746CC17890F5003@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: ddfe978a-40c1-49a6-a0d1-08d7a012e3a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2020 14:45:28.7035 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KysZujrL1/8uxUKfo5xRoZPV5lBgw++drh0slssKMy9Jq95KnHiMfJjllKMUVcp6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_064534_392656_94CF386E 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.99 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-29 21:35, Alexandre Belloni wrote:
> sama5d3_lcd.dtsi is already included by sama5d31.dtsi, itself included by
> at91-linea.dtsi.

Right, good catch.

Acked-by: Peter Rosin <peda@axentia.se>

Cheers,
Peter

[Sorry for the delay, the patch was marked as spam over here and I failed to
notice it until now...]

> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
>  arch/arm/boot/dts/at91-nattis-2-natte-2.dts | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/at91-nattis-2-natte-2.dts b/arch/arm/boot/dts/at91-nattis-2-natte-2.dts
> index f245944bd5d7..4f123477e631 100644
> --- a/arch/arm/boot/dts/at91-nattis-2-natte-2.dts
> +++ b/arch/arm/boot/dts/at91-nattis-2-natte-2.dts
> @@ -8,7 +8,6 @@
>   */
>  /dts-v1/;
>  #include "at91-linea.dtsi"
> -#include "sama5d3_lcd.dtsi"
>  #include "at91-natte.dtsi"
>  
>  / {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
