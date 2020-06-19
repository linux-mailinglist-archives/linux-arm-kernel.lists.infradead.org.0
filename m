Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8AE2002D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 09:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgWD2i++mr/+ohLTXUKvT7rEPXgAT+qRPXZJZFlpD0A=; b=Fyexy7Dnp1h3j1
	PXEgpyopetvMR1VwbdFZvfPMZc5zv0SIwbtG8IZ7QS2OilAdtPZs43I4o7Gvy5YxB7WK3YW7uRh2q
	JJCCZwXBMDxC7I/kav0VrdH3jV8xyjwkxNVNV5YQ3gqzrr7NN3NH/ha8A0YaYx13yczXFNttcK0dW
	+CwzOZXzgQZa0lCnP/NWTY/SFlYBojS3igzauU5Yki6wy9XXF5Suwdcr5OU9ZSikr62LrTHNNcXP/
	I3Tkt36HLDucgWzZJ/ySU6UOl/lWIshHoFqx0WjUeKqh5OJQ3OzbqeZLSyq1k9xKlFO5aIF9jJtYv
	aNQ+1tZFjJKEGnnHshKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmBdP-0002d9-8w; Fri, 19 Jun 2020 07:40:23 +0000
Received: from mail-eopbgr00067.outbound.protection.outlook.com ([40.107.0.67]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBd7-0002aa-M4
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 07:40:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C/Zm+7dbOrWc4hyv+iwBpTrPxwksc7zK/6oOtTiNrBaKMXX6yAAyBysmn3r5WcA9E2mYXB8zaY9lzzf7xVxyjrtvo/CMI/isCmkJwc90PRud6aRoPCk52R/1ZIgjh/Zoqe7LdYoO6fBL145+uTLZGd1DsLC8Da/ZEAwi4/2KoMG7tjDeKPnYEpgsfkL1p0E6vq35HOXBnUskCslqEzR2knqI9KrAuTzVwvTzInpMe2BqlfxXSCW54+9PE681LC8hzqyc+v2Hvx8UDFLm9aGp4jzy2RXcI87SfE3eZfHZb1qWmLjuFz9Dv+PUkwrdOqkRJcsgZyOVFgJICzc1vc7B1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ru+lPOdu4sH3L0uWM0NzIfLJxps5sm9kwvUoDZhfX4=;
 b=fTsGTBk5rgT83pOckzLAm5oV94AqOU2A4s+A7j+905HtMCjgvOyN/5852EhK4VAgorVNUurnTXB4i9cIU2qVymlGhj2NOnYmMHzVCcXh9RmjO4eQQBBnIqS7wHTIvVPj5FSSHT9pJi3LriTT5aeNeXrEdzi0+3mO/CKwEnJuKT6URtuEmWJqUivq/Yda9K/lxzOtgKHOg6aaftjx0pHhUDrDqmiLvY/SjYF7zHre8YT0688Tnsik4M6YwvCsumwO5EtxosEa5l1eeql9Ies7qzMA9X4iNhGPvUqsCiHP0Xg+3O7lAMuOU/DUa3vFhEBXqKNDk2Id/ELIJflhX2XtCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ru+lPOdu4sH3L0uWM0NzIfLJxps5sm9kwvUoDZhfX4=;
 b=YH3+lvCuuS0lU0XiP2rBeO1hlUEWW/MSEbEAcjcLgPVhkkug5e+a4rj4xqSqwQDtnNYijnVGKappNGAlwn0dPoU8XK4SOX8brYfMRaTpnqD1uzJSkiq/FF1EZZXwC+3kCXjPXDCcG1RzsKNi7ScVbF1kTWXpnAPie8gzu8Q1xhs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3724.eurprd04.prod.outlook.com (2603:10a6:8:5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Fri, 19 Jun
 2020 07:39:58 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3109.021; Fri, 19 Jun 2020
 07:39:57 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH] soc: imx-scu: Support module build
Thread-Topic: [PATCH] soc: imx-scu: Support module build
Thread-Index: AQHWRGTWiz8NXUZ+xUGFBcoJjUMmmqjccS8AgAAAf6CAABnooIABbZ8AgAGBgwCAABR3MA==
Date: Fri, 19 Jun 2020 07:39:57 +0000
Message-ID: <DB3PR0402MB3916B7B5E730E2D2B93C5ECCF5980@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1592369623-10723-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49667E1B41DC2A77B3E2FEBF809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <AM6PR0402MB3911B852B49E194E5FE84505F59A0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
 <DB3PR0402MB39167727A8B7CEDAC531D94EF59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAK8P3a3zHBRqSg1VeuKcmyQquE7n5wrEViw5KFbDGJNaMjtZRw@mail.gmail.com>
 <AM6PR04MB496696A8695FA85D1EEE276B80980@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB496696A8695FA85D1EEE276B80980@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 004f321b-2a8c-425c-e01c-08d81423f749
x-ms-traffictypediagnostic: DB3PR0402MB3724:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3724BD59AB9878B6BED7F595F5980@DB3PR0402MB3724.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0439571D1D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +lUrzTJFiyF9f1smCBW9Q241dc6nULxiqm1NsXMSD6uHAmwlWXqTVR/ZL5TwZm9H+39dmQOhzdqt3WPN09wY4/KRB6QzP8/2ekKxIRtKi15THd/e2pbM2Iclp01crbbDz68nRFLDHbXfMMXpDmOOvYpMBZMrilUcTQ6UlavSvEKaZtNNcjimEMCqaHI11t3Qsk8C2YFLZSBREvV0x7SB/onhM8sBuetrR20NAJdPhwjWyEXWMvCyuZ4pjzNvK/NmAzMmmynoAkO96zgm9OnoDBa9kGY6681XXf9MUnHbxUMdU+GAXvdwYWE9BLI8GWIo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(136003)(346002)(376002)(396003)(316002)(54906003)(71200400001)(66446008)(76116006)(66476007)(66946007)(66556008)(64756008)(86362001)(110136005)(55016002)(9686003)(7696005)(6506007)(83380400001)(186003)(26005)(478600001)(33656002)(2906002)(5660300002)(8936002)(44832011)(52536014)(8676002)(53546011)(4326008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: cI/Tc+SJjsJo4r+bR2ZNyE/SOSsLM/MMY87bdMeatrCyC+0B25yD1ayGMnwXdxpwxKJB0cwhMOGYIDdH5m6KbKBZby6aNFUuiCnUTL+H0b80/Idhz7C5DVl8mWCZ3fVyVm/kmbc4NDokBpFkRLIe7Jg8iUpr10nbwmrjhsstWlp2DecRVO9qTFFX1m4xXNhwTfB1pb9LfDdYgTiYZUNn7a1MDIoqLpQ+iSMJp8djSrsFUnafqR/u7kZ4QlBRwieFikED9xx7eo2JMOwSuKfCgORbquf3Fadu6xTe2Qx17OT1iuNLsJRpdmM5M8jy0rK1l2seQ+bBiIBnEggNzDogqzsoBMJtIyhUnaRBxrarjCs0XPCqbU9yJZ84rGOEWg1fRek0gDr7BfCNOtEZtR8gQkNNTToreSfhIFhzicw6SEXIA1+3a4JxZhmgJ1QDDOjVl5fSEACjhhI03Hccw6wQ72v6mn7TUAdJYkhGX2lApErsytEOtGnB80MXearnGxaL
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 004f321b-2a8c-425c-e01c-08d81423f749
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2020 07:39:57.7530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GbkC6FSPZtph8UJfkG6P1p1KKVjV+WvelerzipmIQ+/H04HtIS2+W4VkRQL2bsPzatZQsHfGKd5UX+zlYr+GjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3724
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_004005_802475_21EB1E84 
X-CRM114-Status: GOOD (  23.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.67 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: RE: [PATCH] soc: imx-scu: Support module build
> 
> > From: Arnd Bergmann <arnd@arndb.de>
> > Sent: Thursday, June 18, 2020 3:21 PM
> >
> > On Wed, Jun 17, 2020 at 11:41 AM Anson Huang <anson.huang@nxp.com>
> > wrote:
> >
> > > > >
> > > > > I'm ok with the change. But I'm curious how can this module be
> > > > > autoloaded without MODULE_DEVICE_TABLE.
> > > > > Have you tested if it can work?
> > > > >
> > > >
> > > > I ONLY tested the manual insmod, if want to support auto load, may
> > > > need some more change, will try it later and send out a V2 if needed.
> > >
> > > The further check shows that, if want to support auto load, the
> > > platform device register needs to be done in somewhere else which is
> > > built-in (in my test, I move it to clk-imx8qxp.c's probe), and also
> > > need to add below module alias in this driver, because it has no
> > > device node in
> > DT and no device table in driver.
> > >
> > > +MODULE_ALIAS("platform:imx-scu-soc");
> > >
> > > Since this driver has no device node in DT, and the target is to
> > > build all SoC specific drivers as module, so the best way is to add
> > > a virtual device node in DT in order to support auto load?
> >
> > I see that there is indeed a driver for the device node in
> > drivers/firmware/imx/imx-scu.c, the only reason for this module using
> > device_initcall() with a manual
> > platform_device_register_simple() seems to be that we cannot have two
> > platform drivers bind to the same device node.
> >
> > I think a cleaner way to handle this would be to just move the entire
> > soc driver into the firmware driver and then remove the duplication.
> >
> 
> Yes, sounds like a good idea to me.

So the idea is to remove this driver and implement the soc id/revision/serial_number etc.
in drivers/firmware/imx/imx-scu.c, right?

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
