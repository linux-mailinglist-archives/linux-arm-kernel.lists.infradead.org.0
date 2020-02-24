Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A7C16A560
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 12:44:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zl7xYZepdtI5dSiNIA7gg0FjHAiEJdJRi4ihXN0x9A4=; b=hOB3AFJXeCJCME
	3tXFxd7m76qZnY+zQMqA3NOl/TzEDEp4nVIuw6Jtd6HnIoTnaLacdRbGxA6XupHx+LF+l/rRKSfVn
	kM5qRIoaLZqYhwDY5crujofEkkapUnl1GmY235pz2Aaj/rQUEHKHcKUHFdtsEYZkEOY+ETmTQll4w
	DBELswlnSTj0eOxA7PwZcdnChkE9Zwjm7BqCnLukOkxuBDnKv89EZZdu8EneMj0kP+KHFgFyfwE9s
	aURmgYAeFpUogJ0hrPvTnDqBscPgMRnH3/yH4XXWo3lJyZUq931BiFbqOKlzE+Y2VfXWRkHIVjDGb
	yBPe2YnkOMrbGJdiXI3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CA9-0008RW-JH; Mon, 24 Feb 2020 11:44:37 +0000
Received: from mail-eopbgr00068.outbound.protection.outlook.com ([40.107.0.68]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6C9y-0008Qu-Ld
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 11:44:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IdqvaJl7vOKV7oAPU6X+dOb0IeZK03Dab4yVrd/isHt/+j/rZ0Ww0H3UdzDQT0QFB7kpMdbGgcmLbr6TB0+q+ZjtkwEvU043J/w8R3EVzb3O51LWba2y0HEHvMt8nNiw8DQXTniWP2Fb8IwCORfrH8R+jbDrkjvkxYYhuMYpgEwH88FbHsIeLCWJWB0uoXhnf+xEN0t9iFiCOGKUTdOFr62VALPEnDbNqnkqi7zRzKXeKwYJLmLglSmjy1XOSf6kmvj5sfhP6lSjGvBO0RfMb67y6RO8/PaLl5+OGaX2QXQVAs2Q1Pt80hX7q+ppO8HxlXriiWbiPBSTvCv/Q90eUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zdYtt9nnoIB/5q1WHfjK0FVNHr/LKcNeEH7NMeuHnHE=;
 b=aL/9J9DLIhXz12h18rvYJBAiRMEKkqlLZIHif6CMYn3LQpv3l0eWdJXukUD4chs4k+DvYNCnT1p6j5ygf501FFaL1ZPjRJP93s+GTBe0Rg/aMFmpzyX8J74E/GtxC6oojRJxqazEqdC6tynbxkqJ3xNn8NRX5dCR2dHBM7XbQqMDhhv/nsW1jBsjMGW50aQt7k2pkm25eOHANxTPdjamC0lgQ9mG/4p9Lyw2nM4zlVvfedUPWmqEAJQT2147oT1wFSWhBTFxQdHo13Djpcsxf9dZPbQ6ULJ2f2ktp9XmFnYZgcU9YtURqyRSSZUQn7qQO+eW1VMwPY0gHprXxnaboA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zdYtt9nnoIB/5q1WHfjK0FVNHr/LKcNeEH7NMeuHnHE=;
 b=qRSxe55oQrQsvGPLGDOgqLwNJgQOxZMH22PZLJpSXjnRU0HFAG36HlQh/6pwVVf+nvd8o04Z5YRWv+dhA4QF45olsOLeQkvYis3mTt9j3H/hQm/2DbRhkvtzmXUqZ55MG0aH4QapsO6xMNrzvhfDfZZj0so3ib1a0JYYOHL39DU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3658.eurprd04.prod.outlook.com (52.134.65.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.31; Mon, 24 Feb 2020 11:44:23 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 11:44:23 +0000
From: Anson Huang <anson.huang@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH] watchdog: imx2_wdt: Drop .remove callback
Thread-Topic: [PATCH] watchdog: imx2_wdt: Drop .remove callback
Thread-Index: AQHV6r4pAecyWfgb902OwJH5EZ8Ix6gqIxCAgAAQU5A=
Date: Mon, 24 Feb 2020 11:44:22 +0000
Message-ID: <DB3PR0402MB391637EB54A1FD37059FBE47F5EC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1582512687-13312-1-git-send-email-Anson.Huang@nxp.com>
 <20200224102211.clzqw4vtzc4nz5df@pengutronix.de>
In-Reply-To: <20200224102211.clzqw4vtzc4nz5df@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 81c0c538-46f1-43ac-8177-08d7b91ee489
x-ms-traffictypediagnostic: DB3PR0402MB3658:|DB3PR0402MB3658:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB365819E08248EE6577205138F5EC0@DB3PR0402MB3658.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 032334F434
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(366004)(136003)(189003)(199004)(5660300002)(66476007)(81166006)(8676002)(64756008)(66446008)(81156014)(2906002)(8936002)(66946007)(76116006)(66556008)(33656002)(71200400001)(86362001)(7416002)(478600001)(55016002)(6506007)(9686003)(44832011)(26005)(186003)(7696005)(6916009)(316002)(54906003)(52536014)(4326008)(142923001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3658;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R+S6AQ6HACqVDGItV/695xHu+qD+NVKA6mcZYg5NjWYR9mbbWZ3Iz06yOa9z1PyXUx8tQv1zMQ0frt/RwA7WnAgfJ3Gl3e/kFiifkoRuQ2Du/zrqx8QzxWYWgVHLTN6qcdmqi1OvwdUZIyUGjlKAPU/TOYs3BP1eqJzVsw+lEs9lL2v2Mi1l+QSicOTm6emF9eoQ2/frktwqasoQavtN4bdv1ZJ6Ap+2MCqsHmElmJGjXxDXW3IHBjMjiqelRfH3NEekOd7BtQnYCCN1VxCATCByFLfCb0nHEi6CW6ilPm3QCRK5eb7eFw9EA417zak076956ubzShI4J6jw6m6+JMMeqswzIDKaQoFo4qcuOLfYHxdlRv4+sAnV0+1StTtZmFONZs9CP+/9hAFj506FCcvvWJD638LWflDhtPagt/WBjqpHF1vsxNwRTj1+397Xq00s9BNw9nLECEgRdviL2bJlxlCARRcGocoYNfNiPeleug297H0cU72dvyiirohO
x-ms-exchange-antispam-messagedata: du15b1p3kV5XsNf2TGR6FGomFJqhdsaC7o41a12jWwnV19a5A3OukrN4UaUWKdCV1zlUMkluU/1o9Opcz8F9U1/rRdbg7KePuIjab8kMMIF7CQ5j5wBRm4o91LIHyN+uB9/qcXtsNMrw/2psTAeZ8A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81c0c538-46f1-43ac-8177-08d7b91ee489
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 11:44:22.9929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wr0uJqGwjdL6O7wsJkQHjN9FFAgIj8U2otibbOcF7SQxF5Axbz/eFQz7qEQ9TqD2yVKrqP13CxoT/o2ohJZlyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3658
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_034426_822135_BD0BD290 
X-CRM114-Status: GOOD (  26.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.68 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Uwe

> Subject: Re: [PATCH] watchdog: imx2_wdt: Drop .remove callback
> 
> On Mon, Feb 24, 2020 at 10:51:27AM +0800, Anson Huang wrote:
> > .remove callback implementation doesn' call clk_disable_unprepare()
> > which is buggy, actually, we can just use
> > devm_watchdog_register_device() and
> > devm_add_action_or_reset() to handle all necessary operations for
> > remove action, then .remove callback can be dropped.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/watchdog/imx2_wdt.c | 37
> > ++++++++++---------------------------
> >  1 file changed, 10 insertions(+), 27 deletions(-)
> >
> > diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
> > index f8d58bf..1fe472f 100644
> > --- a/drivers/watchdog/imx2_wdt.c
> > +++ b/drivers/watchdog/imx2_wdt.c
> > @@ -244,6 +244,11 @@ static const struct regmap_config
> imx2_wdt_regmap_config = {
> >  	.max_register = 0x8,
> >  };
> >
> > +static void imx2_wdt_action(void *data) {
> > +	clk_disable_unprepare(data);
> 
> Does this have the effect of stopping the watchdog? Maybe we can have a
> more expressive function name here (imx2_wdt_stop_clk or similar)?

This action is ONLY called when probe failed or device is removed, and if watchdog
is running, the core driver will prevent it from being removed.

> 
> Is there some watchdog core policy that tells if the watchdog should be
> stopped on unload?

watchdog_stop_on_unregister() should be called in .probe function to make core
policy stop the watchdog before removing it, but I think this driver does NOT call
it, maybe I should add the API call, need Guenter to help confirm.

> 
> > +}
> > +
> >  static int __init imx2_wdt_probe(struct platform_device *pdev)  {
> >  	struct device *dev = &pdev->dev;
> > @@ -292,6 +297,10 @@ static int __init imx2_wdt_probe(struct
> platform_device *pdev)
> >  	if (ret)
> >  		return ret;
> >
> > +	ret = devm_add_action_or_reset(dev, imx2_wdt_action, wdev->clk);
> > +	if (ret)
> > +		return ret;
> > +
> >  	regmap_read(wdev->regmap, IMX2_WDT_WRSR, &val);
> >  	wdog->bootstatus = val & IMX2_WDT_WRSR_TOUT ?
> WDIOF_CARDRESET : 0;
> >
> > @@ -315,32 +324,7 @@ static int __init imx2_wdt_probe(struct
> platform_device *pdev)
> >  	 */
> >  	regmap_write(wdev->regmap, IMX2_WDT_WMCR, 0);
> >
> > -	ret = watchdog_register_device(wdog);
> > -	if (ret)
> > -		goto disable_clk;
> > -
> > -	dev_info(dev, "timeout %d sec (nowayout=%d)\n",
> > -		 wdog->timeout, nowayout);
> 
> Does the core put this info in the kernel log? If not dropping it isn't obviously
> right enough to be done en passant.

This is just an info for user which I think NOT unnecessary, so I drop it in this patch
as well.

> 
> > -	return 0;
> > -
> > -disable_clk:
> > -	clk_disable_unprepare(wdev->clk);
> > -	return ret;
> > -}
> > -
> > -static int __exit imx2_wdt_remove(struct platform_device *pdev) -{
> > -	struct watchdog_device *wdog = platform_get_drvdata(pdev);
> > -	struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);
> > -
> > -	watchdog_unregister_device(wdog);
> > -
> > -	if (imx2_wdt_is_running(wdev)) {
> > -		imx2_wdt_ping(wdog);
> > -		dev_crit(&pdev->dev, "Device removed: Expect reboot!\n");
> > -	}
> 
> I also wonder about this one. This changes the timing behaviour and so
> IMHO shouldn't be done as a side effect of a cleanup patch.

Guenter has a comment of "use devm_watchdog_register_device(), and the watchdog subsystem
should prevent removal if the watchdog is running ", so I thought no need to check the watchdog's
status here, but after further check the core code of watchdog_cdev_unregister() function, I ONLY
see it will check whether need to stop watchdog before unregister,

...

1083         if (watchdog_active(wdd) &&
1084             test_bit(WDOG_STOP_ON_UNREGISTER, &wdd->status)) {
1085                 watchdog_stop(wdd);
1086         }

Hi, Guenter
	Do you think watchdog_stop_on_unregister() should be called in .probe function to
make watchdog stop before unregister?

Thanks,
Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
