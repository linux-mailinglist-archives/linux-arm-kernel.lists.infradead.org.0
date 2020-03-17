Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D326187790
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 02:43:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vtt+zFGDFojDwUPHeL+/NSfZ2gXQ14/LYI2JRF5zdRY=; b=H+bz58iYvyZCao
	EJyrdQJgbcSf4N4u2VFMiFVINQvtHtBH80ymHd1KBVWh7TjHgodJBWgjXqa0UYiAe3TBLeCmwU7DO
	DZCF9hgNT9xMXoM0Wd4UHn6aavLNH1WlULw91SZjh7dREKVHf2UallQDQDkytW3k3tNMSp+ZFGutf
	bzsUqIdJc7MzJuSIfYodm3dlI3/3s4u7Vf16Bf81fPsXkT2IQ8MVRRjBbecVFFB/FF0TJHByti4/r
	t7u0PBZhb6dxz6l7ge+kqgqzZsvlr7/KwL0p8xXMZ4SMJEaz9V5NeH3DNhusXT0/E8/l+OorZisDg
	zN5eWthyDEYEgRx/1tCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE1GL-0002tg-Ci; Tue, 17 Mar 2020 01:43:21 +0000
Received: from mail-eopbgr140075.outbound.protection.outlook.com
 ([40.107.14.75] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE1GB-0002tG-Ry
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 01:43:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DLvHHdLMn+uyVv3iLvgGsengNaMAt7iFahYc1b9xJpjoUjbsL8c6XQ9B71/pRhk/oLwVc43IAjdAoaE/Swyc7mCOWvxTGS/WlDZC16+i8ACdn3rG3NZ4rAljSMvGriE+mI4S5//VMoXyJyVXpVtDBkCCojZ4mrv4YfE58dT3BV2Qb2Da/tjbAOTq58GjV/qllbN9kQtfbkpGiKIXbBtQn3nmZneXvE/K0O3fj7SwQLlNlfjcHBJ7p61Gu3Xa9RpPzSPgu6KDZMJgzu7YRczUQSc7Yi+PSeIGjP80oNe5h+riaq0A/bch5JlaK974T79aB+diXVVyu1PmPH2iQczSXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AjpPiMG0v4kANUg/vdZM4fkyh5Kkv2kMkxAAm5cqWr0=;
 b=HZU61vdmhmptyNufYNR8uIsnsA4FzxfDoMQWbWX6rWEl3nau3MX4cK+xxPfUqltsqKFBSQzC9CjJ8OV3pzMmCLz7+loKnDLKDnx1rFrmYwpUktj+hHY7Jg2pPnfCj6VmZGesR2iGO0xJzr5cUDYojCfbKUh7Q92kXfv2oshXiG5QPZBZT7po+Oh1FwYXs4bNKmZGO4cnvpm1pxZjzXJ1A+614xhzWoNjBRcSBgfOyJDRlQ2K67H8Wyy5YNnMbbbxaLqAoPynZ75rry3YtnEcaSNaQvkN9EqpGn6Wmo11pk0mlSziZqV3UIBPARQCDrNQwzoKuAtTFkr+IyuhOp35bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AjpPiMG0v4kANUg/vdZM4fkyh5Kkv2kMkxAAm5cqWr0=;
 b=B+DdGP6rEcCkA/v85XAe0G7cm7CxaqurRZAAG+bXL0HT+UDUtFicbzAUosZM6dMHhJez1waNZ45z2wa9qevYFnZ+OME9Qj5pvma7b9HXwTfFEHPhjjP/j7K4xuoIJuMjbridMiBlEtbBJmf3TAfuWmCUxrDwL7ghDVgAPhql4eY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5124.eurprd04.prod.outlook.com (20.177.40.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Tue, 17 Mar 2020 01:43:05 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 01:43:05 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH 3/3] soc: imx: select ARM_GIC_V3 for i.MX8M
Thread-Topic: [PATCH 3/3] soc: imx: select ARM_GIC_V3 for i.MX8M
Thread-Index: AQHV+OhCoWIlKfRHBEqAZhv4+QN6jahGTaKAgAR8rgCAABcfgIABJn0w
Date: Tue, 17 Mar 2020 01:43:05 +0000
Message-ID: <AM0PR04MB4481E9713BCBF6B0E924750988F60@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1584070036-26447-1-git-send-email-peng.fan@nxp.com>
 <1584070036-26447-4-git-send-email-peng.fan@nxp.com>
 <CAK8P3a14BU5uHEqkVyWkeFVmxA1hJifQE+GkXFgmn59s_TL+Rw@mail.gmail.com>
 <AM0PR04MB4481E7BC1DF01CFC975577A088F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a2F4oREw8AgNqQo18hLfVG4GcMJ72bST6EBd_KYhsRfsA@mail.gmail.com>
In-Reply-To: <CAK8P3a2F4oREw8AgNqQo18hLfVG4GcMJ72bST6EBd_KYhsRfsA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 000c6652-30f5-4afe-ccd9-08d7ca148995
x-ms-traffictypediagnostic: AM0PR04MB5124:|AM0PR04MB5124:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB512453D506178D711845E67B88F60@AM0PR04MB5124.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(136003)(396003)(376002)(346002)(199004)(71200400001)(9686003)(6916009)(8936002)(33656002)(26005)(8676002)(81156014)(186003)(4326008)(54906003)(55016002)(53546011)(86362001)(6506007)(7416002)(81166006)(44832011)(316002)(7696005)(66446008)(66476007)(66556008)(64756008)(66946007)(76116006)(5660300002)(52536014)(2906002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5124;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6C6VFT2qSpuzbrn/bUH8l84S3O1uCi7u4uhXbd6f/CbeCxRNn3SUtWsu1QEIgKjwaWvU1quBJPLmdlfbcO3z+EskQTJ0/uSuDKHevqn9Qso7vxmyQAalINv6VBxuevfrB9JhH6HCpM+N/ilKNebsUWB5lEMFCgC12sF2wg8gn8PDTRuAedXNp4lgVssD7R2Pr1kacjN03wYN3WZAJGhdHqF/a2RVgWQ7uWnuVN79n1YmWLLFFkJYhZ6OaiBddTUQ5YHDBt/NNyjlqY1cnumwLW6FgX6zAX3xxoGUpAnaSKIqZ8TKURhNsdmqc2Dq0Zffi9a1Rxh7BWkk4taEkTFBOU8hZfWT8zy5NiuWniVMyFFlrsSgAyF3bjVIkONhdRayXsEZ+RDU/3qkHwTQPIapWLh64kfASz0lSsc3frQkdYDKWBb15G1O8lHvaPZH3BLe
x-ms-exchange-antispam-messagedata: q1n3qvz/N5N5Oc+0UVdzPF+9aYfACUZbk0n1DTEYdshpLaf5sPwI2ljIsnX20QAxq6CzBCCkf+HvCaLl4OaUzxuntCDWG/WCqzj5XNbF/4hEvaaELySHyHUGh9O3sKXd7gpiDrPNoM85uPhQx5n0CQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 000c6652-30f5-4afe-ccd9-08d7ca148995
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 01:43:05.1088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nyLzvrrWNYqczCNHnXXNaa4goLML75G6ntoGlPO632Fl3PM2+qa/DLa9YzLZr7yvjK8QCvZmcB2nY9jhY36W9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_184311_909059_6BF1A1B1 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, "open list:GPIO
 SUBSYSTEM" <linux-gpio@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

> Subject: Re: [PATCH 3/3] soc: imx: select ARM_GIC_V3 for i.MX8M
> 
> On Mon, Mar 16, 2020 at 7:43 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > Subject: Re: [PATCH 3/3] soc: imx: select ARM_GIC_V3 for i.MX8M
> > >
> > > On Fri, Mar 13, 2020 at 4:34 AM <peng.fan@nxp.com> wrote:
> > > >
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > Select ARM_GIC_V3, then it is able to use gic v3 driver in aarch32
> > > > mode linux on aarch64 hardware. For aarch64 mode, it not hurts to
> > > > select ARM_GIC_V3.
> > > >
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > ---
> > >
> > > Acked-by: Arnd Bergmann <arnd@arndb.de>
> > >
> > > > diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
> > > > index
> > > > 70019cefa617..0b69024296d5 100644
> > > > --- a/drivers/soc/imx/Kconfig
> > > > +++ b/drivers/soc/imx/Kconfig
> > > > @@ -21,6 +21,7 @@ config SOC_IMX8M
> > > >         bool "i.MX8M SoC family support"
> > > >         depends on ARCH_MXC || COMPILE_TEST
> > > >         default ARCH_MXC && ARM64
> > > > +       select ARM_GIC_V3
> > >
> > > It would seem sensible to also drop the dependency on the 'default'
> >
> > If drop default, we need enable this config option in ARM64 defconfig,
> > I would leave it as is for now.
> 
> I meant making it 'default ARCH_MXC' so it gets enabled for both 32-bit and
> 64-bit i.MX configurations, not just 64-bit.

Understand. I'll drop ARM64 and post v2 with your A-b.

Thanks,
Peng.

> 
>       Arnd
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
