Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937565518C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Kdsg0AM0dvrPlfwpLENO88Odc9QWg8D/qAIz3NaXjmI=; b=DMEHfBeALWm/6Q
	5c3LWVwOK+JefqQOD8yIsIZdvZIFDiMTEm79k7EE04WqYAxaVj3Gi1iLXtnQ5EYE673z1sJZcMed6
	ZMBtvkAsSpRl4TNv4maUeVN6jEdtt2wxVQfa2Cj3YPY8C8X8OkxVh3YKJzeRHmjsg8CedFxdNWOiv
	YcxAGKvkJMQg0VCs/SAw4Nkgqyk7pSU11Z5YO2mc0hL0QQx7R5oSCXi3fwBOot3a9rBRR+fd5cz7u
	lGpJO5Txbfxrr+vgsBFR+zLQmd+H88jsul1YEcpC5lbj1dqDMzevfqlxrYhwrCCTQSDoXrltwnGeC
	2mAyoMWTdiEozYt5t70Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmLe-0000fm-NG; Tue, 25 Jun 2019 14:23:02 +0000
Received: from mail-eopbgr70084.outbound.protection.outlook.com ([40.107.7.84]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmKj-00006t-Gk
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:22:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vyjNARllyvJSmD8LmaYeP4Xkh6ob0o5S2vQ5dg9Y3fk=;
 b=Ylmwq1gSB0exWozTN+z8I7q6cNSPhy2BpVivVl0wPnFGjOmXOvGDcANfiKkcTQ6oobXsI+QEPOt9kqanVL1rsB352GRxnVPwqdOxerLakJgPYiIYhJNUwXbdGiTmRqylpsh03WcRazMd95e5mkhIQsljTYTtygQVQEfiDTknl+E=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB6976.eurprd04.prod.outlook.com (52.133.246.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 14:22:00 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::d83:14c4:dedb:213b]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::d83:14c4:dedb:213b%5]) with mapi id 15.20.2008.014; Tue, 25 Jun 2019
 14:22:00 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Fabio
 Estevam <fabio.estevam@nxp.com>, Stephen Boyd <sboyd@kernel.org>, Jacky Bai
 <ping.bai@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mq: Init rates and parents configs for
 clocks
Thread-Topic: [PATCH] arm64: dts: imx8mq: Init rates and parents configs for
 clocks
Thread-Index: AQHVK1SzBLyg7yu1NUGWmKUxLWsOPA==
Date: Tue, 25 Jun 2019 14:22:00 +0000
Message-ID: <VI1PR04MB50550ACBAEA73FD7B5A97DD8EEE30@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <1561467081-25701-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9626825-8f06-44b0-7087-08d6f9787cd5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6976; 
x-ms-traffictypediagnostic: VI1PR04MB6976:
x-microsoft-antispam-prvs: <VI1PR04MB6976E904E8DE81270D21A23EEEE30@VI1PR04MB6976.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(39860400002)(396003)(366004)(189003)(199004)(6246003)(52536014)(305945005)(316002)(6436002)(66066001)(6116002)(74316002)(102836004)(25786009)(76176011)(110136005)(55016002)(68736007)(7696005)(54906003)(8936002)(26005)(9686003)(14454004)(4326008)(7416002)(229853002)(256004)(2906002)(86362001)(8676002)(81166006)(53546011)(478600001)(186003)(7736002)(5660300002)(44832011)(81156014)(53936002)(33656002)(6506007)(486006)(73956011)(476003)(71200400001)(71190400001)(99286004)(6636002)(66946007)(64756008)(76116006)(66446008)(446003)(91956017)(66476007)(66556008)(3846002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6976;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PIfCXF/oVmzJipsl0N3MIYOBzh0g6iyev9ly/P3+S35VF05jkHe5tPph02rXbps9LMzjxJBXI1tOcgUMo+NpaOG0F58tgGWUPhtvlHu+AVwFkfWpSwjmNWSMne+wDO3Te2xlnCyOqdEsONUgdcnlDVaADv/E51Vq1sysCTofODXS4CzI6pH5zWJmT3cOrxWp//xCHRZN/9Nu2aLESCu/ITfER8l5wcsq+obvH4Vg8OvCF6jOXJY8/WW+PNYK8jcUhfS3fPw+OMvLtEbvNeDBHMkawJaRhAGVj6iRR9SGXoDfKd2w0I+0oxFOJ2Ef7tLBnoa/uHX8Zfpkf87Q8Qi5ztCHJme/cdlSTCXbp58OD4JFabKT2S4p1LtSo0Akytfa6VMGVnn0zAHv4ISeUMeUL3Ohu3cSYgeE/KQg4F+YunU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9626825-8f06-44b0-7087-08d6f9787cd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 14:22:00.4818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6976
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_072205_915948_0D2473F2 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25.06.2019 15:51, Abel Vesa wrote:
> Add the initial configuration for clocks that need default parent and rate
> setting. This is based on the vendor tree clock provider parents and rates
> configuration except this is doing the setup in dts rather then using clock
> consumer API in a clock provider driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>   arch/arm64/boot/dts/freescale/imx8mq.dtsi | 34 +++++++++++++++++++++++++++++++
>   1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index d09b808..e0abe02 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -489,6 +489,40 @@

> +					<&clk IMX8MQ_CLK_PCIE1_CTRL>,
> +					<&clk IMX8MQ_CLK_PCIE1_PHY>,
> +					<&clk IMX8MQ_CLK_PCIE2_CTRL>,
> +					<&clk IMX8MQ_CLK_PCIE2_PHY>,
> +					<&clk IMX8MQ_CLK_CSI1_CORE>,
> +					<&clk IMX8MQ_CLK_CSI1_PHY_REF>,
> +					<&clk IMX8MQ_CLK_CSI1_ESC>,
> +					<&clk IMX8MQ_CLK_CSI2_CORE>,
> +					<&clk IMX8MQ_CLK_CSI2_PHY_REF>,
> +					<&clk IMX8MQ_CLK_CSI2_ESC>;

This stuff (and NAND) looks like it would belong to device nodes instead.

The rest seem fine though I'm not sure why exactly those clks are 
adjusted in vendor tree.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
