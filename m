Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2077C8ED6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rej3o3/EA9/dQIKVcgRcCIoZHzCpbTT5aZL66R1NEc=; b=nzhDaraqG7Kjkx
	Wxr9tOvaMjSZyZJKCDyFB5inImvF0ZnIzIjOa4BMe6/L2Y+SmAHhK5Wtvcjs+RSngUpUG93+1ilFd
	U/iaByFT74V+cQr7IId2sAG1dLpjghGey9uJX6VQKeDgr3LHZH2n6mPInOcZoe9K7EyQ1QmG3FIoA
	SXTNGGHjv+55QLJBGivCirOot5rAbbhFn8blfQ91F4ts0LTsFjzHn6Eo5ItAosMTUHiP3o+WB1ia8
	4NxKYwxHMCH7SMzmJ6Ghq3wZWoB90WuCJPXTgPaGJ9cuZOstYaXZ+B/wVBUXvUidE9+VPvgzaOFv+
	klPqNrpp1ItRLYrUQAeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyGBl-0006MM-O5; Thu, 15 Aug 2019 13:53:13 +0000
Received: from mail-eopbgr150131.outbound.protection.outlook.com
 ([40.107.15.131] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyGBV-0006Lm-ML
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:53:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IRjRa9/JR27I2StGWN7JqcB9YAWG+WmxYnJ6UIg10LFAGPLCNz669TIfQAJkG0g0MC7RQxpiHjkw8uN+HF5NHeOvILFFYBhjdyxBgg1LANazH7VwxJx46c0Z0/VBbgGtDUOYZxYM/IRhp4eB6V+UzlHRXq4dyOjytUEsZlaKolkObjjIzf+vt628QDD0lZCArAEkOp9qaIaFj4N/tQRQAlT/kZK8WWx2Z3Saaf7YLOVlULqQdfGB4HJsEXYcIF9AVJaqD0mWJloUq3/xm6dJDdXo8P/cWKoDxMlJtTMvmG8rSEnnClBI65KknRfARmce18MTNzeIHbxBVI/yKtGW3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1jk4FEZGe+Q2hT8CFyKS9KtkL3oLSaZD2Zp300vOZUw=;
 b=UFBCN73xU77HHxzgdk4ZFTopPw+rCxBnkMjeew//i3+VaNabDrWqU5kHLnVwr4PhMjoJhcLXGGcijQweHCFYCpJSEifKDC2kgyIW61MiS7DmzNORhXuaVZ2pxM1gkbVjhwucTcTqWoglp8xUrUk/b8zO87uqH/7i3RPUz2UTaklS9zEJG1h1VFScdYoLd6Zo4G4gKsuSPqs6I4AYE9sM0UOrYxjSJQZU7HbuZLoQPgQLnWRMv6qQBfNE4I7ynV0Z8lsvH4ybETadahyOYV6XBo++SJfwuYVIV/U96gcF5UYdYpPCrsufBht1dIysF/MJ2i27n91sdcym64DDBXyelw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1jk4FEZGe+Q2hT8CFyKS9KtkL3oLSaZD2Zp300vOZUw=;
 b=rjjszFFBTAnwNzi+7uS4tuT6Ex6k234YWtFKWismapmue8J7kjyNdM665qOCTSJSM2NJ0GqE/Ff1heMCVl/3riWXdEDIoenDT1DVYCiRlW98jx9fcXX873gHxor36s3IMT7XUkGP2zXsKM1qRE0CAELnvQ9GaSYzs391ybV2T8E=
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com (20.179.27.210) by
 VI1PR05MB5566.eurprd05.prod.outlook.com (20.177.202.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Thu, 15 Aug 2019 13:52:54 +0000
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9]) by VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9%4]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 13:52:54 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 02/21] ARM: dts: imx7-colibri: disable HS400
Thread-Topic: [PATCH v4 02/21] ARM: dts: imx7-colibri: disable HS400
Thread-Index: AQHVU2+2jR4mtUCFk0i0EfTWj0jIPA==
Date: Thu, 15 Aug 2019 13:52:54 +0000
Message-ID: <CAGgjyvFXYeGJrhT8zKoM8ACuniZUQBNqyuwimSB2UoRGo3Cj4A@mail.gmail.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-3-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-3-philippe.schenker@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR05CA0144.eurprd05.prod.outlook.com
 (2603:10a6:207:3::22) To VI1PR05MB6544.eurprd05.prod.outlook.com
 (2603:10a6:803:ff::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAXBJ80Eknjtf1+SNTW9OcZlJox58hkhjdJkX2BnEvTXOvF96JKm
 u4LZZTmVtK7GHgmEa4tZOE2uGk5bGbChZMLkAWQ=
x-google-smtp-source: APXvYqyH8JXFA6YmjfqOFMKLi+82GmkxXPNFYFtDOXqCbDxK05KwL1GeBN9RPoSrSlqvcAhjp+AquyHpqlq/OQ0qXAs=
x-received: by 2002:a17:907:423d:: with SMTP id
 oi21mr4484888ejb.184.1565876745810; Thu, 15 Aug 2019 06:45:45 -0700 (PDT)
x-gmail-original-message-id: <CAGgjyvFXYeGJrhT8zKoM8ACuniZUQBNqyuwimSB2UoRGo3Cj4A@mail.gmail.com>
x-originating-ip: [209.85.208.47]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf6698aa-c9e6-4c92-fbac-08d72187dee3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB5566; 
x-ms-traffictypediagnostic: VI1PR05MB5566:
x-microsoft-antispam-prvs: <VI1PR05MB55663FDA6E2DCFE5A9E1586DF9AC0@VI1PR05MB5566.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39840400004)(346002)(136003)(366004)(396003)(376002)(189003)(199004)(53936002)(305945005)(53546011)(86362001)(14444005)(81156014)(446003)(256004)(6862004)(81166006)(54906003)(11346002)(3846002)(6116002)(486006)(71190400001)(71200400001)(4326008)(55446002)(316002)(476003)(95326003)(7736002)(6512007)(9686003)(107886003)(8676002)(6486002)(99286004)(6246003)(66476007)(66946007)(64756008)(66556008)(229853002)(66446008)(25786009)(498394004)(6436002)(52116002)(2906002)(54206008)(6636002)(66066001)(5660300002)(6506007)(61726006)(102836004)(26005)(386003)(186003)(44832011)(14454004)(61266001)(76176011)(478600001)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5566;
 H:VI1PR05MB6544.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: co0YQOWHgtprbQ4kd051kkZX02LPrXRI4jibjdA3qOQdTQkYJvOushdUQ3jPc4Vs5sgwWqgNrP+CPgvC4y9uVokcxtx5oIxkK7JNlW0TVwBQcxEg61OQ649krK6/dNTeT51dCWMwEZEsgeoKuJKszZKuRTvUFbqpDFR3D33pXW4XJyBrTyguQ5I3+gOPYlcJpa7M2X46xP6f/AeCPn/UROh370dwY/Uy+Am/TL0qjnGih/ynILCKAcRsNxNV9AqZWOHBGktTKbD3JK+k+4bIzrU/hmch0bG+Pj8a/726rnm1jnWf4o2IUHhkd6R03QZixPmu9d44FkLFgmFQOB3vVig/XoH8nYNREB8JmAWxHwrNp5T73vlrXy/Ai7zKwfmk67iG1KXYx7OXa9z1oX35Hgd59KUYY0gi4nND5wqkKyw=
x-ms-exchange-transport-forked: True
Content-ID: <097225F9F97F8D4FB6EAB261A6487550@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf6698aa-c9e6-4c92-fbac-08d72187dee3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 13:52:54.1588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YlHydf1NEEne9sRvRoy3sb1ELXLjeqNLZyDtcyL7TAeUKSYSbvXL4cyF2Xlw/X8mCudxvjDK39VnrNMBlXCvm4X15LwuLTResa7R/b1mFVE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5566
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_065257_736247_6CB13751 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?utf-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 5:23 PM Philippe Schenker
<philippe.schenker@toradex.com> wrote:
>
> From: Stefan Agner <stefan.agner@toradex.com>
>
> Force HS200 by masking bit 63 of the SDHCI capability register.
> The i.MX ESDHC driver uses SDHCI_QUIRK2_CAPS_BIT63_FOR_HS400. With
> that the stack checks bit 63 to descide whether HS400 is available.
> Using sdhci-caps-mask allows to mask bit 63. The stack then selects
> HS200 as operating mode.
>
> This prevents rare communication errors with minimal effect on
> performance:
>         sdhci-esdhc-imx 30b60000.usdhc: warning! HS400 strobe DLL
>                 status REF not lock!
>
> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

> ---
>
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
>
>  arch/arm/boot/dts/imx7-colibri.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
> index f1c1971f2160..f7c9ce5bed47 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -325,6 +325,7 @@
>         vmmc-supply = <&reg_module_3v3>;
>         vqmmc-supply = <&reg_DCDC3>;
>         non-removable;
> +       sdhci-caps-mask = <0x80000000 0x0>;
>  };
>
>  &iomuxc {
> --
> 2.22.0
>


-- 
Best regards
Oleksandr Suvorov

Toradex AG
Altsagenstrasse 5 | 6048 Horw/Luzern | Switzerland | T: +41 41 500
4800 (main line)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
