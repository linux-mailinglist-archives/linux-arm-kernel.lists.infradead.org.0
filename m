Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB79F41AD8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 05:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cK/Pfquf7821djeDvcvLiNsCITT1v3CFIs9IXe5sEdI=; b=ricpCxBpFVVDNh
	oNsDJHlRjRtvk6/Leckb4aLrcowdC2wuoJp64NJEgrnwCamViqop1Dt+Wjh7GEA+Oe5C8LTO0QFOv
	Z3qW2Uq2kNtIhaWEbhvflGqMOXrLsANba4nYA1yCmr8zv0KbzvvrfRZ615akUZ6yKgecbuJGn1usn
	MXskIp5N6lbNoiSgxj/MpsDBI9EagKJV4oV3Tzs9RbLmhdTwo6SK7SpphZdct+XOwYcQba6ysShd5
	YLKVKpyNBP95VmA1AWx+w0apAa9HVGD+V01Tq35ewg5yquFmyURBTHTaWnn9QpmWumGbFghmMkmm4
	GZ8Nrz4Z0Wr1QmkNT+QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hauK8-0005ym-2p; Wed, 12 Jun 2019 03:53:20 +0000
Received: from mail-ve1eur01on0622.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::622]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hauK0-0005y8-Iq
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 03:53:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=080bmkbMkOSS8t2VzyYcZlQUy78lnN3zRz2xSOgXKI8=;
 b=jSfRhIZ+ERsokX1MYmjp6Rcu2LC5VNVXMo5itWgsvL+dmTyu+oiyBXend29blUthigsjivCnxoTFITdjihcbZpH0KotSH7yBMaXHydiGHiiNHaFex4gHynfDOoMiV0CVhsdU96MAsKXoGt0Axr+GSGXTVwu/LLA2BfVdOYQvWSs=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5188.eurprd04.prod.outlook.com (20.177.42.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Wed, 12 Jun 2019 03:53:08 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4%3]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 03:53:08 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>, Abel Vesa
 <abel.vesa@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] soc: imx8: Fix potential kernel dump in error path
Thread-Topic: [PATCH 1/2] soc: imx8: Fix potential kernel dump in error path
Thread-Index: AQHVIM/CBiCldgc28kaHaTOtZzLmMaaXYqxw
Date: Wed, 12 Jun 2019 03:53:08 +0000
Message-ID: <AM0PR04MB42111004D6D8DDA48172E8D280EC0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190612033620.3556-1-Anson.Huang@nxp.com>
In-Reply-To: <20190612033620.3556-1-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c568771d-ee2a-4046-dc51-08d6eee97b6b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5188; 
x-ms-traffictypediagnostic: AM0PR04MB5188:
x-microsoft-antispam-prvs: <AM0PR04MB5188E58154E2BB43F239D3F880EC0@AM0PR04MB5188.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:207;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(39860400002)(346002)(366004)(189003)(199004)(2906002)(7736002)(71190400001)(186003)(71200400001)(25786009)(53936002)(229853002)(110136005)(6436002)(74316002)(44832011)(3846002)(6116002)(4326008)(316002)(8936002)(476003)(52536014)(446003)(11346002)(81166006)(2201001)(256004)(486006)(81156014)(6246003)(99286004)(68736007)(7696005)(86362001)(305945005)(2501003)(66066001)(76176011)(26005)(8676002)(33656002)(45080400002)(6506007)(14454004)(478600001)(9686003)(5660300002)(55016002)(76116006)(66446008)(64756008)(66556008)(66476007)(66946007)(73956011)(102836004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5188;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gs23x2F+FyAtg1dFQfIrBCLq5NC362uFruLVNhVBMIZqjTgBW/A/wk9c4gnq93Oyl9gp7e6dIaX2Ksj9opY1LABIQ631RnJ2vZ4kEn7G/27FYo5tGMlPmDxzZ6tZGGpNASop42cHNtYi1bradEhGIJ3EWONE0vloIP9AE+5KixMk1gXIZ5BiOeO3Xbh2H2m47vfBjCWTaR19iJcTi97ev8zldMrM73uyVycnR9QI2wtt/68MIbJy9k+xBR02PLwwPNzhMJruPlMr+xG8EPvalPukjQLiM/JdMjeJj7XpH0GcceKiH5L1z2MwHBBeWQD86mB+ifI1gnx8bkuuLaZTyRoYEiZsiSyOGw/au3XeOGlctLCwJcPJKfWTr+ztC27P/nZbxIfTU4BLu5pM+fD/r85BU/XquvWhXZpQ7mt+0iA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c568771d-ee2a-4046-dc51-08d6eee97b6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 03:53:08.3891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_205312_630872_A83C2162 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:622 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson.Huang@nxp.com [mailto:Anson.Huang@nxp.com]
> Sent: Wednesday, June 12, 2019 11:36 AM
> > 
> When SoC's revision value is 0, SoC driver will print out "unknown" in sysfs's
> revision node, this "unknown" is a static string which can NOT be freed, this
> will caused below kernel dump in later error path which calls kfree:
> 
> kernel BUG at mm/slub.c:3942!
> Internal error: Oops - BUG: 0 [#1] PREEMPT SMP Modules linked in:
> CPU: 2 PID: 1 Comm: swapper/0 Not tainted
> 5.2.0-rc4-next-20190611-00023-g705146c-dirty #2197 Hardware name: NXP
> i.MX8MQ EVK (DT)
> pstate: 60000005 (nZCv daif -PAN -UAO)
> pc : kfree+0x170/0x1b0
> lr : imx8_soc_init+0xc0/0xe4
> sp : ffff00001003bd10
> x29: ffff00001003bd10 x28: ffff00001121e0a0
> x27: ffff000011482000 x26: ffff00001117068c
> x25: ffff00001121e100 x24: ffff000011482000
> x23: ffff000010fe2b58 x22: ffff0000111b9ab0
> x21: ffff8000bd9dfba0 x20: ffff0000111b9b70
> x19: ffff7e000043f880 x18: 0000000000001000
> x17: ffff000010d05fa0 x16: ffff0000122e0000
> x15: 0140000000000000 x14: 0000000030360000
> x13: ffff8000b94b5bb0 x12: 0000000000000038
> x11: ffffffffffffffff x10: ffffffffffffffff
> x9 : 0000000000000003 x8 : ffff8000b9488147
> x7 : ffff00001003bc00 x6 : 0000000000000000
> x5 : 0000000000000003 x4 : 0000000000000003
> x3 : 0000000000000003 x2 : b8793acd604edf00
> x1 : ffff7e000043f880 x0 : ffff7e000043f888 Call trace:
>  kfree+0x170/0x1b0
>  imx8_soc_init+0xc0/0xe4
>  do_one_initcall+0x58/0x1b8
>  kernel_init_freeable+0x1cc/0x288
>  kernel_init+0x10/0x100
>  ret_from_fork+0x10/0x18
> 
> This patch fixes this potential kernel dump when a chip's revision is "unknown",
> it is done by always printing out the revision value.
> 
> Fixes: a7e26f356ca1 ("soc: imx: Add generic i.MX8 SoC driver")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/soc/imx/soc-imx8.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c index
> 02309a2..86b925a 100644
> --- a/drivers/soc/imx/soc-imx8.c
> +++ b/drivers/soc/imx/soc-imx8.c
> @@ -96,11 +96,6 @@ static const struct of_device_id imx8_soc_match[] = {
>  	{ }
>  };
> 
> -#define imx8_revision(soc_rev) \
> -	soc_rev ? \
> -	kasprintf(GFP_KERNEL, "%d.%d", (soc_rev >> 4) & 0xf,  soc_rev & 0xf) : \
> -	"unknown"
> -
>  static int __init imx8_soc_init(void)
>  {
>  	struct soc_device_attribute *soc_dev_attr; @@ -135,7 +130,10 @@
> static int __init imx8_soc_init(void)
>  			soc_rev = data->soc_revision();
>  	}
> 
> -	soc_dev_attr->revision = imx8_revision(soc_rev);
> +	soc_dev_attr->revision = kasprintf(GFP_KERNEL,
> +					   "%d.%d",
> +					   (soc_rev >> 4) & 0xf,
> +					   soc_rev & 0xf);

The revision "0.0" is confusing.
I might prefer to check "unknown" before free.

Regards
Dong Aisheng

>  	if (!soc_dev_attr->revision) {
>  		ret = -ENOMEM;
>  		goto free_soc;
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
