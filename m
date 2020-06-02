Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21D21EB377
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 04:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTkOSm+lkU0hrAVMyOyfTylleQhLWsXM0dRSSxaFz7A=; b=ZAuExnxxBQ/w1n
	ZPVLsXgHJ3WvfM1xoHE0BIA3gAMjLQci5G2J0JHCwa+hDeCKBxo5c+/cLt+V7ZZcgpKbOP/F2QbPv
	rX2po3qRzNbya5PkwGK7xb6UqnMlsatpxDxdav3kTZFiSFpeWMZ/WxH1Z0ozZSrZtCbe8qqeJ63Ij
	jkN0VaNEkg1Y9BZF4+zyn94M7fKESUX5YEqYX4OXiCvpmaeEJT3/EII2ISyV6tMOFJdn7cM51Kzfw
	K/pjyVUPSwC4xKoEThx3HCBdFn1D7HpkuxLH4gURqDFfO8E9GE9fJKFQWZbYt5F5t0dUuYWCB6mn0
	M+2nK6H4qEDhaX6oQ1YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfwsv-0005I6-BD; Tue, 02 Jun 2020 02:42:37 +0000
Received: from mail-eopbgr80080.outbound.protection.outlook.com ([40.107.8.80]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfwsH-0004xW-Rf
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 02:42:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TkuS/2rcpIAK34MfiA4hR82Dr3eKeEqMZFwN0D4cbjkPhdEzlPeyrSAKUwLJb1e/6hweU+X6Vkca3z/reRvj+eN0Vu8Mx917pp/DLDil7qSsQxaTqvHuj0OSnGa+c1Ji/rk7jR953Eb7nfOq/IhKah4XjoGIU0MivNtBoZPxdkh66JQby42FM8GEU+e6YL1WZRVBj3A2qQUr+6anxIyD9LaxAUYB8+x9wNocjJZNkMX7puH6yzv00lmU9GqTl3gOElktiTCy/pllOjgsXkxzQubTenBo3Py260sO1hamVPbH7G1UuYPK73NWnWqYLJxIIlqAYcd6vbQb96ONnzh82Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LmVjI2v+wTVhEBSVU1EGWX4FcimknFP6A8wi00B9eO0=;
 b=U84R6+tJlzC664DPfykhhHZSFlpeNDtKt6u1JAM3KBIYmeEvbBsjGY0MQA1i0tkeicpCTyKGkfDgtBTI9k3VhpIef8RlAZgx2936B6F2IoT05N0Q2gi2BPib9rHs9Zh6lfKKbeo2uVhKPBxxrVvXXTSR/MA2ChiG3n1Ih0pFmpdvvxJztB8oNZsdsemNFsvF9owq2Ifopxb3g9iruC5KFJ1ZR4csNzneCoRJJZQ9Sh2qinLPbPEJfF23n1yZdLLjBqwUEZ2VXd4ho9LfgB82M8ptPckLndMV6d1g/Lvh5LyTwbPiSN/WoF1B9zvdZMtrxmnfUMl96kN6NRIcKFiT+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LmVjI2v+wTVhEBSVU1EGWX4FcimknFP6A8wi00B9eO0=;
 b=ENguy3NscOtVVA+hpUyFJ9Zw/1lVRU+zmI+pNv3sUtOzO/Z6HQmuKtYYoTzDQkndu74qKGYmAyPyCIxWOS6iY4rKxE5uQhf3NrDgvZxPu5mfpXT1rsWP6ZzTRbvMYVrWUqHFQJnk2ZNEpqfX86yH5QVGs8uk9xyAU39dvMND28A=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6135.eurprd04.prod.outlook.com (2603:10a6:20b:bf::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Tue, 2 Jun
 2020 02:41:54 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3045.024; Tue, 2 Jun 2020
 02:41:54 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
Thread-Topic: [PATCH 2/4] firmware: imx: add resource management api
Thread-Index: AQHWGT38Z8g88FkqQ0uX8uLlRjqzhqiGeivAgAAPRACAADPS4IAAuu8AgAANZXCAPGt2AIAA6fVA
Date: Tue, 2 Jun 2020 02:41:54 +0000
Message-ID: <AM6PR04MB4966614B0277757E98BF24C9808B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB49665455AE49EB1B500BEB4080D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276030B2D59423AF0FD3769388D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB4966169A7CB00C084FEA601980D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276083583D788E2685B78C3F88D00@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB4966A484AA8E480D7E479F9E80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276084207EDE5111E624938D888A0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB276084207EDE5111E624938D888A0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 55c3c489-feb9-487e-2b76-08d8069e82f4
x-ms-traffictypediagnostic: AM6PR04MB6135:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6135569025023FCA0303AE81808B0@AM6PR04MB6135.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0422860ED4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Amsq/qta4uHKBfm5EJLZr6dsEcfSpwFYj/5kqe9GVGcW98Xtjm/6Z4tvwT4Qx7GFiUT2byxI7FlcK8Tpof/1P+PM1M5XPzRTgsPR6WtikTKrqg4yML0I4D0IZKrVNRyon6Gw3UpYKACt6k3CdILAJtkCSvuE8BZSh4gxUC+jZXI1DUlOIcwQ0iaRW/0/+bOJ/ySth/jjmZBolXSJoOBQo9XNRqweL6hp0nty9QPdDCcuiCAKg0jZFcA1FOk/WcPoBGFvuT/cp/K3TCMb9CWkVShpz9I2ZOXqY00hPDKPTeB4I6pSU2mFcMkBDr9Nao+f
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(39860400002)(396003)(346002)(366004)(66476007)(66556008)(64756008)(66446008)(76116006)(66946007)(86362001)(8936002)(33656002)(5660300002)(478600001)(30864003)(7696005)(52536014)(54906003)(83380400001)(110136005)(55016002)(6506007)(44832011)(71200400001)(2906002)(316002)(186003)(8676002)(9686003)(26005)(4326008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: yhjlIKO52wmiJtZABX7N7AC0/ytx/lKrj+btapxy+5Zzusjsj4/ZkbBm4VLmYywWc9eMRm0/MBtzZsGwHB8rkUthf/uor9mjtQH9IK95nT9kanttdOCPsZpus72K4zS6MEiGTKvtUQ0ikX5IV5a813IV3lr1EsYrfTvixaNWxdb5XkhZXZPnPsb5RFGmOKUMMkisy4+QyotHnN0eXWxkI/MaL14fzMtVAVk0l43L6RxfVjap+9Tfj8eHaVwD4H5ajR5vuL7ZCJ8Y0wZRuCfyGI1IKRTYs51uNjFpVuCFKLJjPfONBwI7VJN7jWEgjDvALwqJ5YtXgEEvVO8efYQX6u8NS3CI3mL/EiVxKi9MozeLfpaECORjPOgJ8PwKyUpzWcOXXFFxDzTO2Wg+p8PZUtgjYkPHjN0O5O/XuDmApbVP0EadtNEUf+bRQs9cyZE5SsfDfdtQqLRldtvhIFTTEB0k2K70GhxhL+5RFcWZogXzWGIHqZuJXz+rAKUgzp4R
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55c3c489-feb9-487e-2b76-08d8069e82f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2020 02:41:54.3505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xVy6cxkgK6leCxh2Mn3KaIsTf7B8vU0ADGaBvQ8ncxfGvrT1GqLZBzX76SilnU9/x1175ctJTouWVSTWJ2Q5Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_194158_180821_0C30DDD2 
X-CRM114-Status: GOOD (  26.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.80 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Monday, June 1, 2020 8:40 PM
> >
> > > From: Peng Fan <peng.fan@nxp.com>
> > > Sent: Friday, April 24, 2020 9:12 AM
> > > >
> > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > > Sent: Thursday, April 23, 2020 6:57 PM
> > > > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > > > > Sent: Thursday, April 23, 2020 3:00 PM
> > > > > > >
> > > > > > > Add resource management API, when we have multiple partition
> > > > > > > running together, resources not owned to current partition
> > > > > > > should not be
> > > > used.
> > > > > > >
> > > > > > > Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> > > > > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > > >
> > > > > > Right now I'm still not quite understand if we really need this.
> > > > > > As current resource is bound to power domains, if it's not
> > > > > > owned by one specific SW execution environment, power on will also
> fail.
> > > > > > Can you clarify if any exceptions?
> > > > >
> > > > > There will be lots of failures when boot Linux domu if no check.
> > > > >
> > > >
> > > > What kind of features did you mean?
> > > > Could you clarify a bit more? I'd like to understand this issue better.
> > >
> > > When supporting hypervisor with dual Linux running, 1st Linux and
> > > the 2nd Linux will have their own dedicated resources.
> > >
> > > If no resource check, that means 1st/2nd Linux will register all the
> > > resources, then both will see fail logs when register resources not
> > > owned to
> > itself.
> > >
> > > Same to partitioned m4 case.
> > >
> > > Would it be better without the failure log?
> > >
> >
> > Is it power up failure?
> > If yes, it's expected because we actually use power up to check if
> > resources are owned by this partition. It functions the same as
> > calling resource check API.
> > That's current design.
> >
> > Or it's other failures? Log?
> Sorry for long late reply.
> 
> Part of my XEN DomU log, there are lots of failure log. I think better not have
> such logs by add a resource own check.

Those error logs are intended.
Resource owner check actually behaves the same as power up.
So not quite necessary to add a double check.
If we're concerning about the error log, we can change it to dev_dbg().

BTW, as resource management will be needed by seco drivers later,
So I will continue to review the patch.

Regards
Aisheng

> 
> [    2.034774] imx6q-pcie 5f000000.pcie:    IO 0x6ff80000..0x6ff8ffff ->
> 0x00000000
> [    2.034801] imx6q-pcie 5f000000.pcie:   MEM 0x60000000..0x6fefffff ->
> 0x60000000
> [    2.035072]  sdhc1: failed to power up resource 249 ret -13
> [    2.035619]  sdhc2: failed to power up resource 250 ret -13
> [    2.036126]  enet0: failed to power up resource 251 ret -13
> [    2.036584]  enet1: failed to power up resource 252 ret -13
> [    2.037040]  mlb0: failed to power up resource 253 ret -13
> [    2.037495]  nand: failed to power up resource 265 ret -13
> [    2.037951]  nand: failed to power up resource 265 ret -13
> [    2.038416]  pwm0: failed to power up resource 191 ret -13
> [    2.038868]  pwm1: failed to power up resource 192 ret -13
> [    2.039320]  pwm2: failed to power up resource 193 ret -13
> [    2.039786]  pwm3: failed to power up resource 194 ret -13
> [    2.040239]  pwm4: failed to power up resource 195 ret -13
> [    2.040692]  pwm5: failed to power up resource 196 ret -13
> [    2.041142]  pwm6: failed to power up resource 197 ret -13
> [    2.041596]  pwm7: failed to power up resource 198 ret -13
> [    2.042073]  amix: failed to power up resource 458 ret -13
> [    2.042558]  lpspi0: failed to power up resource 53 ret -13
> [    2.043033]  lpspi1: failed to power up resource 54 ret -13
> [    2.043501]  lpspi2: failed to power up resource 55 ret -13
> [    2.043992]  lpspi3: failed to power up resource 56 ret -13
> [    2.044460]  lpuart0: failed to power up resource 57 ret -13
> [    2.044935]  lpuart2: failed to power up resource 59 ret -13
> [    2.045409]  lpuart3: failed to power up resource 60 ret -13
> [    2.055014]  sim0: failed to power up resource 62 ret -13
> [    2.055510]  adc0: failed to power up resource 101 ret -13
> [    2.056467]  lpi2c0: failed to power up resource 96 ret -13
> [    2.056946]  lpi2c1: failed to power up resource 97 ret -13
> [    2.057424]  lpi2c2: failed to power up resource 98 ret -13
> [    2.057898]  lpi2c3: failed to power up resource 99 ret -13
> [    2.058371]  can0: failed to power up resource 105 ret -13
> [    2.059289]  can1: failed to power up resource 106 ret -13
> [    2.059801]  can2: failed to power up resource 107 ret -13
> [    2.060281]  nand: failed to power up resource 265 ret -13
> [    2.062764] dpu-core 56180000.dpu: driver probed
> 
> Thanks,
> Peng.
> 
> >
> > Regards
> > Aisheng
> >
> > > Thanks,
> > > Peng.
> > >
> > >
> > > >
> > > > Regards
> > > > Aisheng
> > > >
> > > > > Thanks,
> > > > > Peng.
> > > > >
> > > > > >
> > > > > > Regards
> > > > > > Aisheng
> > > > > >
> > > > > > > ---
> > > > > > >  drivers/firmware/imx/Makefile       |  2 +-
> > > > > > >  drivers/firmware/imx/rm.c           | 40
> > > > +++++++++++++++++++++
> > > > > > >  include/linux/firmware/imx/sci.h    |  1 +
> > > > > > >  include/linux/firmware/imx/svc/rm.h | 69
> > > > > > > +++++++++++++++++++++++++++++++++++++
> > > > > > >  4 files changed, 111 insertions(+), 1 deletion(-)  create
> > > > > > > mode
> > > > > > > 100644 drivers/firmware/imx/rm.c  create mode 100644
> > > > > > > include/linux/firmware/imx/svc/rm.h
> > > > > > >
> > > > > > > diff --git a/drivers/firmware/imx/Makefile
> > > > > > > b/drivers/firmware/imx/Makefile index
> > > > > > > 08bc9ddfbdfb..17ea3613e142
> > > > > > > 100644
> > > > > > > --- a/drivers/firmware/imx/Makefile
> > > > > > > +++ b/drivers/firmware/imx/Makefile
> > > > > > > @@ -1,4 +1,4 @@
> > > > > > >  # SPDX-License-Identifier: GPL-2.0
> > > > > > >  obj-$(CONFIG_IMX_DSP)		+= imx-dsp.o
> > > > > > > -obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o
> > > > > > > +obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o
> > rm.o
> > > > > > >  obj-$(CONFIG_IMX_SCU_PD)	+= scu-pd.o
> > > > > > > diff --git a/drivers/firmware/imx/rm.c
> > > > > > > b/drivers/firmware/imx/rm.c new file mode 100644 index
> > > > > > > 000000000000..7b0334de5486
> > > > > > > --- /dev/null
> > > > > > > +++ b/drivers/firmware/imx/rm.c
> > > > > > > @@ -0,0 +1,40 @@
> > > > > > > +// SPDX-License-Identifier: GPL-2.0+
> > > > > > > +/*
> > > > > > > + * Copyright 2020 NXP
> > > > > > > + *
> > > > > > > + * File containing client-side RPC functions for the RM service.
> > > > > > > +These
> > > > > > > + * function are ported to clients that communicate to the SC.
> > > > > > > + */
> > > > > > > +
> > > > > > > +#include <linux/firmware/imx/svc/rm.h>
> > > > > > > +
> > > > > > > +struct imx_sc_msg_rm_rsrc_owned {
> > > > > > > +	struct imx_sc_rpc_msg hdr;
> > > > > > > +	u16 resource;
> > > > > > > +} __packed __aligned(4);
> > > > > > > +
> > > > > > > +/*
> > > > > > > + * This function check @resource is owned by current
> > > > > > > +partition or not
> > > > > > > + *
> > > > > > > + * @param[in]     ipc         IPC handle
> > > > > > > + * @param[in]     resource    resource the control is
> > associated
> > > > with
> > > > > > > + *
> > > > > > > + * @return Returns 0 for success and < 0 for errors.
> > > > > > > + */
> > > > > > > +bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc,
> > > > > > > +u16
> > > > > > > +resource) {
> > > > > > > +	struct imx_sc_msg_rm_rsrc_owned msg;
> > > > > > > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > > > > > > +
> > > > > > > +	hdr->ver = IMX_SC_RPC_VERSION;
> > > > > > > +	hdr->svc = IMX_SC_RPC_SVC_RM;
> > > > > > > +	hdr->func = IMX_SC_RM_FUNC_IS_RESOURCE_OWNED;
> > > > > > > +	hdr->size = 2;
> > > > > > > +
> > > > > > > +	msg.resource = resource;
> > > > > > > +
> > > > > > > +	imx_scu_call_rpc(ipc, &msg, true);
> > > > > > > +
> > > > > > > +	return hdr->func;
> > > > > > > +}
> > > > > > > +EXPORT_SYMBOL(imx_sc_rm_is_resource_owned);
> > > > > > > diff --git a/include/linux/firmware/imx/sci.h
> > > > > > > b/include/linux/firmware/imx/sci.h
> > > > > > > index 17ba4e405129..b5c5a56f29be 100644
> > > > > > > --- a/include/linux/firmware/imx/sci.h
> > > > > > > +++ b/include/linux/firmware/imx/sci.h
> > > > > > > @@ -15,6 +15,7 @@
> > > > > > >
> > > > > > >  #include <linux/firmware/imx/svc/misc.h>  #include
> > > > > > > <linux/firmware/imx/svc/pm.h>
> > > > > > > +#include <linux/firmware/imx/svc/rm.h>
> > > > > > >
> > > > > > >  int imx_scu_enable_general_irq_channel(struct device *dev);
> > > > > > > int imx_scu_irq_register_notifier(struct notifier_block
> > > > > > > *nb); diff --git a/include/linux/firmware/imx/svc/rm.h
> > > > > > > b/include/linux/firmware/imx/svc/rm.h
> > > > > > > new file mode 100644
> > > > > > > index 000000000000..fc6ea62d9d0e
> > > > > > > --- /dev/null
> > > > > > > +++ b/include/linux/firmware/imx/svc/rm.h
> > > > > > > @@ -0,0 +1,69 @@
> > > > > > > +/* SPDX-License-Identifier: GPL-2.0+ */
> > > > > > > +/*
> > > > > > > + * Copyright (C) 2016 Freescale Semiconductor, Inc.
> > > > > > > + * Copyright 2017-2019 NXP
> > > > > > > + *
> > > > > > > + * Header file containing the public API for the System
> > > > > > > +Controller
> > > > > > > +(SC)
> > > > > > > + * Power Management (PM) function. This includes functions
> > > > > > > +for power state
> > > > > > > + * control, clock control, reset control, and wake-up event control.
> > > > > > > + *
> > > > > > > + * RM_SVC (SVC) Resource Management Service
> > > > > > > + *
> > > > > > > + * Module for the Resource Management (RM) service.
> > > > > > > + */
> > > > > > > +
> > > > > > > +#ifndef _SC_RM_API_H
> > > > > > > +#define _SC_RM_API_H
> > > > > > > +
> > > > > > > +#include <linux/firmware/imx/sci.h>
> > > > > > > +
> > > > > > > +/*
> > > > > > > + * This type is used to indicate RPC RM function calls.
> > > > > > > + */
> > > > > > > +enum imx_sc_rm_func {
> > > > > > > +	IMX_SC_RM_FUNC_UNKNOWN = 0,
> > > > > > > +	IMX_SC_RM_FUNC_PARTITION_ALLOC = 1,
> > > > > > > +	IMX_SC_RM_FUNC_SET_CONFIDENTIAL = 31,
> > > > > > > +	IMX_SC_RM_FUNC_PARTITION_FREE = 2,
> > > > > > > +	IMX_SC_RM_FUNC_GET_DID = 26,
> > > > > > > +	IMX_SC_RM_FUNC_PARTITION_STATIC = 3,
> > > > > > > +	IMX_SC_RM_FUNC_PARTITION_LOCK = 4,
> > > > > > > +	IMX_SC_RM_FUNC_GET_PARTITION = 5,
> > > > > > > +	IMX_SC_RM_FUNC_SET_PARENT = 6,
> > > > > > > +	IMX_SC_RM_FUNC_MOVE_ALL = 7,
> > > > > > > +	IMX_SC_RM_FUNC_ASSIGN_RESOURCE = 8,
> > > > > > > +	IMX_SC_RM_FUNC_SET_RESOURCE_MOVABLE = 9,
> > > > > > > +	IMX_SC_RM_FUNC_SET_SUBSYS_RSRC_MOVABLE = 28,
> > > > > > > +	IMX_SC_RM_FUNC_SET_MASTER_ATTRIBUTES = 10,
> > > > > > > +	IMX_SC_RM_FUNC_SET_MASTER_SID = 11,
> > > > > > > +	IMX_SC_RM_FUNC_SET_PERIPHERAL_PERMISSIONS = 12,
> > > > > > > +	IMX_SC_RM_FUNC_IS_RESOURCE_OWNED = 13,
> > > > > > > +	IMX_SC_RM_FUNC_GET_RESOURCE_OWNER = 33,
> > > > > > > +	IMX_SC_RM_FUNC_IS_RESOURCE_MASTER = 14,
> > > > > > > +	IMX_SC_RM_FUNC_IS_RESOURCE_PERIPHERAL = 15,
> > > > > > > +	IMX_SC_RM_FUNC_GET_RESOURCE_INFO = 16,
> > > > > > > +	IMX_SC_RM_FUNC_MEMREG_ALLOC = 17,
> > > > > > > +	IMX_SC_RM_FUNC_MEMREG_SPLIT = 29,
> > > > > > > +	IMX_SC_RM_FUNC_MEMREG_FRAG = 32,
> > > > > > > +	IMX_SC_RM_FUNC_MEMREG_FREE = 18,
> > > > > > > +	IMX_SC_RM_FUNC_FIND_MEMREG = 30,
> > > > > > > +	IMX_SC_RM_FUNC_ASSIGN_MEMREG = 19,
> > > > > > > +	IMX_SC_RM_FUNC_SET_MEMREG_PERMISSIONS = 20,
> > > > > > > +	IMX_SC_RM_FUNC_IS_MEMREG_OWNED = 21,
> > > > > > > +	IMX_SC_RM_FUNC_GET_MEMREG_INFO = 22,
> > > > > > > +	IMX_SC_RM_FUNC_ASSIGN_PAD = 23,
> > > > > > > +	IMX_SC_RM_FUNC_SET_PAD_MOVABLE = 24,
> > > > > > > +	IMX_SC_RM_FUNC_IS_PAD_OWNED = 25,
> > > > > > > +	IMX_SC_RM_FUNC_DUMP = 27,
> > > > > > > +};
> > > > > > > +
> > > > > > > +#if IS_ENABLED(CONFIG_IMX_SCU) bool
> > > > > > > +imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16
> > > > > > > +resource); #else static inline bool
> > > > > > > +imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16
> > resource) {
> > > > > > > +	return true;
> > > > > > > +}
> > > > > > > +#endif
> > > > > > > +#endif
> > > > > > > --
> > > > > > > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
