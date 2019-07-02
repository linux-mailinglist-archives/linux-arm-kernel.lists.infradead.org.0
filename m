Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D43C5CEAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 13:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGUEUuMNJgxsAirxInsxoHa7iEjXvVWxImre213KeiY=; b=WyFIBKmyBst30V
	2QdwCnA1ni3vB23P7PavVVnbi93Qy2Sl2+rwvKzluO8mJe2V1DCspluWtm59WuheLRtTiIBTyRCUH
	1pT/z5v+bb0ClnFZM7a2KuMUO/XZyevTnx8Mh62KeNpoalFnJUIJmlikdAVTNGkMjNWiAcg7pS50D
	xCKdeF3tlEfrPAzsQf1FQz5QOXXfD20dE9rt1jrOUwhWmuoGnz6YSGlhKJptAo3QsgcpH/La1oj+b
	pfAOqjq8vKaW9l9V3jEUy2FaaPruccRf1aTZvNVeQbPCKBSO7HgNE2N8AeYKe4wHylG0kuzpT7aGy
	h6pugS4oHFZuyPV+8zFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiHEW-0006LB-MK; Tue, 02 Jul 2019 11:46:00 +0000
Received: from mail-eopbgr40056.outbound.protection.outlook.com ([40.107.4.56]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiHEJ-0006Kd-U0
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 11:45:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hl2hrmuB6iUCeVR3BZgMfhCmzZ47paNqJX57ARDY4Ho=;
 b=Q0B5Du3x8UKq+29h450EpdpA1Lbj7OlvjMWztPRp1cBmtCMzddBLsOCq2lnqB7xaGaDUezPdCtigGYMD1j9apkVUXyo74YeHnkitNOW1X6tMWgwij8LpwHj5F/m4jD0OvsiXlczeBpd36TUacGJxvhrpjZAjG0J1LEZicrq1GLo=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5732.eurprd04.prod.outlook.com (20.178.117.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 2 Jul 2019 11:45:43 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367%7]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 11:45:43 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Andra Danciu <andradanciu1997@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mq: Add sai6 node
Thread-Topic: [PATCH] arm64: dts: imx8mq: Add sai6 node
Thread-Index: AQHVMMsRKx0kk913gkG41z6iIMo/Oaa3NcQA
Date: Tue, 2 Jul 2019 11:45:43 +0000
Message-ID: <20190702114542.2eoc6nm2kyhode43@fsr-ub1664-175>
References: <20190702114102.1254-1-andradanciu1997@gmail.com>
In-Reply-To: <20190702114102.1254-1-andradanciu1997@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b065002-f472-4adc-06ee-08d6fee2d0a7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5732; 
x-ms-traffictypediagnostic: AM0PR04MB5732:
x-microsoft-antispam-prvs: <AM0PR04MB573244E413686D540A52B719F6F80@AM0PR04MB5732.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:81;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(376002)(136003)(39860400002)(396003)(366004)(346002)(199004)(189003)(66556008)(66946007)(73956011)(68736007)(6116002)(3846002)(66476007)(91956017)(64756008)(66446008)(86362001)(5660300002)(478600001)(66066001)(305945005)(7736002)(1411001)(81166006)(76116006)(4326008)(81156014)(25786009)(8936002)(26005)(6486002)(76176011)(446003)(11346002)(44832011)(6512007)(9686003)(14454004)(256004)(486006)(53936002)(7416002)(102836004)(14444005)(53546011)(2906002)(476003)(54906003)(6506007)(8676002)(33716001)(229853002)(71190400001)(71200400001)(316002)(6436002)(1076003)(99286004)(6916009)(6246003)(186003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5732;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AZlKDosgEzmi1eL4BssCxys0i8851aJr70pwgxuLYY0/RJO7se9yCNwoq/TQLmcIOTh9pUsBDCpusCKFvGnNNgyiW3HKpq2C0UEZbSm9/rOhfgetHyd6Ttv+eZ7Fl4HaybXeJJX23iBOYFvjraIP5n379O2j8WoiThobKOdiNoLVVf+Q81nr6fnOkTa4to+3HbN10KKcnTyMtSuo4pmYCdncVPC9Rgi5RtKaQzztUGJ8D+tphwaCF3Tga6BN5X0LmWb4IbfQ5QIkL6nx87pvTG8vN+NtHr88R31ZcyIlols4nnsPhSZDUWIibydBBBlYTc6OyZk5hoZr8jXRs6Sjr9W7BKaygXbauegC9HIb0PbrBhKBhxqk5NqoSX/yAe9RzzJUiOyudLnhec5ROXCPdiEaW/hzZKUwP+IdZoSvSC8=
Content-ID: <F3B412D4A179564BBCAB6261F2913C80@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b065002-f472-4adc-06ee-08d6fee2d0a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 11:45:43.5205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5732
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_044547_971145_13280796 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-07-02 14:41:02, Andra Danciu wrote:

Missing commit message here. Please add one.

> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index d09b808eff87..1ff664523f56 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -278,6 +278,20 @@
>  			#size-cells = <1>;
>  			ranges = <0x30000000 0x30000000 0x400000>;
>  
> +			sai6: sai@30030000 {
> +				compatible = "fsl,imx8mq-sai",
> +					"fsl,imx6sx-sai";
> +				reg = <0x30030000 0x10000>;
> +				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MQ_CLK_SAI6_IPG>,
> +					<&clk IMX8MQ_CLK_SAI6_ROOT>,
> +					<&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
> +				clock-names = "bus", "mclk1", "mclk2", "mclk3";
> +				dmas = <&sdma2 4 24 0>, <&sdma2 5 24 0>;
> +				dma-names = "rx", "tx";
> +				status = "disabled";
> +			};
> +
>  			gpio1: gpio@30200000 {
>  				compatible = "fsl,imx8mq-gpio", "fsl,imx35-gpio";
>  				reg = <0x30200000 0x10000>;
> -- 
> 2.11.0
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
