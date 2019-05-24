Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD2D28E66
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 02:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bZcwFBRYzpud8t1sRFsOt/iKydwsdH560I1Qy3jwKA=; b=GLr4ana0eOYddi
	c6zcHyQY3271nlDXu1yrZjBNZyFjB4nbsuREy2yM0eX3a+p7yEs51o9CXA0RpD+j23GyIozBtBMgY
	GWP2H+696b74hI7YVa2VwTNq0XVQ+GzoDKdiL6zmdvj4PZ6nQ+WsMz9cCvH7lu7k/45B+Mgv503VZ
	IvYs0E3UWW/832/A2djUZeRjQ01Is/tp4EUuO91EFylrCN+sVoydh/sqhJpg1DM1sa6obqMaVzxgC
	H4QVNueVw+3ePb7HgiUycAGFSKHw/vhu9Ev2X71RbU3vKemwP97R+u/6cmBe5Qe7f/5jsuEQT1Bkn
	/6PtiOUvr8zyxyA8qIPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTyHr-0004BZ-Vs; Fri, 24 May 2019 00:42:19 +0000
Received: from mail-eopbgr80047.outbound.protection.outlook.com ([40.107.8.47]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTyHj-0004Aq-OM
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 00:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RhjDNhvoRr14+1mLYoZOHPZ7bSjV+K2aH1MsXi8WRNo=;
 b=QahgpFMUI8/aYVEbHJtkTZMfk7znTaRKvHcVLt/QCLRQ2z3dl/rfDWqTikaA8VSPKYhntwuz2fHaB9ceW8LqkNoJNGSoStF76ussrI9thTp+5EzD0a5o9n/JnIStBqBEApeF64DKWmTP15X2eVR80uTq43rYllB+IQc1qV/yRPE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3850.eurprd04.prod.outlook.com (52.134.65.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.19; Fri, 24 May 2019 00:42:08 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1922.017; Fri, 24 May 2019
 00:42:08 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawn.guo@linaro.org>
Subject: RE: [PATCH] arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
Thread-Topic: [PATCH] arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
Thread-Index: AQHVD6rI9PtGaZwUh0KVobDDBMOB9qZ4tAgAgAC/R7A=
Date: Fri, 24 May 2019 00:42:07 +0000
Message-ID: <DB3PR0402MB3916617FD2047D91BFFE4EAEF5020@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1558425114-10625-1-git-send-email-Anson.Huang@nxp.com>
 <20190523131606.GA21933@dragon>
In-Reply-To: <20190523131606.GA21933@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f361de0e-0a6a-4f54-1cad-08d6dfe0a6b5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3850; 
x-ms-traffictypediagnostic: DB3PR0402MB3850:
x-microsoft-antispam-prvs: <DB3PR0402MB38504AA456D63988A27C2DB5F5020@DB3PR0402MB3850.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(136003)(396003)(376002)(13464003)(199004)(189003)(8936002)(478600001)(81166006)(81156014)(86362001)(6916009)(6116002)(8676002)(3846002)(44832011)(6436002)(2906002)(68736007)(7416002)(316002)(476003)(486006)(9686003)(55016002)(11346002)(446003)(66066001)(54906003)(26005)(53936002)(229853002)(6246003)(25786009)(99286004)(186003)(4326008)(71200400001)(71190400001)(102836004)(5660300002)(6506007)(53546011)(76176011)(76116006)(73956011)(66476007)(66556008)(66446008)(64756008)(66946007)(256004)(7696005)(7736002)(74316002)(305945005)(14454004)(52536014)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3850;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: H16ZGaZCFdcFnpuFqewfKuQ34EgumVSqL247IKTMvnlP1DY/y9F1VsCw+zWFoyv4SgJLvPh755YRTAa4pFLGy1I5LJVZzdDgnj3270DBmylgehPepcvLvJe9GVec7X7RMvn+b9dXssrnM1OQ4DYVPVNXyJVMh1Ep5qlarQWaMbrVHi9tKmPFSmsoJyb/MZm2HNa8QXARwNRKnDxTIGLe2oEy5LfNPn2woNFHD+CFHOWx7qxaVWLC6hNi4co5B82HuBtqhEGBljc+paAODoWNp5QlsA8YVKd2a3MlXEFenwT0gci1FpUCKAkYHR/50nKp54+uKAMy6yd4cnoqNZ006K5HGi1IJf2ckpdgdZo1o2Lx1wsj+BJFY5zm41qYDdgtYRp3Mhvt4xWaATcwO+XwT71UaTCjSx3C3Dd7nubbhf8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f361de0e-0a6a-4f54-1cad-08d6dfe0a6b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 00:42:08.0780 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3850
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_174211_791595_63140249 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> -----Original Message-----
> From: Shawn Guo [mailto:shawn.guo@linaro.org]
> Sent: Thursday, May 23, 2019 9:16 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: catalin.marinas@arm.com; will.deacon@arm.com;
> maxime.ripard@bootlin.com; olof@lixom.net; agross@kernel.org;
> horms+renesas@verge.net.au; jagan@amarulasolutions.com;
> bjorn.andersson@linaro.org; Leonard Crestez <leonard.crestez@nxp.com>;
> dinguyen@kernel.org; enric.balletbo@collabora.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-imx
> <linux-imx@nxp.com>
> Subject: Re: [PATCH] arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
> 
> On Tue, May 21, 2019 at 07:57:05AM +0000, Anson Huang wrote:
> > i.MX8MQ needs CONFIG_QORIQ_THERMAL for thermal support.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Please send to my kernel.org email address.

I just resend the patch to your kernel.org email address, looks like the
get_maintainer script still list your linaro.org email address for some
patches.

Thanks,
Anson.

> 
> Shawn
> 
> > ---
> >  arch/arm64/configs/defconfig | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/configs/defconfig
> > b/arch/arm64/configs/defconfig index da85808..61be39b 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -420,6 +420,7 @@ CONFIG_SENSORS_INA2XX=m
> > CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
> >  CONFIG_CPU_THERMAL=y
> >  CONFIG_THERMAL_EMULATION=y
> > +CONFIG_QORIQ_THERMAL=m
> >  CONFIG_ROCKCHIP_THERMAL=m
> >  CONFIG_RCAR_THERMAL=y
> >  CONFIG_RCAR_GEN3_THERMAL=y
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
