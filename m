Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C18BEB7AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 20:00:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=mxmlQbYLKBbe9xGeK9GXHWdO3H7vAiD7STqWv2+6o5I=; b=JMvqRXOWcwAgfw
	CpPc+tgiPAacX9XIZ2fHPx++ljJmW1P/bGIOX7N7rjsnHQE7IM31g6a1MT1PG5wOyQs8OUfNKUfA7
	SSkoKYDbgJhTh3QEWhYzYQuCtTXsGPKqUW+G18UOxDU03ixzSQzahz6srhNGAk/GUT/on+sBiLasb
	xgYiwR3Tenj38pwE0/jO3lYbdYuuOh6mxSffTrnzHM6mXXbpJBxUH2LBt/HuMKQ6j8zJhr77DGslV
	hDEVq5li/XNHJcv1xM8LO0nY6mGRGPo42Cn93+kIO616HG7cZlf4aL1oF8T4VFuPFbqatFMsL69lo
	+6oXplMAN+rLJcjqeXrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQFg8-0005gv-Nl; Thu, 31 Oct 2019 19:00:16 +0000
Received: from mail-eopbgr70087.outbound.protection.outlook.com ([40.107.7.87]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQFfp-0005fz-IS
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 18:59:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OK3zVpYD9idLJsK3ZaVezV+LWZRALT9cSwAFolZIBpwZzKThtkiGNVLKBBZiiSDhl6zs9P49Bv9jxz6D1i5Q+pLrjIDC6Ec9mPPaoB5q4uEQt16Mx/3tjiCQ533S4HE5uFtEZe7Gz/bXbmFtJF/HEufbNzyYszWzprgC1WLhLLKMOf3qYvopUzlLpcL4o8rOQ55PREi98vFD6rN+rVGmxJTqIUGJTUWgdIE6BsMbmxLXMXC4TKi+kqZsFvxVxiuRKZWvfZuXLa0tQMcrqQYtVurxzP0V1n0hfVIoexfHXsPdjf7OWFxJyPzzaFiHnBviP28awPHyKW1yzzyykAmBBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6AMLu3E8kxrU9QotbLYp1xVEQD1NbeopbsrfdAFANlA=;
 b=kqoWbJbdIkm6kZMRjCol147lBraFaemNh9YyYn6nAsLPxMk/Z35L3zyK1j7kMfboEDZUPJni81M7qksQ1su+tQ1E5ZFdfLtrm+f8d/MJ/iZj6BPxjx4fi9mCvPt0vvI4tHgr2/DWSRIGBpzQnS5cgtz7a30m5xuW2TujQ9v/S2IUXKNzXVBB/pqhd7UKXNT42a+IheEE39YLjau6jwKZ/Hfz6Bp5V0m6J5bIXWTu4gYt8Gubc+A8cg+7CkMsJQVvP2/jNSBA/dmmVZQi11Emii56MbEccpQWld740mcKSgqHV4XTM8f5cvACLgbSKG1lGwkRRyXDXmGUIvDuD4hM8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6AMLu3E8kxrU9QotbLYp1xVEQD1NbeopbsrfdAFANlA=;
 b=M3gty6y7ujEcFty170GriH6HyGEOkEcC7czWHdGJV7nzWJ1hVk29hb0avcvR5lIYdSFqz8lic/aHo5jMZQ6STCYcW+KUj1vRypDTHsfWk39d/4Fc+1pMwyk5vRAXh18bXo1VKOSmRpyC5yPxyS02RWX/K4ir9aYiE1IAcl6l+Pw=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5038.eurprd04.prod.outlook.com (20.177.51.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.25; Thu, 31 Oct 2019 18:59:51 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2387.028; Thu, 31 Oct 2019
 18:59:51 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH V2 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for
 fec1
Thread-Topic: [PATCH V2 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for
 fec1
Thread-Index: AQHVh/j+k1XoWkwF8kWzRGGsNvXoFQ==
Date: Thu, 31 Oct 2019 18:59:51 +0000
Message-ID: <VI1PR04MB70239911C3C71E0503808F85EE630@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1571652977-4754-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b70f40ea-6da6-452e-1dd8-08d75e348262
x-ms-traffictypediagnostic: VI1PR04MB5038:|VI1PR04MB5038:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB503832DA64F49051CBAB4DA2EE630@VI1PR04MB5038.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:983;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(39860400002)(366004)(346002)(189003)(199004)(26005)(86362001)(99286004)(6116002)(305945005)(6506007)(66066001)(186003)(14454004)(256004)(2501003)(4326008)(7696005)(102836004)(2906002)(110136005)(54906003)(3846002)(53546011)(74316002)(7736002)(316002)(76176011)(8676002)(478600001)(91956017)(66946007)(6436002)(6246003)(64756008)(44832011)(81166006)(52536014)(33656002)(76116006)(486006)(446003)(71200400001)(81156014)(66476007)(9686003)(476003)(66446008)(8936002)(55016002)(66556008)(25786009)(71190400001)(229853002)(5660300002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5038;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cI1E9xjhXUhTimmnhaTzTugMCOV6CreyZENQM7UEjcQPv9bM4ia19l8QHvtCBbpeEFlktzM60g3TjNCoQogMGEvsc/pmlNMJzkeU+vc6cPttrdBsmi+0YFEGKfWABqLLc7sAF7OloKClVUg3RmmUbGutwecfDd+BYM2118tcZ3brUBPgdT3y0nZuth/HvIZcSf/sWx5jEJNj8af4TwbrmklHiWEL1qbu2VePDzy1gvpdf6CGz70e2gz0cVmwGZXUaFIPX+fkvAyRUxKXz28JmpEHNWPUhA+p3RrgL2Ia89acIIxJtd4PFMlH2TXp/vW4VHaIJk9YeP5cNaKnZEtMcSU2hT5VtrgK49K5ASrWVx5x8MdgVLTz/+dj3cePVad0R2Iw/RDO9u8jNDj8S2mGF1jGxXkqPMMUtN4uiEzTfj5GqLwdIq0cpIIHTyZBLY2+
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b70f40ea-6da6-452e-1dd8-08d75e348262
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 18:59:51.4067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gzy1hvxwGphpPab87wVwFJKvQZIa0R8mRyR47HU12I9+2I8Gmfm2dhAj+o8Polr38mdUZNVP9jR4Yf/7D1QojQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_115957_694095_118ACB3D 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Andy Duan <fugang.duan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21.10.2019 13:19, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> We should not rely on bootloader to configure the phy reset.
> So introduce phy-reset-gpios property to let Linux handle phy reset
> itself.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

This broke NFS boot for me in next-20191031: board now hangs on DHCP.

It can be fixed by reverting this DT patch or by setting 
CONFIG_AT803X_PHY to y instead of m.

Needing a phy module is not a bug but everybody will need to either 
adjust .config or build modules into an initramfs somehow.

> ---
> 
> V2:
>   U-Boot->bootloader
>   Add R-b tag
> 
>   arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index faefb7182af1..e4d66f7db09d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -80,6 +80,7 @@
>   	pinctrl-0 = <&pinctrl_fec1>;
>   	phy-mode = "rgmii-id";
>   	phy-handle = <&ethphy0>;
> +	phy-reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
>   	fsl,magic-packet;
>   	status = "okay";

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
