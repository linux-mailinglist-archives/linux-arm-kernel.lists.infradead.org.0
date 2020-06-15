Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC671F900F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCOih6YgV8rwEhBQW/+P2WgXVnkb98UjHln7i45jp1c=; b=HTCnbLMhEhAvVc
	A6xGKWzNpWWokhE7Jnq/kQWB+aJCU+rZnMS/T+hVhXLholrpV0Vy3OlBHjj7Q3LRhV/n5TFV3Kchq
	W9d4qqxL2wFKmXWrcDGj2eGHLUsCvkTXCPYg2BejZhKbCXdzHAt48CcL1j2a3TzwElCGolgkhyC9n
	hLe/Z50/LHViKa2+zJvckLDdr4cbVlIlDC+wVCRNW82uK4bzWQBRGKxT5PpZvl8MIvrTWjJOMPktA
	yFw+M7GPsOJv1jB5voNhxxqefqtWDdwMffzpqyuz/bf4a1eRauy+RfaNj1H33zTvY7tgba5oF7YdR
	yraF9pW1iW7EXee26brg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjgf-0007Oa-7p; Mon, 15 Jun 2020 07:37:45 +0000
Received: from mail-eopbgr40076.outbound.protection.outlook.com ([40.107.4.76]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjgN-0007IO-0v
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 07:37:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EKFXTU1LoZ2W/4G0JL7XgnuV69pp0zJOr2kj8uNHnt74Vk5PvUPdq+j2hwCIGynmalmSYwNFLr+PMWtvZEQ0lGKO/08qeQSDpJURluXki3m38X37jyqCUncTlEHCWEFuRqv9wVkSSbRkheIj2q1G5fq1a0jd5RBZsf3EpN9XIGSY01A/klYV8DYqsaZ8txcBhP+sW7furNAr4JdJShji2iMFsn83s89L7LjwLEvjJ0Ys77grKlMwrYNrSLYr1CZGsIP6Zdhg3WpF05pUbYvcfAUivW2ZZ8zmtNRtvh+vOT6s3Y2kAsDpq/uPrEqLlnFz2K10He45XI80fVRV8QKkRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bQSf9O5WmKW5GIkJKC6HimzJrd4gunbiKnLFeLbZbsU=;
 b=k1hAu+YshaMg9IKKMwDkxlf64V7RZM8SHaAp71NVVwleBKWyezVBLbLhnZFmsMHaFOAdNC8ZNTGliYa4sxnx3v93L7gGakkjU361ESVpvIrlSbxPme7NH6Ltmf8pE+xwqYIcCZufecSNLEyZjfKsaPNdt5ETB8S0WKOSr42iaVMLloI1fZ8d1A7CHgOIME0KsoJvvv3hJFmruyW3EUhOJqWltZK6FnwBEeyo3jL1poIAj0us/zBunh8sQphFJKAb/TKHbamFiBLfwCzr467HkIwB/MW65tYb8tGhN1Ac0ZyYo+jHzeNPtfRcHMNAXPBjB0v7xrKdvoKBykRcshZXog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bQSf9O5WmKW5GIkJKC6HimzJrd4gunbiKnLFeLbZbsU=;
 b=hLuy10CWD4hFvCY265xOXuRQHaJjdXKOSQDXfIZPckE0taRs/iAX0EYBv6VFJefDOyRWsovucoILQxvfa5Au+mLoYdvZQ6ptO4xJedh9Cjhkyknm9KCxD6sFOdcwh9Qk3tUTICkSmdV0EYC2DlrBtRqINJYElR1syFRl61q+3NM=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5927.eurprd04.prod.outlook.com (2603:10a6:20b:a8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.19; Mon, 15 Jun
 2020 07:37:24 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Mon, 15 Jun 2020
 07:37:24 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Wolfram Sang <wsa@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>
Subject: RE: [PATCH] i2c: imx: Fix external abort on early interrupt
Thread-Topic: [PATCH] i2c: imx: Fix external abort on early interrupt
Thread-Index: AQHWPy2cjBhRFIV1v0u8QuYNZxLtCqjUstOAgAAG0YCAAAdfAIAABweAgAAC9oCAAAI8gIAAE/cAgAAHfwCAAAu5gIAEWpxQ
Date: Mon, 15 Jun 2020 07:37:23 +0000
Message-ID: <AM6PR04MB4966B531C6591B86ED2A0D96809C0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612090517.GA3030@ninjato> <20200612092941.GA25990@pi3>
 <20200612095604.GA17763@ninjato> <20200612102113.GA26056@pi3>
 <20200612103149.2onoflu5qgwaooli@pengutronix.de> <20200612103949.GB26056@pi3>
 <20200612115116.GA18557@ninjato>
 <859e8211-2c56-8dd5-d6fb-33e4358e4128@pengutronix.de>
 <20200612130003.GB18557@ninjato>
In-Reply-To: <20200612130003.GB18557@ninjato>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c82b7b95-3c04-45ac-df2c-08d810fef1f5
x-ms-traffictypediagnostic: AM6PR04MB5927:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5927C5786558C327B6904CC6809C0@AM6PR04MB5927.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 04359FAD81
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EdbobW2vCWHk1CHbIJWRWl4ezH6FFtkZPMaxEhGZ7SSNTWSQdhKjwVjQSq0cdvg/cC8tAmc4DY+utYAAvl9tacdwlVwJm1i/o+LOCiWCRhoe17/Cd1m8RgD24lSgspMEcx5erjcsNiMstD5Lwt8Cm+o9Iyxmhxs+TN6QIM1rnDKlKJW1qwOe+YIWKPuP2mpYWl9e2+fPK8JJiowQwCZLQHzQuXxvqXuIoEXdzUf3fF/5uLo40SnZIP/ls+yFiCJu6UquWEguK6O1CC1qTMc6n765ogP4WhXjrf+xmuiiRik0el1gs/t+LbPJgAGgC/Pb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(86362001)(186003)(478600001)(7416002)(26005)(52536014)(7696005)(4326008)(2906002)(6506007)(53546011)(5660300002)(55016002)(54906003)(9686003)(316002)(66946007)(33656002)(66556008)(66476007)(64756008)(66446008)(44832011)(8936002)(83380400001)(110136005)(8676002)(71200400001)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: abUlt5EjDopSeKXm3W4QHV0rlCB3OyAa6TFqWGjpW4u1yyqfL6SG2LuNyN/DlRCMA5fUL61mxtWjBsgD+5aIHFFyTp22Knj7V+4N49xJp7yLxogQoQUJexAmtEJYME2nKJSExW5HxwadWTEewbx1uqHF0A66C9ITgIb3JKXZ0ZNBnvrtRIRzfm+vL+RTi52XWSHrC4xw8SAcE2leca/+3eu89keA3EkqF5HN1bh9fmQnoOQXfgHzXYGrlwCdTFA2+df15Ll/9vZKXrMgTfX8j4j0oLTFFb0TEF0bWs5oO459lX6uSig0klUM4IL0+KI8wcv6wnWTG4fc3LOE4n5xgaMfz1Zl1gg21qo4tFHJ6Z052oF4vg4H6MejQLVq+peixiY3nGnOzTcX05XpNOFeFpHoSgVhiMFkPXTQOfZwaULOKmlfLSaGVjmhiEJt8rGvSH4r2aARtqR8xkGfmRtr6600U47IOxCGq4+BBWjnbng=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c82b7b95-3c04-45ac-df2c-08d810fef1f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2020 07:37:23.8766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FU/KxCEBs8j4QOnWVIb+xbXgop+rBOqUbvDSn2rLbfRmGTDJDzSfQPVUSMZ2XYRpEPN43Ng/woyXdaYaCdb4eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5927
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_003727_174136_73C2CE1C 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.76 listed in wl.mailspike.net]
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Oleksij Rempel <linux@rempel-privat.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Wolfram Sang <wsa@kernel.org>
> Sent: Friday, June 12, 2020 9:00 PM
> 
> On Fri, Jun 12, 2020 at 02:18:06PM +0200, Marc Kleine-Budde wrote:
> > On 6/12/20 1:51 PM, Wolfram Sang wrote:
> > >
> > >> This basically kills the concept of devm for interrupts. Some other
> > >
> > > It only works when you can ensure you have all interrupts disabled
> > > (and none pending) in remove() or the error paths of probe() etc.
> >
> > But when requesting the interrupt as shared the interrupt handler can
> > get called any time, even if you have disabled the IRQ source in your
> > IP core....The shared IRQ debug code tests this.
> 
> Yes, so you'd need something like
> 
> 	if (clks_are_off)
> 		return IRQ_NONE;
> 

I understand this. But ..

> or skip devm_ for interrupts and handle it manually. (IIRC the input subsystem
> really frowns upon devm + irqs for such reasons)
> 
> D'accord?

Handle it manually looks to me can only address the issue for probe error path.
But how can it handle the normal running cases that shared irq arrived when device
is in runtime suspend state?

Regards
Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
