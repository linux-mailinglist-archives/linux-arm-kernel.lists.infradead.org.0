Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1747B84309
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 05:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SO1mJgMR2Miq2MLqDxZ8JG5BWZu7yae43/Cd5G1of3M=; b=Z32dNA48/og3Z5
	JusnAHb80OVBxjrOHHPv3cYohZgrCeWAt41yobrHyV16FUAxOqByBsgnsHwYmRNTIipLwXO16XQg2
	oz/JPpEXk/6ZlFv4zGBV4SOKgCb7op/nnOlPnXY5kprDmhorPKxH2tKIWTBK3X1xzfFMQdT2e+7u8
	yNSq8XxMKNa63XLRYVvAmSARwWmwBSbbNIoWwO9vcHSggyfJwlYRbEgWome/iO8eiDqlYo3E7FAIG
	15niX2heVqi8vlYu20hwViOv+rXdoAGSTpcGYEGrDyDLRLsRH+xmP9M38bwRdoGG7flFfCWh/0bsr
	SMCphVDbTgJDeDHSJ3Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvCyC-0001wl-OJ; Wed, 07 Aug 2019 03:50:36 +0000
Received: from mail-eopbgr00073.outbound.protection.outlook.com ([40.107.0.73]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvCy2-0001wN-SF
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 03:50:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ljKRyQsFeXgWrh0hRPoTimmfYXP52VhyFKXEwoekFABkql08a2xikJx4UKmQbsQ0HPwBacryFvET8FHU3ARPXOQjNzEBrM0f6poPbxsTeZlakfmVex6BinjtDiqM+LbPWNcoCj9TubQI61EbslcajEiO1q/Y9lFejUl5ujPJWweoq25N4koU2BEIyalYuTdnxpdo6JMC6YRJERkp290Sf/GbKWRlq+jDevyDJAvMZEY9goQNMCPcz3e6Wcz63jj/nUaqfObXWMiQwXoUuSlGFTnWbTvb2QQnG8456fR/mekrY88D5QTSolnXOMNNz+sv6IRbmkJgNMz9Az1BtntB2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s9wrzZI82DzMVTeDchK+ngJ3YHiOkquQl2flpZnEh3Q=;
 b=Qonz/df+KGTtcjGGxsERWK0JgdX2wS8VEOVj8+F7kYZRdBOJuOXfM6sMm5u4gysdwJyEiVFQLjr/f5IGydRdjoYCy8OBn1db+f3fTl4AgGHvoUHHfX/lttClHq89HZPApuzMoyHWxpUAtAbl5vr01kxsenBYhpzbeWwZXqHtmLYQjQF6AwACva3uRx59tcLKXd11vY3H2F+mHrGHspqZcyBnnBhxa+acPNr6CNsW3fr5jbg9rWnXPEbwa2gGxY9FAWdkV/WSk+1WqjugZ6FNtNEFcOZr+GP4CNEFfpPmuxKP0H2IIVDaXv751OsOydgyQ2IqYEimesyyipzS8D3Hvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s9wrzZI82DzMVTeDchK+ngJ3YHiOkquQl2flpZnEh3Q=;
 b=p3Vjgl34Ifc/scDibj8GDavRjfamiu+eJ/GLu71UOc7tFnleVph8HDOdmHVbjrUgO5sjyFVT0/fYscbFXVNbORHpeTi+eoorxCRkzdNbRlQ1EhAM8ijYBivbNrZEFvEo85GmbUwjl/41erM9vuHuoWVzM8G8L8ttrgWrfp5lvjY=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB2830.eurprd04.prod.outlook.com (10.175.21.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 03:50:21 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::8026:902c:16d9:699d]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::8026:902c:16d9:699d%7]) with mapi id 15.20.2136.018; Wed, 7 Aug 2019
 03:50:21 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: RE: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: add i.MX8QM platform
 support
Thread-Topic: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: add i.MX8QM platform
 support
Thread-Index: AQHVMnTq2F+gGEqIWEi9imTz4TJ3wKbuF3yAgAEphxA=
Date: Wed, 7 Aug 2019 03:50:21 +0000
Message-ID: <VI1PR0402MB3600F9D3529898EB304579CAFFD40@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190704142032.10745-1-fugang.duan@nxp.com>
 <65afeaaf-f703-02f2-a918-90a8bb8f58b6@linaro.org>
In-Reply-To: <65afeaaf-f703-02f2-a918-90a8bb8f58b6@linaro.org>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 399be000-7cdf-47e1-5624-08d71aea5f1a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2830; 
x-ms-traffictypediagnostic: VI1PR0402MB2830:
x-microsoft-antispam-prvs: <VI1PR0402MB2830B571BFA960F486AB7EF8FFD40@VI1PR0402MB2830.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(366004)(39860400002)(376002)(189003)(199004)(6246003)(486006)(55016002)(9686003)(74316002)(54906003)(6436002)(110136005)(316002)(4326008)(53936002)(2906002)(25786009)(11346002)(33656002)(446003)(186003)(256004)(76116006)(476003)(26005)(6116002)(66446008)(64756008)(76176011)(229853002)(102836004)(53546011)(6506007)(7736002)(99286004)(71200400001)(305945005)(7696005)(71190400001)(66946007)(8676002)(81156014)(81166006)(8936002)(86362001)(3846002)(52536014)(2201001)(2501003)(68736007)(66066001)(478600001)(5660300002)(14454004)(66476007)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2830;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YVpOFqtCwm7mI1GU9dO1w3ygN8vlox+Eci6YHlgmiXD6co9xgeqoNRC+xfixjqMKtD9Kk/sJnwaBuVX4iW28fFzAX+BFwm3J7ToD3km4Kkv8jqUAJBto9puctVjDKRnaMiVP+Ouu139xU8Y7LZlJtDPfb0QHmee+C6i90mWVPH2dBuD0b6czcvR5MmzvafPuMb5Wxpwv6uJ9/7TQyfvgnJIVjUSQRBI7A+t0Tz21GxZgNO0IycV88CcQHqqtKz6NoPjv5kmwGr8oWxs/nbHsXXlP+wtMT2WlB9BrhjpDQtHSvJbPf6yqT8YZVxNdlUpDoJuwofKIrixHdgip5Ef9CBB/qcoFfMReClWqLk0tlq9eyo8ypzw0MQkMkfUogt7fft63jBvCSWkX0AWJowUgLnuh9no9O3cCm8EQDAFcWUk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 399be000-7cdf-47e1-5624-08d71aea5f1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 03:50:21.5016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fugang.duan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2830
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_205027_076141_42FED6CB 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org> Sent: Tuesday, August 6, 2019 6:04 PM
> On 04/07/2019 15:20, fugang.duan@nxp.com wrote:
> > From: Fugang Duan <fugang.duan@nxp.com>
> >
> > i.MX8QM efuse table has some difference with i.MX8QXP platform, so add
> > i.MX8QM platform support.
> >
> > Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
> > ---
> >   drivers/nvmem/imx-ocotp-scu.c | 7 +++++++
> >   1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/nvmem/imx-ocotp-scu.c
> > b/drivers/nvmem/imx-ocotp-scu.c index be2f5f0..0d78ab4 100644
> > --- a/drivers/nvmem/imx-ocotp-scu.c
> > +++ b/drivers/nvmem/imx-ocotp-scu.c
> > @@ -16,6 +16,7 @@
> >
> >   enum ocotp_devtype {
> >       IMX8QXP,
> > +     IMX8QM,
> >   };
> >
> >   struct ocotp_devtype_data {
> > @@ -39,6 +40,11 @@ static struct ocotp_devtype_data imx8qxp_data = {
> >       .nregs = 800,
> >   };
> >
> > +static struct ocotp_devtype_data imx8qm_data = {
> > +     .devtype = IMX8QM,
> > +     .nregs = 800,
> > +};
> > +
> >   static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
> >                                    u32 *val)
> >   {
> > @@ -118,6 +124,7 @@ static struct nvmem_config
> > imx_scu_ocotp_nvmem_config = {
> >
> >   static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
> >       { .compatible = "fsl,imx8qxp-scu-ocotp", (void *)&imx8qxp_data
> > },
> > +     { .compatible = "fsl,imx8qm-scu-ocotp", (void *)&imx8qm_data },
> >       { },
> 
> Looks like you forgot to add this new compatible to device tree bindings
> at ./Documentation/devicetree/bindings/nvmem/imx-ocotp.txt or forgot to
> add me to CC.
> 
> Please resend the patch with it, I can not apply this as it is.
> 
> Thanks,
> srini

There have no separated binding documentation for imx-ocotp-scu.c driver.
It is reasonable to add the new compatible string on below binding file "fsl,scu.txt":
Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt

> 
> >   };
> >   MODULE_DEVICE_TABLE(of, imx_scu_ocotp_dt_ids);
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
