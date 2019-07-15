Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22CD68348
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 07:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMx3A68BMfyCiXKK8tJCfHzaPNOaep8yuu9tpix2r6c=; b=ljlZZUajKp9hL8
	K7dnmULKD4M+VXhT7sxxlYo+ck2ftx00wlf3wjEV7aBgclC3Pe4c4K98encdfRPpBkIiR6D5Wofty
	cdGhH/mX7jqKCuUJIpU+Gu2hko35JNLJOY+ia4EpEc0677CZLAlWh/K7eaUpYlt5NcGsnrktc5fLG
	dCXDbHQoR0CuN0bGqYHHl06L7NC5pgi2j1eDokhvefxMDj0BZbBJCYxv2+gy919ICs3Oqlo+EMJYH
	YQBSbYjAsgVvpZ6GsDfX4xsYa1kkkiofYBaxpTrtn0L9vcdqk5p8XF79r+FYQ8KFAowRjEEYotrI/
	o4n/COQwD2JWGYB2Y/+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmtec-0005zg-KE; Mon, 15 Jul 2019 05:36:03 +0000
Received: from mail-eopbgr140087.outbound.protection.outlook.com
 ([40.107.14.87] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmte4-0005ub-6h
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 05:35:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UrXiIOYajyXjbfRH+v8D4lBGWqzPgi0B63ueRg0kw/dgs3I1pGE11iA0zhWksAuO13htgtGEfmOawD3tYtxhhSXwt7GaP7ziiTo61f9CBETO7fqZnzld2rQo/SWcWKWlo0RkhFizGMdou7Iz62U20ZhqlEj6jcGV8KSnUWe5UKpTFVkHBL8criJ5pyjSUyX6joAwutfvB4Dt8TckuZb1z4IybfxK/gzkOAQIcMHS/n7gstkEje3WV6mwMV0NutyRB+MvwTtQMMgtELWM7xuOpmgayfTNVEEWj0g9JIMsj1BIqxP61SGyNeSvRRbheaR6U/piUInAbqij5LY+BqQslQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a84UjqeWljgVjjK7UrRtveJ7yKsUOGCfbK0ve4PKHq8=;
 b=PUAGJ+0xk4HHkXVQ176laSCBKGPdqbtrOCN4JO3i/lt5Og4ivt32MeesAfF+Pfdbo83XY9SdGXaCmVxOftKyoFV3q7QBqE3Oaq8xtcPWqe+0/q/93quCs6Ad5HV5g5clI9d4hfNuNrRCCq4/fO4LUAubOHwEJddk/enbMNAgbwfybnst6pO/HI0lEoquVDvFe76CCZcGxfF/BGjSQMuy+rxKgBaReOZCbTxeat2BjDNlDKG5btgpCMvPAwILeRUFYPri92yOccA3d4AAXcVjZF97GIN4MQYsu1B9+xVe9fSQfm6MA4Kiu4p1V64kZiLxS5uZoZoFQdYx+WE0rcxFew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a84UjqeWljgVjjK7UrRtveJ7yKsUOGCfbK0ve4PKHq8=;
 b=UA/F8l2OpmXKF1lIwKSvK/d+UXrdcjyqhfa0b7cqDvjOAGlmRLIn2zw73BHY8WACzi2hlE6W9vOnzgXA+Htj54A2qxdJGwzysHFkcNNMGWPx7h1Pd/qMwKqzxQsf88YX7PdFY8DIdNOr4FyfunYb4graIh+eLf69+9RWEFkLuBs=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB3392.eurprd04.prod.outlook.com (52.134.1.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 15 Jul 2019 05:35:25 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::c539:7bdc:7eea:2a52]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::c539:7bdc:7eea:2a52%7]) with mapi id 15.20.2073.012; Mon, 15 Jul 2019
 05:35:25 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Andy Duan <fugang.duan@nxp.com>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH nvmem 1/1] nvmem: imx: correct the fuse word index
Thread-Topic: [PATCH nvmem 1/1] nvmem: imx: correct the fuse word index
Thread-Index: AQHVMnTebEkQdGkfgE+cLXzkUFRHUqbLOSEw
Date: Mon, 15 Jul 2019 05:35:25 +0000
Message-ID: <VI1PR0402MB3600334A0B2E8FFACF08E9E8FFCF0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190704142015.10701-1-fugang.duan@nxp.com>
In-Reply-To: <20190704142015.10701-1-fugang.duan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e437f5cb-8cbd-4c6d-d30c-08d708e63cef
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3392; 
x-ms-traffictypediagnostic: VI1PR0402MB3392:
x-microsoft-antispam-prvs: <VI1PR0402MB33922DADC5F2D50E43BF4AFBFFCF0@VI1PR0402MB3392.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(366004)(346002)(376002)(396003)(199004)(189003)(66066001)(3846002)(66946007)(66446008)(64756008)(66556008)(66476007)(8936002)(55016002)(76176011)(76116006)(8676002)(7696005)(186003)(6116002)(102836004)(26005)(2501003)(6506007)(14454004)(68736007)(478600001)(486006)(476003)(9686003)(6436002)(81156014)(81166006)(53936002)(256004)(305945005)(71190400001)(2906002)(71200400001)(7736002)(99286004)(6246003)(2201001)(74316002)(5660300002)(446003)(229853002)(52536014)(11346002)(4326008)(86362001)(316002)(54906003)(110136005)(33656002)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3392;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wILLLurnJCmAQyr7VKsDkfTUWZf+9flKsDGVOKigkJVhBIGmg2nsA7E0tbacTq1DFEnLDrflrttG31Z+ydJpHHY5q8EcZUF0PxjF5Uc25RGIGtXdL39mSLzsZlDvF3zzR5hMoD1zcExTdUctStDvtcw5n4MRn9Ook7TlzDHCh/AwQfFW4k5vu1t0Se174uek8GQD5dJB6f0w+A+RBqI/+e5Zm4bBdXbhUYyi03uGYAsnvdYVicpKXVghHLtWYW/8jScQVCMX3O+ZQu01w10rFqyjE3oayFVgwPK/F7WFCyGrQfNO2ZrPtQd7GQ619ROhxjneAdMDEOhXN4VOWJbx5UUwedbzGwb16XU62JOq3oeY7QopJEFXw/VXX/rxBgYdLMZE/2jQREcAUOS/uZPraybvUNP/yWvoVa9LTqmboSo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e437f5cb-8cbd-4c6d-d30c-08d708e63cef
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 05:35:25.2755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fugang.duan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3392
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_223528_669440_FDBE79B5 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping ...

> From: Fugang Duan <fugang.duan@nxp.com>
> 
> iMX8 fuse word index represent as one 4-bytes word, it should not be divided
> by 4.
> 
> Exp:
> - MAC0 address layout in fuse:
> offset 708: MAC[3] MAC[2] MAC[1] MAC[0]
> offset 709: XX     xx     MAC[5] MAC[4]
> 
> Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
> ---
>  drivers/nvmem/imx-ocotp-scu.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
> index d9dc482..be2f5f0 100644
> --- a/drivers/nvmem/imx-ocotp-scu.c
> +++ b/drivers/nvmem/imx-ocotp-scu.c
> @@ -71,8 +71,8 @@ static int imx_scu_ocotp_read(void *context, unsigned
> int offset,
>  	void *p;
>  	int i, ret;
> 
> -	index = offset >> 2;
> -	num_bytes = round_up((offset % 4) + bytes, 4);
> +	index = offset;
> +	num_bytes = round_up(bytes, 4);
>  	count = num_bytes >> 2;
> 
>  	if (count > (priv->data->nregs - index)) @@ -100,7 +100,7 @@ static int
> imx_scu_ocotp_read(void *context, unsigned int offset,
>  		buf++;
>  	}
> 
> -	memcpy(val, (u8 *)p + offset % 4, bytes);
> +	memcpy(val, (u8 *)p, bytes);
> 
>  	kfree(p);
> 
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
