Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2BA1B5A2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 13:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hV6Mw3zWt3Gv6tYuuwQT9+J78OrKle3Y317XKsLTLFA=; b=jn9jfNJzM6W1Bh
	wGY6Y80v/kPvO7GhBMzxeZik5X5neL/esyjZwaVi0BubDQCtwZiqsBhgIlqGd3UvRdGfvhDbbxbps
	qGyytzdd7kV9rSThHcZU8818oeh0f/k3wKF0ULD/FvZWjtlQo+1aoxke3V3HQAGCCLKLvPdBfB1+A
	xq9v6yi+4gt9aWCb51cXg8X+KAotrXbAxvUdKumTC18IA+zLl48cBaGB8bkKHsIu1smConYBcN9Ul
	YDMH6N1XLUKH6BXS+73/G5U70YXzqS5Wj4tXGoYvd4psPXXIYN8/L14WZEcrYWme6YHCR+Y6bVjOH
	/ZkeSJ9HTdAYItSJYWeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZo1-0005Ge-Ad; Thu, 23 Apr 2020 11:14:09 +0000
Received: from mail-vi1eur05on2067.outbound.protection.outlook.com
 ([40.107.21.67] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZnq-0005Es-SF
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 11:14:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hhKCsGD3X0iEQZLiPbgUwgkVbh0rAm9BBMKFU4HBqCU6LUT87UGKZVuvofXQofJXzBnUYVOjzNp6lrRyCZQC/CmbGUO/F7O7NwwNwBWyQIMKF3GNvSCcUyuGz/VLAH7/OGzQDc8YC+mk3KLcbc4g0nAQ3jvwtXia6L2zliqxkb767S23XpzsKTlYzlb3sbaMa0sc6MprtrlfNB9PB4jfvNyr22k7Y+5WD8nMoo/2Yv1nd1J3vAAQLvUy+jQgW06qiIL0Nrg2sjORvBzVQYUg7/4Xs2XeKE6hcOYVT78Z4dffygNusq2mSrXcWJfuC18vAt+Ghx6sqgcvULjF+dCjwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/qHeGGzzH7Cgr4MKOLoyGvJdy79cM76JD3n0xuyT6/E=;
 b=Sq5dpAl3kTbmfOi5ZbXx2vqQm+a9a+0FBlMqkvAD87WjVAJ0v55Z6waLnuBF1EtG1aJ+zhSsMLBrCX6teUzxXdttztk0ZthBJz3FIsadZw83KcD/tXtQ+GfLPJxjF3/qUgfYuJ4dW6nL7W6Ggi1FWdkz15syhpiS3Elmz1ML9iAIClyTan6CeoMxsvmLSZMV3tEZimoZDovv7dn2R2SQnSQEkT+gzXuseRsKQ+sVwWuXHbHZk4Z8UpSOB/5avhWf8PTbWYfVzhHutdvJTKp+mgJ/BSebFCwqBLSN5UmS9W136uDtzSSAJ9M8ueuVANcZdUl8W0BUwcYDvQGDR4pU6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/qHeGGzzH7Cgr4MKOLoyGvJdy79cM76JD3n0xuyT6/E=;
 b=ReqqQ7/Wlw43w6425cbQuGmmTxXSAaL1dgzhgR23J/l51TSTYMdy7FvhbA+LRSALl780ymp9lMjT3WnczxHOdt8V8qyEAqm++KKOa4VE4uyUj6tMqZKe26XJslcsU5u1lh4OGOXHh9+vLQOskEWkS48m1Wp237CQ3rSnLdtaTY0=
Received: from DB8PR04MB6985.eurprd04.prod.outlook.com (2603:10a6:10:11e::21)
 by DB8PR04MB6633.eurprd04.prod.outlook.com (2603:10a6:10:109::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 11:13:53 +0000
Received: from DB8PR04MB6985.eurprd04.prod.outlook.com
 ([fe80::844a:d2b2:8bae:9c9f]) by DB8PR04MB6985.eurprd04.prod.outlook.com
 ([fe80::844a:d2b2:8bae:9c9f%7]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 11:13:53 +0000
From: "Madalin Bucur (OSS)" <madalin.bucur@oss.nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] arm64: defconfig: Enable Freescale XGMAC MDIO
Thread-Topic: [PATCH] arm64: defconfig: Enable Freescale XGMAC MDIO
Thread-Index: AQHWGVjSHlZ4oWHzME+oan5GdRrO/qiGjYGg
Date: Thu, 23 Apr 2020 11:13:52 +0000
Message-ID: <DB8PR04MB69852B4BD321A4FBA9C71095ECD30@DB8PR04MB6985.eurprd04.prod.outlook.com>
References: <20200423102028.28280-1-s.hauer@pengutronix.de>
In-Reply-To: <20200423102028.28280-1-s.hauer@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=madalin.bucur@oss.nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [84.232.188.116]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 007e7a7e-d349-4041-1c31-08d7e7776823
x-ms-traffictypediagnostic: DB8PR04MB6633:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-microsoft-antispam-prvs: <DB8PR04MB6633F9D859125DB517613832ADD30@DB8PR04MB6633.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:345;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6985.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(136003)(366004)(346002)(376002)(52536014)(26005)(71200400001)(4744005)(66556008)(66476007)(5660300002)(76116006)(55016002)(66946007)(64756008)(9686003)(478600001)(66446008)(2906002)(186003)(8936002)(316002)(8676002)(86362001)(81156014)(4326008)(6506007)(33656002)(53546011)(110136005)(7696005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2yYRUZywtqWWV1U9bAXkI7NIymwXXzTCCRlsr9sEkWQalpT5cjVvXY6AiW3azMoJKvBDBfHeN4TEe7G6Iu43675TZ6yEOpmOsBrK+sy4SO0BD8ZW2paC1/1oUNs2mqp+TyclrHIoh6tPp6ldAQQmOvUAu8uHIcO/LcLGccgl6RMa/64amSclCAZPwUTsJhxmWanvNUEYXs57XOv9Uz1EaQDTvEpvV0tDmOrYEZucLuRUnxzIlts65MaaCp+6XMdQEARu+qMDQ/dq7Fzfhxs7SJ48fj4byMwrFBTTFXrciO5IGsIUBHh4Pj8akRK3nca2SHRbp4veBU1wZuTMymqP2wr1Rv0whsPPr2SSWUbxcGi+grb4ec6OYbZ+kynmtV30Oob7pGtwOH67YiUuekwRrLFYyUsFQxaHX0IC2n96OffER19BlpKULczRiGr/DBu8
x-ms-exchange-antispam-messagedata: vhA9LF60CMldVHrvpg8m2+OSpMA+D5Keu28vL7BTilcu+GuOnXXHMo7M9fu3QpnglDKSLvcvqADKdWE0KT92YFcKXnGUikeUhtlqJwvLi7RgextVY5X5VJ9OMvQuMOGQNWKAsL4zcqBItCLFZLZgxw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 007e7a7e-d349-4041-1c31-08d7e7776823
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 11:13:52.9942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J0cvwXuf2xHFgLttj+PV2Zm3WuA/zDgWq0iqYLS/0v4NO960cxy7Zj248XUs5MamuobxgaE/TFzGFtbl8FlMLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6633
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_041358_976227_A235DCB7 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Sent: Thursday, April 23, 2020 1:20 PM
> To: linux-arm-kernel@lists.infradead.org
> Cc: Catalin Marinas <catalin.marinas@arm.com>; Madalin Bucur
> <madalin.bucur@nxp.com>; Sascha Hauer <s.hauer@pengutronix.de>
> Subject: [PATCH] arm64: defconfig: Enable Freescale XGMAC MDIO
> 
> The XGMAC MDIO driver is necessary for accessing phy devices on
> Layerscape boards (tested on LS1046a-rdb), enable support for it
> in the defconfig.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 24e534d85045..e93bda9cb802 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -284,6 +284,7 @@ CONFIG_MACB=y
>  CONFIG_THUNDER_NIC_PF=y
>  CONFIG_FEC=y
>  CONFIG_FSL_FMAN=y
> +CONFIG_FSL_XGMAC_MDIO=y
>  CONFIG_FSL_DPAA_ETH=y
>  CONFIG_FSL_DPAA2_ETH=y
>  CONFIG_FSL_ENETC=y
> --
> 2.26.1

Reviewed-by: Madalin Bucur <madalin.bucur@oss.nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
