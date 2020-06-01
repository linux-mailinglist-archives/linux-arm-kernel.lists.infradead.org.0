Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907A51E9FD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:09:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7eRWjp0A71KEmxip0Wmmf3koi9hKF4PvFQmBY81sj0=; b=k1rQQcL+p5MXgf
	NqNdxAT+1A5aWAA1uLjUnVMAbWghbvBk8UtV3/2DToWHSGcsv4gRoRpLUybIF7+oD0r9FZCpHHQjg
	4A8/bpkZLkY/BbTClhzPy6elGklRTknxGvNT6/H7dNbxvNUb1om4Eox6DgSL+dPf7PMv/ojWDnGTc
	LRUyKBcw3bklX5DLIxCICiy/UBbRemXN6V6n9HBr7Rkf+us/hBa7ehoQKpmKu+c7bGmx2avIzC7YI
	WzFf/tsN+t79EQfv1SsVZ+rjJKLUzTLGhVvtTQBv9q7xonRiTmf83cfefnsfmO1S8y88qDCRWqnbM
	GT7dbtWoUS1CZSILQIbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffVP-0003Y0-WB; Mon, 01 Jun 2020 08:09:12 +0000
Received: from mail-eopbgr40080.outbound.protection.outlook.com ([40.107.4.80]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffVI-0003VO-M4
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:09:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YY1/R9SyFN0ogSIZ1DagZ9bhbohyw1AoeZ53n3S9JS8XlB2tt6NbJnpdKYzUD0sIhJB9E3EIyDsOLbL+2c9P2BY0ZjZCAhJBlIBs+5A2GFvE4WE1CDKf94UJ+AgaPJVkK5S3JBdfUl5ZUETyD92fFp7wbwkGRfUdJ0Bz0nt5Ml1g8G8pzs6M6FjKpFpwdW2Lh8x5muZFhl5QG9XxCzZWedt6nub6W5B+ZvBh6P7OLA+3ENSZyA/LnDgF1wxjWNd4/tLuknnY/vxNFocifImIfv1cTPBUFbXWlxhTC/+AdJsup42wq/BE3hbEq3uf247pi14fsZbbdMfPKuBID5QbAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yLH+A42FS0OPEIPuU6wp0aERKfq2jRKIs7Fn9tBTzrU=;
 b=L28CkOsY2RWzlFlJpOJHQpeJfwKZ1980mMey0T1qBW3u8liasY5TJv82YKEwERqgXRSLF7TE1BkMGRH+AgE5LhBvujbP/nPSZTaTl2I2qPDuITniSrKmWD+G50OpRaZoNSWM/rqOsI/aRS8zY7w6X2VQkx6HS4rC+qfcYjp57UH5Uviya3r5cRCSPlwJXGDUubC9c9eSA3U/BR655r+bHNCHzjpECrs7TpBRzpx92SOERXZE7QjsiVDB6BugZkDmYlbX1A9yjWDo1FdBGYA2nfYUJQrhC4aSsXMM0mKDtELwP9Cp0MYsMB0BiueyZqCFkALp57nhDi6LQaOQVOWI1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yLH+A42FS0OPEIPuU6wp0aERKfq2jRKIs7Fn9tBTzrU=;
 b=csXAdiS8OzftaJq79YRVOtQUouZOO9vyQ1JmXmKgE2S3TsZSjYTKRC7R07NUDPbYEEL5AuMjJS9bMqlOd1LvWSbkw6RPENaqWWoBwN87/LljdsnsgJ/xTIX6VLkepZh6Tm4WpQNKAXnnVLnMHdr08XjDg5ejtf1xNTa5Lc5n/hM=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2840.eurprd04.prod.outlook.com (2603:10a6:4:97::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Mon, 1 Jun
 2020 08:08:57 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 08:08:57 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "jaswinder.singh@linaro.org" <jaswinder.singh@linaro.org>
Subject: RE: [PATCH V2 2/3] arm64: dts: imx8m: add mu node
Thread-Topic: [PATCH V2 2/3] arm64: dts: imx8m: add mu node
Thread-Index: AQHWN8hFGz5776OGQUKrXwfiifS9rqjDYg0AgAAGECA=
Date: Mon, 1 Jun 2020 08:08:57 +0000
Message-ID: <DB6PR0402MB27602E846BCFAA5A427B249E888A0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1590982999-7149-1-git-send-email-peng.fan@nxp.com>
 <1590982999-7149-3-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB496620ABEA09A0571B42A9B4808A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB496620ABEA09A0571B42A9B4808A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6d2fddf7-d0e1-45b2-3039-08d80603089a
x-ms-traffictypediagnostic: DB6PR0402MB2840:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2840AACE996748A08463EB0C888A0@DB6PR0402MB2840.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:983;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xNslZA+mAtqxxriXl+yRR5NK6QVDPRLt91sx6QAkTAAxLyqPGtVMJ4z8eEN0bcTRcLPiOkErzJ/5dd2l/vY6rvIiXY717+hn57OX5r1hiJO60cziOij6aW9FvOjEBSk5KNRm4lsbq3+eJjFE5kieE3VLYpHhDv4dzuQ+vKb8sx4cMh9zYrgG+mUEDcA1EAJmh+xj4Gm0r9vjkf2abRMvAEmtbjFPo3+6N0SS4QjVYjcja8uQfE6f32LujynROepwUsY48pDzkVv8c3rUojUFQikfTitOxwlcbJxePwHc7AQloWwpCKVswgAx2xk+pWjZXsGyATES7ZUJo3pXQZ6qQ23SVw+KkLBzZTG+PBUALqCRgg+lP5RIbZH2TZ936Q6LxtqN+55xNSsI3qIn6qbo5FbFmikQ8oaqqeQVpr63v3rmndDSQ2tYOg8dE5Jj8sCf99DGCVz6klxPaGhxbGeTKg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(39860400002)(376002)(136003)(366004)(76116006)(66476007)(64756008)(66946007)(66556008)(186003)(110136005)(2906002)(7416002)(66446008)(71200400001)(26005)(54906003)(5660300002)(6506007)(7696005)(8676002)(316002)(44832011)(8936002)(52536014)(9686003)(55016002)(33656002)(83380400001)(4326008)(478600001)(966005)(86362001)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: /CZRTp6iLhNuj5J7LrZVdPjLD9TCuXy5xlB0Zi/OqWQRr0DDhAcsHvhit/4yNt4ItOvzgPrcaNBhuaQsrDjLnr1S8z8RQWTxI7nOLY4nrJckzuulh4VswmYqVb5KfoDUN4n/NjLAx8GNMAD7xShSigPlYAXlZqgvK5BtYF+8CsAua9I0uORccRtRKrW6FAnKH2e+cUjEaC9BxVDhg28w30Bz00Sp+BUkPqfO2+N/Bzxz+Ciwmxw3hEnXJ14+VCJJvL/WUSzVXMHG1205adYr+ZxVxz5+bihQyl7X5RDzHC858d2PipryrwZXHRfVPv9+ruAw2tzsRYYC6qW5ugbSjsxq/vosV5tKgv4H9iKrUQdpL2U2NpL8XIh7BiQ07KCmRGZRMAq4swRknP2l/QrXam8fTcYdmpmAD8Iu/AHYo0acBUNeumYroviPM4J2dw1Uz+2LVVc8M/hOl16duFg98ZN2ZHuQUpPUsZ3Gdi7sWjWtNgEDcMbWEWjWzqXFvUyd
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d2fddf7-d0e1-45b2-3039-08d80603089a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 08:08:57.0736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u0wEjGKEzZ6HRt+C47krEvHRmLVFetfKeltBML3Dtr6Ie4DECNiTs4oOlqPFLO3/K2D8O3g+Jd4tmCJvnPOiPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2840
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_010904_733661_F35F4B63 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.80 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: RE: [PATCH V2 2/3] arm64: dts: imx8m: add mu node
> 
> > From: Peng Fan <peng.fan@nxp.com>
> > Sent: Monday, June 1, 2020 11:43 AM
> >
> > Add mu node to let A53 could communicate with M Core.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 9 +++++++++
> > arch/arm64/boot/dts/freescale/imx8mn.dtsi | 9 +++++++++
> > arch/arm64/boot/dts/freescale/imx8mp.dtsi | 9 +++++++++
> > arch/arm64/boot/dts/freescale/imx8mq.dtsi | 9 +++++++++
> >  4 files changed, 36 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index aaf6e71101a1..fc001fb971e9 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -775,6 +775,15 @@
> >  				status = "disabled";
> >  			};
> >
> > +			mu: mailbox@30aa0000 {
> > +				compatible = "fsl,imx8mm-mu", "fsl,imx6sx-mu";
> > +				reg = <0x30aa0000 0x10000>;
> > +				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> > +				clocks = <&clk IMX8MM_CLK_MU_ROOT>;
> > +				clock-names = "mu";
> 
> You missed my comments about this unneeded line in the last round of
> review.
> https://lore.kernel.org/patchwork/patch/1244752/

oops, will update in v3.

Thanks,
Peng.

> 
> Regards
> Aisheng
> 
> > +				#mbox-cells = <2>;
> > +			};
> > +
> >  			usdhc1: mmc@30b40000 {
> >  				compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";
> >  				reg = <0x30b40000 0x10000>;
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> > index 9a4b65a267d4..c8290d21ccc9 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> > @@ -675,6 +675,15 @@
> >  				status = "disabled";
> >  			};
> >
> > +			mu: mailbox@30aa0000 {
> > +				compatible = "fsl,imx8mn-mu", "fsl,imx6sx-mu";
> > +				reg = <0x30aa0000 0x10000>;
> > +				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> > +				clocks = <&clk IMX8MN_CLK_MU_ROOT>;
> > +				clock-names = "mu";
> > +				#mbox-cells = <2>;
> > +			};
> > +
> >  			usdhc1: mmc@30b40000 {
> >  				compatible = "fsl,imx8mn-usdhc", "fsl,imx7d-usdhc";
> >  				reg = <0x30b40000 0x10000>;
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > index 45e2c0a4e889..b530804f763e 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > @@ -621,6 +621,15 @@
> >  				status = "disabled";
> >  			};
> >
> > +			mu: mailbox@30aa0000 {
> > +				compatible = "fsl,imx8mp-mu", "fsl,imx6sx-mu";
> > +				reg = <0x30aa0000 0x10000>;
> > +				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> > +				clocks = <&clk IMX8MP_CLK_MU_ROOT>;
> > +				clock-names = "mu";
> > +				#mbox-cells = <2>;
> > +			};
> > +
> >  			i2c5: i2c@30ad0000 {
> >  				compatible = "fsl,imx8mp-i2c", "fsl,imx21-i2c";
> >  				#address-cells = <1>;
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > index 978f8122c0d2..66ba8da704f6 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > @@ -959,6 +959,15 @@
> >  				status = "disabled";
> >  			};
> >
> > +			mu: mailbox@30aa0000 {
> > +				compatible = "fsl,imx8mq-mu", "fsl,imx6sx-mu";
> > +				reg = <0x30aa0000 0x10000>;
> > +				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> > +				clocks = <&clk IMX8MQ_CLK_MU_ROOT>;
> > +				clock-names = "mu";
> > +				#mbox-cells = <2>;
> > +			};
> > +
> >  			usdhc1: mmc@30b40000 {
> >  				compatible = "fsl,imx8mq-usdhc",
> >  				             "fsl,imx7d-usdhc";
> > --
> > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
