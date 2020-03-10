Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2761180842
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:38:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=15DJ0IOwRXExXyTp6mWexSq9t/STs0JrLdk0MBhMZis=; b=pZTc/B7mOrN/Zf
	wwSmF00TuBsH7yJetw4aRu6dX9r+e7YHwftqhyF5BCn/icpU7AVfIzsGQ/PGwhXyBCRupFIk9Yz90
	DzmUKsifNrUD5YT2kTcs0FnMvFKh6rlStB/t7j+YSsVBdUmUEiZzkXA8F0UAuB7mCfSy4+glziVjS
	dITYmA+zjqpD2c6RfuEh0zXFw52KUJFn3dfrbdG/nVUeAX/47dqSuCAtYor9B3Eyrh5+eRTk5NOO1
	5wThFq+/rEknAyHNqC0HihFfwcvg+Rzk0K0Yf1raFEukjirsTSM5CIIx/17bRpoIr9TNc2Alrd+KB
	8Mj2RysKp3x9ScBzT+Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkhw-0005iP-0v; Tue, 10 Mar 2020 19:38:28 +0000
Received: from mail-eopbgr20083.outbound.protection.outlook.com ([40.107.2.83]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBkhn-0005hm-7A
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 19:38:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZpcIzjgKuhdydNkRjw7fku8viaEQRyUyCOheUysjbyt+7lnrpxG0TIlmRL2AIqWDXGXs4VN4SCmo3BAINRhvezJFHMIUDpe2/beChFfZ6CVVwZoWN/vSp83ZnRFQpuKHuu4peNNCKpKv82NTvmn64N6xja1ySsacOjC8HKSIRA8Oz8tK212tNcZERrcAOT4fsXjT1ym5CC59STxyc9yZtbh12X1MpTMwcA56/Hs8wSsqQhatpYFwNPMpT3H78hc5Xj3s1pWl1eF9hgt5RlcDeL2g2i4MS/sjcWnJnsnmgCYq8maal4cONqz5gRtqSWECYrJpLjv28T0p008gZQa0Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QAerinxFkch/A+CM7czdOLPguDDsxEF03nHkBMqXJXE=;
 b=VbCnUOkDYmADoG8hXq3ER35iamqkxoevsVa80fT/0LhVY1q0Wkx0Vsfrjlt58eggfsJIfgvtdMSPmkObHt8Kerc8DugNFkwwLlAxTJraiZLp6B89AHcRj4roip8+F+2/y6e2rxUXoZBoWf6luIwpLBocG6OBkFpPCIBH3+S3YyNX6mYvPqWtrhtnYA1G+YDh22BvfbETT0+K7BKhjgcxYwWLnuInw8l6/8QA299eh7HZVTOeYjBz+Fxd+Fa3JnQ7c+kjjXLGro6X+W3QxQgpPQF3/HPAHpFYI6EV+9rs6nUAv+I0BWUPRZl2dP0x/l+iJhl/puzixsT1ClonRZLEWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QAerinxFkch/A+CM7czdOLPguDDsxEF03nHkBMqXJXE=;
 b=FZ+B14IcLpKiw4y/BvrxCCSeswKlSU+WsU5+eOgw6EIu7fNklHnDfy9B0bt4oiaRqlNgAJ47bJzEDQ8EjOI2P8WDTbzgRRR/E+0n/nXL0Z2P5/O5m7x6UZKg6IKUHRPy2CINddFz97RaKxsBgjsQpY2OUgGgXDkWKdLkYUoVPLs=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6256.eurprd04.prod.outlook.com (20.179.25.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 19:38:13 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::7526:c459:a627:493]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::7526:c459:a627:493%5]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 19:38:12 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Anson
 Huang <anson.huang@nxp.com>
Subject: Re: [PATCH RESEND v3 1/4] clk: imx: imx8mq: fix a53 cpu clock
Thread-Topic: [PATCH RESEND v3 1/4] clk: imx: imx8mq: fix a53 cpu clock
Thread-Index: AQHV5w6X9nT57Vl/6UmCiyRNcba+aw==
Date: Tue, 10 Mar 2020 19:38:12 +0000
Message-ID: <VI1PR04MB7023009FE97679C01A80C866EEFF0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1582107429-21123-1-git-send-email-peng.fan@nxp.com>
 <1582107429-21123-2-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 88539799-7a2c-436b-4a49-08d7c52a9236
x-ms-traffictypediagnostic: VI1PR04MB6256:|VI1PR04MB6256:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6256AAC8350129C01ECBABA9EEFF0@VI1PR04MB6256.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 033857D0BD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(136003)(39860400002)(396003)(199004)(189003)(33656002)(76116006)(55016002)(66446008)(66556008)(64756008)(9686003)(8676002)(91956017)(7696005)(66946007)(66476007)(81166006)(186003)(5660300002)(478600001)(86362001)(26005)(8936002)(45080400002)(81156014)(4326008)(6506007)(44832011)(316002)(71200400001)(6636002)(54906003)(2906002)(53546011)(52536014)(110136005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6256;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7e0s1jcLQjAHQetIRCgxVOkKD1CQ/A9TroX5I4ihUfCkTtiAHvoaLqNPOTW0dDgwNL0UtyUKB2oSGI+tIlm9m4NexXFai7pH52ZgQsF6A5A7gJ4Yg2FZLAkgIl/KSefBJj9We5t9Fv9XIrjLu76mSUXHJ15lb3MlEiXRYelRCQmXdfn6deS7xST3KCuokk228v56IzXt82LntzrGEPcxBSqPI2GogjykN7bD+Do3fmA4Pay3IrtrN90d4TpfLRByF5PwzNB+lQYswwCpUCEY0vNOy3vznEdrFwZabu/zEkXtf73ke40hnaVUGJvRGMp9l1VnczQqBeiu4e7pBRiVioClpD1lE73rIOFnMVDcr8y82IP48nKBCXObiZDm15I5T7FaQKJkP3050wckwMbv533rfuJbdqhdFlNp6CsayQHHupqDqr73R5CaFM06E1aXecqJenaRUA19uy/oB2iLn4YmWzafU6HhOB7DAPBeYu28xtzIj8ue5SOOvD/zwEZr
x-ms-exchange-antispam-messagedata: G/rudQO4U2PzxAJZm03uHWm/QLYoEJuuGuyXkvsg4/viqXzCG1q/VdIjBG8vH5kp1BHjU21J1F6zeUDS/3iUb+HYUQctcyHuhxedw1ydZam1iN2U5DdaSqqX7xX5mjIdjVAUEffX4HIbAcjBa555Lw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88539799-7a2c-436b-4a49-08d7c52a9236
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2020 19:38:12.7220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RwX/W2pY2KoWZIj0qhHuS0t0jFgdx3LnMNaoxUtmgcHJ8ZM0jsMAIaqsTKQ/fymbFYlY/du/Mk9iH+q61XtZ9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6256
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_123819_336019_C31BD1E5 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19.02.2020 12:23, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The A53 CCM clk root only accepts input up to 1GHz, CCM A53 root
> signoff timing is 1Ghz, however the A53 core which sources from CCM
> root could run above 1GHz which violates the CCM.
> 
> There is a CORE_SEL slice before A53 core, we need to configure the
> CORE_SEL slice source from ARM PLL, not A53 CCM clk root.
> 
> The A53 CCM clk root should only be used when need to change ARM PLL
> frequency.
> 
> Add arm_a53_core clk that could source from arm_a53_div and arm_pll_out.
> Configure a53 ccm root sources from 800MHz sys pll
> Configure a53 core sources from arm_pll_out
> Mark arm_a53_core as critical clock
> 
> +	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_SRC], hws[IMX8MQ_SYS1_PLL_800M]);
> +	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_CORE], hws[IMX8MQ_ARM_PLL_OUT]);

This triggers lockdep warnings:

[    2.041743] ------------[ cut here ]------------ 

[    2.043531] WARNING: CPU: 2 PID: 1 at drivers/clk/clk.c:2480 
clk_core_set_parent_nolock+0x1d4/0x508
[    2.052584] Modules linked in: 

[    2.055642] CPU: 2 PID: 1 Comm: swapper/0 Not tainted 
5.6.0-rc4-next-20200306-00027-g6b7e51d87f22 #225
[    2.064966] Hardware name: NXP i.MX8MQ EVK (DT) 

[    2.069504] pstate: 60000005 (nZCv daif -PAN -UAO) 

[    2.074298] pc : clk_core_set_parent_nolock+0x1d4/0x508 

[    2.079529] lr : clk_core_set_parent_nolock+0x1d0/0x508 
 

[    2.084759] sp : ffff80001003b9b0 
 

[    2.088072] x29: ffff80001003b9b0 x28: ffff8000116e8218 
 

[    2.093392] x27: 0000000000004570 x26: ffff8000128745d0 
 

[    2.098711] x25: ffff0000b8422008 x24: ffff0000b8422008 

[    2.104030] x23: ffff80001104a518 x22: ffff80001104a508 

[    2.109349] x21: ffff800012260bf8 x20: ffff0000b84c9600 

[    2.114668] x19: ffff0000b84cbb00 x18: 0000000000004530 

[    2.119987] x17: 0000000000004520 x16: 0000000000004510 
 

[    2.125307] x15: 00000000000045d0 x14: 0000000000004500 
 

[    2.130626] x13: 00000000000044f0 x12: 00000000000044e0 

[    2.135945] x11: ffff8000116e6c68 x10: ffff8000117d7000 
 

[    2.141264] x9 : ffff80001067007c x8 : 0000000000000000 

[    2.146583] x7 : ffff800010671938 x6 : 0000000000000000 
 

[    2.151903] x5 : ffff800011633000 x4 : 0000000000000000 

[    2.157222] x3 : ffff80001003b804 x2 : 0000000000000000 
 

[    2.162541] x1 : ffff0000b9da0000 x0 : 0000000000000000 

[    2.167862] Call trace: 

[    2.170307]  clk_core_set_parent_nolock+0x1d4/0x508 

[    2.175190]  clk_hw_set_parent+0x1c/0x28 

[    2.179114]  imx8mq_clocks_probe+0x3538/0x3668 

[    2.183562]  platform_drv_probe+0x58/0xa8 

[    2.187573]  really_probe+0xe0/0x440 
 

[    2.191145]  driver_probe_device+0xe4/0x138
[    2.195333]  device_driver_attach+0x74/0x80 
 

[    2.199519]  __driver_attach+0xa8/0x170 

[    2.203354]  bus_for_each_dev+0x74/0xc8 
 

[    2.207190]  driver_attach+0x28/0x30 

[    2.210767]  bus_add_driver+0x144/0x228 
 

[    2.214605]  driver_register+0x68/0x118 

[    2.218438]  __platform_driver_register+0x4c/0x58 
 

[    2.223151]  imx8mq_clk_driver_init+0x20/0x28 

[    2.227511]  do_one_initcall+0x88/0x410 

[    2.231348]  kernel_init_freeable+0x24c/0x2c0 

[    2.235706]  kernel_init+0x18/0x108 

[    2.239192]  ret_from_fork+0x10/0x18 

[    2.242768] irq event stamp: 130084 

[    2.246262] hardirqs last  enabled at (130083): [<ffff800010302e78>] 
__slab_alloc.isra.0+0x90/0xb8
[    2.255241] hardirqs last disabled at (130084): [<ffff8000100a60b0>] 
do_debug_exception+0x168/0x254
[    2.264308] softirqs last  enabled at (130070): [<ffff800010080e88>] 
__do_softirq+0x490/0x56c
[    2.272856] softirqs last disabled at (130057): [<ffff800010101e1c>] 
irq_exit+0x11c/0x148
[    2.281057] ---[ end trace 1fae73b5c77d8120 ]---
[    2.285792] ------------[ cut here ]------------

This happens because clk_hw_set_parent does not take the prepare_lock so 
a lockdep_assert_held fails. In practice it should be mostly harmless 
because clk operations shouldn't happen while the SOC provider is probing.

The issue can be worked around by doing the following instead:

+       clk_set_parent(hws[IMX8MQ_CLK_A53_SRC]->clk, 
hws[IMX8MQ_SYS1_PLL_800M]->clk);
+       clk_set_parent(hws[IMX8MQ_CLK_A53_CORE]->clk, 
hws[IMX8MQ_ARM_PLL_OUT]->clk);

This implies reverting commit f95d58981f40 ("clk: imx: Include 
clk-provider.h instead of clk.h for i.MX8M SoCs clock driver") and 
somewhat rolls back the consumer/provider split.

What would be a clean fix for this? It might make sense to add a new API.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
