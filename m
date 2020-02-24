Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BC8169C6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 03:54:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fHJusYfdGdoOJQeVCknzOGSAUv0UF2BDY0jjSKZQy0U=; b=FvPJhrErkkQVnF
	96wn6LSaDMRKKWts57VHBxWVzl2R91205RVLz59dETeeqXZbT5I4jTePWb2KjAVeuKClEpICPFDoT
	Jwz+l92bvCuXreO4vwAJKzUQkb1EFLSjyl7200iVBJoJNqRSuP4jhrF88+IDrRgDwqTcPg5RTnTIS
	sQssC/5SAmqq8UNs5GS3obd0URifQ/ox7FvnxmN8p1J09V4FgM1NjhgSYXyFmkauCcVEOpYjvbmPK
	A4501WP7hrIGofoPQ5QvqlNlAyADNmoUs4ucS5GUmYf4l0xcpGKVF2UpDqEQoyD/TNJFcwrdk3QBt
	/RQWOl55tMVBiyGvRsAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j63sy-0002bL-LO; Mon, 24 Feb 2020 02:54:20 +0000
Received: from mail-vi1eur04on061b.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::61b]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j63sp-0002an-7U
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 02:54:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bbfhP6l+JOS88y+5vIhFUn6mZDctXRVbERxDwkGRwpaIQDQg85itSR5cTuao44EWGIQTAFZRcQyhTfl+9CIyyhoZ4IkpzJ9yNjQK5OoMKSNYBHj7gqojgDrkYuEE/MW/2g0A63IC+phtr8BUgOIa6tUZU+JYxzggCmNi+NLT9OEH394E3a9Zk8Ve8E3+iRu2bgVLwM32r67aBJyWnFt5ecplpUFIOEzMFwOs+62gnQkfGq1PzqLukeKp262EWMx7SzU8ga8/yO3B9Jrd9rV4qw+h1ls1RgMSlsfQUec/09wERRBPkjF1lMawVVum2Zk4CIlUOx4bVWuX/q4bq1A1XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HTooC8lbNMKsq+iGhksXUjSHkckElzAgu2brk0x7FvY=;
 b=NYvTxsSk1v4FjtCmEibvLN1frXrj+ijifmhtdQTLetonszdYn0zVg3CT4gQh1I1EZY8L3kE+yhN+0NhJLMyby/HSuBm/eXKGxWnSDSDHy46T4oPjPyWU5LVCHYZo2h6lfsRIX+Ad3evX57f4tSw1PqkopjXhO4a43Kto73okGZcGgPyS1HbIKCIOlbvFLC1/I1JMQ2YM/dIGF4eFhDSPsq2LauSWOIFXMC6J2bPOkNBghJX++ZUFp4kQZjOqZ2PJTuSBsLcnbZq33yYQFWuZ9iUzaNZXj+Dxk09W9VGnlz5oQUI3qS+BmetAc3JLWBanB/p9oY9tsQP+nOa4W6kCbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HTooC8lbNMKsq+iGhksXUjSHkckElzAgu2brk0x7FvY=;
 b=AWSFylZ2fI0SteZvfPLJtiqkYP5/hMfk7vyAy25VIOe6rTEmhnqUmS5TBZg+zaq+zu/UenokAzTbeFXRO6wy56thiQim4MvIWl9yJeSWibN4YgUXappdUdD3gdxM10nbw0uwNO4jntuWnqAsgdIbr2GcbWaJ91TAr/l/T+Fc5ls=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3788.eurprd04.prod.outlook.com (52.134.72.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Mon, 24 Feb 2020 02:54:08 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 02:54:08 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: RE: [PATCH 3/3] watchdog: imx2_wdt: Remove unused include of init.h
Thread-Topic: [PATCH 3/3] watchdog: imx2_wdt: Remove unused include of init.h
Thread-Index: AQHV6FuH8+3BpoBnsE6HuBUDScQ3YKgnYjMAgACJsTCAAOi7AIAA1T5g
Date: Mon, 24 Feb 2020 02:54:08 +0000
Message-ID: <DB3PR0402MB391631B945FB45877B43EEDEF5EC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1582250430-8872-1-git-send-email-Anson.Huang@nxp.com>
 <1582250430-8872-3-git-send-email-Anson.Huang@nxp.com>
 <20200222160218.GA12740@roeck-us.net>
 <DB3PR0402MB3916C4CC9A79BFA49441EBEAF5EF0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <a45aeb79-7918-42e9-1c47-3cc631057a59@roeck-us.net>
In-Reply-To: <a45aeb79-7918-42e9-1c47-3cc631057a59@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [27.157.70.3]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: aecc0e8a-bd5a-4457-0922-08d7b8d4d171
x-ms-traffictypediagnostic: DB3PR0402MB3788:|DB3PR0402MB3788:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB378898F0D962F2F4E8F45B34F5EC0@DB3PR0402MB3788.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 032334F434
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(136003)(376002)(366004)(199004)(189003)(33656002)(5660300002)(316002)(55016002)(52536014)(9686003)(54906003)(2906002)(4326008)(6506007)(53546011)(66556008)(66446008)(64756008)(478600001)(66476007)(66946007)(76116006)(7696005)(8936002)(8676002)(186003)(26005)(6916009)(44832011)(71200400001)(81166006)(81156014)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3788;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ss0CwNCgBlEjT06WEpCVdGYeCSBO/w+tF3oFraBkpy9Kse1T2ZD1szDWPAFLPQQ/mOXh8gj9c1sBqnW9PITm/shu25NJTLBlUCz7hc5FgRUrP4kTneMykxYP/GiXTwdbUOA8vHxVI0Uw3bm0+QDj5SIGMskAD81jBsFBWD6SX52pHo9lIxSRXywUEHJBcMaLQUJ57jKIobqNE7Xj7xR4HKhaL0cydcUBWQAHu3bvPtE1b6ORbfx2plnCOAh4Zcduvg3lFwvj3aTNI+3xyMlYYh0rqcgTUCr+GuJGwA2Clc1RoFf+lMNgUg8krpcF1eWlG9aI21Yt6U/RkMuBseqOq9DAeJe1LpM1T3MPWa5j67wG4K/I881rHoMqLY/PPwlD30QGqxJI995xr97Wh3BszJ8RnWcRJFNRlG0NuNe1sJFyVaibKAYOCq12in4DlHRJ
x-ms-exchange-antispam-messagedata: Nvvz6q/fg5gRuDZEKZNXbLOnesC4CVNj3i1L0nbzreqF2qlN22K83iF0JZaL5efiriXyl+ZBJPy0GnoC+hU6sCRmJILUO45/cqy3WrCqmj0XmIyr1JXRJ+dbhi6iOoSszGRiBCLNGCEuS/WmuK0Icw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aecc0e8a-bd5a-4457-0922-08d7b8d4d171
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 02:54:08.1258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lBOkncC8uCvb6OAYpITfmyKkI2wCl18mnFzJRs4aTQSjy44JIbu41EArFsq72HKhXKVgIe4fgf3m/t7TRYvruw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_185411_344550_73A2E0CC 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:61b listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 FORGED_SPF_HELO        No description available.
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
> On 2/22/20 4:16 PM, Anson Huang wrote:
> > Hi, Guenter
> >
> >> Subject: Re: [PATCH 3/3] watchdog: imx2_wdt: Remove unused include of
> >> init.h
> >>
> >> On Fri, Feb 21, 2020 at 10:00:30AM +0800, Anson Huang wrote:
> >>> There is nothing in use from init.h, remove it.
> >>>
> >>
> >> NACK, sorry; this driver uses __init and __exit_p.
> >
> > Ah, yes, just notice them. But I don't understand why the .probe
> > callback needs __init and .remove callback needs __exit_p? Should they
> need to be removed?
> >
> 
> That is not a matter of "needs". __init causes the code to be removed after
> initialization. This is ok and desirable if it is known that the hardware is built-
> in and will only ever be probed once.
> 
> exit_p causes the code to be removed if it is built into the kernel. This is
> desirable and makes sense if the device is known to never be removed.


Make sense, for now, there is no i.MX SoC needs watchdog driver as module,
so I will keep it here.


> 
> Having said that, what _is_ unnecessary is the remove function. Registration
> could use devm_watchdog_register_device(), and the watchdog subsystem
> should prevent removal if the watchdog is running. Plus, the removal
> function is
> buggy: It doesn' call clk_disable_unprepare() (but that could be handled with
> devm_add_action_or_reset() in the probe function). In my opinion, fixing all
> that would be more valuable than trying to drop an include file.

Thanks for pointing out the clock operation issue in .remove callback, I will cut
a patch using devm_watchdog_register_device() and  devm_add_action_or_reset()
to handle all necessary operations for remove action, then drop .remove callback.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
