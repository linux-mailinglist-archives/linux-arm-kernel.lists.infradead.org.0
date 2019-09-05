Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D55AA6B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 17:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mdr2Vj08HFparRAZolbsQdhsPrrZeUxcNHVfsCqzw+s=; b=QrZ5FUW8KvLG/m
	mPHcV+szZloxS6MgyYLVYZKUOcdrRuB0G7w7/ViM3vfhUM9AZTlKazr3uxwQl8tL5S9uz8n+cgYmw
	nFucn+2a1EFuPqXANe6rnY++fqXbP9qEULYSK623XPssw22Nql4tp1iIGbQgVE9z5zHhlp93OEyIH
	++KrXJ0zWfDc78d7wQFb9IpSK/BNx5HiaoPoe1M6qLq4WouGfKq4u3FFYjtlIciicNMSW8SBOO34O
	f2joXz/T+TsbJHPpRo2a9sOVE9yxFhHYcE0UcUon8J0iBEgBQprzyRU700exeL+yHGNCAJ3UFSr4D
	YNBbXW+/Rz9wgyvylNCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5tJz-0006NX-JJ; Thu, 05 Sep 2019 15:05:15 +0000
Received: from mail-eopbgr50080.outbound.protection.outlook.com ([40.107.5.80]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5tJo-0005GC-Vu
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 15:05:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WTDBtp20RNcGWwUiTYnvOOTUDI11yDdim4WUeaaL+AMUxecuw2lSkQaFgNo95IccD6K+f1iOMdXGt4gOMw5weB6GapnqeYr4Wk9U/pM8nbUGYBf/fSxoYfkeI/6MyZHTnLyPO800cT14rDRDnW//DJFEepWvGOm+YSeddO/SLQ4EK+Pd5GfI/7oAKTC5O0gQ8N2xOA9QpOGuy7n/Rn+IkBJlr3UrN2cd4fkgaOc8UT3e5JxX9NxCVUjS39JR0p+wGVbDImJOreweUb9cAHKLjGkilb6fZETOtfCd0VOfz0y4DodXm5dFzIw+16NGBs20WaIhcEQO6qob1UztiST6Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dh8qNTBlExiAQjh/fxxhxb/Tovj8gRMkuiDhETk7HfI=;
 b=ND1/Wuhhmo+V/pwRTQIZoSdJ/zzp0fxZHBXTZGh5D18B09hGIlTb6T1blsqpAqd1Bh879L7P2xvK7/9ZzdVlayjmAGT2PaF72Jj64mqDPKPITRvFbPnWi/PB8dTrMuJmgRuMBOLCPQVK1MI6mmAHuRLAxHatdRDc2FAeMq7jBCuosXSt99B07bOY5ITtP5isf70ziy6LmynCgk8lX0clHjvdgnAoAFTvSQY+qykXIDXvTDgWvjdVHrPoYE8NU4V4yFUEXbtXQBQpc9Mz2XxREUPzW1TCUz8Ez2NSgMh2DWTUfHaCLLTApCsG2CAUaHN5qTDYqr9+PHnrExdQxPM+TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dh8qNTBlExiAQjh/fxxhxb/Tovj8gRMkuiDhETk7HfI=;
 b=cpCyebcVh8dxiwI2JFJ9pLyf7g1RkJrfH48YSb/TVuGUfc/3Em9m67vje2G35wIlFcTytZERSgzf8yPwojohC52tvbe92fngQfjIR0J4rlsTQxUYMGD4ljPRmWBYh1oCI9kjj78w5nbmYKCTDCKsiYHC+CEmJMgGgFs39ir+IYg=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4619.eurprd04.prod.outlook.com (52.135.138.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.21; Thu, 5 Sep 2019 15:05:00 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa%5]) with mapi id 15.20.2241.014; Thu, 5 Sep 2019
 15:05:00 +0000
From: Biwen Li <biwen.li@nxp.com>
To: "'andy.shevchenko@gmail.com'" <andy.shevchenko@gmail.com>,
 "'rafael@kernel.org'" <rafael@kernel.org>, Leo Li <leoyang.li@nxp.com>,
 Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>, Udit Kumar
 <udit.kumar@nxp.com>, "'wsa@the-dreams.de'" <wsa@the-dreams.de>,
 "'rjw@rjwysocki.net'" <rjw@rjwysocki.net>
Subject: RE: [PATCH] ACPI: support for NXP i2c controller
Thread-Topic: [PATCH] ACPI: support for NXP i2c controller
Thread-Index: AQHVN9RWONVodUogYk2tb4fLvCueOacZMhcAgAAFiwCAAI1AgIAABROQgAMCJ+CAALpIQA==
Date: Thu, 5 Sep 2019 15:04:59 +0000
Message-ID: <DB7PR04MB449006447F52FBA418278E868FBB0@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20190711102601.20582-1-chuanhua.han@nxp.com>
 <CAJZ5v0hY2sL+XfN_4v07_hjvoxgCAt+Q89+wNg5Pky6XKP-mqA@mail.gmail.com>
 <CAHp75VfFtMMQhetRFHrx=Ft7OWwyMqLrwP3sPjT6YVtr8xCHoQ@mail.gmail.com>
 <896b88d4-9d1b-922b-1784-55ef9a1a1830@pengutronix.de>
 <AM7PR04MB6885DB03C6B96C7932DDA74B8EB90@AM7PR04MB6885.eurprd04.prod.outlook.com>
 <DB7PR04MB4490E737C00CF9CA173AB2898FBB0@DB7PR04MB4490.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB4490E737C00CF9CA173AB2898FBB0@DB7PR04MB4490.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 169eb17a-4cdb-4d75-b2be-08d732126c3d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4619; 
x-ms-traffictypediagnostic: DB7PR04MB4619:|DB7PR04MB4619:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB46194C044B10F398195053BA8FBB0@DB7PR04MB4619.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(39860400002)(376002)(396003)(189003)(199004)(102836004)(6116002)(3846002)(74316002)(6506007)(53546011)(76116006)(81166006)(44832011)(186003)(966005)(110136005)(14454004)(86362001)(66066001)(7696005)(26005)(305945005)(8936002)(81156014)(8676002)(476003)(33656002)(11346002)(54906003)(71200400001)(446003)(71190400001)(2906002)(486006)(256004)(14444005)(76176011)(7416002)(9686003)(2940100002)(478600001)(7736002)(55016002)(52536014)(316002)(66946007)(4326008)(64756008)(6436002)(66556008)(25786009)(66446008)(53936002)(6306002)(45080400002)(229853002)(5660300002)(99286004)(66476007)(6246003)(491001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4619;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: R5psLADPB4bx/bBxOIVbZtDtxFXw7dODZ31fDPmqvYc0QYA9y97Y/UBEJNntzlXg8oDNaJ2mjbt8jdL9D+TnobsCPlZn8i/JxD1aYeh2LLwIRnq35OwMjLZgvjIeYUJ/CvM+GdKg3v1NGbhxAX6WCOYlXnJUGynoKrAwPNzYVNCSmbDsr8Vnhuoi/0XVT1166LasqIkxeFsxKMdT6IAsI2a9G2o5jAdYcGSXK9jb2O1JWMADi/WgP5n7OeAwSG2xRmzJS+aOm9TaQxUVhO6uSgxLkcbV8M6EQ/9fHXWZgWGbE4FuDBi/as0aPQmfpiVPyRK8HHvLUCcoOTb8/JDRoLI5YE5b+kicPRIxsMdpWWzsbPJSbYC4Fjakn09QKETOBF6hp94Tf/E6fywr+PM7wmmJ8pET8g2u7HNKs5HyMFQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 169eb17a-4cdb-4d75-b2be-08d732126c3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 15:05:00.0888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YQh4Q60X5rcy84nO0O7FUdS8ONLzO0GBLhxydDduHBPYCz+x34xcSS3/bqua8s+OqGNjVhltRQvbndQ61n7aog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4619
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_080505_117297_6A13DD5D 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "'s.hauer@pengutronix.de'" <s.hauer@pengutronix.de>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "'linux-acpi@vger.kernel.org'" <linux-acpi@vger.kernel.org>,
 "'linux-i2c@vger.kernel.org'" <linux-i2c@vger.kernel.org>,
 Chuanhua Han <chuanhua.han@nxp.com>,
 "'shawnguo@kernel.org'" <shawnguo@kernel.org>,
 "'linux-arm-kernel@lists.infradead.org'"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> > Hi,
> >
> > On 02.09.19 23:16, Andy Shevchenko wrote:
> > > On Mon, Sep 2, 2019 at 11:58 PM Rafael J. Wysocki
> > > <rafael@kernel.org>
> > wrote:
> > >>
> > >> On Thu, Jul 11, 2019 at 12:35 PM Chuanhua Han
> > >> <chuanhua.han@nxp.com>
> > wrote:
> > >>>
> > >>> Enable NXP i2c controller to boot with ACPI
> > >>>
> > >>> Signed-off-by: Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>
> > >>> Signed-off-by: Udit Kumar <udit.kumar@nxp.com>
> > >>> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> > >>
> > >> Wolfram, any objections to this from the i2c side?
> > >
> > > May I propose amendment(s)?
> > >
> > >>> @@ -44,6 +44,7 @@
> > >>>   #include <linux/pm_runtime.h>
> > >>>   #include <linux/sched.h>
> > >>>   #include <linux/slab.h>
> > >
> > >>> +#include <linux/acpi.h>
> > >
> > > If it's kept in order, better to go with it. (Yes, it is as I have
> > > checked) However, property.h should be included instead, see below.
Ok, got it. I will fix it in v2.
> > >
> > >>>          const struct of_device_id *of_id =
> > of_match_device(i2c_imx_dt_ids,
> > >>>
> > >>> &pdev->dev);
> > >>> +       const struct acpi_device_id *acpi_id =
> > >>> +                       acpi_match_device(i2c_imx_acpi_ids,
> > >>> +                                         &pdev->dev);
> > >
> > >
> > >>>          if (of_id)
> > >>>                  i2c_imx->hwdata = of_id->data;
> > >>> +       else if (acpi_id)
> > >>> +               i2c_imx->hwdata = (struct imx_i2c_hwdata *)
> > >>> +                               acpi_id->driver_data;
> > >
> > >
> > > The above altogher may be replaced with
> > >
> > > const struct imx_i2c_hwdata *match;
> > > ...
> > > match = device_get_match_data(&pdev->dev);
> > > if (match)
> > >   i2c_imx->hwdata = match;
> > > else
> > > ...
> >
Ok, I will correct it in v2.
> > Instead of "may be replaced", I would say: it should be replaced :)
> >
> > >>> +               .acpi_match_table = ACPI_PTR(i2c_imx_acpi_ids),
> > >
> > > Since there is no #ifdef guard no need to use ACPI_PTR().
> > >
> >
> > What iMX/(other NXP?) SoCs are with ACPI support?  Where I can get
> > one? I would like to know more about it.
> - Nxp has variety Socs, include i.MX, Layerscape, etc.
> - You can get one from here
> https://www.nxp.com/design/qoriq-developer-resources/qoriq-lx2160a-develo
> pment-board:LX2160A-RDB
> 
> >
> > Kind regards,
> > Oleksij Rempel
> >
> > --
> > Pengutronix e.K.                           |
> > |
> > Industrial Linux Solutions                 |
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.p
> > e
> ngutronix.de%2F&amp;data=02%7C01%7Cmeenakshi.aggarwal%40nxp.com%
> >
> 7C640eb015a91f4959d3b508d7303168fb%7C686ea1d3bc2b4c6fa92cd99c5c
> >
> 301635%7C0%7C0%7C637030861076879938&amp;sdata=sPWtkVtHHDvoRR
> > ZmWJuipCO%2BEwG%2BcupgZvcIV1%2BrlEY%3D&amp;reserved=0  |
> Peiner Str.
> > 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
> > |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:
> > +49-5121-206917-5555 |
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
