Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA79818612D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 02:11:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/81TCkyy+SbIvAB9LWoPuBC9Ci/hWxAuwb60EXOMEI=; b=hrJGdiaUVLbnbN
	dDwfLt27cII5cr4WDfUT7l8wHZcxY+2v6GVch7Wou6hFghb1gr7Ry94C/3Qy5w3TQyLXEdJMjbWHe
	lKz/AKM0F/7LZJvjHpwa5Eqldt1htvEnN3IXAEzVFUeBmss8JTnfQu1SMFXHn4wrXTq4bbuczvprq
	p2dXP6AjaTx2xJBhGaDQC/IX8FrchDVOtAsAQ2DC1sE3lXLwGemQi+G/adwPNRBEqbbKZO7vS/Yfx
	q6UH3N0pPtYK9cmlNFKlvrr7Aj/cS6HfMd3KBo83RcYGiD2pZuaGBf8f2OlxSt0js5fcA75iBA1z7
	BETHZN5zX/g1/71zHHQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDeI7-0006yg-F7; Mon, 16 Mar 2020 01:11:39 +0000
Received: from mail-eopbgr60060.outbound.protection.outlook.com ([40.107.6.60]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDeHv-0006y1-Ix
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 01:11:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HxLwFyuKwjXIMUEAnByQguk2021Tz75MOg8+A68BewzEv8Bc0vSrthnLmhjvsAkV/orljg0gfzNNsaMqUkOpa9oyXTRbHq0H7PLErAo8/k48mm4Pf7xJdUbW/4srmeQXghhWI3QcVvQMIGo42+h0GFIG3RnRjI1sjiMszP14izkCwi2AQnnFc/HXCIw9jR4/7g4rBTWyv+yBQpFeZ4RVi7Lvj0NatlTIlMkuQI0IDa4TUnvCRtP9F8/XdCO8WIBxZOcnMupu1iq8JJPu4rlTPSrJzygM+9ctI4ZpCQnPw2bJiFOUiXg1sEg8THOHlYtU+bA+PIQB8HBb3oDtvA+SpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M1HpxRK+MNtZHq1wd+4aIty+nAj6PZnFRViZVByFHFY=;
 b=RtH14Cu8F3So3WIih86VgdHbM5zZk5GJcdsUFTM9btkvuv+n8hmIuDFHJcPJJ7r4Lt0xLDi+PXXznKyWZGLx79ropqRfG7uFrn+Udrrx9IKbDVphaloJhZnF3oPCsqkDBTMJw4Ba2OgEdUXT89+pi4vXtyagr1XKbj1bkdgLy2NxH4MdZOYaRhtN/vFzu6e0c1D1fLe90IOFDY0muWvfFsKjVFL/Z9Vzfkb0wMlWMPT2+bCTJS7+lXG4WYla21gqfUFKnMRU7bPrHqvNP7I5JoEbgOa8wD+KG7wQU18Zm9gBndxZnZoj7phgbo7evqerjjxNIyLwmmNrG8xsGe5MYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M1HpxRK+MNtZHq1wd+4aIty+nAj6PZnFRViZVByFHFY=;
 b=Yq91vj1IWYwn/pTxPzQJ8QtAX8w1MH+xHOrWifkz5MH0du4YEsSd/pkWcLWxL9Lr+hEkNoX02tk76OBqmeLFfRhEe3VKaOmzNlgKPKK9TPaLVuZs6MtelR9X6tD0iPjLt6aX2rWBFnnS2BzwSRAIrxOcxJ8EG63GZbuLF0u8i2k=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3881.eurprd04.prod.outlook.com (52.134.73.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.21; Mon, 16 Mar 2020 01:11:23 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 01:11:22 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
Thread-Topic: [PATCH 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
Thread-Index: AQHV9rog8X+te2Dr9ESU0H5E6tZlYqhKcC2AgAAB2oA=
Date: Mon, 16 Mar 2020 01:11:22 +0000
Message-ID: <DB3PR0402MB3916A1240047954022FB4632F5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583830337-23889-1-git-send-email-Anson.Huang@nxp.com>
 <20200316010416.GI17221@dragon>
In-Reply-To: <20200316010416.GI17221@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 28bd9f67-1629-47c9-e1fe-08d7c946f140
x-ms-traffictypediagnostic: DB3PR0402MB3881:|DB3PR0402MB3881:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3881E47B61343375F99B97DAF5F90@DB3PR0402MB3881.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(396003)(136003)(39860400002)(376002)(199004)(55016002)(52536014)(4326008)(5660300002)(7696005)(9686003)(316002)(54906003)(44832011)(6506007)(8676002)(81156014)(81166006)(86362001)(6916009)(478600001)(33656002)(186003)(71200400001)(2906002)(26005)(66946007)(66446008)(76116006)(66476007)(64756008)(66556008)(8936002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3881;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6MpZunEo5lAnYq8WNv/JN+J59jvtMyHvBARdZTJAf751AYPh+PzlbE2A2FG8AQHKG7fTSeosqx0IqA1Q2RC204jOpYGltF0DyK8s/PiLxYcfwr1Aa3iB/v9sN2HNFZ8OnOKivMtqWAmeAhWf/SAMbmqGZ/8KMdw+ysGkhCLhZdLhODA/xi3ZqMdV5cHHeZ+SRIIDjhPbWbievf15aF11gRAaes2oqlOkE4IERrhjnQfkCYLqpjol5XTfFYfNMPDU9uaFtoN/frPZb6ey20q4UgzOIhg7N7CPC6XN4+NGCBcA3IRo0ZC52S2vSr8k3o8ntGgAJo3sK296seYGshgl6z46A8dI/nmLgcgBT35FaHEmb3ukSNXPGUNSAk6DlFGg2UXokRKhaZGCYhxTdoEcyveszVlimxNj4VK3fys2VapuifWgxIgxD1vsU5UAqmIwZ39RHnzMRCOC0NvwbnHteivATZTt6UvotnLq8Us/1u0=
x-ms-exchange-antispam-messagedata: Bv/ae3uyyom7r3IFK74Z9LOdz9QPM0EJihoFHD5dFudUWkog4gQAYz2Ws2lNWUB7iHHQQCoCrBFkSeiGBvtE4+i1yM/aTpZ1Tv/5Wun/c1ksLBHWXFMAuZfD+Y6zzBu7IHwIlgOHgcfK++fGqg6hJQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28bd9f67-1629-47c9-e1fe-08d7c946f140
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 01:11:22.7520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BWz1JSPLnLEpntlePsWZ1hQSva/feQhRkpER6WI07Y5ywtQT48a1yyskA3CDpiTJkOLvC+Q2e7AgMIGavbRAew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3881
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_181127_962694_236EFD62 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Abel Vesa <abel.vesa@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> Subject: Re: [PATCH 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
> 
> On Tue, Mar 10, 2020 at 04:52:16PM +0800, Anson Huang wrote:
> > Sort the labels alphabetically for consistency.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> It doesn't apply to my branch.

I will rebase it and resend the patch series.

Thanks,
Anson


> 
> Shawn
> 
> > ---
> >  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 60 +++++++++++++-----
> ---------
> >  1 file changed, 30 insertions(+), 30 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > index 13460a3..2ed7aba 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > @@ -30,29 +30,8 @@
> >  	};
> >  };
> >
> > -&adma_lpuart0 {
> > -	pinctrl-names = "default";
> > -	pinctrl-0 = <&pinctrl_lpuart0>;
> > -	status = "okay";
> > -};
> > -
> > -&fec1 {
> > -	pinctrl-names = "default";
> > -	pinctrl-0 = <&pinctrl_fec1>;
> > -	phy-mode = "rgmii-id";
> > -	phy-handle = <&ethphy0>;
> > -	fsl,magic-packet;
> > +&adma_dsp {
> >  	status = "okay";
> > -
> > -	mdio {
> > -		#address-cells = <1>;
> > -		#size-cells = <0>;
> > -
> > -		ethphy0: ethernet-phy@0 {
> > -			compatible = "ethernet-phy-ieee802.3-c22";
> > -			reg = <0>;
> > -		};
> > -	};
> >  };
> >
> >  &adma_i2c1 {
> > @@ -131,6 +110,35 @@
> >  	};
> >  };
> >
> > +&adma_lpuart0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_lpuart0>;
> > +	status = "okay";
> > +};
> > +
> > +&fec1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_fec1>;
> > +	phy-mode = "rgmii-id";
> > +	phy-handle = <&ethphy0>;
> > +	fsl,magic-packet;
> > +	status = "okay";
> > +
> > +	mdio {
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> > +
> > +		ethphy0: ethernet-phy@0 {
> > +			compatible = "ethernet-phy-ieee802.3-c22";
> > +			reg = <0>;
> > +		};
> > +	};
> > +};
> > +
> > +&scu_key {
> > +	status = "okay";
> > +};
> > +
> >  &usdhc1 {
> >  	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
> >  	assigned-clock-rates = <200000000>;
> > @@ -229,11 +237,3 @@
> >  		>;
> >  	};
> >  };
> > -
> > -&adma_dsp {
> > -	status = "okay";
> > -};
> > -
> > -&scu_key {
> > -	status = "okay";
> > -};
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
