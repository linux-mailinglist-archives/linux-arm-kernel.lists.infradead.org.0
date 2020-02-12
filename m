Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF5915A1FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 08:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBjW4AZ/1Pe1SF2hpI38fPWbFlJnqbOKSOtJZCQWI2g=; b=H9jEdNSKRQ8mPR
	xv9QGpqfngjrX9Z5SLRqpWfvFRs7FDvlZ/UYC/mDDwGmCiXE62ia7Akayfazvk/0HVuv5kwd+SSDD
	TT/sBe0F0XTeRCgO/D3Fp5oSFiBv7AZac2vOLorpKMGdDwPGgxyrHf5+VXubyMUgvXVsJzt/zNL67
	pGzEPB2X9mILt7Bs7VHHym2WJKG+wHbhu4Vpxaz3xUs6YaiPXuEZi1CsovfOLzdoF/x64jMQIVi3U
	RSGk1u8iSlngnaQl2vQuIkRk9XpnvOzVfJmcILyaq4tlOOI1MYNlLLq8bSxV55fYyEYGaMRc+2L1b
	BnlpBXjb3++jRrfeZKlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1mRE-0001KY-Vt; Wed, 12 Feb 2020 07:28:00 +0000
Received: from mail-eopbgr40074.outbound.protection.outlook.com ([40.107.4.74]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mR6-0001JU-23
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 07:27:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oiaq2UCD8bNKrQGTk/imyy6GnYeO0AjOMjitfJT6irMxFfIVb7ndrA4zHauB9ndVQYxMCai4ozq0zvx8SSJuWrDP/UKXwT8HkCOToeY24ybE5mpVY3Qbx96F5DKZXQKlKyiW8Jt9xQtWYdsGdIurqdyMeZp7zAxy/TzA94w5PIo6irc/nmtc1RZokwXMc0zdeK7C+ILAKMTPvLufMu9FyjIoNw9TE+r+bICtk0kjkSUTGnQOf5TtMQb3jq9S496Oeu9pWqDgTpyMBUF9A8ZKC1YEi6lMYjEj5RBfxDVGcLQqNMdie6F49dplDuefTB/XUtswGCl8+gE/8K+MAmgdcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JQHjvpS4uXVMzkK6LNs2AjyCSUOjfgw4NjTttsJ1m9Y=;
 b=ejUw6cZPH2V+1Sro2la1dAW7oUXYm4e9ZnAoYpbpiBuqtbrd17rKiqOsqeqZn5QLSOpYmmNUGuZmwp8BwBJRB4zsK+B6yfFT+ZPBzP7P49k52uInU8djQY0ghWrCobs8obGrmVLG2xRe1+LAgDWipopvqyaWnpRH5KqQI3Q78N3rHabI85/LVPlH3mlxPh8Uy5qEzIQkQGUg3GcieuuBQYmablQ61L1fEkobDj1SylsxsHy8+pntpk0OnC2D4iVOXhmx8vN5WMFkwnwTRwFyf0nnyhajmZAlrfqrRwmuZ9I7YOz7gbdDRbYjBtxIVwJjXM/u7Nn151aNXzlFTE1Xzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JQHjvpS4uXVMzkK6LNs2AjyCSUOjfgw4NjTttsJ1m9Y=;
 b=dtgOYEbdVrSeHF0WuHAxbfve7gVM8NBwyz+4kV7s+o2IaDkLCWtBTK7DxfOUHeTHcXqOd/BKnl1c/iAqQCq+2pGXKXefu1iIEAZunGQSEv0JdM9RD29DcJXOhKaJo5Ki2via1jMo6X1tKjNVoe9cXibqXuN0StiRhWVFQOeE4kU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7105.eurprd04.prod.outlook.com (10.186.130.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Wed, 12 Feb 2020 07:27:46 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.021; Wed, 12 Feb 2020
 07:27:45 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "aford173@gmail.com" <aford173@gmail.com>, "S.j. Wang"
 <shengjiu.wang@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Jun Li
 <jun.li@nxp.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] arm64: dts: imx8mm: Remove redundant interrupt-parent
 assignment
Thread-Topic: [PATCH] arm64: dts: imx8mm: Remove redundant interrupt-parent
 assignment
Thread-Index: AQHV4XW+E1g85qvwwEKMZu5ATHvRJagXKMkw
Date: Wed, 12 Feb 2020 07:27:45 +0000
Message-ID: <AM0PR04MB4481546EFDF5A53078F1A385881B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1581492049-23523-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1581492049-23523-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7dd5455e-a053-45ac-a87e-08d7af8d0e35
x-ms-traffictypediagnostic: AM0PR04MB7105:|AM0PR04MB7105:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB7105AEFDC34D12A1B25C4240881B0@AM0PR04MB7105.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(346002)(396003)(39860400002)(199004)(189003)(33656002)(4744005)(5660300002)(186003)(7416002)(4326008)(26005)(110136005)(316002)(52536014)(66946007)(66476007)(66556008)(81156014)(66446008)(64756008)(2906002)(81166006)(8676002)(76116006)(966005)(71200400001)(86362001)(7696005)(55016002)(8936002)(9686003)(6506007)(478600001)(44832011)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7105;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t0+OQICE8lNgQ3ANWLMGck8FQteOMnbhFzKaCqCYgGGkIlMWEPDg4AXpzcIpvbl6pOwcV4dFbQjHs/Fxi/fMuXE50EKeiupFzsqFD40PuCWSnyVzuvvK1cb6n9av7tSB73CTeVeAFUT4G4hov+YAZrXk192/zR9uh4X0ntArFpyPyl+gglzOr/i1nGmXhdIrLdI9ZRim1aZH7Z3LIW1kwPcdvFkfoapTbFgirPcKav+MQbCrkFDBJ9nSco6Z/rJVKuLG6DuKNDhRA0OBe9Z1GJh2F3EX+DRg142M5Z2xC5GDb5K2aPTMINZxbgrcGU5+dInbNBV5+vMkFfnGzw1msDt2sbZi0RQr6FndMwlX38OdhQJoh6AbTvmdzTv6s/socb1UsGnM8mxyuPDQqtDotFQWfJkFses/9Jp4bCDcVe9COjtPSj0MR/yxui21sDI5B4B34b0E73pZoUzeYgF54EYWHXq1BgDRjqUI88b59Cg1K8jIRCivB721AkrmZ2ojdqpQD/Z5dtwpFMMmNyOxaBhBI0TdZXOKQCuGV0GVQsvIiB25DMK9Bbio59soafe8qdDWka3DFtFqtUI4AnS927t0TyvkJHdn1tCS+J1xZlM=
x-ms-exchange-antispam-messagedata: q10M/HBMZD58S8tHxZXjcEi3NT1UA3jlFg8JxhguH5dL1Ix1WTuHNYeEaWMM+abIJT17Zn+IV7xBOEaQDxzfBqwtoF89kHgtL/72LwvNTx48lj3xlDbAVNHKr74B93JlxWTQc7WSmeTb3zBmZipbmQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dd5455e-a053-45ac-a87e-08d7af8d0e35
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2020 07:27:45.8642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j9uCVX2yn3iDL9SESThJ6Oe9QB4i/g3222IkfP6Wtb47KTCwc3NoqlGqKb+C9UkkoLecmIyPJ2JLi01CdTluNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_232752_143505_3B797784 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

> Subject: [PATCH] arm64: dts: imx8mm: Remove redundant interrupt-parent
> assignment

There is already a patch: https://patchwork.kernel.org/patch/11340613/

Thanks,
Peng.

> 
> GIC is assigned as interrupt-parent by default, no need to assign it again in
> ddr-pmu node, remove it.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 1e5e115..b3d0b29 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -896,7 +896,6 @@
>  		ddr-pmu@3d800000 {
>  			compatible = "fsl,imx8mm-ddr-pmu", "fsl,imx8m-ddr-pmu";
>  			reg = <0x3d800000 0x400000>;
> -			interrupt-parent = <&gic>;
>  			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  	};
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
