Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05792194A50
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 22:14:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDMg94nslvMhsbNovo5+Ui0AsJED7EC9m/MzYFD+32A=; b=cLUc/Y0vt1zQxK
	AsLByUflLRHqfny+wW2s6BRMf8l/6of3+nxBGnx1PWUM1ZBgcQ4BazoPlGJX552u8Uw/IiNJ1Gori
	uwEzpJe1DmKFMScJEppy9+vuyKgmbmAwe9Wod9uRPRTWIuZtUA4yvOcwcWdPa693C25yLzO1J0H6P
	kY+NYOa8wQmAnMYKbG1s5JMLgcRWwi3TCmwsYqD/n91WYmmlUJKUo7xx4Csjb9OM4Aq2/wcId/jlP
	xicYl0Kh8k/elTMSsyAI67A2INgDBV15LksQlrnextorKLUaRLAXBymUU6YqA2WSGuSJ9W19eRoQC
	JyhF9LBg+2BnoGZHDz8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHZpc-0002MB-EX; Thu, 26 Mar 2020 21:14:28 +0000
Received: from mail-vi1eur05on2080.outbound.protection.outlook.com
 ([40.107.21.80] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHZpS-0002LQ-J7
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 21:14:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gu4fKZUtj5DPkCQqta7VWCkvwBWKwJgXLY4WYYfEejfRs00KK6nC0H9HKbXRY1DhWJ73h27Ig8Dwy8IL2+otxCq6pisw5/Fa+x3AjFkD1XMDfh3YLOwWDQN36IhlaCt1eYX7D7lN1bpkqRoNOGtv83yQjzYJWlSwAMro1HpLBWeiTkDi1qdhUikNh5FnEFH+xSi6f1/9FNUGMn76ceK5OyMe3c2P0kbxRl1zaZWt+wOoAA9zfYiYszykmfrpc9qLluXEeRpwYtcQc+zt2GUTTevR9SSH7arUhUWZILzg9FAHzENbgM1THDKC7szqLIGRXTYdcV+8Hz9b78RVnhG4dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DbXtJTtyrsB1WjIlJEwh4ZL/phjsJC+J7M2Y5pwhVB8=;
 b=X0eKCFBLAR7wB2so+p9Vomcuj5biZIpLnizAJ746Q/oVRHZnk3mnYfD2jj63zp5gdnpe08XhUrZXyQ+7fTlbKNdrFWIEBiSEOwz6b0aF2ec5T1fj4XMdv+1D+2SqeMcg+chPAeFCPoctCVKHiZkqolIdwNwXuUdXnTdHs/8q4tFaV+NsEbLJOky/8kWemQjpclepU2SldXWlFGtNun7DkVRuDoekc7D7YSU/O/2CBkjkyoBC80xfmNlDJB8oe1TaLH6/cP9Mmu381cJyKYMVsqKI1s6FO95q+fxerLBFcxx7/MzlVFYSLvO2uTPiG8gHbuKXd57+oHdQ6vx5Z9kq4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DbXtJTtyrsB1WjIlJEwh4ZL/phjsJC+J7M2Y5pwhVB8=;
 b=D+hKklgWrklZ1cPPihscwiuNKqOD74NILSpAbEwWHUKKUL9zvH9tg1tx/Ix4v4kLwBow040omEemUY0MU9m3+uTYGt4XrpOfZUrZf1nmvCU+WvQa6BQh3thgkKp4E+c5G7s7+y0NUvbDnR8nh8VJ56Lch6m7KbOyA39I06frG04=
Received: from DB8PR04MB6828.eurprd04.prod.outlook.com (52.133.240.149) by
 DB8PR04MB6729.eurprd04.prod.outlook.com (20.179.248.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.18; Thu, 26 Mar 2020 21:14:13 +0000
Received: from DB8PR04MB6828.eurprd04.prod.outlook.com
 ([fe80::e44e:f867:d67:e901]) by DB8PR04MB6828.eurprd04.prod.outlook.com
 ([fe80::e44e:f867:d67:e901%2]) with mapi id 15.20.2835.023; Thu, 26 Mar 2020
 21:14:13 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Russell King <rmk+kernel@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Heiner Kallweit
 <hkallweit1@gmail.com>
Subject: RE: [RFC net-next 3/5] arm64: dts: lx2160a: add PCS MDIO nodes
Thread-Topic: [RFC net-next 3/5] arm64: dts: lx2160a: add PCS MDIO nodes
Thread-Index: AQHV/GvPzUWzrwiI5Eyn+VTY72VeyKhbbKRg
Date: Thu, 26 Mar 2020 21:14:13 +0000
Message-ID: <DB8PR04MB6828FA55AA75B710BDB53BC8E0CF0@DB8PR04MB6828.eurprd04.prod.outlook.com>
References: <20200317144944.GP25745@shell.armlinux.org.uk>
 <E1jEDaS-0008JO-Po@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1jEDaS-0008JO-Po@rmk-PC.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ioana.ciornei@nxp.com; 
x-originating-ip: [79.115.60.40]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3d642107-afc5-4750-4b07-08d7d1caa270
x-ms-traffictypediagnostic: DB8PR04MB6729:|DB8PR04MB6729:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB6729C22C2E4F607E3CA119DEE0CF0@DB8PR04MB6729.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0354B4BED2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(346002)(396003)(376002)(110136005)(33656002)(66556008)(54906003)(66476007)(7696005)(316002)(6506007)(478600001)(64756008)(66446008)(76116006)(8936002)(66946007)(4326008)(7416002)(44832011)(81166006)(55016002)(9686003)(8676002)(186003)(52536014)(2906002)(86362001)(5660300002)(71200400001)(26005)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6729;
 H:DB8PR04MB6828.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OOqc6DB2g3EfS0qOpj77A4ffBNSKt/YH+kSjKdsgOMtFl+iAttVlHpvF0I8VnUHQvkcTf8Xk/omtiQo0i5Xd775eP8qFMi6/sbTHKjvEroEt1bTW60h2gNO3KJC7BsdkEdenizoFOmDa9sW73iDmrIShAD1OyTzYBZWaVH378A2r+2s3bi4FM852KxHWRHEBAZ7CywGr/lSkg+o49aWeeBNUp9mdSp70bBPGW2F7XOhXrxTH8MiwBhppSsvZ4idyxHS84bpTRDVjQSrEZ2jusWuOhBktfzLHH+XfGL4u9eoTwYAjdFOfCNb+XCXyOKo636GQ4+QI6Q7zgStoWIIxYKrVXA+1m4kEthP3swSD9G1+wiA1k+1OOfE6IAaZtW6Yw0sQrd/kDL/fT/+FcDJWij/H1hfeWqnrGga3narmXxUdHNYiMzRzT/bM9ZyY0E13
x-ms-exchange-antispam-messagedata: DynY5GqhL8ekuxjXG1iVJUc0Ov7gvhc0ouno+dsUGNIFAMEWV9FpXZrm1WijTM2l2tYhBVnceOUYAtsDwKLkRAkA/y85CQkB5H0C6kBQXl2Ewj8wMCpz5xY0aiLog21bw7u7JPuMOf4v62KWlePvQA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d642107-afc5-4750-4b07-08d7d1caa270
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2020 21:14:13.4484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sQVnDNmaLSq22QUMeGmE3/rlc5Kyaao/dOgd8v00O1TXebeB1eBOtTgNB73v4Dv9i4XavQUhKCD0lsGlLs4X8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6729
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_141418_905510_9B824A32 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.80 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [RFC net-next 3/5] arm64: dts: lx2160a: add PCS MDIO nodes
> 
> *NOT FOR MERGING*
> 
> Add PCS MDIO nodes for the LX2160A, which will be used when the MAC is in
> PHY mode and is using in-band negotiation.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 144 ++++++++++++++++++
>  1 file changed, 144 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index e5ee5591e52b..732af33eec18 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -960,6 +960,132 @@
>  			status = "disabled";
>  		};
> 
> +		pcs_mdio1: mdio@8c07000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c07000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};

Are the PCS MDIO buses shareable? I am asking this because in case of QSGMII our structure is a little bit quirky.
There are 4 MACs but all PCSs sit on the first MACs internal MDIO bus only. The other 3 internal MDIO buses are empty.

> +
> +		pcs_mdio2: mdio@8c0b000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c0b000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio3: mdio@8c0f000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c0f000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio4: mdio@8c13000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c13000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio5: mdio@8c17000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c17000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio6: mdio@8c1b000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c1b000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio7: mdio@8c1f000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c1f000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio8: mdio@8c23000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c23000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio9: mdio@8c27000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c27000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio10: mdio@8c2b000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c2b000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio11: mdio@8c2f000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c2f000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio12: mdio@8c33000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c33000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio13: mdio@8c37000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c37000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio14: mdio@8c3b000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c3b000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio15: mdio@8c3f000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c3f000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio16: mdio@8c43000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c43000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio17: mdio@8c47000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c47000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +
> +		pcs_mdio18: mdio@8c4b000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x0 0x8c4b000 0x0 0x1000>;
> +			little-endian;
> +			status = "disabled";
> +		};
> +

Please sort the nodes alphabetically.

>  		fsl_mc: fsl-mc@80c000000 {
>  			compatible = "fsl,qoriq-mc";
>  			reg = <0x00000008 0x0c000000 0 0x40>, @@ -988,91
> +1114,109 @@
>  				dpmac1: dpmac@1 {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0x1>;
> +					pcs-mdio = <&pcs_mdio1>;
>  				};
> 
>  				dpmac2: dpmac@2 {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0x2>;
> +					pcs-mdio = <&pcs_mdio2>;
>  				};
> 
>  				dpmac3: dpmac@3 {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0x3>;
> +					pcs-mdio = <&pcs_mdio3>;
>  				};
> 
>  				dpmac4: dpmac@4 {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0x4>;
> +					pcs-mdio = <&pcs_mdio4>;
>  				};
> 
>  				dpmac5: dpmac@5 {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0x5>;
> +					pcs-mdio = <&pcs_mdio5>;
>  				};
> 
>  				dpmac6: dpmac@6 {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0x6>;
> +					pcs-mdio = <&pcs_mdio6>;
>  				};
> 
>  				dpmac7: dpmac@7 {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0x7>;
> +					pcs-mdio = <&pcs_mdio7>;
>  				};
> 
>  				dpmac8: dpmac@8 {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0x8>;
> +					pcs-mdio = <&pcs_mdio8>;
>  				};
> 
>  				dpmac9: dpmac@9 {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0x9>;
> +					pcs-mdio = <&pcs_mdio9>;
>  				};
> 
>  				dpmac10: dpmac@a {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0xa>;
> +					pcs-mdio = <&pcs_mdio10>;
>  				};
> 
>  				dpmac11: dpmac@b {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0xb>;
> +					pcs-mdio = <&pcs_mdio11>;
>  				};
> 
>  				dpmac12: dpmac@c {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0xc>;
> +					pcs-mdio = <&pcs_mdio12>;
>  				};
> 
>  				dpmac13: dpmac@d {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0xd>;
> +					pcs-mdio = <&pcs_mdio13>;
>  				};
> 
>  				dpmac14: dpmac@e {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0xe>;
> +					pcs-mdio = <&pcs_mdio14>;
>  				};
> 
>  				dpmac15: dpmac@f {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0xf>;
> +					pcs-mdio = <&pcs_mdio15>;
>  				};
> 
>  				dpmac16: dpmac@10 {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0x10>;
> +					pcs-mdio = <&pcs_mdio16>;
>  				};
> 
>  				dpmac17: dpmac@11 {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0x11>;
> +					pcs-mdio = <&pcs_mdio17>;
>  				};
> 
>  				dpmac18: dpmac@12 {
>  					compatible = "fsl,qoriq-mc-dpmac";
>  					reg = <0x12>;
> +					pcs-mdio = <&pcs_mdio18>;
>  				};
>  			};
>  		};
> --
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
