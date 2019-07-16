Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E83C66AC53
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edvGrnhD48r5ChV7GFrVIGC+H8vMUHQ8JjjGqUhGtGQ=; b=QgNBITtS3yCO6O
	3V0TrpPibxF+Dpw6TbBZ/+LTgNKfqhKiI6EPQh97weuQ8ADD5dJB8BhGR+Nb+jPrwc0ip21t0JFYa
	RnII/YhLpuHAbJVgUkRYQmXer6k4EERtV7gIFfd86ljMcCoNFbPA9xOqlpljGn2xnDji7oxEuZyQj
	pcTT3SEz+ZIpHQ8O9abW3mvCVgFeznE6BIwM30vDAL3lCk7G+JV7m9DP/xYEGbj9pMp2epDl780e9
	lUZ3Wv2R1CaFnP7PCb+YMTD49qGhb+H0mqQy3VdJwzGH7IFy0xOcq0hjIr0LQJVF/6tbMz+U+/FGB
	7QBJFnO/jYLBPnxL6mgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPp5-0000NN-6y; Tue, 16 Jul 2019 15:56:59 +0000
Received: from mail-eopbgr60052.outbound.protection.outlook.com ([40.107.6.52]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPoo-0000Lm-JD
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:56:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DAuI2trbB3d1P6LYlVUpHetKMnMP0U7iuVlJGK6i7D3DlCYVJI3sELbsPcbCkesqJah7OBGSP21rmF2KWmIlhTr/aQQtN37LTUHvep8+hB55rdFgQIH2GxGsiVnydxEn/C0BBh5fkw9waAfNUblsRjVDUkCkZphyknc1/4NUeM2ZujqlpH89E3KYauVnvIZVRvh9yv6Y9BCizeUGAwnSGkGj5PL/HcZ/bzAH5CDAkqveoBFd4o7Uz1VIcJHjpKhP/oNJLgEhC47YJMMOfjGL3KkEjcUfEfj59kXlGEgtzV+K0L76a833RBSlKOJKfWv1+HPPIHx5lJIvQLC2sGL9eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ywGvV+t7k22wn1xP48Sp7ZG0+KLPW+DDwAavQUFlOfA=;
 b=Q1+UVveWLcyqRy7K6tzIA5jZWXOSdXOqzQLHjyCsPCCAlsRe/EEH5as7LrErxceppkBwVZQrQOsLu0d2W84V8LUs6qGJanzzAvO89hRBVrDodnqxfMP6TfV8NuXwm7A0vUknl8v3RuUWdfe7uBT1A6fmqiMirkXJNQ0xuLWwGdw3Chi8Xu9W3EYD2sJNhcbLM2hZt5tWImcO+Dabl3gSy9TFDPJblzzMH9t9j9YjSdlGCgGB6gRIEfSKTNbamg6bvVmi0KqTY3PCz43rnrDIUf9QIXkn8ZzfDjb1q3JIj7HFdlGHup67KNqWur2Fi0QPA04ee0paUleGqTmCmTtmzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ywGvV+t7k22wn1xP48Sp7ZG0+KLPW+DDwAavQUFlOfA=;
 b=V89KuaLjosyBmSJcCdEs2M9Czf7I4vbNW6TKCEQYYNPNGXO78v8YAQysn4TpH39nqzHD2lLzRy6qKiKMOIRS5QUVcy1cFhwrJ+z3XavvAQ+32AJLfOBgdQ/hbwDwJqwSW1FG99jCpnXbEGh3S1r1X14r5iROy05SoDPOh+y3qqE=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4756.eurprd04.prod.outlook.com (20.177.40.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Tue, 16 Jul 2019 15:56:39 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Tue, 16 Jul 2019
 15:56:39 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Rob Herring <robh@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: RE: [PATCH V2 1/2] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
Thread-Topic: [PATCH V2 1/2] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
Thread-Index: AQHVAVBb7f0cb5nI7Uu+7uASdidwZ6ZZfT8AgADmL2CABZgoAIAAo1zAgAjJzwCADGzqsIAPXaMAgEiio0A=
Date: Tue, 16 Jul 2019 15:56:39 +0000
Message-ID: <AM0PR04MB4211138D41AE98AC2E0B46D780CE0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1556846821-8581-1-git-send-email-aisheng.dong@nxp.com>
 <1556846821-8581-2-git-send-email-aisheng.dong@nxp.com>
 <CAL_JsqLJ+Lc_3huQizy4BVFgVV94Yg8KsOOgXLv4dQU8H=WfWw@mail.gmail.com>
 <AM0PR04MB4211B2F21350CAE370D7A93780360@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <CAL_JsqLNRnYxUGyhpiL2OFxOT1wXZH2LG4XUH7qf14TpA5Dk=A@mail.gmail.com>
 <AM0PR04MB421180CD45226B30082BDE4D80320@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <20190513180004.GA26344@bogus>
 <AM0PR04MB4211C4F27C9D1DEC29B1600E80070@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <AM0PR04MB421104C260EE55FD8016656480140@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB421104C260EE55FD8016656480140@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7418bc86-5677-4906-e1e5-08d70a063084
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4756; 
x-ms-traffictypediagnostic: AM0PR04MB4756:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB4756961B0DF2B954ACD82DEE80CE0@AM0PR04MB4756.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(136003)(376002)(396003)(199004)(52314003)(189003)(86362001)(7696005)(76176011)(478600001)(68736007)(6436002)(74316002)(229853002)(81166006)(81156014)(66066001)(26005)(486006)(7736002)(25786009)(6506007)(54906003)(8936002)(53546011)(966005)(305945005)(102836004)(316002)(186003)(44832011)(2906002)(4326008)(3846002)(6246003)(6116002)(446003)(6306002)(14444005)(11346002)(256004)(476003)(53936002)(9686003)(8676002)(66946007)(66446008)(66476007)(66556008)(64756008)(33656002)(71190400001)(5660300002)(55016002)(71200400001)(99286004)(52536014)(14454004)(110136005)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4756;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Yo5vkJqjS6wgSLgtDxD9aQbC3ISATyCQBmJ63hD1Ck+pZoU3Zl0Eetsp40X/RMkPNUBHfoUk2N1nVS8A79TxoO58rMsBxM8howcMZZGNQu48P9KAwQMg03MsW+JfTrF/M4V1R390fz7GA8hKHqlTI7QOlVttpOydFNb2Lfc2OnKbIW6zunJdCPNCHn5Zj56xLOouW5sb+oxt6s7dpsbmvzMJwhGOomlzKkhQmDtt+WWLQO6ejvOIcE2XOGdDPw5DFUajAifMjBb6Aw7jPW2Mos+k9k5dqn2OXfpH5AOPms1XOyE4EVf+4eaNA4loLGwZtY+JImPuPaCeCckp6XDukO8LEqOtcRG0SVWP9h+dZoqXU0cwn9f5G0JpUMnp1vhSoEKlLxXPZulhTmhxahb0Q/4/SPbrr9kobPT3/Jux7xU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7418bc86-5677-4906-e1e5-08d70a063084
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 15:56:39.4961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_085642_869708_F7C22B39 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Would you help check the new patch series I just sent?
[v3,00/11] clk: imx8: add new clock binding for better pm support
https://patchwork.kernel.org/cover/11046287/

The former solution you suggested seems can't work as it lost the ability
to set parents for each individual clocks within the same hardware subsystems.

And seems both Stephen & You may not quite like the per node clock in DT for SCU
clocks, In order to not stuck at here, I totally removed the SCU clock nodes in DT,
Instead, we still define those SCU clocks in driver but changed to two cells binding
which is more close to hardware (SW Clock IDs are removed) and can handle
above issues.

And we also need some tricks in driver to handle the required power domains
and Clock availability for different partition configuration, as well as 
clock state save& restore.

The patch series has been pending for quite a few months.
So it would be really appreciated if you can help review and provide some
advices.

Note: for DT patches which may help the understanding, please refer to:
[v2,00/15] arm64: dts: imx8: architecture improvement and adding imx8qm support
https://patchwork.kernel.org/cover/11046341/

Regards
Dong Aisheng

> From: Aisheng Dong
> Sent: Tuesday, June 4, 2019 12:50 AM
> Subject: RE: [PATCH V2 1/2] dt-bindings: firmware: imx-scu: new binding to
> parse clocks from device tree
> 
> Hi Rob,
> 
> Would you help check my reply and offer some suggestions?
> We're a bit lost on what to do and being blocked here for a long time which
> affects all the following MX8QM/QXP upstreaming works.
> 
> We really need your help to clarify how to move forward.
> If any more information need me to provide, feel free to let me know.
> 
> Thanks a lot in advance!
> 
> Regards
> Dong Aisheng
> 
> > From: Aisheng Dong
> > Sent: Wednesday, May 22, 2019 1:57 AM
> > Hi Rob,
> >
> > [...]
> >
> > > > > > For SCU based platforms, the resource availability (e.g.
> > > > > > device/clocks/power) are configurable by SCU firmware
> > > > > > according to the
> > > > > different SW execution partition configuration.
> > > > > > e.g. According to customer's requirements, we may allocate
> > > > > > some resources to M4 partition like some I2C, CAN, audio
> > > > > > resources which can't be
> > > > > accessed by A core.
> > > > > > And we may allocate even more for virtual machines running at
> > > > > > another CPU
> > > > > core.
> > > > > > Thus, defining all the clock sources (fixed) in device tree
> > > > > > for A core seems to be a little bit meaningless and it also
> > > > > > causes us hard to extend for a
> > > > > new SoC.
> > > > >
> > > > > I'm not suggesting that. It's really just re-arranging all the
> > > > > same data from a bunch of child nodes to a single node. Granted,
> > > > > it may be easier to add/delete nodes than add/delete elements
> > > > > from an array of property values, but really that's just a
> > > > > tooling problem
> > > > >
> > > >
> > > > Okay, understood.
> > > > So it seems we could still have a separate clock controller node
> > > > for each SS but merge all the same data of child nodes data into it.
> > > >
> > > > However, we still have one concern.
> > > > Taking MX8QXP DMA SS as example, with one node description, it may
> > > > be something like below:
> > > > dma_scu_clk: dma-scu-clock-controller {
> > > >         compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-clk";
> > > >         #clock-cells = <1>;
> > > >         clock-indices = <IMX_SCU_CLK_ID(IMX_SC_R_ADC_0,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_CAN_0,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_FTM_0,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_FTM_1,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_I2C_0,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_I2C_1,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_I2C_2,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_I2C_3,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_LCD_0,
> > > IMX_SC_PM_CLK_PER)>,
> > > >
> <IMX_SCU_CLK_ID(IMX_SC_R_LCD_0_PWM_0,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_SPI_0,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_SPI_1,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_SPI_2,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_SPI_3,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_UART_0,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_UART_1,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_UART_2,
> > > IMX_SC_PM_CLK_PER)>,
> > > >                         <IMX_SCU_CLK_ID(IMX_SC_R_UART_3,
> > > IMX_SC_PM_CLK_PER)>;
> > > >         clock-output-names = "adc0_clk",
> > > >                              "can0_clk",
> > > >                              "ftm0_clk",
> > > >                              "ftm1_clk",
> > > >                              "i2c0_clk",
> > > >                              "i2c1_clk",
> > > >                              "i2c2_clk",
> > > >                              "i2c3_clk",
> > > >                              "lcd0_clk",
> > > >                              "lcd0_pwm0_clk",
> > > >                              "spi0_clk",
> > > >                              "spi1_clk",
> > > >                              "spi2_clk",
> > > >                              "spi3_clk",
> > > >                              "uart0_clk",
> > > >                              "uart1_clk",
> > > >                              "uart2_clk",
> > > >                              "uart3_clk";
> > > >         power-domains = <&pd IMX_SC_R_ADC_0>,
> > > >                         <&pd IMX_SC_R_CAN_0>,
> > > >                         <&pd IMX_SC_R_FTM_0>,
> > > >                         <&pd IMX_SC_R_FTM_1>,
> > > >                         <&pd IMX_SC_R_I2C_0>,
> > > >                         <&pd IMX_SC_R_I2C_1>,
> > > >                         <&pd IMX_SC_R_I2C_2>,
> > > >                         <&pd IMX_SC_R_I2C_3>,
> > > >                         <&pd IMX_SC_R_LCD_0>,
> > > >                         <&pd IMX_SC_R_LCD_0_PWM_0>,
> > > >                         <&pd IMX_SC_R_SPI_0>,
> > > >                         <&pd IMX_SC_R_SPI_1>,
> > > >                         <&pd IMX_SC_R_SPI_2>,
> > > >                         <&pd IMX_SC_R_SPI_3>,
> > > >                         <&pd IMX_SC_R_UART_0>,
> > > >                         <&pd IMX_SC_R_UART_1>,
> > > >                         <&pd IMX_SC_R_UART_2>,
> > > >                         <&pd IMX_SC_R_UART_3>; };
> > > >
> > > > For MX8QM, even if we have one more UART_4, then we still have to
> > > > write all the same things again with an extra UART_4. It seems
> > > > it's a bit violate our design that using a shared one and do
> > > > incremental changes for
> > > new SoCs.
> > > > Do you think if this is acceptable to you?
> > >
> > > Yes, as it should be a one time thing to do per SoC.
> > >
> >
> > I found we may still can't use this new way after giving a try.
> > One know issue is that it can't support clock parent setting well with
> > this binding If merged all sub clocks into a single node.
> > Hard to describe parent clocks for each clock within the same big array.
> >
> > For example in MX8 ADMA SS, there're another LCD PLL which can be
> > optional parent clocks to others peripherals.
> > If we list them all in the same array, we can't describe LCD
> > baud/pixel clock parents.
> > dma_scu_clk: dma-scu-clock-controller {
> >         compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-clk";
> >         #clock-cells = <1>;
> >         clock-indices = <SC_R_ELCDIF_PLL IMX_SC_PM_CLK_PLL>,
> >                         <SC_R_LCD_0 IMX_SC_PM_CLK_PER>,
> /*
> > lcd baud */
> >                         <SC_R_LCD_0 IMX_SC_PM_CLK_SLV_BUS>,
> /*
> > Pixel Link */
> >                         ...
> >         clock-output-names = "lcdif_pll",
> >                              "lcdif_baud_clk",
> >                              "lcdif_pixel_clk",
> >                                 ...
> >         power-domains = <&pd IMX_SC_R_LCD_0>,
> >                         <&pd IMX_SC_R_LCD_0>,
> >                         <&pd IMX_SC_R_LCD_0>,
> >                         ...
> > };
> >
> > And other peripherals might have different parents within the same array.
> >
> > The old way does not have this issue because it's capable of
> > configuring parents respectively for each sub clocks.
> > /* SCU clocks */
> > dma_scu_clk: clock-controller-scu-dma {
> >         #address-cells = <1>;
> >         #size-cells = <0>;
> >
> >         lcd_pll: clock-scu@323 {
> >                 reg = <323>;
> >                 #clock-cells = <1>;
> >                 clock-indices = <IMX_SC_PM_CLK_PLL>;
> >                 clock-output-names = "lcd_pll";
> >                 power-domains = <&pd IMX_SC_R_ELCDIF_PLL>;
> >         };
> >
> >         lcd0_clk: clock-scu@187 {
> >                 reg = <187>;
> >                 #clock-cells = <1>;
> >                 /* parent clocks should match HW programing order */
> >                 clocks = <&dummy_clk &dummy_clk &dummy_clk
> &dummy_clk
> > &lcd_pll>;
> >                 clock-indices = <IMX_SC_PM_CLK_PER>;
> >                 clock-output-names = "lcd0_clk";
> >                 power-domains = <&pd IMX_SC_R_LCD_0>;
> >         };
> >         ...
> > };
> >
> > I double checked other SS like Audio, DC, MIPI, PI which have the same issue.
> > I really don't know if there will be a way out if using the one single node way.
> > And I'm also a bit worrying whether it may cause more issues due to
> > its losing of the flexibility and causes potential issues.
> >
> > Do you think if we can still go back to the old way which is proposed
> > In this patch set?
> > As it can perfectly meet our requirements and also ease the driver
> > implementation.
> >
> > Hope you can help shed some lights as we're pending on it for a long time.
> >
> > Regards
> > Dong Aisheng
> >
> > > > But if describe them per nodes, we do not have such issue.
> > > >
> > > > Anyway, please tell me your choice, then I will follow.
> > > >
> > > > BTW, I don't know how a tool can address this issue.
> > >
> > > I meant you could write one that understands the binding. It's a bit
> > > more complicated having to parse and update properties compared to
> > > adding or removing nodes, but it can still be done.
> > >
> > > Rob
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
