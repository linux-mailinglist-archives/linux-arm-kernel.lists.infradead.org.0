Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72C0A2CD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 04:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UgFNUqnUXmkDk/aJl6W+zS/9zuoQ+30MTjGGgLaeOBY=; b=sLa7lEgb9pyZT+
	c61IL5ePu6583787Y76CeRBDWZPFxhWCVdWMkwCVidpnfWLF3y7C1cUA+jFLBfcb4/42Bw5SimKHM
	bhdNwCA8j2AvPDZKRzbPDb1tBd7vjyWzsddKkMU8Q52+eqXUZ4vOvVDGwpeskEkylKzdBaahrSj8i
	s7CNjPWH5wxuHlzOgmKGVSE49HW9vmwHcNxA36A7ObsYpiTXDz1mqtzXTbeRa4zoGpuDMSqUJdUc3
	kh1+RvRM5OfX6WFx5xyd2ftFGtmOmmhJszo5w1LRmZ78HrByXHq2Bv9H/L7QrlMaGZsXMAivlx6+6
	ocxsyEdTLk4E4mC5ZQNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Wbv-0000V9-Go; Fri, 30 Aug 2019 02:25:59 +0000
Received: from mail-eopbgr140058.outbound.protection.outlook.com
 ([40.107.14.58] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Wbh-0000U4-Kc
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 02:25:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HS73P/9Grg272I/LAnvqn7ZnjvgkwRjDqIBAtz33udTtL5g1HY2ZsCaWLCCo98uxjwTB4hKarDsoIbBesQoOtJFt3wgYqTXWpk0L+bGvh/Lz45aJ5Uy74og2yE9b4jjSMrjsZgK5Y+dmj99zf/K2qZlWxJ9i09brIBcX7YlTxIvfKDbgdAtAuV69fR/DaHDZK1ma+XMoiQf4VgI0ecg5wBzMNsofCDAWjH1xyGLmzQGVx7IoYW4nIMurQ7DwfDUqwrZMzNvZzWqqNxhcW0vJiUdlvJaGoZwGRMQnixEWlpI6gEsbZkWIdpw+BRFNWZy/xAHP98OFanWLXr/wSZGtGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KohN8AGSzhrAautBR1dySztVsWlcMLcWFZyiBA4597I=;
 b=CjW5UY0cfsNhBfUPuOil4lomhGaMzBoBmYIxeb6DBHIHAgcNyeLPedmg6ebBA1OQYeVoA0R80C9I4RHm95X588Ml5sx+ZHRW13W6xBFvwzYPkzAywC4mwxMhlmq0IT20kIOUj8G04tOXg7tYdMelhNaRfJQK8Kp+MGsjiIkcQMyeuPp1V5kJ9EciCKpexonQvFeyNsDDfADjUM2ox3O/hYOLWIdtZPu82OziX2mKJW9VJjG4KN7aq6DqD2K/Gia4fDiRaNbDbMXcB5eRF2agL7/uriX674P8VRfgQ13aiBmpDUsyt6m0kcNECJLtt3I58tzpvzXq7y4vZjwt8LsPfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KohN8AGSzhrAautBR1dySztVsWlcMLcWFZyiBA4597I=;
 b=WcEbpjHRoIJ9MH0cYMmeh3B2ImA3Srp3PM9PS+pKnYlzgQwUdErh46kSl+BfrhY0t52RtG02zpkMI7CxOvN4n/9pJEmCxK2mDCpQeUJEK0QjVMH1oEJ91uHRFu3cE8gEM6HriEL6p1bzjtWBoIWUKHVUIoSPf4HRHlpGtNZTOJc=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB6863.eurprd04.prod.outlook.com (52.133.244.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.20; Fri, 30 Aug 2019 02:25:40 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::e039:172d:fe77:320a]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::e039:172d:fe77:320a%4]) with mapi id 15.20.2220.013; Fri, 30 Aug 2019
 02:25:40 +0000
From: Peter Chen <peter.chen@nxp.com>
To: =?iso-8859-1?Q?Thomas_Sch=E4fer?= <thomas.schaefer@kontron.com>
Subject: Re: [PATCH] ARM: dts: imx7: fix USB controller 'size' parameter
Thread-Topic: [PATCH] ARM: dts: imx7: fix USB controller 'size' parameter
Thread-Index: AQHVXoFWvyl/j3PqHU+yZINpJASVyqcS92qA
Date: Fri, 30 Aug 2019 02:25:40 +0000
Message-ID: <20190830022539.GA1146@b29397-desktop>
References: <20190829154913.2049-1-thomas.schaefer@kontron.com>
In-Reply-To: <20190829154913.2049-1-thomas.schaefer@kontron.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29f1562b-e650-4e32-ddd8-08d72cf159e7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6863; 
x-ms-traffictypediagnostic: VI1PR04MB6863:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6863BC43160B6A85311EE5C38BBD0@VI1PR04MB6863.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(39860400002)(396003)(376002)(366004)(346002)(136003)(189003)(199004)(25786009)(76176011)(99286004)(3846002)(6116002)(6916009)(8936002)(5660300002)(91956017)(76116006)(66066001)(71190400001)(71200400001)(64756008)(66476007)(66556008)(66946007)(229853002)(14454004)(53546011)(6506007)(102836004)(9686003)(6512007)(26005)(44832011)(186003)(8676002)(53936002)(66446008)(478600001)(81166006)(86362001)(6436002)(6486002)(4326008)(6246003)(316002)(256004)(486006)(33716001)(476003)(2906002)(33656002)(7736002)(446003)(11346002)(54906003)(81156014)(305945005)(1076003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6863;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EWsiI1g9aoxckmnFDm5GgZgaQXohZQrGj0g8kZNQ/UlgeOglTwfVnZhYMZ7yxlTB7TO96aTKElJkK0G6/pcHLQ86nxuc3yR+ip/XjQiRmE8DgTVUxdWOdoSPdZA4dJF1q4Oo7FLzl2UfKVbq4l8Q4fJqw6qiPSYSWWAluD6TyPgp56VtLnhpzKmyIB2tNfmdB0nREE3yALh2I8pOvurDxKqL1o2YYxoJhr2dW6I2QOOnMhU5eYXbLX/Ce3M3T+5mc7ZtaEN8G9UeaRjV9FRg62LZl5LICWyHNQUt81furLT6azV1hA2f6hcuzU9+saWMKTwtiiulu/8CBKcCeEhv3hoqc3REDugVabfwmGS4GR5jKaye5P4/Z+2vT+XulbgDySpMHYVoKMbrMjqX4FcFHNhsTTsSTC+4bDan7eLmAFA=
Content-ID: <6C06C22DCBE6A242BB6DA7E7E3FA9468@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29f1562b-e650-4e32-ddd8-08d72cf159e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 02:25:40.1356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I8CVl/XI4Zj91ooq6bIC+hQaoYi3lGQpui2/DZZ6dtj1G7/HmCytsjJQceMF3CYcmWwHjjSAruzEFxiDhLpfvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6863
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_192545_846684_E64F08EC 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-08-29 17:49:13, Thomas Schaefer wrote:
> Currently the size parameter in the reg property of usbotg and
> usbh nodes in imx7s and imx7d dts includes is set to 0x200 which
> is wrong for the i.MX7 CPU. According to reference manual, spacing
> of USB controller registers is 0x10000 instead.
> 
> This patch will fix this and set the 'size' to 0x10000.
> 
> Signed-off-by: Thomas Schaefer <thomas.schaefer@kontron.com>
> ---
>  arch/arm/boot/dts/imx7d.dtsi | 2 +-
>  arch/arm/boot/dts/imx7s.dtsi | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx7d.dtsi b/arch/arm/boot/dts/imx7d.dtsi
> index 42528d2812a2..f1b098d28b6e 100644
> --- a/arch/arm/boot/dts/imx7d.dtsi
> +++ b/arch/arm/boot/dts/imx7d.dtsi
> @@ -117,7 +117,7 @@
>  &aips3 {
>  	usbotg2: usb@30b20000 {
>  		compatible = "fsl,imx7d-usb", "fsl,imx27-usb";
> -		reg = <0x30b20000 0x200>;
> +		reg = <0x30b20000 0x10000>;
>  		interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
>  		clocks = <&clks IMX7D_USB_CTRL_CLK>;
>  		fsl,usbphy = <&usbphynop2>;
> diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
> index c1a4fff5ceda..9e25fccf33f0 100644
> --- a/arch/arm/boot/dts/imx7s.dtsi
> +++ b/arch/arm/boot/dts/imx7s.dtsi
> @@ -1088,7 +1088,7 @@
>  
>  			usbotg1: usb@30b10000 {
>  				compatible = "fsl,imx7d-usb", "fsl,imx27-usb";
> -				reg = <0x30b10000 0x200>;
> +				reg = <0x30b10000 0x10000>;
>  				interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX7D_USB_CTRL_CLK>;
>  				fsl,usbphy = <&usbphynop1>;
> @@ -1099,7 +1099,7 @@
>  
>  			usbh: usb@30b30000 {
>  				compatible = "fsl,imx7d-usb", "fsl,imx27-usb";
> -				reg = <0x30b30000 0x200>;
> +				reg = <0x30b30000 0x10000>;
>  				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX7D_USB_CTRL_CLK>;
>  				fsl,usbphy = <&usbphynop3>;

Hi Thomos,

The core controller range is 0x200, from offset 0x200, it is
non-core register, which is used by usbmisc. Fabio said you
met problem at u-boot for this size, what's the problem about
it?

Thanks,
Peter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
