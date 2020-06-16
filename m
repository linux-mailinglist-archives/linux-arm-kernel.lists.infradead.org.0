Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B60161FADA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 12:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNMADbpUKCd1xp+ifliohKVvnVK/9uLtv3u44ky9sQk=; b=ivjmvz/enFqYt/
	7hgIFdz9TXeoe0RplxhqOWAf1SlGCA3n9nFpA8h4TGzpVeZb4ZvZDze4rEYOX6x2Z916Ul2saMx3Z
	v6PFTjBnZOk3XV3++9CAQ+oVrRdx13brw4Lpyg3I9BhPFAjeHsZ6dhoODRc/EbAyx/1FpsCC7jXV1
	rUVFTlt7HF6MI0iIvgT+U7T26MW4b7ptXlU8/ZO4sBTCK4Lq8QRm+YPbjsJ/hKHH3MYnCQwmJmcPH
	b8Rn5EZenEdzWG+CBZMD94Oo13pcsXzAsSGde6kw7CdlN5pzhNb6E+vAvUeGIjuku9k/6qIUHGIMf
	8h7EjLiuthVG4y+Y+BsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl8ap-0000yL-MC; Tue, 16 Jun 2020 10:13:23 +0000
Received: from mail-eopbgr80085.outbound.protection.outlook.com ([40.107.8.85]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl8ae-0000xg-GP
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 10:13:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WnHolN2f7I3174Vpj6g9s7Sd18yUUjYY1LZ4PKGKCvAdLRUhPvt2XHW4WX2/Y7YVeYV79i5SWRhWcNyU4VzIWmM6n/9BdtHV2qC8cn5+vnftebKxeEQ7QYl8ELrNxmjP78VZceAMKltvoXABl+9iLrQm7tg0cDNkbrtRzCDoXb8Bo/1gFn67A+TTIx6+IxHekn53k3gtwSpGdZjIUaJQoo5ETWl2cLaLH3fqRjIaiUheFbb1wuehRQb+OVqHicyXK0Iz8YK0ycUk9KkpxuNzQOrZnyhnS1Q7y78D5oAbCCHcNmJPUsbq5HcBAXtFQkONJ8iPYS12dP9P9u5zB2rWFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IRQxwrJ4d2Xeoc+kWjDw0NMUYOmeZ8dH5t7kKKEJGI8=;
 b=NLIbkmrvT8+JLvonGgTr9NuZqRoBXL1Uhl403M5CJbBu8vouRBRLUMWeNM9LZcbqt7M9/PgeFiOVTbCcaxFo05sdbSU2rXZzknXX58SLMVNh2Q+x0kc3UvlWFp0NJrVGWEnGeVxRoS7as38ZHxu0oqAA5tmurQyFpOA863yzzqH8Mv9n+9wVBYXg7XTXRSECh4WnVOVieeTqhochipKqeGWnRhhvC5w8NE3iKF44w/sVgigzUMCunYZGiGPuWq7+wawrb3uYlc1LPXizKMus4sCJhWiOyUSg3X1iHFZPKJfwoT4CTBUriMJXumYn05+zZnC3q4Qk6IlFyct5X39SrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IRQxwrJ4d2Xeoc+kWjDw0NMUYOmeZ8dH5t7kKKEJGI8=;
 b=Y2F5r84bbbQfvmI77YitgT+paODnPiW7pE4b8S4ukZaSjhffYs6HUW2Lajxs/i2odVIqCVo263U8Hyi7KocAEq6Ydqru8hq1D4LyFiQSeoLmRN6f+IN+39XZVeVdzTFr54sWz02rriFmeV7O8VF6lVXAj1mD2GLKfjTbXSmGFE4=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6621.eurprd04.prod.outlook.com (2603:10a6:803:124::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Tue, 16 Jun
 2020 10:13:08 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3088.028; Tue, 16 Jun 2020
 10:13:08 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Mark Brown <broonie@kernel.org>
Subject: RE: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Thread-Topic: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Thread-Index: AQHWP6z7CX2etPvPnk+oddH8JEW5FKjTbHIAgADDYUCAAJUwgIAACjoQgAA5dICAAOmA8IADsXmAgAANH1CAAASJgIAACZlAgAAGaACAAAKk4IAAAtQAgAC2bzCAAIkpAIAAAgdA
Date: Tue, 16 Jun 2020 10:13:08 +0000
Message-ID: <VE1PR04MB66387499F9AF80A68F720529899D0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20200612141611.GI5396@sirena.org.uk>
 <VE1PR04MB6638B43E3AC83286946DABCD899F0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615123553.GP4447@sirena.org.uk>
 <VE1PR04MB6638C65257F41072C3D61583899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615133905.GV4447@sirena.org.uk>
 <VE1PR04MB6638793C00742D5BA72F8AC2899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615143622.GX4447@sirena.org.uk>
 <VE1PR04MB6638D0C9FE0289FFE13ABA49899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615145556.GY4447@sirena.org.uk>
 <VE1PR04MB66380FD8FB7FCE79AF4B6CD4899D0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200616095948.GJ4447@sirena.org.uk>
In-Reply-To: <20200616095948.GJ4447@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b7b04487-0512-4823-195f-08d811ddde44
x-ms-traffictypediagnostic: VE1PR04MB6621:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB662197B0DC4F94019DEFCF79899D0@VE1PR04MB6621.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R/dddy13f88GzBBMdf4vNNcCwh7CN53XC83DC7fcJjyiBtTxe+MXkQStFESrq7PBoGmkdZweOd6H7K5HadSvxFb+trnzIy2npe7QNYA2BZCCl30/IW+RewP52N1yJxoJNVbSfZqBjqmXu7mfT6vPX3BbwxrR5v+4xBlxuAjNF+xJFBuUuUb2z5Yiqy4n7KUFzdakX4yqEpDAqbK77Z6XT+7vYlX5hnd+CgtVKzsvqUt3gPCfBqo6CMcCx7A2CFigo0BYs+qVV8pEdDFY2HgY7t2k5oEYhVdz1O/5SGfdgjFJ4NHkpkjhN661EElvyoJt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(366004)(396003)(136003)(33656002)(9686003)(478600001)(71200400001)(316002)(6916009)(8676002)(8936002)(83380400001)(7416002)(4326008)(86362001)(76116006)(66446008)(66556008)(66476007)(66946007)(64756008)(5660300002)(26005)(55016002)(186003)(6506007)(7696005)(4744005)(2906002)(54906003)(52536014);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 3KSkwKbxS+0mrv1jPmr0ENSgnExyBzlvuL557Ckk0YZBFwrBbitUIy+MTxq9w1bwoGb1KO9ehd/ZjRNKhhexhN5xQYYgv6MwFrMVsWa4dZMZGEJKKGv2O5yCV1yoyZqP6IDzHuC9pqQlxUh8X0io0FiqXMJaezB41LZVwa2EKXHzumFxqqdzadv1/km8wRtuoL9HTX0aaX4OqvpJDqoP8HXRQMhlT63NsgEFvnN5MwG5d+pkzJ2VQQnR7zKPWOtip5y3MOgZFBgWrn0l/VP28p8o6mAKGtsLqnd/UU147dc0cnjv3BVqC26jDHrWQ4rMYRne5pdO5iB6wGEg1NRnTPbc7rlROAphNqCVqfaFJDUcNdTrhmHJhy1LEZ5zUHczouVZxA9QBrfwqxnKo0neGJnko5wYH0UIKvjs9liE+s9ojq/CMq9uXVaTxNJ9NhsHv3QeBo9kiKCCaIh9czb9oOWNXw5JSVs0ux7ze0oMt2E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7b04487-0512-4823-195f-08d811ddde44
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 10:13:08.5205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5iIUT+Ne90l1zU+Tv5WaOAVK+te5caP2ljV0UvtbMuXbj0W8/8zc25BsYygLUNTYcWPVXK66rbiq2VKJcPgweQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6621
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_031312_550435_E96ADD53 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.85 listed in wl.mailspike.net]
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
Cc: "matthias.schiffer@ew.tq-group.com" <matthias.schiffer@ew.tq-group.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/06/16 Mark Brown <broonie@kernel.org> wrote:
> On Tue, Jun 16, 2020 at 02:03:40AM +0000, Robin Gong wrote:
> >         struct list_head transfer_list;
> > +
> > +#define        SPI_TRANS_DMA_PREP_FAIL BIT(3)  /* prepare dma
> failed */
> > +       u16             flags;
> 
> I'd just make this a generic flag for failures before we start interacting with the
> hardware rather than specifically this one error case.  Otherwise this looks
> fine.
So rename to SPI_TRANS_DMA_FAIL? I think at least DMA is MUST for fallback
case...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
