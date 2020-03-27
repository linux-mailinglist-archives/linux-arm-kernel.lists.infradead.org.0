Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C56195754
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 13:42:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPrGSXWKzP4OCBpQDuPtuj1r3KkG8GVpgzUTy5i2bZo=; b=lzBL2pjazeIDrX
	9fJ2sW/UhLtlde2XXZKcr+F9KcyGdvtDHpvEQnmAIIT9CG27EyQtSV7bfwAHG2U/jCcB8UBtlykdX
	MpYalOdawutMbgMxU+mcN82fP0jMT4Ezx55aj5jV5iiVvCSbu8+Ome1CsxynRXOqo2RbFqSuKy089
	m9bTV1EtbggsimVnvxnUTpAAZvqlObtvhtoCs3/8nIkzfBxapwwxB/sn2h0HuqeBfTwDtzLl2Sbaz
	mmO2fIUvc0jwOMhCX4SK0Jhnn7vimbSUIHk+jOkj/vu6O5ZEs7HpbZo84R8q7woJi+lBj16qNdcds
	JtfFShmnDP4CL1r9RWjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoK0-0006i4-UU; Fri, 27 Mar 2020 12:42:48 +0000
Received: from mail-eopbgr70052.outbound.protection.outlook.com ([40.107.7.52]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoJk-0006ct-Fu
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 12:42:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RuVAWgyaWr3RZO9mKbO//nzHmwYllK0h+QMsDzsSsEegkMje61tXBscM6py/KCGJh54f6Nx6kbF68JaAGrbWEcUJCC+iOU+x+GuYq/Rf21B1lMSRG/3AAiJjc3QMJjIDEgTNlRqf7zCbEuwEgJflh1Jv9BniEnKzEdz/0HhTL/cpL5GMD2CIkBqCb5fKY8KkRhoyYa2D6xTA3/RAmZTiQAWuVgto37UAiFBvtIUvqir7uLK7CcXq7xpsP5B05qklXDhbuwmlEVzFMbznHAOXFMFJCouHfN4LP2ZvT8dvBY88KsJlvxRay2QXX7LVgl8uacpat45nAcJrFok0H6n+8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lAnzobjsmNeRj0OyBzYbwQTCOVWXUzOO97iBTsqzQng=;
 b=Lo4H3A8eT39K8Q97la0AEdZ9PFzRoJsROAxuofJQbjBYwOey4hvaN6n4ImwRbxL4nifgLYleqvEzeL0eGi5t5AkYByGe2SlF1YhaFs1sJuS9W01huCyOEMkZzdVeYZofbi1BVFerJLOZvKlH2H5AQQTRgIBs/Y3RQWiKI2g/0Z36r3ZKPGCztJppNy5sXWhq09Iv9gruxCyt05d5B+8D4S9y9xqZYlMkcPY76vcO5xPFMWc2jHMgyFDnjvPuVlmlrJDpbC8jvAGi7D/TBO9pn/TrA/RIIxwwFmMsk6AN6fSJSKeiILPUQL6kUNRFL2Ns0MHaeH3wz79eKKq0RKI9fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lAnzobjsmNeRj0OyBzYbwQTCOVWXUzOO97iBTsqzQng=;
 b=UN7ARo85RvKCyonjvSSa5UHDpvSLYoxoYJjTNhPytcMhOUrZ8KzKu+oLO3k2jpG2BNXkooMLe/YYEFoSrQO12qUOW53KWApbhluX2C4QAkq89p5XiSxlzwbvWErLzSGRMU9Zf7zStX9E4hLGrIYuo0D6onRcia/tWeHENRnfy1s=
Received: from AM0PR04MB6980.eurprd04.prod.outlook.com (52.132.212.87) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Fri, 27 Mar 2020 12:42:26 +0000
Received: from AM0PR04MB6980.eurprd04.prod.outlook.com
 ([fe80::182f:6b6f:c5de:a768]) by AM0PR04MB6980.eurprd04.prod.outlook.com
 ([fe80::182f:6b6f:c5de:a768%7]) with mapi id 15.20.2856.019; Fri, 27 Mar 2020
 12:42:26 +0000
From: "Madalin Bucur (OSS)" <madalin.bucur@oss.nxp.com>
To: Russell King <rmk+kernel@armlinux.org.uk>, Gregory Clement
 <gregory.clement@bootlin.com>
Subject: RE: [PATCH] arm64: dts: update SolidRun Armada 8040 phy interface
 types
Thread-Topic: [PATCH] arm64: dts: update SolidRun Armada 8040 phy interface
 types
Thread-Index: AQHWBDTyUzEK8LImG02YfxFpCaWEmqhcYb9A
Date: Fri, 27 Mar 2020 12:42:26 +0000
Message-ID: <AM0PR04MB6980057E53639ACFA656F498ECCC0@AM0PR04MB6980.eurprd04.prod.outlook.com>
References: <E1jHoHy-0002Ep-IY@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1jHoHy-0002Ep-IY@rmk-PC.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=madalin.bucur@oss.nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [79.115.171.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8f8aa931-b3d5-4868-b67b-08d7d24c4e27
x-ms-traffictypediagnostic: AM0PR04MB6401:|AM0PR04MB6401:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6401F6A9EC3C1D289DAE48D4ADCC0@AM0PR04MB6401.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0355F3A3AE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6980.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(136003)(346002)(376002)(53546011)(76116006)(66946007)(478600001)(316002)(15650500001)(71200400001)(33656002)(8936002)(6506007)(7696005)(81166006)(81156014)(8676002)(5660300002)(66476007)(52536014)(186003)(26005)(64756008)(66556008)(2906002)(86362001)(54906003)(110136005)(4326008)(9686003)(66446008)(55016002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +57ud0brKkrOpCejptbGK9QjXvB5nUtppO5gNyAenyfeJxMT8Wn+iWpBvqizbdu2eBUx+UXFoXAIlIOdE85347b1CWCUXifZ2s6zM1bozkHQLOJZiQPKoPyZ/kpCzq5+V8Q4Q9dgRlrwiNXo7ZEh5JqLGWJQINtfdsKq1cmVKrrZKZbRso4ym5J2Z0eALZe37NuAxblP3zTtPQWP+RAK0Qg0vLrw4eiljViznyF/fIWLV64MPzj2yprabWTB6C4P5qBiHDP9X949tcxR9RI7ppADM2xuIV2ZCY7lk6WMBd70+jdOVE2sUcXEESOvc4o+ahBIcljwoFGIYwmN86e6191qdOzFFJ91SJTNtnHrXRXUPULYGfY1q2/6NUOQxPmkuwLMGwGPrmLcCUb9hZTdDIgutwU7s0GlIBTXV8TPTiweslHNnlpW9XERuduYkQML
x-ms-exchange-antispam-messagedata: z5tNcDdKvp4TS+0oauMgnLpqbLC8L1+wARTuRNkTrqIrjKgvk8Dm4SqX/Jxb2zehXhwKeTKhr6Fk7dAEJztyMkZoTgBqD5UuFrfhYSgDnrEA2lsUbW5SHqWYMwkmUSUctgj1kidh+gr4tC4GDZJYZg==
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f8aa931-b3d5-4868-b67b-08d7d24c4e27
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 12:42:26.6429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fFowLfCHidV4OA8ZFiFmlkrPN2P0KrFDKuZ7ji7HyhwQLYvDjKdQ817XsqiE+VbtH5A0whhR+LRlhe/k8ShULw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_054232_538721_E838E306 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.52 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "Madalin Bucur \(OSS\)" <madalin.bucur@oss.nxp.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Russell King,,, <rmk@armlinux.org.uk> On Behalf Of Russell King
> Sent: Friday, March 27, 2020 2:41 PM
> To: Gregory Clement <gregory.clement@bootlin.com>
> Cc: Madalin Bucur (OSS) <madalin.bucur@oss.nxp.com>; Jason Cooper
> <jason@lakedaemon.net>; Andrew Lunn <andrew@lunn.ch>; Sebastian
> Hesselbarth <sebastian.hesselbarth@gmail.com>; Rob Herring
> <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; linux-arm-
> kernel@lists.infradead.org; devicetree@vger.kernel.org
> Subject: [PATCH] arm64: dts: update SolidRun Armada 8040 phy interface
> types
> 
> Update the SolidRun Armada 8040 platforms phy interface types from the
> old 10gbase-kr to the newer and more correct 10gbase-r.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Reviewed-by: Madalin Bucur <madalin.bucur@oss.nxp.com>

> ---
>  arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts   | 2 +-
>  arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts | 4 ++--
>  arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts            | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> index 1e7b47affe26..006666272489 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> @@ -401,7 +401,7 @@
>  /* SFP */
>  &cp0_eth0 {
>  	status = "okay";
> -	phy-mode = "10gbase-kr";
> +	phy-mode = "10gbase-r";
>  	managed = "in-band-status";
>  	phys = <&cp0_comphy2 0>;
>  	sfp = <&sfp_cp0_eth0>;
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts
> b/arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts
> index 26114d96d637..b44f4c029b78 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts
> @@ -16,14 +16,14 @@
> 
>  &cp0_eth0 {
>  	status = "okay";
> -	phy-mode = "10gbase-kr";
> +	phy-mode = "10gbase-r";
>  	managed = "in-band-status";
>  	sfp = <&sfp_eth0>;
>  };
> 
>  &cp1_eth0 {
>  	status = "okay";
> -	phy-mode = "10gbase-kr";
> +	phy-mode = "10gbase-r";
>  	managed = "in-band-status";
>  	sfp = <&sfp_eth1>;
>  };
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
> b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
> index 087a5502631e..42741adf867b 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
> @@ -63,14 +63,14 @@
>  	status = "okay";
>  	/* Network PHY */
>  	phy = <&phy0>;
> -	phy-mode = "10gbase-kr";
> +	phy-mode = "10gbase-r";
>  };
> 
>  &cp1_eth0 {
>  	status = "okay";
>  	/* Network PHY */
>  	phy = <&phy8>;
> -	phy-mode = "10gbase-kr";
> +	phy-mode = "10gbase-r";
>  };
> 
>  &cp1_pinctrl {
> --
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
