Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3651FCD76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 14:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lUzQZ7N2rNbilSkvLjnuUMI9BCz7NYiZ+PxzlAt430=; b=dsANfRZjU8UXyh
	Leuu/8L9pUwBj+9Or8+gevyhy5Fx8N7eAJ5h5uZS5VnCM1PeBJjoh9GMzwVzRC3U4JZEIncDQDTOe
	RAc6NjV4+Xp270xlS2iw4D0VWUqnSoYPLln6EDcqjNdLTc1ui357/VWQA9yFly26kMqQ+Uwe8SapD
	B1SBwvRO0ynZ+ehLoLR1XelvUoTZERdGRgzCQ4dEfphmvrKt4X8vFKBSHSion/j0KbvWxwj3yKyON
	kmgAVUMgNaHAzSeFYuQ0ML0OULZu5//mRcss1WRc2dxgvm3sAFwBavoljFsxLVcXH74hyJdZy3mNS
	84VtVSoFBMSGiz/RreHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXEN-0003Bk-KI; Wed, 17 Jun 2020 12:31:51 +0000
Received: from mail-eopbgr60054.outbound.protection.outlook.com ([40.107.6.54]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXEB-0003B3-3A
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 12:31:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hgFdiNAJ9KNmUUY8iQXd76aAtM1j3f7eGJgJiK5oyWKpoGSXOSpY19N4mkuZo9IuOV0fP89yRqhbAQRP3kYejSB3GP5TsksBIjiZ8O+KeFxzeZCSBCmom89EqFO5uFPHE7nsQFO520SrmhqTF9HS86d5LZvMVJKTQI++P1PaFsD82ZAIkMER1Fc8lh8dblwgx+VEBdY+NyXzs/nN/3ObnYGuQ5dmZpp8v8dny7ZLWGPzf++2CRBHbCjeCZlRJ0CdmZ3FAReoaYdOJx5mDARnCKLORmsrXIKYVR2aopmym8rE/aOlPjkTD9NH9J8Vxmtn68gmNOZaUhqIXSKQylYJEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Li3kh4MLDOJ1/8cznkgPZE1JxjJ2O+9lKERAUqgj7k8=;
 b=BeE8wrEQBL3KIwzWFi5noBXsRi4qYAK2ATE/mUy+kvGzW343+A0X123U5R9gXOPUbBJQ1QVRTgqNLw+XeQEiIZLsgZA3s941+UZyMSpgs/bMt7reKOmk3DO5hPnTjl0c2dstMk3frW2JwZWQnwtisXx158ZFg4yaxXe6nvEMRtTRdj+X4fNM2awSLXrgjo+f0Gq4oKuM3s0teQzffthyhoQzFNKXBicK6nW72/0+ltWfI/6aoTaPVjSbwGM7uF9VA/JxMt1cBjsSriJzBzLDbU8kSJdzAvMoDoOpw3wJBllhN9mjQwKSMp6gcELhrvel8qnvFziyMSeB64MR0Ew7Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Li3kh4MLDOJ1/8cznkgPZE1JxjJ2O+9lKERAUqgj7k8=;
 b=YFGy50Rud6J8FVcvEHCY/WBTxesQaAnjapH0wbv430R4zeqhGsHFA7pPJoKd/ZCUeFoMsmO7BRl7I/a9WJ/gSxylf1SxeUC0g4U5wXFxkt0zFecqjmDZBN1VKhrDwGdbBS5TnS+Juqj9U0+5rAZ/O/AJJhkkpfk3m5v0esMd1Ec=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3818.eurprd04.prod.outlook.com (2603:10a6:8:e::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Wed, 17 Jun
 2020 12:31:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3109.021; Wed, 17 Jun 2020
 12:31:36 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "oleksandr.suvorov@toradex.com"
 <oleksandr.suvorov@toradex.com>, Stefan Agner <stefan.agner@toradex.com>,
 "arnd@arndb.de" <arnd@arndb.de>, Abel Vesa <abel.vesa@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "info@metux.net" <info@metux.net>, Leonard
 Crestez <leonard.crestez@nxp.com>, Andy Duan <fugang.duan@nxp.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH V2 1/9] clk: composite: Export clk_hw_register_composite()
Thread-Topic: [PATCH V2 1/9] clk: composite: Export clk_hw_register_composite()
Thread-Index: AQHWPjGiF9uPvLda2kWeKUSGmuz6tKjcoooAgAAmlXA=
Date: Wed, 17 Jun 2020 12:31:35 +0000
Message-ID: <DB3PR0402MB3916CD2DEFC64796E7869EEDF59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-2-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49665E5D93C2FFA8221F8660809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49665E5D93C2FFA8221F8660809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 50167d62-306d-45c2-8bf2-08d812ba6041
x-ms-traffictypediagnostic: DB3PR0402MB3818:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3818B5678A1D052042EDE0F3F59A0@DB3PR0402MB3818.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8uMBnudk81htzmBCpv0xbJzzI8VYeL0wr8Y3eMYEl+cDzZzeH3YRsNSq57e562E48vsZBVHgxwiP530WH5HygtwKe3vHxdoUUnhzCoJg9EJNSHsOV8IBkSTI6aoWGwqtCnaiefxJG/OSHX9TebzJom8ad7twOjZ9QPdXPAY9kp4WiofL9JGT67AZJYowDWStUXHaItYXeL1PftwsQiyHBEF7l80PX22uJJ4UY8FsuITTXqiSdwvZaKze5yq39GVdT8wVpeNVlkiAjspVTqJ8Iw25Yk/tviBdpri8IBaRw0blZdAPzZGzOQrnTNqF/qX4Rfys5RLVeqVHPgdC9i9knfub9BAIZ7cw2fz5H6fNU44TH8J1smtY5FV2WSCkxhlv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(39860400002)(396003)(366004)(346002)(186003)(8936002)(5660300002)(86362001)(2906002)(71200400001)(52536014)(6506007)(26005)(33656002)(83380400001)(8676002)(4326008)(7416002)(7696005)(316002)(478600001)(9686003)(44832011)(66476007)(66556008)(66946007)(76116006)(64756008)(66446008)(110136005)(55016002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: +B8UFrimNTTbV9P6c538d3YktTI6yheOEtvwsVz+m6HJlXUVEQdu/G+Tp0RmjN4jw611HjvDz+JBjTgTvdNkmzS4wwgH6lD2DgbygMMz4pvvIPYw31Dyn7/qVN599RG5b6oe+NRskpjdjXB55DLGdZpEGvxahVSZnwFgz9TbizUZT3nbZZRcjkAtFc56941vWVRhA3/I3CVRpTvLDLMooWUeWsIM75dPH2eY8DJsMYj3zkh2DJnErr+hAAH2rBekwSjUUxJwmlg1IuoUoZhLUOXq/RyDidRo2CGKLn46hRz+3L3Bl2jlLqUQvHUf6gbcSmaLEqJ1bNSzxC7PvbY73ywFoUjrZ9ujqceMF2BhbrNGir1tCwCp/XMx8dl2/AZGDoCZBtFiXen7MLmr7KczhamLyxQI8e9EirMgqd3wyvOoQ4qJahl6nBlB8x8qzxIfLGDbC0vMTeNsptAfN527JL86kg3euU6TNRbeIbjkGtdhd1JbwaP8ujBV0GaSNfQe
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50167d62-306d-45c2-8bf2-08d812ba6041
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 12:31:35.9881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nB4ctq9WoaAU3FEkRHOnD+U6RtdO/JjLvUXughHBkI3jdiEr8lDc7tIsfGZvsAkPid/2wuRRS5aCRlvwRxHS2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_053139_137398_8D83FE82 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.54 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: RE: [PATCH V2 1/9] clk: composite: Export
> clk_hw_register_composite()
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Tuesday, June 9, 2020 3:32 PM
> >
> > Export clk_hw_register_composite() to support user built as module.
> >
> > ERROR: modpost: "clk_hw_register_composite"
> > [drivers/clk/imx/mxc-clk.ko] undefined!
> > scripts/Makefile.modpost:111: recipe for target 'Module.symvers'
> > failed
> > make[1]: *** [Module.symvers] Error 1
> > make[1]: *** Deleting file 'Module.symvers'
> > Makefile:1384: recipe for target 'modules' failed
> > make: *** [modules] Error 2
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > No change.
> > ---
> >  drivers/clk/clk-composite.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
> > index 7376f57..2ddb54f 100644
> > --- a/drivers/clk/clk-composite.c
> > +++ b/drivers/clk/clk-composite.c
> > @@ -328,6 +328,7 @@ struct clk_hw *clk_hw_register_composite(struct
> > device *dev, const char *name,
> >  					   rate_hw, rate_ops, gate_hw,
> >  					   gate_ops, flags);
> >  }
> > +EXPORT_SYMBOL_GPL(clk_hw_register_composite);
> >
> >  struct clk_hw *clk_hw_register_composite_pdata(struct device *dev,
> >  			const char *name,
> 
> I guess you'd better add this one as well.

I did NOT see this is used in upstream i.MX clock driver, from my test, it is not necessary so far.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
