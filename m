Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6889A1B5C0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 14:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7zUsL+HFf1/iPpZ7Nv94W7ITaoJxP7t3Dh26SR0WnU=; b=bZFZ4BhZsfBtjH
	Uw8BWacvugCxO7dJHxXwCM2gppQLj/oayTxcT+dYNz7mIZleDtYm7jiLop2XJq4rSzQ9iX8PnUMl4
	HpwrV9Ly+XpmbCBeUc0XDEVytxvbhwbsRM2SMmMnmtXJYtMS4Vth+VoWRIKMGf3wh/o6nhGkAQ6vp
	TM1Q1bcp3fU0zlvl8kFe7xnZdE4+Ed8W2v7r7+YNCCiXcjvT6wpnQHCjkKY513lE1LsB/Qg7Yp3Tz
	6eN+4+YXDPCuPilv4cxnWAHTPvUyNIEToG2Sw8YcUwu9PXa7j48Rw03qv2yierqr0lXO87axkNsQ+
	i8OkrCYiVIwod+Eh6dvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRbS0-0000sq-4D; Thu, 23 Apr 2020 12:59:32 +0000
Received: from mail-eopbgr130057.outbound.protection.outlook.com
 ([40.107.13.57] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRbRq-0000rd-I9
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 12:59:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mu11mIAhatB9o3YzoINbmcw96QmKT4UHoHjRfKNx9/RwgxsWB6fxHYIZxocb0AkSqb3CDwZoMulwlJHsnD53phK7WUttbdYfPW+7pf4c42woZQfBDQQxBqQLzuz4MAQIG60gxwg8N3aRJ2Z0RbxWB3a7Vx6asAwa0Si1J7UXwnfdvVpiJE+BpVfOGtw6iCtL9WjOF7nRHyvH2cZRxKgIi3Lw6aSqaAV+5YqoMtc9IGew+WdwWHpM0Wd9ORb+QYtGEkjUEs0HU2tdZOfctltup9kW0kEj5i6QX0E1myaKg3zMrl83wcJzLdg3y1/ig0Kdz8qXbPvALvi/30ue/IOfXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F8xT5CHK6qdil3tm6bP00dwGdhgGMELXmbSDYcTviq8=;
 b=Xh+oct/ORhOS0A4sWqcFS/q2QQeU9SWNGiXJh3F/ntCC2lNHBV2VBiCGXK/IMIXo0wbae+wh8YoAyBFy91ms/Tj/IDSjBvRspxEt5Yje5TXzWiLHh7Vzn1zFUoLOX30bnuZCuQIooHAgkpuMoJcxDlvlfVz257hsCeUN4ABoof8yqN6vlp02nwbcLqRM0BNwLwb7ZrmE7UYapmpMUGWT0LZyyhDhFTEUPMkO3Dq0mggBfnRcnPdUxYSBWsIolxz5V2HonjRQ6jBh7wM2vumsDRpNUNCI90uPO9Gw0NGNME4oX2pxRaa55jbHEH0lNHlOqgql8Uj+PdDfPfWW5KmNxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F8xT5CHK6qdil3tm6bP00dwGdhgGMELXmbSDYcTviq8=;
 b=SY0H0+zHi8nEW1WbuInn8YiYGaHLu40QB/rfWLQWUP+7X/6HrVxo0iuuacxt4iCzhaKBq7sYxSbGzaO6DW0wKeyVrNZ8E38ptyBDRn64xFGKBI9tqAncIZpVG/MpnQbddDoJ1+a+AuXocm55vp4lRnRn1AXTnHqjjDyY30OEhik=
Received: from DB8PR04MB6985.eurprd04.prod.outlook.com (2603:10a6:10:11e::21)
 by DB8PR04MB7084.eurprd04.prod.outlook.com (2603:10a6:10:12e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Thu, 23 Apr
 2020 12:59:16 +0000
Received: from DB8PR04MB6985.eurprd04.prod.outlook.com
 ([fe80::844a:d2b2:8bae:9c9f]) by DB8PR04MB6985.eurprd04.prod.outlook.com
 ([fe80::844a:d2b2:8bae:9c9f%7]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 12:59:16 +0000
From: Madalin Bucur <madalin.bucur@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] arm64: dts: ls1046ardb: Set aqr106 phy mode to usxgmii
Thread-Topic: [PATCH] arm64: dts: ls1046ardb: Set aqr106 phy mode to usxgmii
Thread-Index: AQHWGVkRBxpVgWt18kKwJeE2FAcTPKiGl6kw
Date: Thu, 23 Apr 2020 12:59:16 +0000
Message-ID: <DB8PR04MB6985EB9D28A17723C8C061CCECD30@DB8PR04MB6985.eurprd04.prod.outlook.com>
References: <20200423102212.5412-1-s.hauer@pengutronix.de>
In-Reply-To: <20200423102212.5412-1-s.hauer@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=madalin.bucur@nxp.com; 
x-originating-ip: [84.232.188.116]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 104089a0-b4f7-4fc9-f07f-08d7e786214a
x-ms-traffictypediagnostic: DB8PR04MB7084:|DB8PR04MB7084:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB7084153AEB8EDE94C4CAE70FECD30@DB8PR04MB7084.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6985.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(376002)(39860400002)(346002)(66946007)(26005)(186003)(55016002)(2906002)(33656002)(6506007)(9686003)(53546011)(7696005)(52536014)(316002)(8936002)(478600001)(86362001)(44832011)(71200400001)(64756008)(66556008)(66446008)(81156014)(966005)(4326008)(54906003)(8676002)(76116006)(66476007)(110136005)(5660300002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dpPDlbhGkfIHjcPZwcwCBW4AIVs3woq0UzfCXGKyWjTLZNaPCPzFufk5r9xokxmtTdgfDFK4DPqnSrvi/Nv5qLakNiQfE7IN6l5AEoE6H/N6C8rVRDUIcHzQOKyTNS634FoprF5cibYTTqOgS3LJC7J4evGAvy34C84iNzfd5HIeaRs/kO7rvxRqXYCMGh/k/fyDby1qpYAoPqg8fHmr+i5BRSvAHrqIGxuVzwi2y7KVDvVMe/hYxTF7nXIsz8ucFSM9FuVo8TOXcjLf1vECMxxr5zwZa8x0p9/xsv0Jk7kos6mpQFK4EUvZLWv7E2mjJvT4LQlu8mLyTKahTbY2D7HQe5+uQ0Cz5j/FwaOjQD2WRRy+AGlSVsiOMPqfpYTIuQ2PKAvgnHRvACjpHHIV7hd+MN36V7212CMKOqXEe8yxvXL4nGjaYGiB/6GOnTnrC4DJhda1E7IlzGErju5+cJco5d3S2V0dGZK/Y0TVL1M1K9AMh0O3BKkLfEy7ElYqKHxDw2E/YO5C/lyYJhlF2g==
x-ms-exchange-antispam-messagedata: uaV5KFVH93/VjRruLBLuQ16kwRDNYkx6Pz0MeIHKoFhyRu7HNWJ9yjgoVYZiPTb35eSSa6cf1XPK1yqlO0jsJgDyfo8EAwCp0DLBV5rzzK7JemiX5QTeVY2K4EW4mhJMlWA0ghWxsk9G1LGwmrDxng==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 104089a0-b4f7-4fc9-f07f-08d7e786214a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 12:59:16.5322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OM2w6L4HyZryv/t+8f+itk21onb6dHPurd7z3mGknhhQuu2kGWmmj2MFHw6qdDW8lbr+/3a97z3xUcCYGqy6Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_055922_710886_594D5542 
X-CRM114-Status: GOOD (  22.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, "u-boot@lists.denx.de" <u-boot@lists.denx.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Leo Li <leoyang.li@nxp.com>, "joe.hershberger@ni.com" <joe.hershberger@ni.com>,
 Shawn Guo <shawnguo@kernel.org>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Sent: Thursday, April 23, 2020 1:22 PM
> To: linux-arm-kernel@lists.infradead.org
> Cc: Madalin Bucur <madalin.bucur@nxp.com>; Shawn Guo
> <shawnguo@kernel.org>; Leo Li <leoyang.li@nxp.com>; Sascha Hauer
> <s.hauer@pengutronix.de>
> Subject: [PATCH] arm64: dts: ls1046ardb: Set aqr106 phy mode to usxgmii
> 
> The AQR107 family of phy devices do not support xgmii, but usxgmii
> instead. Since ce64c1f77a9d ("net: phy: aquantia: add USXGMII support
> and warn if XGMII mode is set") the kernel warns about xgmii being
> used. Change device tree to usxgmii.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> index d53ccc56bb63..02fbef92b96a 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> @@ -151,7 +151,7 @@ ethernet@ea000 {
> 
>  	ethernet@f0000 { /* 10GEC1 */
>  		phy-handle = <&aqr106_phy>;
> -		phy-connection-type = "xgmii";
> +		phy-connection-type = "usxgmii";
>  	};
> 
>  	ethernet@f2000 { /* 10GEC2 */
> --
> 2.26.1

Hi Sascha,

thank you for trying to correct this problem. Unfortunately
"usxgmii" here is incorrect too, as that mode is not supported
by the LS1046A SoC. The connection mode used, as documented
by the SoC and PHY datasheets, is XFI. Unfortunately there was
resistance against including this connection type in the list
supported by the kernel (please note the distinction between
connection type and connection mode). At a certain moment the
two were aliased and the kernel uses connection mode, not
connection type. While we should describe here the hardware,
the board connection type (XFI), in the kernel the connection
mode was lately preferred (10G-BaseR). So, today we cannot use
"xfi" here, as the hardware description property should read.
The closest thing we can use is "10gbase-r". Unfortunately, in
u-boot support for "xfi" is already in place [1] and the device
tree should be different for the two for this reason - this goes
against the spirit of the device tree that should not depend on
the software using it...

I had on my agenda to fix this problem, had to stop when "xfi"
was rejected, at the time not even "10gbase-r" was an option.
Also worth noting here is that, while we change "xgmii" to a
correct/better value, we should also tolerate the old variant,
as there are users in the wild unable/unwilling to update the
device tree and backwards compatibility should be ensured,
further complicating the matter.

Regards,
Madalin


[1] I mention u-boot here because it's the default boot loader used by
LS1046ARDB and there are some interdependences with it, making things
even more complicated than they seem: u-boot currently performs a
fix-up for this device tree field, based on RCW (reset configuration
word), resulting in an override of the value provided to the booting
kernel. Some relevant u-boot commits:

https://github.com/u-boot/u-boot/commit/17285fc2833e0db04a2bd3d411cdf1a3e387de83
https://github.com/u-boot/u-boot/commit/8a141d6e9cc1841082e4c996703eafb037ec63ad

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
