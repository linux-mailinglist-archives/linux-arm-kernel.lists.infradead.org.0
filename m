Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306768978F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 09:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPiyTjOxDif2JlfwHi9mBLkN5iGr14ttQEfZj3SKZok=; b=SZ6YusQxcmArxJ
	WM03eyeBNtNPeNDWSEn5vLn/Dun4wiNGNr6vwseFDhUGi/jLSV+J9f6tECnsRAWOcf+leymafkm7X
	mDoO9lOx8FB0Qc+mi/pHgebgNBR6mYgsBsAI+qBpASSNgVXvD5H719cQTWQjJAGE2VyaJY8tUuo6N
	Z9D9mzqZ6GLefOn/g+MI+JiZKdpAAWYYzYL3+xhPTAKYYAnschF1RS9UFBNgO6OVqmxG0T6xgePxa
	UI4ZZcZnLRb11kssNA6X3mgJ/AYrYPEImotoHu+xwcwfav9FHWqZGq2yCrzlmbL08TNheQRyU/5pO
	WCRWBk3JJqXZtDP1rXrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx4UX-0005Gh-VD; Mon, 12 Aug 2019 07:11:42 +0000
Received: from mail-eopbgr50065.outbound.protection.outlook.com ([40.107.5.65]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx4UJ-0005G1-EO
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 07:11:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QNdqu1gd9pzENV+1JOCJTAUJM1zljf/nH1/pp2s/ObVsPgH1lZZQyoIInl3cJV3AEDWfuL5ihudd6lLs9+r2EMhqZ5C9cpJQ7nUB86pGv6tQXrJXhOTx6na6sRdYrKGul1YsiFqXCmZ5hlcGZe8g7LNMrQK/TiLLaxpjqomUcqUW0IIPASVcZgBJ4qiU1rv87YYynReTzpbvGn7mZay5yLPSzKulOoqWzgglqQCzER2wPI+SPmphDQfirgqTjCvAddHrA9DHESELKO5YbQT5M9qazBIJfjgPO0ZXLqezLn6UzIqjEuBqf3jIxVcd/ZxasFtL3hfm4JNnKQzmCzxQQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H+b1tuvfHz0rqk3WY/Zbneknmp3f4mUaa6q4VONGXIo=;
 b=nopwErRE7LnliRyeVXgWcw32F2oMZ/tjDF1mbXNx+7uSJFpmGv/KochxWWLc/vh2tHb/4jBohUUc8y5ZCwhzxsUeJgBQufxjc9nXikgMJmaDeNg786fsqz7PG66wBm8XKonXO+KiXTVklkh9zvEvoCQYc/yQDyPhJeQz4wVgor7NMoeIQ/Cgj5YpZseHaGiuGdftl13in7XZj+KkWoCYj5WJoANAqIXXktWqygjgL99Ml5hho78H8YLXoK8iZ5eQYOQMLEdTYdm48z4GyVDhiviHh46baNyGP9HcZ+BynXY40ULDXQmCzfK7k9MrCAuC+jxXs0fTUtehmMKTynzS2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H+b1tuvfHz0rqk3WY/Zbneknmp3f4mUaa6q4VONGXIo=;
 b=RcBR4G5pS66dTxdrTRGdNOMxHAOdmvs3nuLWPgWHscLcVQIrKRYmum+l26WiSSP2OMPBtm2btZIAYPwtpnHl39s+SBfn1RNmhhUWzCK0t/gJXYyXhpFl38VitzesDBdS3c1fgU8kMDPdS/oGzXXuBAXKgmYReRuh4op7GUjDOc0=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4874.eurprd04.prod.outlook.com (20.176.234.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Mon, 12 Aug 2019 07:11:22 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::ccc8:8:c071:8283]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::ccc8:8:c071:8283%5]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 07:11:22 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [EXT] Re: i2c: imx: support slave mode for imx I2C driver
Thread-Topic: [EXT] Re: i2c: imx: support slave mode for imx I2C driver
Thread-Index: AQHVTZ48m9LP8x07tUuNIj/REJ9fGqbxTP4AgADfP4CABOmYAIAACNhg
Date: Mon, 12 Aug 2019 07:11:22 +0000
Message-ID: <DB7PR04MB44906E021E691694E30C63128FD30@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20190808035343.34120-1-biwen.li@nxp.com>
 <20190808141814.wr4hlmbaek6p7dy2@pengutronix.de>
 <DB7PR04MB4490F2C2C4B69F0F011420C98FD60@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <20190812063822.7odhnj5ueqjam3g6@pengutronix.de>
In-Reply-To: <20190812063822.7odhnj5ueqjam3g6@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 47999b42-5db9-418f-9815-08d71ef44808
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4874; 
x-ms-traffictypediagnostic: DB7PR04MB4874:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4874A05A557FA6F80E4861F48FD30@DB7PR04MB4874.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(396003)(366004)(376002)(189003)(199004)(71190400001)(71200400001)(76116006)(64756008)(66446008)(66556008)(66946007)(66476007)(6916009)(6306002)(53936002)(3846002)(6116002)(9686003)(55016002)(2906002)(4326008)(6506007)(478600001)(81156014)(966005)(186003)(6436002)(7736002)(305945005)(45080400002)(74316002)(6246003)(76176011)(5660300002)(8936002)(66066001)(7696005)(25786009)(99286004)(33656002)(81166006)(102836004)(26005)(8676002)(446003)(11346002)(14454004)(476003)(86362001)(229853002)(256004)(52536014)(44832011)(486006)(316002)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4874;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xzQfM1wHMN//QWDxl6FDP1X1Fd9YzRIE7937OZBTFPQWJT2TeQnBPBVBqN+8Am/8qZn85dmvIukHH4j+MJmSSb+flDFENt2nIFMPPpoRzBXyj3rX2GMD25tXh1emjLHoR5fzXqrS8mfmtsOruMhyobC/JSg5+Tu8yUuELV2DfEXczDBbQjEhvvf9nABeqoOTW7SbBaKvYsoyio3adMJGVtiovn4ZfDbxtSBFqF6VOjbJiw82vsl+mxmxB8Lv0SV6Kax3O+4A+XYVeAPZ0wMqJDS66QbnxM6B7RNVzdYUgzTQGeeWehtlMnl9cv5+7WVlWrsoM2ArPFDiT/5DwVsK0g6r3+BDCbz/H7zvd5uCG5Coe/nTt180AjOXbaYr0JOwyCkCvi5Wps9V9q6z4R844lFOuytiex2q7FhwVS6IzJY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47999b42-5db9-418f-9815-08d71ef44808
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 07:11:22.4801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PcmU5fpTiyZw80IPAdjDUEPRRMFw4Iy2tH3zMBhyhGhEelW1mE4GvXdoPWFcfyNU8y/IrJarsaRC1Oqwc0juxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4874
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_001127_568915_53AF460A 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.65 listed in list.dnswl.org]
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
Cc: "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [EXT] Re: i2c: imx: support slave mode for imx I2C driver
> 
> Caution: EXT Email
> 
> On Fri, Aug 09, 2019 at 04:04:45AM +0000, Biwen Li wrote:
> > >
> > > Hi,
> > >
> > > On Thu, Aug 08, 2019 at 11:53:43AM +0800, Biwen Li wrote:
> > > > The patch supports slave mode for imx I2C driver
> > > >
> > > > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > > > ---
> > > >  drivers/i2c/busses/i2c-imx.c | 199
> > > > ++++++++++++++++++++++++++++++++---
> > > >  1 file changed, 185 insertions(+), 14 deletions(-)
> > > >
> > > > diff --git a/drivers/i2c/busses/i2c-imx.c
> > > > b/drivers/i2c/busses/i2c-imx.c index b1b8b938d7f4..f7583a9fa56f
> > > > 100644
> > > > --- a/drivers/i2c/busses/i2c-imx.c
> > > > +++ b/drivers/i2c/busses/i2c-imx.c
> > > > @@ -202,6 +202,9 @@ struct imx_i2c_struct {
> > > >       struct pinctrl_state *pinctrl_pins_gpio;
> > > >
> > > >       struct imx_i2c_dma      *dma;
> > > > +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> > > > +     struct i2c_client               *slave;
> > > > +#endif /* CONFIG_I2C_SLAVE */
> > >
> > > Other drivers just do a "select I2C_SLAVE" in Kconfig to get rid of
> > > these #ifs. We should do the same.
> > Hi sascha, I don't know your meaning, could you let it clearer?
> 
> Other drivers have "select I2C_SLAVE" in Kconfig, so they do not need any #ifdef
> CONFIG_I2C_SLAVE as this is always true.
Okay, sascha, got it, I will remove the option in v2, thanks.
> 
> Sascha
> 
> --
> Pengutronix e.K.                           |
> |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pe
> ngutronix.de%2F&amp;data=02%7C01%7Cbiwen.li%40nxp.com%7C2ad7a8ef
> 04c84f224a9808d71eefaf43%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0
> %7C0%7C637011887098895560&amp;sdata=Dde7Hi6eMWcg7SM8T63eBtgY
> XsQPu3HFJaZMt6z8Vck%3D&amp;reserved=0  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
