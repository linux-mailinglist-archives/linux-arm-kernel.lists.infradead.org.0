Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E16117DCD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 03:34:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZiA4oxTxzzqpL2Qjeootqf4NR+EyeOmeXs0f417aYY=; b=lP4iyl/pnSYZ0H
	vcxtdWZmJ5VvcrzJXuJhJXyoX8jpFhsZ5qWuLykBFzK1nBH7AP1OHleqMYV5zFw76Z+NWOekXSdMt
	pcRUX3olLYKtGgicWLF2lG9n3dejLtnP28jS0EwNigV0Q+esuAL6XmmHLsiJKBmdNpfs4vuReHPaG
	wZWRDTMy9RNu3+8vIZtRDQsZGrx4IvZEfSfV70BhNQW8nS4D5dtqe+3NYoFcbr739LIqF0Jp4CfM/
	ynomFD4bmUqDtyrCF9Ljjac8s9N5mFhYeT8GUh9FBlUAY6YBft9+3Jo7Cgh+YDwjPnkI6+Jyw+rll
	9ic9Wdgw4BO7F6zbs/Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieVMM-0006zh-Km; Tue, 10 Dec 2019 02:34:46 +0000
Received: from mail-eopbgr10081.outbound.protection.outlook.com ([40.107.1.81]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieVMF-0006yt-3O
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 02:34:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dfAowhx6GWUHJy2IxK6qwgTRXjdKy44VmOh/3VV+tApB+1DFevzBKp8G5gczVZ7YbDMVE4XW2iziMFZIT5rsyKQTzyB7tIdqTWYYfF7SZA0PrYf/IRRYd5NUrcF4c1uGSMe7Xpb51q1qIR2dfFW/4PG2ZrvFT0AJv3avEkJCbYx74qNhp89NYwgZv+BcRc7h6CQ539fE60fMimY2iEkG2Jh0BrTnU22LlhdxlFDdK5crePJI43eN82Z6WC7XzGUtZq8+TibFE703WbSQInz/h9JIPCLNuQFlq790+VQV/IQNBSrcIo9NF1uC6r5Kvm8/R9DUqO1SxQtdU8CcFAJrxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3rStWe+TjU9Ro35O6Hig088w3MqyV1pwn9vFSozj9KU=;
 b=lEaLy041fWgp5POkGzpWcPmZSSJyxe2vTG3/qFYVxOYKOb+117jc2PIp8bg9YQgFdq84Y+uUBubYoGMlrw9c7cE3g6Ene8JKJ1oBtQ9Y/9IHa37AjkSGpePmcFVzIDSnetR7y37HvlJJl+93FmxJCAGhY+Y/cbntJrx3MM0aFt7oC1nXlQuLflvOuijOCLy81W0dcJ9yEdl906iRmoaHt5QKQuT39W22YpmV1I3CNbx7+KrdAqXzFtzu7vxl2/LiTghd65jf7aGinfC2PeX+LCsdIl4I9mkh0n01vuN3yxcdJ5r7n3nbFWpU+EZR0moGZb25OmBBpkdv+0TXV2ig2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3rStWe+TjU9Ro35O6Hig088w3MqyV1pwn9vFSozj9KU=;
 b=HOOfNE7LyMNK6c5hl3dJocjpRFmQQPpw9od+5ezlsArWFHH6Zc/lZJHWL/qshcrxeet9A9PqSgz3Q78YnV/fQv90MY3pH6KI+5+OJrcr7uS23RmDUDaWRZlkkQ8M4iVRMYL5x2qFE+PtmJ74E4TQO30fWIIYIlrvPDSi1mTNiic=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2335.eurprd04.prod.outlook.com (10.169.136.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Tue, 10 Dec 2019 02:34:31 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::391e:6024:cefd:6d51]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::391e:6024:cefd:6d51%4]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 02:34:30 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v1 3/4] arm64: dts: ls1028a: fix little-big endian issue
 for dcfg
Thread-Topic: [PATCH v1 3/4] arm64: dts: ls1028a: fix little-big endian issue
 for dcfg
Thread-Index: AQHVUnFULi52wD5vaE6y0evvPl+NNKezNm2AgAAo2GA=
Date: Tue, 10 Dec 2019 02:34:30 +0000
Message-ID: <VI1PR0401MB2237D2D6708807511BDB8788F85B0@VI1PR0401MB2237.eurprd04.prod.outlook.com>
References: <20190814072649.8237-3-yinbo.zhu@nxp.com>
 <20191210000623.22321-1-michael@walle.cc>
In-Reply-To: <20191210000623.22321-1-michael@walle.cc>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6c9cbf6e-5ad0-4730-40cf-08d77d197c45
x-ms-traffictypediagnostic: VI1PR0401MB2335:|VI1PR0401MB2335:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0401MB233578102CF0A485F37A10C3F85B0@VI1PR0401MB2335.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:913;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(189003)(199004)(13464003)(6916009)(33656002)(64756008)(4326008)(76116006)(66946007)(66446008)(66556008)(66476007)(5660300002)(8676002)(52536014)(305945005)(229853002)(9686003)(55016002)(81156014)(81166006)(478600001)(26005)(86362001)(2906002)(8936002)(6506007)(7696005)(53546011)(186003)(54906003)(316002)(71190400001)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2335;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XWfDF16pmTXSd487xSKs0lutqGdO3fJFMUW53KeSIAtBe0tCXxt2WIKa9+qIv7IK5qnur6/5P5wUjXwglNkqOX5nQC6kVFepz6OlbrJwfZcHiaidsXAMgCQOPkq7MrtvntpoPY3/mVrh+THjJpCrW4t5Z/NCRWQiaPDuaF7q3OyEwEdXkKveVa4GQI3tnAxAzW6Nco0sJlgupeVzlUDOcyHkh80j0kBmoOeBJ5rGGmS1BTYztPsIH5tRHguffnum9AAEl0/gnA7AAz/FeXAy1WXGpi52Cokjtv2VIzM8vBEtLCUcsGnha+9Iu4lvyAIj+0ZgmF+WrxhDNYlYwPNhqlwQCsGQS8DlPcu2Cp7YyFVEIv9VyXnibn8Wc9WMJ1KOX2a5f0/IOASvjoAiL72XO7SQqLtCSXaIxMSSHsJRf6Hf7SI2wpey5RpSMjpSV8q5J0TjBqm3PN9xSKpm1Rdv48EkD2/D+PcO+S9kXGofeN+Zd1tdSU/tP830JwcvfhZ0
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c9cbf6e-5ad0-4730-40cf-08d77d197c45
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 02:34:30.8062 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: inhC5TjVZnnF1gtcBx27H+ZX/fGc5BR/7k90pnVkFrZwV52MJoF8dmaSCnq+Ei1HZksx58hSycKZfxo05BLgpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2335
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_183439_143470_D50276B7 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "Amit Jain
 \(aj\)" <amit.jain_1@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rajesh Bhagat <rajesh.bhagat@nxp.com>, Alison Wang <alison.wang@nxp.com>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "catalin.horghidan@nxp.com" <catalin.horghidan@nxp.com>,
 Ashish Kumar <ashish.kumar@nxp.com>, Xiaobo Xie <xiaobo.xie@nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "rajat.srivastava@nxp.com" <rajat.srivastava@nxp.com>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, Michael Walle <michael@walle.cc>,
 Jiafei Pan <jiafei.pan@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Yinbo Zhu <yinbo.zhu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Shawn,

> -----Original Message-----
> From: Michael Walle <michael@walle.cc>
> Sent: Tuesday, December 10, 2019 8:06 AM
> To: Yinbo Zhu <yinbo.zhu@nxp.com>
> Cc: Ashish Kumar <ashish.kumar@nxp.com>; Alexandru Marginean
> <alexandru.marginean@nxp.com>; Alison Wang <alison.wang@nxp.com>;
> Amit Jain (aj) <amit.jain_1@nxp.com>; catalin.horghidan@nxp.com; Claudiu
> Manoil <claudiu.manoil@nxp.com>; devicetree@vger.kernel.org; Jiafei Pan
> <jiafei.pan@nxp.com>; Leo Li <leoyang.li@nxp.com>;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> linuxppc-dev@lists.ozlabs.org; mark.rutland@arm.com;
> rajat.srivastava@nxp.com; Rajesh Bhagat <rajesh.bhagat@nxp.com>;
> robh+dt@kernel.org; Vabhav Sharma <vabhav.sharma@nxp.com>; Xiaobo Xie
> <xiaobo.xie@nxp.com>; Y.b. Lu <yangbo.lu@nxp.com>; Michael Walle
> <michael@walle.cc>
> Subject: Re: [PATCH v1 3/4] arm64: dts: ls1028a: fix little-big endian issue for
> dcfg
> 

[Y.b. Lu] Acked-by: Yangbo Lu <yangbo.lu@nxp.com>

Hi Shawn, could you help to review and merge the two dts patches of this patch-set?
Thanks.

> > dcfg use little endian that SoC register value will be correct
> >
> > Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> This patch is still missing. Any news?
> 
> Tested-by: Michael Walle <michael@walle.cc>
> 
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > index b0d4f8916ede..5538e8e354b2 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > @@ -162,7 +162,7 @@
> >  		dcfg: syscon@1e00000 {
> >  			compatible = "fsl,ls1028a-dcfg", "syscon";
> >  			reg = <0x0 0x1e00000 0x0 0x10000>;
> > -			big-endian;
> > +			little-endian;
> >  		};
> >
> >  		scfg: syscon@1fc0000 {
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
