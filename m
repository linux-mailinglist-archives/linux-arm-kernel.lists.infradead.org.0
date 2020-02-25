Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B19D16B6BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 01:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPQw7D4aspfQowhBZ0uE8CYV9OI4wzXnldcxMfm+Ma4=; b=lsGim2J9twAM2X
	6Xe9Z7rZCvY3FPLkxMNYGHkFx5v5p5gMZjCgvRibVtQJwFkjax4cbv2Poj4h4PDTQ93hV5TcwAZNG
	HxbIORoECNCciLKqrmBjCVTIisXFb54vO2EIACh1WMfz0lRsG/yPOfpGE7u057aSjb7lL3YxcCbVk
	LPaQ8GbgI0PtWSgprPQO8yWlFYB+OcB6lVkyvz9d2yZtfoLZTinF2f+xdU1ruqmQWT2L2s8joNark
	urCWbh1R1z7AQtmp/0OpYMbUsxH5h0vc1RrqgJ9vTdoPo9GnBq+SKWFjQzNSzQtD/sg/dzdpFF+cL
	FXeUlnAUm5zh/Reps+Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6O88-0007G0-RH; Tue, 25 Feb 2020 00:31:20 +0000
Received: from mail-eopbgr20081.outbound.protection.outlook.com ([40.107.2.81]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6O80-0007CR-Bb
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 00:31:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PfBGnYYn+oP5XcP7N1qz8e0//vMD8vMQS3v0xM/TU4FhslZ8/9/HCfaFFlUkVlh2b8ToTJlemYNWs7qHu1mudKA/3jt+0IKi+dbpVLtLS8lbd4rk0Dw2tBNp1ph5KauW8FUJVcy8T0GWc2FvbPHrDFKOrSwbVTnEa5N6Y0E0WKjTsy3I8cdPS2x12QgWrr87R38PPH78p3IoWmdVgPCYZzN2GJeVLj6HTNPdPsZQlNaObzsqbo15Gd0Jq/br+OlDteEjdavzxYNTCH9Md+70en+cFYogYej24HprswXOeLEHssyOw2w8UMG1LYyjgPJ+aG9baK3vQlWNtIX5tpH34A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wdajuWpUehzUxcCZTY5/7NDXixbOhl8xRh7ZKfm3vyQ=;
 b=gvzg8/mtos4EqIBloo2RLZtSvHJZHimkMVf7Bag0jlKJdMbqvAXWNUpLpUc1mmjNAynXiHhlal8pWNyc4KIaaDXFSXXPxJuS9ADB/4RJFmNvcglK7HpAJDFDyjIJANdDfLJAm6NulAbY1o5qliOS09q7OB+nJZN7sWfRd6/AZrkTHVFjo9TUetk/hIJQh87h9yoTVGq/r//KXBMwel/sKAlDn5aW+0RezDBE9wEdQJMqrBbkEOcNn/S/ZwWBUulqfyVmWLkJRlFWqoToTC/sjjU/O00rJo8KYddqyqApbean/S1fQ3SgXkEQiLrkyA9LdpC/yzTQ0gyeSa7tgEA3vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wdajuWpUehzUxcCZTY5/7NDXixbOhl8xRh7ZKfm3vyQ=;
 b=sUTKn7prIEfsToNqrOwF5REkRlXoZ3Og/+RbvgN9+4Xlt0uvIrCdQTs66ph/VGgIP8I/aAqWpH7IVSiYkTjuIVjIhdwKWJPEwNq8tNuztCOmj76cK0Y3XXlYMKndn0r3jzsKPSVELB3VM8XDM2bt2TNkIn/jgGFZRbdD97Mgc1Q=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3676.eurprd04.prod.outlook.com (52.134.70.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Tue, 25 Feb 2020 00:31:06 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 00:31:06 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>, =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?=
 <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH] watchdog: imx2_wdt: Drop .remove callback
Thread-Topic: [PATCH] watchdog: imx2_wdt: Drop .remove callback
Thread-Index: AQHV6r4pAecyWfgb902OwJH5EZ8Ix6gqIxCAgAAQU5CAADDNgIAAq9PQ
Date: Tue, 25 Feb 2020 00:31:06 +0000
Message-ID: <DB3PR0402MB391656211E0A37CBA969D652F5ED0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1582512687-13312-1-git-send-email-Anson.Huang@nxp.com>
 <20200224102211.clzqw4vtzc4nz5df@pengutronix.de>
 <DB3PR0402MB391637EB54A1FD37059FBE47F5EC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <33c3778f-fc7e-8564-f767-91aafae03122@roeck-us.net>
In-Reply-To: <33c3778f-fc7e-8564-f767-91aafae03122@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 32d58c28-a8fa-4ebe-43f5-08d7b98a0092
x-ms-traffictypediagnostic: DB3PR0402MB3676:|DB3PR0402MB3676:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3676AC28F99F2E8ECA5A366CF5ED0@DB3PR0402MB3676.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0324C2C0E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(346002)(39860400002)(376002)(199004)(189003)(81156014)(7696005)(66556008)(8936002)(8676002)(71200400001)(478600001)(6506007)(81166006)(186003)(26005)(86362001)(9686003)(55016002)(53546011)(5660300002)(44832011)(52536014)(316002)(76116006)(66946007)(4326008)(110136005)(64756008)(54906003)(66446008)(66476007)(2906002)(33656002)(7416002)(142923001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3676;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zr6NeG2zzFzsI9SRAVUDiAzjl2twBkI6igutQ0EUFn4dUhRnlZq65aSuHOhTg2gNnfqEnG2F98ef4AMy50oXiYmorwXmk0Ed6JF9w2CR8qItkNpnW9gPz0FDm1ZQalh9QNgJgfk4XdHe4yEys2cQPbYJ3exPNwmU22lXNUF23mdETQvWuovdV8vJQn5XbJtRXjIo42O7dc7pQHT9PU2VH2hDUxXrFX0gTPGaJgOIvm+HH6FBe4ZJrW9Zh0mCfD6nAdwIB+GfQ+5rEO2nPUjJOYp94w+IRptM30eEU5bXBx0Axyozh4exq8Xei9IbjEOfMy7FictcTVEqSaYrFLplzAmm3GM1mlLhAS8aKesVvuOR1lnMpViFgcNKGqsYyhtGjGtWRbyNrV/ncSqBA5CZXZDSiXEIXgVwLXY0zoyv3DOOgSEokvRxBdCvINeJQKn00L38aqIEXmszF65PMxPBRQOBYFs7eiKLTnunIyoysLUqhTqhjY7Qk6ve+PiJLE24
x-ms-exchange-antispam-messagedata: WKWtioHDG42M5zLPwSrn0YuGItTH4VDSGLiga7JcheXTTkHFCK7MmQUfp8PHYFeoVt8tv2XlUFVBzgHvDBXLfsBUDYBiIR1ao8PZjufVXOVOne7bSyVrlDUXs/86Y4HkqxT59O8lvoOMYB1wV3Iw9g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32d58c28-a8fa-4ebe-43f5-08d7b98a0092
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 00:31:06.1496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x61zwUsxAf7IW1rh7YM+VCL9zkf6egeBLqtmHmm/HWo15UucdBCX0OuwWzEYoXxzzF5YOFoNWCIZG5HfioTw9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3676
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_163112_475524_AD215D40 
X-CRM114-Status: GOOD (  35.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.81 listed in list.dnswl.org]
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

> Subject: Re: [PATCH] watchdog: imx2_wdt: Drop .remove callback
> 
> On 2/24/20 3:44 AM, Anson Huang wrote:
> > Hi, Uwe
> >
> >> Subject: Re: [PATCH] watchdog: imx2_wdt: Drop .remove callback
> >>
> >> On Mon, Feb 24, 2020 at 10:51:27AM +0800, Anson Huang wrote:
> >>> .remove callback implementation doesn' call clk_disable_unprepare()
> >>> which is buggy, actually, we can just use
> >>> devm_watchdog_register_device() and
> >>> devm_add_action_or_reset() to handle all necessary operations for
> >>> remove action, then .remove callback can be dropped.
> >>>
> >>> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >>> ---
> >>>   drivers/watchdog/imx2_wdt.c | 37
> >>> ++++++++++---------------------------
> >>>   1 file changed, 10 insertions(+), 27 deletions(-)
> >>>
> >>> diff --git a/drivers/watchdog/imx2_wdt.c
> >>> b/drivers/watchdog/imx2_wdt.c index f8d58bf..1fe472f 100644
> >>> --- a/drivers/watchdog/imx2_wdt.c
> >>> +++ b/drivers/watchdog/imx2_wdt.c
> >>> @@ -244,6 +244,11 @@ static const struct regmap_config
> >> imx2_wdt_regmap_config = {
> >>>   	.max_register = 0x8,
> >>>   };
> >>>
> >>> +static void imx2_wdt_action(void *data) {
> >>> +	clk_disable_unprepare(data);
> >>
> >> Does this have the effect of stopping the watchdog? Maybe we can have
> >> a more expressive function name here (imx2_wdt_stop_clk or similar)?
> >
> > This action is ONLY called when probe failed or device is removed, and
> > if watchdog is running, the core driver will prevent it from being removed.
> >
> >>
> >> Is there some watchdog core policy that tells if the watchdog should
> >> be stopped on unload?
> >
> > watchdog_stop_on_unregister() should be called in .probe function to
> > make core policy stop the watchdog before removing it, but I think
> > this driver does NOT call it, maybe I should add the API call, need Guenter
> to help confirm.
> >
> The driver doesn't have a stop function, which implies that the watchdog can
> not be stopped once started. Calling watchdog_stop_on_unregister() seems
> to be pointless.
> 
> That also implies that the watchdog can not be unloaded after it has been
> started since it can't be stopped. More on that below.
> 
> >>
> >>> +}
> >>> +
> >>>   static int __init imx2_wdt_probe(struct platform_device *pdev)  {
> >>>   	struct device *dev = &pdev->dev;
> >>> @@ -292,6 +297,10 @@ static int __init imx2_wdt_probe(struct
> >> platform_device *pdev)
> >>>   	if (ret)
> >>>   		return ret;
> >>>
> >>> +	ret = devm_add_action_or_reset(dev, imx2_wdt_action, wdev->clk);
> >>> +	if (ret)
> >>> +		return ret;
> >>> +
> >>>   	regmap_read(wdev->regmap, IMX2_WDT_WRSR, &val);
> >>>   	wdog->bootstatus = val & IMX2_WDT_WRSR_TOUT ?
> >> WDIOF_CARDRESET : 0;
> >>>
> >>> @@ -315,32 +324,7 @@ static int __init imx2_wdt_probe(struct
> >> platform_device *pdev)
> >>>   	 */
> >>>   	regmap_write(wdev->regmap, IMX2_WDT_WMCR, 0);
> >>>
> >>> -	ret = watchdog_register_device(wdog);
> >>> -	if (ret)
> >>> -		goto disable_clk;
> >>> -
> >>> -	dev_info(dev, "timeout %d sec (nowayout=%d)\n",
> >>> -		 wdog->timeout, nowayout);
> >>
> >> Does the core put this info in the kernel log? If not dropping it
> >> isn't obviously right enough to be done en passant.
> >
> > This is just an info for user which I think NOT unnecessary, so I drop
> > it in this patch as well.
> >
> >>
> >>> -	return 0;
> >>> -
> >>> -disable_clk:
> >>> -	clk_disable_unprepare(wdev->clk);
> >>> -	return ret;
> >>> -}
> >>> -
> >>> -static int __exit imx2_wdt_remove(struct platform_device *pdev) -{
> >>> -	struct watchdog_device *wdog = platform_get_drvdata(pdev);
> >>> -	struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);
> >>> -
> >>> -	watchdog_unregister_device(wdog);
> >>> -
> >>> -	if (imx2_wdt_is_running(wdev)) {
> >>> -		imx2_wdt_ping(wdog);
> >>> -		dev_crit(&pdev->dev, "Device removed: Expect reboot!\n");
> >>> -	}
> >>
> >> I also wonder about this one. This changes the timing behaviour and
> >> so IMHO shouldn't be done as a side effect of a cleanup patch.
> >
> > Guenter has a comment of "use devm_watchdog_register_device(), and
> the
> > watchdog subsystem should prevent removal if the watchdog is running
> > ", so I thought no need to check the watchdog's status here, but after
> > further check the core code of watchdog_cdev_unregister() function, I
> > ONLY see it will check whether need to stop watchdog before
> > unregister,
> >
> 
> I would suggest for someone to try and trigger this message, and let me
> know how you did it. If the watchdog is running, it should not be possible to
> unload the driver; attempts to unload it should result in -EBUSY. If it is
> possible to unload the driver, there is a bug in watchdog core which will need
> to get fixed.
> 
> > ...
> >
> > 1083         if (watchdog_active(wdd) &&
> > 1084             test_bit(WDOG_STOP_ON_UNREGISTER, &wdd->status)) {
> > 1085                 watchdog_stop(wdd);
> > 1086         }
> >
> > Hi, Guenter
> > 	Do you think watchdog_stop_on_unregister() should be called
> in .probe
> > function to make watchdog stop before unregister?
> >
> How would you expect the watchdog core to stop the watchdog with no stop
> function in the driver ?

Now I understand your point, thanks for you detail explanation.

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
