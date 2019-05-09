Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 079A718341
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 03:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaScls0U5mOlVN6MxkA89QxwmmOF91Whfb2lJjRxwK8=; b=WcPwPiKwbpevOC
	gh9YFNlSjuTxP1oJuF43+OV4feak+xb+M/zHIw+pZ3kQMev+dPCB8DP95xO3vJdL9topqWtTn7C1A
	VcEfBTWe6fvsFyEKhOyNl9uU5ZXbD7duni67JVza2uPkTlC+LAVowF8xh1AANXnElVcc4BlHXANom
	iRpZd9nhRMRm6uMN2/bla6iEuM+FqoUCfHkVkCahwOkj4UKrvGk+jsO5RWlkfnhby5jcVdcFydWcQ
	lcunlKETRlfj7ZzPQysi9Nl9TxUVUes6C+BgHR9O16XsNGfAQWz1AmcIVETWfWqwnAPqz/dcdTC3y
	TypC9tjrP3Ko7ZNu/RLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOY3n-0007Ff-Ex; Thu, 09 May 2019 01:41:23 +0000
Received: from mail-ve1eur03on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::602]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOY3e-0007F3-Sy
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 01:41:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9yjIi5T4r1k+Y5iVTrYemlvNvQlXb4Ph7NXm6a6DFwg=;
 b=qdi0xmA0MepyFEWti81CqxQ9AWdcIuz1/4kC3xhacwIdGOfAUoik++ed81PI1Muyo9ZOB6U6IbIi93o7n/l9V84wi4tnZ6uQw2VFZuiG6mHUcYeuDsSdC+gqxK0bXsCYWO6r7Gt6ZUYMqJrLoz8q4NSVGROm/yc/HFPmKQk8eQs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3929.eurprd04.prod.outlook.com (52.134.70.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Thu, 9 May 2019 01:41:09 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Thu, 9 May 2019
 01:41:09 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "linux-input@vger.kernel.org"
 <linux-input@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [RESEND] input: keyboard: imx: make sure keyboard can always wake
 up system
Thread-Topic: [RESEND] input: keyboard: imx: make sure keyboard can always
 wake up system
Thread-Index: AQHU6odaZd/8EWsin0yXXO1zjKS4q6ZMPHMggBX/AtA=
Date: Thu, 9 May 2019 01:41:09 +0000
Message-ID: <DB3PR0402MB39169FB6DECE7E1DAC178539F5330@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1554341727-16084-1-git-send-email-Anson.Huang@nxp.com>
 <DB3PR0402MB39167BC7D996F4FF70B5DD2FF53D0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39167BC7D996F4FF70B5DD2FF53D0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 824628c3-f030-45f1-2ea8-08d6d41f6925
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3929; 
x-ms-traffictypediagnostic: DB3PR0402MB3929:
x-microsoft-antispam-prvs: <DB3PR0402MB3929E7E9623EE2F9AE5B3114F5330@DB3PR0402MB3929.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:923;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(376002)(346002)(396003)(189003)(199004)(13464003)(5660300002)(316002)(52536014)(7696005)(99286004)(229853002)(478600001)(76176011)(68736007)(8936002)(102836004)(11346002)(53546011)(476003)(446003)(9686003)(81156014)(44832011)(55016002)(81166006)(33656002)(53936002)(73956011)(8676002)(2501003)(486006)(26005)(6436002)(76116006)(66946007)(64756008)(66446008)(66476007)(66556008)(110136005)(14454004)(86362001)(4326008)(66066001)(6246003)(25786009)(186003)(2201001)(6506007)(2906002)(7736002)(305945005)(256004)(14444005)(71200400001)(71190400001)(3846002)(6116002)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3929;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 547PZskJZTgfEpZQCdALeeYZhPP4sg1kok9BdNe6JzvxzmJxKy76XWRWcwR3EhVqlmsiOwGXyinW0cBNFpl1B5Cz9r32e18XT8Uf0Zhr32Ush/MXmTv7R589TADPtNmOPVuuYivDDjdZPy5yDGIO6ZoNwyQNTmN1dVkV+pO6UHyPj1lHNQqo7Ofi1wO13ArewetlJVlFEj2h8Y69u1O+Mex7SEIQ9Whw9pEykmHZH1MtAyL/2cn4vC/tAVjm3UHeiZgN1ZFdefRAqMg62yVDKxGt69SNj3aJraIo7FnkGrYFwcPB+M3fM90V2G+/3ncWRzlLQfXnY4A4F+JQ5cZr/9dKSbogm1yiX98+xvQOo1cYUqO3bLJtIYrnOOsoqhle2LMm5jsWg44Lt1y5gISzAj352CzrMXWs+FSXys6/J3Q=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 824628c3-f030-45f1-2ea8-08d6d41f6925
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 01:41:09.1322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_184115_013554_9439FA57 
X-CRM114-Status: GOOD (  21.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:602 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping...

> -----Original Message-----
> From: Anson Huang
> Sent: Thursday, April 25, 2019 9:50 AM
> To: dmitry.torokhov@gmail.com; shawnguo@kernel.org;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> linux-input@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [RESEND] input: keyboard: imx: make sure keyboard can always
> wake up system
> 
> Gentle ping...
> 
> > -----Original Message-----
> > From: Anson Huang
> > Sent: Thursday, April 4, 2019 9:40 AM
> > To: dmitry.torokhov@gmail.com; shawnguo@kernel.org;
> > s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> > linux-input@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> > linux- kernel@vger.kernel.org
> > Cc: dl-linux-imx <linux-imx@nxp.com>
> > Subject: [RESEND] input: keyboard: imx: make sure keyboard can always
> > wake up system
> >
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
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/input/keyboard/imx_keypad.c | 18 ++++++++++++++----
> >  1 file changed, 14 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/input/keyboard/imx_keypad.c
> > b/drivers/input/keyboard/imx_keypad.c
> > index cf08f4a..97500a2 100644
> > --- a/drivers/input/keyboard/imx_keypad.c
> > +++ b/drivers/input/keyboard/imx_keypad.c
> > @@ -524,11 +524,12 @@ static int imx_keypad_probe(struct
> > platform_device *pdev)
> >  	return 0;
> >  }
> >
> > -static int __maybe_unused imx_kbd_suspend(struct device *dev)
> > +static int __maybe_unused imx_kbd_noirq_suspend(struct device *dev)
> >  {
> >  	struct platform_device *pdev = to_platform_device(dev);
> >  	struct imx_keypad *kbd = platform_get_drvdata(pdev);
> >  	struct input_dev *input_dev = kbd->input_dev;
> > +	unsigned short reg_val = readw(kbd->mmio_base + KPSR);
> >
> >  	/* imx kbd can wake up system even clock is disabled */
> >  	mutex_lock(&input_dev->mutex);
> > @@ -538,13 +539,20 @@ static int __maybe_unused
> imx_kbd_suspend(struct
> > device *dev)
> >
> >  	mutex_unlock(&input_dev->mutex);
> >
> > -	if (device_may_wakeup(&pdev->dev))
> > +	if (device_may_wakeup(&pdev->dev)) {
> > +		if (reg_val & KBD_STAT_KPKD)
> > +			reg_val |= KBD_STAT_KRIE;
> > +		if (reg_val & KBD_STAT_KPKR)
> > +			reg_val |= KBD_STAT_KDIE;
> > +		writew(reg_val, kbd->mmio_base + KPSR);
> > +
> >  		enable_irq_wake(kbd->irq);
> > +	}
> >
> >  	return 0;
> >  }
> >
> > -static int __maybe_unused imx_kbd_resume(struct device *dev)
> > +static int __maybe_unused imx_kbd_noirq_resume(struct device *dev)
> >  {
> >  	struct platform_device *pdev = to_platform_device(dev);
> >  	struct imx_keypad *kbd = platform_get_drvdata(pdev); @@ -568,7
> > +576,9 @@ static int __maybe_unused imx_kbd_resume(struct device
> *dev)
> >  	return ret;
> >  }
> >
> > -static SIMPLE_DEV_PM_OPS(imx_kbd_pm_ops, imx_kbd_suspend,
> > imx_kbd_resume);
> > +static const struct dev_pm_ops imx_kbd_pm_ops = {
> > +	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(imx_kbd_noirq_suspend,
> > +imx_kbd_noirq_resume) };
> >
> >  static struct platform_driver imx_keypad_driver = {
> >  	.driver		= {
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
