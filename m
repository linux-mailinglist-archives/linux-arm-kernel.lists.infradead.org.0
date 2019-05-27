Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D545A2AE68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6m/ysAj7ng+Ae+A2qS1tzIfgjymYRjS8Z0NyqPSnHU=; b=ttxsKiOjxQR4Bn
	HYBwtJi82Gl++1BJuyTUWkxLIVg7Cfhpb5EMryyxV4zNe+JLJdrd2I7Hm4Grg+TJxsd4CIKsmB8sk
	MZeljOyl0sRf+y/LakHb3VRO95Ao3N88tff2ZwTZ+hrXOZMLAMNqiodVnunajHNEHhxj6rWdnmVlI
	ZVg5fs4SP0u0zbTcs3yGLPbmQqCyGvtUxZd6HfcjLWQHOiYJj11BBXijTZpyRPTQo+3JvjkYMcEhF
	ogikMj95ih/dvvh9Ejc0s82Fuu8ql1PZ9RJDtEBJfmv2DGb9bbL5eLJ2FOtVI8ZGhgN8bvygO5Ghc
	0xeaEgC13wwEWod2fVdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV8sC-0000lM-RD; Mon, 27 May 2019 06:12:40 +0000
Received: from mail-eopbgr130048.outbound.protection.outlook.com
 ([40.107.13.48] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV8s6-0000kp-A1
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:12:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gkM0hedD/RoO50blokU372mMXbHR4d0UvVRz64ahN5o=;
 b=OcC5oHFTusMvReTRfcQKf7ONBq7FCjF1lE3mjc9b85xB3AVF93AUUfqt3hOm1Qf4Hl5UfUwgNGog41hXwD7c5Avj8z6Ks7+O6pSx+YwP3oTkbhW95Q5lpuIDONXOCndouE2a00D4ME1m66U4uICLvhyWmPXnwx1Z9YDqF5a2gBA=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2446.eurprd04.prod.outlook.com (10.168.61.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Mon, 27 May 2019 06:12:28 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::3d45:6b81:13ba:88cf]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::3d45:6b81:13ba:88cf%7]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 06:12:28 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
Thread-Topic: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
Thread-Index: AQHVD7ktQ8RWPOovOUGEsxSVPIIdW6Z4rBYAgAXaWtA=
Date: Mon, 27 May 2019 06:12:28 +0000
Message-ID: <VI1PR0401MB24966C5BB07836D5FA00BC12F11D0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <20190521150336.8409-1-pankaj.bansal@nxp.com>
 <20190523124806.GU9261@dragon>
In-Reply-To: <20190523124806.GU9261@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [92.120.0.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb9a7fa4-6419-49ac-f900-08d6e26a4be5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2446; 
x-ms-traffictypediagnostic: VI1PR0401MB2446:
x-microsoft-antispam-prvs: <VI1PR0401MB24468B5921CE8F9B36A290FDF11D0@VI1PR0401MB2446.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(376002)(396003)(39860400002)(346002)(13464003)(189003)(199004)(6506007)(74316002)(53546011)(7696005)(99286004)(102836004)(76176011)(33656002)(229853002)(66066001)(86362001)(71190400001)(71200400001)(6916009)(256004)(14444005)(5660300002)(52536014)(8676002)(81156014)(81166006)(14454004)(8936002)(305945005)(7736002)(316002)(2906002)(4326008)(53936002)(6246003)(486006)(476003)(44832011)(6116002)(11346002)(446003)(3846002)(478600001)(54906003)(6436002)(9686003)(66946007)(73956011)(76116006)(66446008)(64756008)(66556008)(66476007)(25786009)(186003)(68736007)(55016002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2446;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uIAzL/Yy/51RA+1mNc2yajc/XzC8qR0bSju281bQkGhAPCE5lsct9O0Vt7BbTVgE/M6pvRt/zDEaOYKBJC88cZ0IJ1bQZXqKrp6JnZvYcRLcBGYxl3q4f8rd9VA3wZuMJM/YjuXSgLy5r6tpVwja1nPUnXWOfIoc0y1O2HRVAF5xVMT6cgrQ0WVfmDiiOI0dIDgc6SaZzuhL6ICe8Qfmx6/Mc3OmIf1bn6UYc3tbSqldenNegqzr25IlksCE6Nt9ANW6BMT2x58mypw2KEz1T4cocPGQmUdCvSK2SaIRRty54AcdRLYAkqjDGA93a9Yc/y89KmSqq609o3N/ftBQf2LK/hnhoulbacWotqG+JjDSpl8JZve1JsmRuaOr5AznN6vEW7kuGNNKub/mLGRvAinI7eFPNkzuobt8II1J2x0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb9a7fa4-6419-49ac-f900-08d6e26a4be5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 06:12:28.6066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pankaj.bansal@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_231234_350566_E7271685 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Rajesh Bhagat <rajesh.bhagat@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Mingkai Hu <mingkai.hu@nxp.com>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI Shawn,

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Thursday, 23 May, 2019 06:18 PM
> To: Pankaj Bansal <pankaj.bansal@nxp.com>
> Cc: Leo Li <leoyang.li@nxp.com>; Mingkai Hu <mingkai.hu@nxp.com>; Rajesh
> Bhagat <rajesh.bhagat@nxp.com>; linux-arm-kernel@lists.infradead.org;
> devicetree@vger.kernel.org
> Subject: Re: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
> 
> On Tue, May 21, 2019 at 09:40:09AM +0000, Pankaj Bansal wrote:
> > The qspi flash in ls1046a based QDS and RDB boards can operate at
> > 50MHz frequency.
> > Therefore, update the maximum supported freq in their respective dts
> > files.
> >
> > Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>
> 
> Do not use base64 encoding for patch posting.

I did not understand this comment? Do you want me to change something in patch?
I had run checkpatch script on the patch before sending and it did not report any waning or error.
Can this patch not be merged in current tree ?

> 
> Shawn
> 
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts | 4 ++--
> > arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 5 +++--
> >  2 files changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> > b/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> > index eec62c63dafe..e441dbfbfb81 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> > @@ -3,7 +3,7 @@
> >   * Device Tree Include file for Freescale Layerscape-1046A family SoC.
> >   *
> >   * Copyright 2016 Freescale Semiconductor, Inc.
> > - * Copyright 2018 NXP
> > + * Copyright 2018-2019 NXP
> >   *
> >   * Shaohui Xie <Shaohui.Xie@nxp.com>
> >   */
> > @@ -169,7 +169,7 @@
> >  		compatible = "spansion,m25p80";
> >  		#address-cells = <1>;
> >  		#size-cells = <1>;
> > -		spi-max-frequency = <20000000>;
> > +		spi-max-frequency = <50000000>;
> >  		spi-rx-bus-width = <4>;
> >  		spi-tx-bus-width = <4>;
> >  		reg = <0>;
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> > b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> > index 6a6514d0e5a9..6f5411d09bb9 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> > @@ -3,6 +3,7 @@
> >   * Device Tree Include file for Freescale Layerscape-1046A family SoC.
> >   *
> >   * Copyright 2016 Freescale Semiconductor, Inc.
> > + * Copyright 2019 NXP
> >   *
> >   * Mingkai Hu <mingkai.hu@nxp.com>
> >   */
> > @@ -105,7 +106,7 @@
> >  		compatible = "spansion,m25p80";
> >  		#address-cells = <1>;
> >  		#size-cells = <1>;
> > -		spi-max-frequency = <20000000>;
> > +		spi-max-frequency = <50000000>;
> >  		spi-rx-bus-width = <4>;
> >  		spi-tx-bus-width = <4>;
> >  		reg = <0>;
> > @@ -115,7 +116,7 @@
> >  		compatible = "spansion,m25p80";
> >  		#address-cells = <1>;
> >  		#size-cells = <1>;
> > -		spi-max-frequency = <20000000>;
> > +		spi-max-frequency = <50000000>;
> >  		spi-rx-bus-width = <4>;
> >  		spi-tx-bus-width = <4>;
> >  		reg = <1>;
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
