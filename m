Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3470478A86
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 13:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOLsMPAzEjCtRiqMK7A29Y/t0qhXBYp+yeNaxTUH10Q=; b=k688MD+kT9yliu
	hm1e25SgkMOwlDsUhl3hA5dJj/71rO+6DnIBuC2Fjv26NokO+P/fbVskqMRiG5rw0/MsBUIRr5Pcy
	BHfPge1oOM2fAWtPopxlPVNlYXc5gXH1YyCO/mrEP7Pl3Wl97WKSnXikVktLqdsDtmOHoioUxxkq8
	ehpVpRVgKeQ6iBIpudr7DAoLk+fDzhdPqWxZ1uc+HVl+yCc03J0UsJmWh5SvRqVEHdDV1YQr8t8K3
	yW0np9s6u4Dn6MqgWiqqweNyRHfaFTvfVaekv4s/o70z/nzXJL/AoOVEXB+76i/bT57Gus5tcDw6v
	iexavcz34wPmnCNZEWqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3pz-0005p7-9F; Mon, 29 Jul 2019 11:29:07 +0000
Received: from mail-eopbgr20054.outbound.protection.outlook.com ([40.107.2.54]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3pr-0005o9-Ct
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 11:29:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cjr9i/pB9+r3GJCgOgGWx75+IqwL0YB9eymlU3xqhznh+bJAO0Qh6XeqeNkTr74CWyceL+BFj5qQywou2Q7FNkESMqWtbPiWLZSBnfh3QJhy75+iCF1YzqqnfMSK36+IDiQ7BAgsVF9+CvS3PEKHWuYjSnFt5+tXjbwh34m1JwiSB6ccm3wDWnavhnlhNYKGm/0kVtYJbKP+QuJsPPWR0XvqXStMP8EeMNe1OzQWeVUvdKYi9Q8X693gfQYNNUZNAD4ti57kUF0+0J8VLb5gDoxiIadG4yANau5UuKlZcApS8GF2CuqDSFAumBJ0DA5/tmjvYXYzvmM2WdyH/TTgNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MINc0VhBvKrJc24VKWRhXBFDA67exo6KPx14IbQxDaI=;
 b=DkmrxFmoLpngEHwaUyLwlGH8g5BOfrMK/mI8/810Or3ga4mcPwRYQDYpJn/5s/11Wxk4GrLZwl9vtgDvMaWXPQaf72XbcGgo5iHzyrnTm94bd17t2UjgtmBb7hDEAZwroMRmsD5tZK9i39LpglQR8Pe8csaYfeHcmRb6ovCbBA7k2MILs/usDSf/ykCFRqKGpjjRYet4UvAmwKkdj9YPYNK9kGR68F/X0dJi5do9UMTIWxcunj/dQsa1iGE9kcQspNNpPNVDgSBcjQAOFJ3c34r05Xu9A8RWy0sTndHRzt8Kt01HAffBI5yixrECtqHl9Ycunh1kRN3FbJ8Bvn/6BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MINc0VhBvKrJc24VKWRhXBFDA67exo6KPx14IbQxDaI=;
 b=HnX6P/1VsQKgJ3rOCpRe5QnMqojcCk1A0qLNGtrJwxzJTrjYBaO109CKNBol46dRLh+E++IwtQmU5vCw8bxKb7Rd6ZPxxBwWbLTsyn+5oKhHl0HXDZ8Z4L2H+baRZO/K2xQbGLwr2mkxvEjwBRCisE/UgEpR6tkZVdtOyNfXOWI=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6225.eurprd04.prod.outlook.com (20.179.33.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Mon, 29 Jul 2019 11:28:52 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::5553:29b6:d66c:6afe]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::5553:29b6:d66c:6afe%5]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 11:28:52 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Oleksij Rempel
 <o.rempel@pengutronix.de>, =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?=
 <u.kleine-koenig@pengutronix.de>, Wolfram Sang <wsa@the-dreams.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, dl-linux-imx
 <linux-imx@nxp.com>, Robin Gong <yibin.gong@nxp.com>
Subject: RE: REGRESSION: i2c-imx endlessly triggers clk warning
Thread-Topic: REGRESSION: i2c-imx endlessly triggers clk warning
Thread-Index: AQHVRf89o9wZbKkeSke6cICyeLdOaabhdTfA
Date: Mon, 29 Jul 2019 11:28:52 +0000
Message-ID: <AM0PR04MB4211E3811826ADCA85F0FD0280DD0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190729111720.GV1330@shell.armlinux.org.uk>
In-Reply-To: <20190729111720.GV1330@shell.armlinux.org.uk>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d271ee0-65d9-4211-1217-08d71417ef4d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6225; 
x-ms-traffictypediagnostic: AM0PR04MB6225:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB6225E81D960ECF8AF9B6618D80DD0@AM0PR04MB6225.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(366004)(39860400002)(376002)(51914003)(51234002)(189003)(199004)(44832011)(446003)(476003)(9686003)(55016002)(71200400001)(486006)(11346002)(53936002)(6306002)(110136005)(316002)(68736007)(6116002)(3846002)(71190400001)(7696005)(76176011)(33656002)(256004)(14444005)(5024004)(25786009)(102836004)(99286004)(26005)(6506007)(186003)(66066001)(6246003)(478600001)(52536014)(45080400002)(66476007)(66556008)(8936002)(6636002)(76116006)(74316002)(6436002)(966005)(86362001)(5660300002)(2906002)(8676002)(81156014)(81166006)(2501003)(66446008)(66946007)(64756008)(7736002)(14454004)(229853002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6225;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9KqdCUx2r3CDkQ6diZgk3ljh6+6QgXqxI/YeHRSCimOiKC3XrVTjyUHvNJ3NKXhtkxSlt2rBerxKrH3NhTEh06vUwbFGi5gyIkjfSZ6P9k/p4QmL8Im9ilDSd9eKBkeRygJ4Yh+4ws5k2CXlEQMmkit7wKJtz3ECsVz9ID90t88THyRi7TEvoUMgGcFhSP0bpvZ7kV2qd1uVk759YaBV2GiHkHd3T5g7N5wEfwM6lf1PKEpR3zuG8WaMZWrjvSZDkRdoYAkl6SKu30jxaWU+qROzKIEjzzj95BMiGf6hb7GZV55d7Vy87ZOpvF7DhUMxKJ5FB6hhlawD9AjPQYpLa/Dvh/XGxLABYR/xhk5qXp64BJELpss70/6KDhSbGjMZfcdoiHL/nbFeSPa7hk0YhLasvWeI64yLp1/eVIjAM7o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d271ee0-65d9-4211-1217-08d71417ef4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 11:28:52.6554 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_042859_513738_2199FF34 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
> Sent: Monday, July 29, 2019 7:17 PM
> 
> Booting 5.2 on the VF610 based ZII rev B board results in the board not making
> progress due to an endless stream of:
> 

Thanks for the reporting.

> [  153.077831] ------------[ cut here ]------------ [  153.082528] WARNING: CPU:
> 0 PID: 15 at drivers/clk/clk.c:924 clk_core_disable_lock+0x18/0x24
> [  153.093077] i2c0 already disabled [  153.096416] Modules linked in:
> [  153.099521] CPU: 0 PID: 15 Comm: kworker/0:1 Tainted: G        W
> 5.2.0+ #321
> [  153.107290] Hardware name: Freescale Vybrid VF5xx/VF6xx (Device Tree)
> [  153.113772] Workqueue: events deferred_probe_work_func
> [  153.118979] [<c0019560>] (unwind_backtrace) from [<c0014734>]
> (show_stack+0x10/0x14) [  153.126778] [<c0014734>] (show_stack) from
> [<c083f8dc>] (dump_stack+0x9c/0xd4) [  153.134051] [<c083f8dc>]
> (dump_stack) from [<c0031154>] (__warn+0xf8/0x124) [  153.141056]
> [<c0031154>] (__warn) from [<c0031248>] (warn_slowpath_fmt+0x38/0x48)
> [  153.148580] [<c0031248>] (warn_slowpath_fmt) from [<c040fde0>]
> (clk_core_disable_lock+0x18/0x24) [  153.157413] [<c040fde0>]
> (clk_core_disable_lock) from [<c058f520>] (i2c_imx_probe+0x554/0x6ec)
> [  153.166076] [<c058f520>] (i2c_imx_probe) from [<c04b9178>]
> (platform_drv_probe+0x48/0x98) [  153.174297] [<c04b9178>]
> (platform_drv_probe) from [<c04b7298>] (really_probe+0x1d8/0x2c0)
> [  153.182605] [<c04b7298>] (really_probe) from [<c04b7554>]
> (driver_probe_device+0x5c/0x174) [  153.190909] [<c04b7554>]
> (driver_probe_device) from [<c04b58c8>] (bus_for_each_drv+0x44/0x8c)
> [  153.199480] [<c04b58c8>] (bus_for_each_drv) from [<c04b746c>]
> (__device_attach+0xa0/0x108) [  153.207782] [<c04b746c>] (__device_attach)
> from [<c04b65a4>] (bus_probe_device+0x88/0x90) [  153.215999]
> [<c04b65a4>] (bus_probe_device) from [<c04b6a04>]
> (deferred_probe_work_func+0x60/0x90)
> [  153.225003] [<c04b6a04>] (deferred_probe_work_func) from [<c004f190>]
> (process_one_work+0x204/0x634) [  153.234178] [<c004f190>]
> (process_one_work) from [<c004f618>] (worker_thread+0x20/0x484)
> [  153.242315] [<c004f618>] (worker_thread) from [<c0055c2c>]
> (kthread+0x118/0x150) [  153.249758] [<c0055c2c>] (kthread) from
> [<c00090b4>] (ret_from_fork+0x14/0x20) [  153.257006] Exception
> stack(0xdde43fb0 to 0xdde43ff8)
> [  153.262095] 3fa0:                                     00000000
> 00000000 00000000 00000000
> [  153.270306] 3fc0: 00000000 00000000 00000000 00000000 00000000
> 00000000 00000000 00000000 [  153.278520] 3fe0: 00000000 00000000
> 00000000 00000000 00000013 00000000 [  153.285159] irq event stamp:
> 3323022 [  153.288787] hardirqs last  enabled at (3323021): [<c0861c4c>]
> _raw_spin_unlock_irq+0x24/0x2c [  153.297261] hardirqs last disabled at
> (3323022): [<c040d7a0>] clk_enable_lock+0x10/0x124 [  153.305392]
> softirqs last  enabled at (3322092): [<c000a504>] __do_softirq+0x344/0x540
> [  153.313352] softirqs last disabled at (3322081): [<c00385c0>]
> irq_exit+0x10c/0x128 [  153.320946] ---[ end trace a506731ccd9bd703 ]---
> 
> My guess is that this is due to a combination of e1ab9a468e3b ("i2c:
> imx: improve the error handling in i2c_imx_dma_request()") and the fact that
> my configuration has CONFIG_FSL_EDMA=m.  Given that the boot makes no
> progress, it seems that this driver now requires EDMA to be built-in _if_ this
> driver is also built in.  It seems that Kconfig allows an invalid configuration as
> far as the driver is concerned.
> 
> However, even though it seems that EDMA needs to be built-in with 5.2, this
> should not trigger the above kernel warning, which suggests something is
> wrong in the driver cleanup paths.

Copy Yibin to check the possible edma issue.

Regards
Aisheng

> 
> --
> RMK's Patch system:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.ar
> mlinux.org.uk%2Fdeveloper%2Fpatches%2F&amp;data=02%7C01%7Caisheng.
> dong%40nxp.com%7Ce3e704d7d9414e860c7a08d714165ebc%7C686ea1d3b
> c2b4c6fa92cd99c5c301635%7C0%7C0%7C636999958630559001&amp;sdata
> =2d2Ti0gMN2vi7n4hPrsPZ2jGw3kqScStqPzpI%2BiEOXY%3D&amp;reserved=0
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps
> up According to speedtest.net: 11.9Mbps down 500kbps up
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
