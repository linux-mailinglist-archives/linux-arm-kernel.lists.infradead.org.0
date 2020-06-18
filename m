Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CD71FE366
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 04:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLXegRnLOea/oFaiIxmqk63CHdmQZkk0eHqe3sL7x+4=; b=tamuYaX0YNqQkF
	4K6umrU1ZFEkFicX12BDcOkmqJSGFEWS+RwBJHFUBVWxhKPs1YtG5pDlC2SrEO5ADrQPjNAOi6lvm
	jdnqFDFoX+JpRbq6inlgOLTJDgilh04gAIl60Qko1XL9Rum/mhcQSY6R6Av4UZMKNCS4vqUdEtRJs
	zh6ke3ElckQbS4PsSzvalya9PBshAfozfw7JL+VBt+5ihtmnmSuPsVW+h9UpaVB7Xombfo/3D6FZa
	1kP3fHtWjj136BwSdiBjYcM9+O3SaDgRrBInitg56/3Hn4PPdcVuw7xDx09OHKWMdKuZvAZ2UDP4m
	O8UDtl/0WHepKETIMbWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljzp-0000Fu-U9; Thu, 18 Jun 2020 02:09:41 +0000
Received: from mail-eopbgr130049.outbound.protection.outlook.com
 ([40.107.13.49] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljvx-0005ad-8n
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 02:05:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FLPyji93jyO23iI+T2+ZD7ElKdf9OaIOpiXRLqeoKAeU0WXOTiqwUlfDay0ZsV8k45+JjVuoDVXGp3kq3CcfcvUom5STOLOn2DwkKzEcngUCDzUXDLO/EdZNGfO/vLr235ndzg1wE1MHjzqfRPVSFbYy5BdOYMjBxSEQG/xGruUvqg66sFk/fAi4O8TEmpg2B+XmqjWzTwYkLnCkZn3x4xzl4nJPqrKzomYbH3GicqzepYolpq4V+vVZhqACwqJjjhG/9Qbw+p54HMhAXJeW6LRdZkhESGAD2Xk/BLekv1a6bV6qy8u7HFjLP2liF96rYNxOw/K7M0TUgrvHWRJrbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SSNH2mMh3G5tum97EB9osVdPq/42PdoRyV50sl1zWWs=;
 b=dvQ7PgmL01/vjUyDHy95wbGXSRr/kAyIOpmFcTECH8ZBGdMktEr2q9hEOzEDNwOC+bTPciczpylFtVoF2RlePu1AT6KMYIlS9KXDD2IuHilQVYh3VuPlXFpcOukT8STFZg1DNNneM0flRCRFs4VEaX7K3/AkyPiXUQ6PZSIGtopexruxhdcbTdUSJ3z3415cSH9yy3exPnz7lROP2CkcFOrmJOsuJ242z/DS1i891oS6Leuj5Qiv979HMo/ePK+ZhCyk1MYH0WPmIg3/abopfF6x+lmjP/e9ThO6bfKK0hQTqHT5lsUhc8RmHPEYfAtImAvhWFGKo+twmaxH1HWhfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SSNH2mMh3G5tum97EB9osVdPq/42PdoRyV50sl1zWWs=;
 b=bALeau/bLHtNzpNTLrLKTXrfZda1PlLbZ3x7qa+ISRMBoBS0fx8mVf7xS0z5UCqnYd9+hFV4nAFCzVJZKiYuMvTrfpZf5+lS/50qWnldDg8K+0x/T+NC/WNx7CsKeiLcfoQ+FGgGcMdoRRAZSK+sHAfEm9mJtI1Pc/ca83krGAU=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5000.eurprd04.prod.outlook.com (2603:10a6:20b:7::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 02:05:37 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Thu, 18 Jun 2020
 02:05:37 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "linux@armlinux.org.uk"
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
Thread-Index: AQHWPjGiuQ2F29kQlUqqseTZxooV6ajcol7ggAAnuICAAOHM0A==
Date: Thu, 18 Jun 2020 02:05:37 +0000
Message-ID: <AM6PR04MB49660A7940C920A513EC87D3809B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-2-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49665E5D93C2FFA8221F8660809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916CD2DEFC64796E7869EEDF59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916CD2DEFC64796E7869EEDF59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a209fc33-a749-4849-6d9e-08d8132c17f8
x-ms-traffictypediagnostic: AM6PR04MB5000:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB50001CAE4F3A3261489AAC92809B0@AM6PR04MB5000.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3ZL57wArh20MWZfLHYN6nO7dbnwsgJ1/VeKUZGh3UGK5ppZ5f7juQLdnCgCzhH4UE9p+UHOglsaaK4oQDqJcwU1S0Z3vzWgMfttt63nKQrFw3jtHPYupRt9xqvMAyBz80pd67KvMBK4p0tnSyWr854vDRiZM/u+lOTvCd6HmtrftMKjSywfABOEmFQN6FESXO+z0o9B5fqgIWRKSo7REg0sz1oXsWQTuy1uLe0p4sWUDSv7DoB1x1IRmjtITerMwOrcz9sJZ0Yhwqpgg8IzF2rDmz73SVCspdvzVM39UVe4sKkKFMjL2OOsE2mj0WduXmGie3fNRxJ63RLoJRioEXYINrASrIMJ4TM7Ggbh5tHgJWqsmBp1Zisj8CDRrdRwb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(396003)(376002)(136003)(346002)(26005)(2906002)(186003)(66476007)(76116006)(66556008)(33656002)(64756008)(66446008)(110136005)(316002)(5660300002)(9686003)(7696005)(55016002)(66946007)(4326008)(53546011)(83380400001)(478600001)(44832011)(52536014)(8936002)(7416002)(8676002)(6506007)(71200400001)(86362001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: lzGpgMXYF7hKjgJBPIMMvA+Y+7WEjZ0LglhimfmHK/cHW2RMgZdUMpHTIrcYoQLmHH5DS0oPcF15/s1i/fcYJYjpT8jdQPDA3jCK2XvRMGjCAzw6b0O+8OSEbCNjZjjpf9eXqki0jOmO47wcoBLnb694+Rp2Xn9pmNK7oNM+8H1NBKGhP2Q1qB7bWlMq59V9zpGcmXNbhpQ+Tvf5dFsApOHtKmhqRJNACiMN7BtTC5h6TpkW4wB604hIC4TIONlT6Xf7Pw7kqO6vNGazSdxoLsSEPpYxdSNJ0Ic0HjlfnQL0ak1xNMuP1FTO0M0z+YbAbcB2FpGw5p9glh+nqJmyRPa5jlL5UE5eMv9XnmB/7Nj+cH+ZkYOrOYCFJ0MFxVDxMiUAGzTHRlHgT0fFPWf9hG+em+nVfriycLQoym/TscI4D296yGw4GPbGZkrhr3pyn/tnAt/3/z2Ck9X2WI22Jg63/TePm8OIWBLOCJ3ECRB5zvlin4Qm3gjeYX9w6Fjp
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a209fc33-a749-4849-6d9e-08d8132c17f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 02:05:37.3841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RLahkin9Y+PAV9Uf52/nhZFlucBVtYjR6tlDLZzDJI0p5wgP41h8X/V82PYuYn4eqdA3wkF4R4FdTtO7RtmPKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_190541_396950_4F62096F 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.13.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.49 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

> From: Anson Huang <anson.huang@nxp.com>
> Sent: Wednesday, June 17, 2020 8:32 PM
> 
> > Subject: RE: [PATCH V2 1/9] clk: composite: Export
> > clk_hw_register_composite()
> >
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > > Sent: Tuesday, June 9, 2020 3:32 PM
> > >
> > > Export clk_hw_register_composite() to support user built as module.
> > >
> > > ERROR: modpost: "clk_hw_register_composite"
> > > [drivers/clk/imx/mxc-clk.ko] undefined!
> > > scripts/Makefile.modpost:111: recipe for target 'Module.symvers'
> > > failed
> > > make[1]: *** [Module.symvers] Error 1
> > > make[1]: *** Deleting file 'Module.symvers'
> > > Makefile:1384: recipe for target 'modules' failed
> > > make: *** [modules] Error 2
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > No change.
> > > ---
> > >  drivers/clk/clk-composite.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/clk/clk-composite.c
> > > b/drivers/clk/clk-composite.c index 7376f57..2ddb54f 100644
> > > --- a/drivers/clk/clk-composite.c
> > > +++ b/drivers/clk/clk-composite.c
> > > @@ -328,6 +328,7 @@ struct clk_hw *clk_hw_register_composite(struct
> > > device *dev, const char *name,
> > >  					   rate_hw, rate_ops, gate_hw,
> > >  					   gate_ops, flags);
> > >  }
> > > +EXPORT_SYMBOL_GPL(clk_hw_register_composite);
> > >
> > >  struct clk_hw *clk_hw_register_composite_pdata(struct device *dev,
> > >  			const char *name,
> >
> > I guess you'd better add this one as well.
> 
> I did NOT see this is used in upstream i.MX clock driver, from my test, it is not
> necessary so far.
> 

Normally we could export them together in case it will be used in the future assuming your patch
is making clk-composite be able to be used by modules.

Anyway, it depends on Stephen's preference.

Regards
Aisheng
 
> Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
