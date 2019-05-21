Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A832482A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 08:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkBjUg8zaHTe04Ad18CS0frUCb528YOj/UVGaUj23EE=; b=U9h9Q5ebHYlXA4
	+QrdJrLBbHgmt5qUJqxmYhUehkywZFC2kuBJv/iK1gSivU/xNd7DVfAvr1v0o/Ogj26qLYHyuNRjO
	NRKjIYFIgeKG8LtALBJHKB+ZLYT+4Y/kNtRsdih3PqDydpjkc40j4Q7d5eXfvm547mRcb9OAhzH4A
	qkblw+YfNxBtsvJ7SFixuZu6+RwHARw53Xs98NieLvw7XQW9FoS//POFttWLB/9rqznQs450m6u6p
	eX4lOD3r/gqj6Ex4dJ9uPlC5PneMPX6UaWCD4FprMqXo+QzYDR1dY9q22HDwaRItTjD4Fwe6RLBRx
	+fMnr8FBcw3cAYduuDsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyO0-0005qD-Li; Tue, 21 May 2019 06:36:32 +0000
Received: from mail-he1eur01on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::618]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyNs-000595-9w
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 06:36:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=39Mvynibad5W5A+Yu0zTE2Wge4YgwntWSNR6AYqcXKA=;
 b=PCnrq34+z+kJQUgul6ldSQXLyH8tKypCY1f98HVyUzosIs1+yE+r4YgjhMeJtDqG2+gjarPUowaq9O0BPAsfjaKqfyhQgkvr8sQwebl3WPkUe/+xHfgME2Kya8knzCKtpdOmYUstfvUuRRHetYNriZgiwl3ZmAm1GWhSCKU3CXM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3804.eurprd04.prod.outlook.com (52.134.73.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Tue, 21 May 2019 06:36:17 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 06:36:17 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>
Subject: RE: [RESEND] input: keyboard: imx: make sure keyboard can always wake
 up system
Thread-Topic: [RESEND] input: keyboard: imx: make sure keyboard can always
 wake up system
Thread-Index: AQHU6odaZd/8EWsin0yXXO1zjKS4q6Z1V6CAgAALV+A=
Date: Tue, 21 May 2019 06:36:17 +0000
Message-ID: <DB3PR0402MB3916ED371BF79D823FBC5171F5070@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1554341727-16084-1-git-send-email-Anson.Huang@nxp.com>
 <20190521053047.GG183429@dtor-ws>
In-Reply-To: <20190521053047.GG183429@dtor-ws>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1d536b2d-5bfd-464c-5d03-08d6ddb6a0e0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3804; 
x-ms-traffictypediagnostic: DB3PR0402MB3804:
x-microsoft-antispam-prvs: <DB3PR0402MB3804F9B435244AFEF0142F4FF5070@DB3PR0402MB3804.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(39860400002)(366004)(136003)(13464003)(189003)(199004)(2351001)(316002)(54906003)(14444005)(53936002)(25786009)(14454004)(256004)(6246003)(478600001)(4326008)(68736007)(76176011)(6916009)(99286004)(26005)(7696005)(6436002)(2906002)(55016002)(8676002)(81156014)(81166006)(5640700003)(52536014)(8936002)(305945005)(229853002)(86362001)(7736002)(3846002)(6116002)(486006)(1361003)(102836004)(33656002)(11346002)(44832011)(186003)(53546011)(6506007)(446003)(476003)(66066001)(74316002)(71190400001)(71200400001)(2501003)(66446008)(64756008)(66476007)(66946007)(5660300002)(66556008)(73956011)(9686003)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3804;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LlAk3KZDgiq0AKNLCRWcPOTQyDMSK2ogSGQIim24BbMQDNLrq4Xl+F6rMfRZPaTEmOp0sNFrRriiah7whz4YJw1dJ0yTDyJ6v0Zp7YxcnbKyDvNZgulUStJfdQzjjrhxsdbAl7zbn/MOr5wAHveBNxmr3LhY8Cbi/Bx971Fdt7cfxtwUz7X5yL8Gm9JFaGotACIFQ6fEFAlcTaf5t9xgEkpcl2TCUJuAB3NVh1y6RBlI6W3KTezRP2hoLe8bERsuKo88rB5jR+aj5SWTmqyaLS8BDmPeiDiyOiIUhNc0C4uLkjHq+bfOmcUQvAELgvw4yvmIBTsUrz79NipaqWzxq7e2LA1vBK0/iea5iTtB7DGfF8T0THHh0RpTSz2SdS2kVz2jd87drI2BDHwtPGEYBDcZ2QoLndxr1HiGE9PFkEs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d536b2d-5bfd-464c-5d03-08d6ddb6a0e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 06:36:17.1029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3804
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_233624_472678_D6EF2E88 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:618 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Dmitry

> -----Original Message-----
> From: dmitry.torokhov@gmail.com [mailto:dmitry.torokhov@gmail.com]
> Sent: Tuesday, May 21, 2019 1:31 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; linux-input@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-
> imx <linux-imx@nxp.com>
> Subject: Re: [RESEND] input: keyboard: imx: make sure keyboard can always
> wake up system
> 
> Hi Anson,
> On Thu, Apr 04, 2019 at 01:40:16AM +0000, Anson Huang wrote:
> > There are several scenarios that keyboard can NOT wake up system from
> > suspend, e.g., if a keyboard is depressed between system device
> > suspend phase and device noirq suspend phase, the keyboard ISR will be
> > called and both keyboard depress and release interrupts will be
> > disabled, then keyboard will no longer be able to wake up system.
> > Another scenario would be, if a keyboard is kept depressed, and then
> > system goes into suspend, the expected behavior would be when keyboard
> > is released, system will be waked up, but current implementation can
> > NOT achieve that, because both depress and release interrupts are
> > disabled in ISR, and the event check is still in progress.
> >
> > To fix these issues, need to make sure keyboard's depress or release
> > interrupt is enabled after noirq device suspend phase, this patch
> > moves the suspend/resume callback to noirq suspend/resume phase, and
> > enable the corresponding interrupt according to current keyboard status.
> 
> I believe it is possible for IRQ to be disabled and still  being enabled as
> wakeup source. What happens if you call disable_irq() before disabling the
> clock?

Doing below does NOT fix the scenario/issue 100%, if the keypad's IRQ arrived during suspend
phase but before disabling its IRQ in its suspend callback, then issue is still there, as the issue is
that when system suspend, keypad's irq arrived during suspend and noirq suspend phase, then
keypad's hardware interrupt detection will be disabled in the ISR handler, and the timer event
setup by ISR handler is NOT fired, imx_keypad_check_for_events() is NOT executed and hardware
keypad's depress/release interrupt is NOT re-enabled yet, so it can NOT wake up system anymore...

So I think the solid fix is to make sure keypad can generate IRQ (either depress or release) at any time
during system suspend flow.

+++ b/drivers/input/keyboard/imx_keypad.c
@@ -533,6 +533,8 @@ static int __maybe_unused imx_kbd_suspend(struct device *dev)
        /* imx kbd can wake up system even clock is disabled */
        mutex_lock(&input_dev->mutex);

+       disable_irq(kbd->irq);
+
        if (input_dev->users)
                clk_disable_unprepare(kbd->clk);


@@ -562,6 +569,8 @@ static int __maybe_unused imx_kbd_resume(struct device *dev)
                        goto err_clk;
        }

+       enable_irq(kbd->irq);
+
 err_clk:

Anson.

> 
> Thanks.
> 
> --
> Dmitry
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
