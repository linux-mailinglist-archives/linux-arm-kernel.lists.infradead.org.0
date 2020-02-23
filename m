Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C960016927A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 01:16:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7H9ciQeqqKowxGaOJdxmxFDAr87dqyFGO/EIlJBvZKs=; b=cS/sinqVUljze3
	dWCwVsonWCxwNM/HPn+mOYdzE5iCjM55BhLZxPThDzk35Dq4XO29DeXzlFKknZfRUScwaEzRJANOh
	BTsnIvbdj78Ey7eYjdlXtOWGKIM7EWr3UG0WNahpBVkfqudkfTiWdI+dSiY2f/4HqeaJ55CKEngvF
	bql6khzo5ZHzT8S96OYqDQ13noh3wDrvgSZVU4m80kX1HzpzQlUY9iy+EtVwdLmt1QzT9iC9Sbeqc
	gt00/yVfY9rM8T7NI1BkFXZ4YMg7tXAGbuioUoaajEy9j5sINQ7HADKhMARq/+o13LQl4YhwO/gRM
	i7G01qVoRkXqjTpf0jBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ewo-00085B-Ci; Sun, 23 Feb 2020 00:16:38 +0000
Received: from mail-eopbgr60065.outbound.protection.outlook.com ([40.107.6.65]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5ewe-00083B-J2
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 00:16:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=laG8eGh7AVIJJWT84jjkp/ViX0dpKSK7YkCfVvh+cKtArYJ0vqyiSyx2w6umRFiubVIHEHOc77UFLODkGYbf9gLZzjQxNXC3Fxe8QA+dsb0UXmGa3llDWohdmP3Fuy2uWVV+2sI3bE4RFbKJz/n6/YPS57mjLzzLyLxS0az9K4ap2rMBePiAlsMgzOZfmSKz/IPiJtepRvXoEgxYQtmk19pcTD6fdI6OlWUSNgGPaPaOuPYJSm7hY3U0ncyTmBE0TxzQ1CyYQ3B2J65wvBd8DWupJzJ9DCz0GxY/1Tl1bvsFl9e/W3JBJSMXwPNBfVaG8MiOwLoZYtGd8uoc9Y3h9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h1NiWeV1/eyy22ii5pupV6V05cwK8o2beU2pvNYmiDA=;
 b=MzphhQYa/SRWwxX3LA4ADxqcTpyJTVc+OtMcMcWqKkIkATUH8MC0WtwI+h6Oe7vDca/Qerc0ubqcju5ORvKLMM/dGXR0L1ra2LIXW+xH4CWcJR47qPfLPYU/BgcMW+7EmA37iJFXMVXqDh4cvTKvB1BYXUVi1lWeZBVFT5WNwUCzf3Med4VIEw36xaGssusNXUlEqTmVjKRDc6FxQzIxIzJtUD6+8r//YI2EyUmaVtvl8d6Hh4dGnkQVRKswTVNkTxjEKZqqbj5m7YONxKUueliDPun/TJ2t0ySMoM62dkfvZb1NBnx4dfB03StsC2dCy0yTmazi9+4kFuHA1SF+4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h1NiWeV1/eyy22ii5pupV6V05cwK8o2beU2pvNYmiDA=;
 b=kKVG2sm2JcC6fyMPtM2Yqcqn/1n7/nfRH4BogUPwiJ3CkytprG7Eh+JGsnRvE2pxbbqySrthQ95RjFvAW/ChDU20UgOmC4CRUuwNfq5lKk1p9l/drmv8GVqbwMOsp0y6F4qVeq8MQb0fIehwZ/k6fbCCxmL6qSdp6JO0FnYbUVw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3755.eurprd04.prod.outlook.com (52.134.71.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Sun, 23 Feb 2020 00:16:26 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2750.021; Sun, 23 Feb 2020
 00:16:25 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: RE: [PATCH 3/3] watchdog: imx2_wdt: Remove unused include of init.h
Thread-Topic: [PATCH 3/3] watchdog: imx2_wdt: Remove unused include of init.h
Thread-Index: AQHV6FuH8+3BpoBnsE6HuBUDScQ3YKgnYjMAgACJsTA=
Date: Sun, 23 Feb 2020 00:16:25 +0000
Message-ID: <DB3PR0402MB3916C4CC9A79BFA49441EBEAF5EF0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1582250430-8872-1-git-send-email-Anson.Huang@nxp.com>
 <1582250430-8872-3-git-send-email-Anson.Huang@nxp.com>
 <20200222160218.GA12740@roeck-us.net>
In-Reply-To: <20200222160218.GA12740@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [220.161.57.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6ea07bfa-d0d3-44d7-2139-08d7b7f59f06
x-ms-traffictypediagnostic: DB3PR0402MB3755:|DB3PR0402MB3755:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB375558408A168F98161776A7F5EF0@DB3PR0402MB3755.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0322B4EDE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(346002)(39860400002)(136003)(189003)(199004)(86362001)(52536014)(81166006)(8676002)(81156014)(4744005)(8936002)(6916009)(7696005)(4326008)(54906003)(76116006)(66476007)(66946007)(66556008)(5660300002)(71200400001)(316002)(64756008)(66446008)(6506007)(44832011)(26005)(186003)(2906002)(33656002)(55016002)(9686003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3755;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5V12hKo/vKASdUg5yIFT7RhEl98ozkXR/DIS2xcdCpmJr2FtOGDFFrfm/ScwN8613i7+W1ynePnfIXNKsvizx2ceu1juhAhdL69DmM8PIKTEh/RDYFJejpdxZFbNyZOG/pxOvzyoFod552p2hzJWe93WQYHBBToTcQyAjuu7unGvPAGYITdt93WtONpNO9dyGP14l2FdW9OWXWdcGyuJb071WEWWAmiQgLrQ+oxIBdvP80ljrKoQVvmDg2bLNH7N2U/bK/OtpJLcP9iwhBrnfGaQemWNGvNfsie91DNTFalmMyc02vXJu6CPYFC0akLmXN1wdQ4AInn6EgfEbT0+9toq/uMsi9T8yYWCukXvB7OD6XnqiN7z4jpHn3M219Lq68a7s8ZXFaR5mn8IzFUHuJ52NTr+EOTvUSojkx35mYYBP8jX8lkQDE6p3BgveBZv
x-ms-exchange-antispam-messagedata: Kxksb9hv51nXHCUx/8VnHdgWVqI25rCj0RUEb7vWh0aY28Y7WFUhqUJGzXwZv492AAHNni8YBrbTcPUoULuW05RIhagF2fPZOC8PFkWC0Jg9Tk/oOJwK8x4zsd11ULVwAlojz3oqBWB1mLnl4/Dwbw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ea07bfa-d0d3-44d7-2139-08d7b7f59f06
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2020 00:16:25.5975 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ODHdt42rzOcTjhMQNdNjFMN0m8+cnN/qDWAdCy4f0GM/Kbk5KSB+iQDbohzoyD5OPZmj5PPgIHj9q6X6GVp3JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3755
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_161628_631993_008490B4 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.65 listed in list.dnswl.org]
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
Cc: "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Guenter

> Subject: Re: [PATCH 3/3] watchdog: imx2_wdt: Remove unused include of
> init.h
> 
> On Fri, Feb 21, 2020 at 10:00:30AM +0800, Anson Huang wrote:
> > There is nothing in use from init.h, remove it.
> >
> 
> NACK, sorry; this driver uses __init and __exit_p.

Ah, yes, just notice them. But I don't understand why the .probe callback needs
__init and .remove callback needs __exit_p? Should they need to be removed?
 
Thanks,
Anson

> Guenter
> 
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/watchdog/imx2_wdt.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
> > index f8d58bf..ce28e40 100644
> > --- a/drivers/watchdog/imx2_wdt.c
> > +++ b/drivers/watchdog/imx2_wdt.c
> > @@ -20,7 +20,6 @@
> >
> >  #include <linux/clk.h>
> >  #include <linux/delay.h>
> > -#include <linux/init.h>
> >  #include <linux/interrupt.h>
> >  #include <linux/io.h>
> >  #include <linux/kernel.h>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
