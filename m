Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F571B6B65
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 04:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RB88Z8sP+ZEvMk0xE97TbgOkTmtBB+pyGSw94wWW32k=; b=fXakkPST5k4zjj
	kQhM83E10fukyGahWm17hcVg4EVHKdU6R/iWHmQTnanr4BPKr5pm8AtiQVj3b6jN6X35S/1Xb2yhy
	xPbIPm0V3eDM2uEB5tSch+Vn+PkSV1K7TrTPGCFh2Ruivz6o5HUnjqivRN2lGIldXtV0pk8MfT7Lt
	CRWX4+OObr0d4hPbM7IYtAAX/WwJywZJT1IjXKS+TjUG8gGUJtmD8rgMCb6S50DMCB7HKOuSiewjb
	ftsC4qUF+ojwiC9u/JVm+/cVrduuh3PMOKslWzi6339l0G9M9M/g1wGupq+RIOT8omTB3jDhvNZtz
	tRZNpKs/yX1PMM1dj8Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRo9P-00081h-Sj; Fri, 24 Apr 2020 02:33:11 +0000
Received: from mail-eopbgr60071.outbound.protection.outlook.com ([40.107.6.71]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRo9D-0007zi-7x
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 02:33:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G6YA9j+3O/UVkLA8bdgf2hVyRDonKnYqGxtDgwdGplmbNjTlVYg5CvczkPTU3ecvbIlNW6cG2nZVKSMzPpSKz8BgZfYXuMMA5dGmRjEFe/pHyrM2pUDz+0yzHoxFjklfeufNb+EX77Q/VkSCvY+XQQbYv6TNuYNo7q8s9YczxHkSznBMEpVcLrxQKy/1smcocUCJgcFJT7RDJimaasjVMm7hfboOJeeWw68bB6BmDXmCNgnUxCZFTwTvAqalvEoCqWcvtRfREkWgGdOjNg9kpCuK6eGK5v2wwqz2lF9CHjZIaFTju7WaIkcDwd5WN4hzl9RCBe0eAHcwjC+cHxYMsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b4T2iNjMsIsWSmLRXx5QflHLDC8ohmrgIiOX5FSR3Gc=;
 b=RtS/VzlrInJsjDU05LM5PGcUsUmMnGE0FXrDSYZw37SVd75XPAEoPeCMrhgQQr2WJPku02CfbzdvuqTLbk7rLrxpfb4kqsFRLE0Bk6J5/0gnh2XNFqVloLI6EN2AfGLQfmU1gDk1gLQ6pt4WusdM0VvaQQA8i43+ZVyHgMYyFuDXaMlWUVjhsI+VRZPbBEqghrpY6PTwOWeLVEs5WKGOqujdwTIRQjeXpKPQ/7Gg0P6hS+rmpOYpOEdP2Z2IW2TzbT++VRm5vRi0JGX1NnKrMPXQ4egUmvHcYPu748nNPCjqoJfCtt74zLnTDEa3lgg8PdSP73zXFm6kNe/QSpIErA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b4T2iNjMsIsWSmLRXx5QflHLDC8ohmrgIiOX5FSR3Gc=;
 b=RSHNaWvWmwB/wWEUxoFIJhEzGWFgqU/tU/AKWnDhUFS69tCdyHxGs8TRzPfz4B/1qhG0CwI/QaGJNSUXtaljrC1pWZ8fO5BTTheqqT5ziPlbOEKNDSecSsHiI6ilYDhzFnJle46eMQRyzemGx/aYhbsoOFqQ56oatW5Zgb7Un6E=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3772.eurprd04.prod.outlook.com (2603:10a6:8:e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 02:32:56 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2921.035; Fri, 24 Apr 2020
 02:32:56 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] mailbox: imx: Add context save/restore for suspend/resume
Thread-Topic: [PATCH] mailbox: imx: Add context save/restore for suspend/resume
Thread-Index: AQHWGcRI3NaCUTtP70667RBGRFojq6iHjCeAgAAAeYA=
Date: Fri, 24 Apr 2020 02:32:55 +0000
Message-ID: <DB3PR0402MB3916D588A9432A9F1D1F99BAF5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1587682871-528-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49666D6A0B015FD1DF3A20B480D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49666D6A0B015FD1DF3A20B480D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 59294648-2179-4e3f-7984-08d7e7f7cc10
x-ms-traffictypediagnostic: DB3PR0402MB3772:|DB3PR0402MB3772:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3772162F9ADB587054B41EA5F5D00@DB3PR0402MB3772.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(366004)(346002)(396003)(376002)(76116006)(33656002)(26005)(8936002)(186003)(71200400001)(66946007)(81156014)(4326008)(5660300002)(44832011)(6506007)(7696005)(86362001)(478600001)(316002)(52536014)(15650500001)(110136005)(64756008)(2906002)(66446008)(66476007)(9686003)(66556008)(8676002)(55016002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W7uszPL5FqpSA6b4fTe22ArQeXSTjUVSQ/if4CErZR6bf0WXjxhARJ9OJOFgunFcibl51I0HG7ZP3jfIYjGoleNZGJ3/TldlGF2n+y5+gIj4UTtHSkCOyZ/RZqN+qeEfOjfZUz0ISywegr3vJK1sF3vNruFWvEW4qCOE90qU/XC7iS3AVXtv5gd4ikkOf8jjQZS2b7OjRjK4Zgj0LExHBD5/fC6ODLGc3ViSru5Z7VAs51UsaBJ6oGMiQEYpcm6ObebB1H3Rd4Pe8+z4G9BG1R+oCFAwKsjISHglwfS/7NwxSFDoeYhz56Q2snL7ki9tnIAag8t6l+HJqHFCxiOgPT9gkaY0dMmq+uEKVnwkyxTnn6Hu43tRPLQFtsQGp0N3ik5lnkmuIC0SWeuaYTspTkftmzhZwKgRqUmdQcvK/g9MAtwscej65x0/IJpWs7Rc
x-ms-exchange-antispam-messagedata: Khs9XcfaBcl9BAiewo5WJKiISHf8gT4JXJLmZDbm70Lz+sYUXQUxUL9skdvvrcv7RVc5AIaDFo4duvg5RbJOfch4XtP0WEDUkjgAtaXZ+cWKLKrxkqjOAuRVPhPM2po8g0mBsRPdViKJfuDqG5CsjCKVNbtvWitVbRZ/LK9OShwCeKFvamk7tIkDV6DM2V7cOJcOiQSjOSFnh1tV9l8quTtBZHsyVrICjhpPZha8bXWMwxLPY4fs2rM7ovhAWDKAvdF9RW8J+5HI76Rqg9UU0R8UwCkETWOmr7EmRV8oRGJptZJ/HaaBgCTqC4o5zWvhhVzxip6HoLL9X6v0UNmdu/jIWu73H7ps3/PU503R4sjzvLkpKlYTlwURyrDS4tEGbnvCj7NEj7NPs9v0oNXGtqU1kBM71z7rikuhGAJpY1cOSzsondDCQCc/SjKg7pmnKgkzIfXCSMxTUYM2jqskSJoC+xPHInd6zq0gEEZrD1Ytc5vBu+5lHDm5n3wYT1S9VHxbMMcZcM1HKKDYNJxEhGmvVT606Y+xxyEcBYM6BOVJj07KoS2W1gAnUUUvjmWdWxRLnmt03nLwd5r5yhf8Bq8I4AfbgYcfADRSLrv8rhj/Ju4K1SCYRhq3uossYWCAwyAM2gNdyY0DUUT3ZWCg+ojQKE7v9DO6as7WnBEMVcEV3+q3+N2YWsGTTlhJhIrOQ/3EnhtzDDPuePb46cfz2DiSSpebhAxjybA4/HI1ysIffFNDDETwL44lIcFg07bmC3RsuxWmefDTbAs9PyupZGfw42N+wvdqEfd8ytNzXKc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59294648-2179-4e3f-7984-08d7e7f7cc10
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 02:32:56.1825 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tsDz7YyS3nC2uUoU45iNcvU6O1Wf1ngSwEXiKl6Dv2o+EdT4mTWl98uQmPz5NB1AhI9P3lgNjCz0DW6iw9r5fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_193259_281567_1B5D1BE2 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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



> Subject: RE: [PATCH] mailbox: imx: Add context save/restore for
> suspend/resume
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Friday, April 24, 2020 7:01 AM
> >
> > For "mem" mode suspend on i.MX8 SoCs, MU settings could be lost
> > because its power is off, so save/restore is needed for MU settings during
> suspend/resume.
> > However, the restore can ONLY be done when MU settings are actually
> > lost, for the scenario of settings NOT lost in "freeze" mode suspend,
> > since there could be still IPC going on multiple CPUs, restoring the
> > MU settings could overwrite the TIE by mistake and cause system
> > freeze, so need to make sure ONLY restore the MU settings when it is
> powered off.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> As mentioned before, we'd better keep the original author.
> 
> > ---
> >  drivers/mailbox/imx-mailbox.c | 35
> > +++++++++++++++++++++++++++++++++++
> >  1 file changed, 35 insertions(+)
> >
> > diff --git a/drivers/mailbox/imx-mailbox.c
> > b/drivers/mailbox/imx-mailbox.c index 97bf0ac..b53cf63 100644
> > --- a/drivers/mailbox/imx-mailbox.c
> > +++ b/drivers/mailbox/imx-mailbox.c
> > @@ -67,6 +67,8 @@ struct imx_mu_priv {
> >  	struct clk		*clk;
> >  	int			irq;
> >
> > +	u32 xcr;
> > +
> >  	bool			side_b;
> >  };
> >
> > @@ -583,12 +585,45 @@ static const struct of_device_id imx_mu_dt_ids[]
> > = {  };  MODULE_DEVICE_TABLE(of, imx_mu_dt_ids);
> >
> > +static int imx_mu_suspend_noirq(struct device *dev) {
> > +	struct imx_mu_priv *priv = dev_get_drvdata(dev);
> > +
> > +	priv->xcr = imx_mu_read(priv, priv->dcfg->xCR);
> > +
> > +	return 0;
> > +}
> > +
> > +static int imx_mu_resume_noirq(struct device *dev) {
> > +	struct imx_mu_priv *priv = dev_get_drvdata(dev);
> > +
> > +	/*
> > +	 * ONLY restore MU when context lost, the TIE could
> > +	 * be set during noirq resume as there is MU data
> > +	 * communication going on, and restore the saved
> > +	 * value will overwrite the TIE and cause MU data
> > +	 * send failed, may lead to system freeze. This issue
> > +	 * is observed by testing freeze mode suspend.
> > +	 */
> > +	if (!imx_mu_read(priv, priv->dcfg->xCR))
> > +		imx_mu_write(priv, priv->xcr, priv->dcfg->xCR);
> 
> This could be separate patch if it aims to fix a specific corner case.

This is NOT corner case, it can be reproduced with our imx_5.4.y very
easily, and this issue cause me many days to debug...Also cause Clark's
effort to help test it a lot for many days...

I do NOT think it makes sense to first send out your patch with bug for review,
And then add another patch to fix it. 1 patch is enough for this feature.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
