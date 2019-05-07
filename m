Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C486315FB8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8K1qm55PeBD4zAVYEIkbfE8NDCh07lu9PIoTyaveuw=; b=qmhBxDy4MdMtTi
	uunWSUeTfcJTbymey3rBdKGVp5j9k8vAfiAoaiEQlY7zpH73PC897eaQ4p6lBa3mtH6XmaHOOZ4u0
	Kp+uSePGjuHZjOY5OF52iyYfjALVnV09K/IAVsxyUumacJx2MkAA2t4cmXAJl4e4m/KwiwSH2Q9F8
	yCuvo6T7B5FN6SkkHbf0d76Vot7J6vkH/UtaXNlr9Ux9Cu3KBxOCO8xFmIrFpNAM9Q3Tdr72v4ttg
	51pOmVd5TVWgpY734LfFNEBV6NHEI/OJGb9ZXGz93vU9NSat7XxTv0irN1NoZ9zX3tciDYaRHPc6i
	i7MgT1KMlxISzRITaAog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvmE-0002aL-Je; Tue, 07 May 2019 08:48:42 +0000
Received: from mail-eopbgr140057.outbound.protection.outlook.com
 ([40.107.14.57] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvm6-0002Zp-SQ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:48:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Aq3CVt2b3lc5FgEiUrsD8dwwYa/6bf7sNuyyllfY9Qc=;
 b=F+eBurhH5ulkkI/Ip3iWxA7Fvj17RV1u8yGpfDq2GcYSOGcKaSsdjTZjZHY6s93kE8DnQjT3m7+kCUQO6lVrYMFlbjFILdD4KWz8BrNH3kJgoUkdiZcT37LnV/3GuMAVZsN/6a6O7s5iVo4VN/WEHAv3zZtaONraskrqCzgypKE=
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com (10.175.44.16) by
 AM5PR0402MB2849.eurprd04.prod.outlook.com (10.175.40.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 7 May 2019 08:48:31 +0000
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51]) by AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51%9]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 08:48:31 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH v2] arm64: dts: ls1028a: Add USB dt nodes
Thread-Topic: [PATCH v2] arm64: dts: ls1028a: Add USB dt nodes
Thread-Index: AQHU+/SBIFirjMEfrESTZvW0Hl61haZW+m4AgAhvTQA=
Date: Tue, 7 May 2019 08:48:31 +0000
Message-ID: <AM5PR0402MB286539A070BDEEDFC3304F0EF1310@AM5PR0402MB2865.eurprd04.prod.outlook.com>
References: <20190426055558.44544-1-ran.wang_1@nxp.com>
 <20190501235410.GA25492@bogus>
In-Reply-To: <20190501235410.GA25492@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd759458-80dc-4b19-23ff-08d6d2c8c853
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0402MB2849; 
x-ms-traffictypediagnostic: AM5PR0402MB2849:
x-microsoft-antispam-prvs: <AM5PR0402MB2849500B82E1C50B29BEE3BFF1310@AM5PR0402MB2849.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(346002)(136003)(366004)(376002)(396003)(39860400002)(189003)(199004)(305945005)(86362001)(71190400001)(71200400001)(6506007)(6246003)(81156014)(6916009)(53546011)(33656002)(81166006)(54906003)(53936002)(8676002)(26005)(55016002)(446003)(5660300002)(186003)(7736002)(9686003)(8936002)(74316002)(52536014)(256004)(102836004)(6436002)(73956011)(7696005)(316002)(11346002)(486006)(66556008)(66476007)(64756008)(66446008)(14454004)(66946007)(99286004)(68736007)(76116006)(76176011)(229853002)(66066001)(25786009)(2906002)(4326008)(478600001)(14444005)(476003)(3846002)(6116002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0402MB2849;
 H:AM5PR0402MB2865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Adic0pvt9H5MNoFvyJ0glYIODbCuQCtSp47pzv5ExGAAkbdyCY+sMLA9zEkT3YBpeKBg8w0dOLsavZlo+ymemg5m/UfvyIUJWPDuQMO47r+JUYjWNWun5jucu7lCg0IppuHIXUqM8mw5CeZSd+Bf3z0CvUiWUGoaOGU5pRofAN+8X+YbK8QOX2A+K6qB8ca0dX0syNsE57aQKeZtSLKEZMuITh4YlB5ypCozvgR4TcU1mFlWCPWWbO1EFt0NEoQcQRE2UpG4gtDo4TDZQtbFU5cqLDTVZYxukVpItMyfqNHsPSa/tbf9MJIXO+x0nff3eji7OCWZK1gwhIiAtpySQRDIsYvpbAUFXbJpkgwFq8z20Z4lJ91S7L74ya2TaE9LuIji+XYweQQnnIobwK+SbBjra7lhVq/AuMIZLmlYEuA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd759458-80dc-4b19-23ff-08d6d2c8c853
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 08:48:31.4346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2849
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_014834_982988_FBF1841A 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Shawn Guo <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Thursday, May 02, 2019 07:54 Rob Herring wrote:
> 
> On Fri, Apr 26, 2019 at 05:54:26AM +0000, Ran Wang wrote:
> > This patch adds USB dt nodes for LS1028A.
> >
> > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> > ---
> > Changes in v2:
> >   - Rename node from usb3@... to usb@... to meet DTSpec
> >
> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   20
> ++++++++++++++++++++
> >  1 files changed, 20 insertions(+), 0 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > index 8dd3501..188cfb8 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > @@ -144,6 +144,26 @@
> >  			clocks = <&sysclk>;
> >  		};
> >
> > +		usb0:usb@3100000 {
>                      ^ space needed

Yes, will update this in next version.
 
> > +			compatible= "snps,dwc3";
> 
> Needs an SoC specific compatible.

Do you mean change compatible to "snps,dwc3", "fsl,ls1028a-dwc3" ?

As I know, so far there is no SoC specific programming for this IP, so do
you think it's still necessary to add it?

Regards,
Ran

> > +			reg= <0x0 0x3100000 0x0 0x10000>;
> > +			interrupts= <0 80 0x4>;
> > +			dr_mode= "host";
> > +			snps,dis_rxdet_inp3_quirk;
> > +			snps,quirk-frame-length-adjustment = <0x20>;
> > +			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> > +		};
> > +
> > +		usb1:usb@3110000 {
> > +			compatible= "snps,dwc3";
> > +			reg= <0x0 0x3110000 0x0 0x10000>;
> > +			interrupts= <0 81 0x4>;
> > +			dr_mode= "host";
> > +			snps,dis_rxdet_inp3_quirk;
> > +			snps,quirk-frame-length-adjustment = <0x20>;
> > +			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> > +		};
> > +
> >  		i2c0: i2c@2000000 {
> >  			compatible = "fsl,vf610-i2c";
> >  			#address-cells = <1>;
> > --
> > 1.7.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
