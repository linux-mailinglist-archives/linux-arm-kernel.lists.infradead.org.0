Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D4812E4EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 11:23:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJyYht9HS0G8s3L6fOPvoPEbagKRr8ZvRotf+IuR/6k=; b=hurAoNWRcxqcRq
	qGJ/5h40J6YdSaZkju6uLnDLfPfIwOOBc8Wvn53K5xggF5FBxKoB345td9AWMANalFSbIWrbbk1MI
	nakPc3KnVkfrZrxyYrCFNJbSqACn0kma8diw2RKtqIjGeDZcShDXHDh/RfhxFZgwTB9t7FQxVD179
	hWqp31e8B3lM4lgIYFavjQrnXECpeaL+7+5YR45HULehJb/q7Rb+i7qmQZ9IJBM/UdrupglourUzC
	6sVOFAQQNf9eyOIRjvcvm5mnBhgnlqEUELVBGiSczdNU6lAqObRRIEr70JdvZgNGAuTlSzYPYS0jI
	PqMGnTqz4E/UoH0xi+gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imxdw-000710-Qb; Thu, 02 Jan 2020 10:23:52 +0000
Received: from mail-eopbgr20089.outbound.protection.outlook.com ([40.107.2.89]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imxdm-00070T-Mw
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 10:23:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V107taH25QObswGx/2Ow5Pn9HcnUVtIxPqykG0mqC0y/gIsXGvlaJgqtt0TArSCIWl4zYI7EhYiD2H2te+ABbbcj/k5N0Hrn9v8JPPTb2Smuye5Qjl70rpGLdTSdQacp0VqDYw0m1Ve0exG44bhbZ8kfABwkvj3nwo0C+tBAaMO9VFa6igzkUT/6yiBmTTQXwOuITgocDd632Y+grIfnpUd1nfO9rqze8JV1M9XHfkWGFplhvjuXByMLQzF0xVz39Gx/xePFGPqc8RG3UYUPuWVXmM2QGAa01GInO7B6fUApFoZcY4x0Bj2s+HqGDGN9p7h53mXkbl/OyP+S2f/sBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7LU3U1xETo+OP5xT654bKHXZNEAr0GKVUOFWt7dvc/E=;
 b=eE7IZb1B8na1vo17lIPB945zu8z71bgjCVVDIVCZnOPNhgNDs7qAMTk2zV+dHf5Q52qBxLfPvPXiw//P7iedor68NXBvoJLHHSu9cW1R23W9Vcb7IJxVR2x/YKlEbNCfRkXehv96QRjNbHw2prctrzGgG7JNJVhknB36hG8AoEMWhwpH4r1kxAdJ8GgLaGc1+389NB+OuFipYgM2akDGNG3J4DURhMPnQPd9e7Zq3vlAabwa/uUOWV3xNoW0GVc6FLc6MG0V/TcVJc3HuW3hnfO4I659FX/I6BIU0nevgkkSez/R/uoj56WqH1hixlFnFj4clJJimQhhctMBrdylHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7LU3U1xETo+OP5xT654bKHXZNEAr0GKVUOFWt7dvc/E=;
 b=dgypYoL3G8AmOJSaqucioJQ4SNzgzX0wbLl0s1Xvf8SnO+06Yinm9fHcu63LEjnx0UHZcebVjSsced/mlncUPfIT58VHKv3V9orRvjU5vCxgYg5l4fCuww+5tDjE0DlfwlZMVe5zrnjABlIqvrDkQ3XuoA/sWXGzhQ/gEzgKZik=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.3.146) by
 VI1PR0402MB3391.eurprd04.prod.outlook.com (52.134.1.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11; Thu, 2 Jan 2020 10:23:37 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6%7]) with mapi id 15.20.2602.012; Thu, 2 Jan 2020
 10:23:37 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Dong Aisheng <dongas86@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Ranjani Vaidyanathan <ranjani.vaidyanathan@nxp.com>
Subject: RE: [EXT] Re: [PATCH 1/1] firmware: imx: scu-pd: do not power off
 console domain
Thread-Topic: [EXT] Re: [PATCH 1/1] firmware: imx: scu-pd: do not power off
 console domain
Thread-Index: AQHVwVVvimHeKrn5bUqdRj0rwVqzOKfXKM+g
Date: Thu, 2 Jan 2020 10:23:37 +0000
Message-ID: <VI1PR0402MB3600F2E6D24F8D0D522415D9FF200@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <1573995924-14752-1-git-send-email-aisheng.dong@nxp.com>
 <CAPDyKFrkRPuJ5+1sdLevY9tqO6CoKQu6eGDKGpbYoqOUaghnPA@mail.gmail.com>
 <CAA+hA=Rsje8mW6sqfiiYKQzwz_3F88+AdJZoN5ZHShqnOqkUQw@mail.gmail.com>
In-Reply-To: <CAA+hA=Rsje8mW6sqfiiYKQzwz_3F88+AdJZoN5ZHShqnOqkUQw@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a3270c9c-1d15-4aa4-cc4c-08d78f6dd49a
x-ms-traffictypediagnostic: VI1PR0402MB3391:|VI1PR0402MB3391:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB339178A145768C3917E8981DFF200@VI1PR0402MB3391.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-forefront-prvs: 0270ED2845
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(376002)(39850400004)(346002)(189003)(199004)(71200400001)(110136005)(54906003)(33656002)(4326008)(52536014)(26005)(5660300002)(186003)(2906002)(478600001)(8676002)(86362001)(64756008)(66556008)(66476007)(6636002)(7696005)(8936002)(55016002)(81156014)(66946007)(81166006)(53546011)(316002)(76116006)(66446008)(9686003)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3391;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LIoqoThC/A9YMorWtEutfOdwL6KzjwwS0SslUG18fzLDGE1dnIrsCH4+ZxCgsWfjwKcwf4WA98yTtpvQRkzS673TSUk1szX8khW3RcfyBtMiV2GHVCuiohhacTPd15ixL4UBs9SvidF/p4y6oN8xQVEjkEigLdwG7ARO6S+Ik0MLFD3RZWSVm/0oBCVNKrNZ88NkYA9bPZsatO/vL2OKGOuWEpA7fmBIxhyZXySaPj9nFnl/AznS8JBPJ/a6qD2t239rpvlJ1DoP7+GampSNxLwpFEyuETjT4IPtdb+SNdirCUD+XPjNMMZ2I9qJfpqvx/2NoDj/qROm0zPVmiLNY8uy38ONwQYIz/FcEjsZhN7X7jKsrnegVe/ihHj23EIHnAMrH+ypqfuwhicKyo3oCs3rl15PLjK+4AgxQl0tvTlzFyNFIzv5nLMdb2W9/on8
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3270c9c-1d15-4aa4-cc4c-08d78f6dd49a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2020 10:23:37.5607 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RMroYmjrgzBYiuOtZ18dKP4U8gYKWVbxSg797mVaV3pDyz+zJNug534Gu1k6mvTvnSHdvPF9BSOzWoPEqR73Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3391
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_022342_836891_B2BB4DA1 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Linux PM <linux-pm@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dong Aisheng <dongas86@gmail.com> Sent: Thursday, January 2, 2020 6:03 PM
> On Tue, Nov 19, 2019 at 12:13 AM Ulf Hansson <ulf.hansson@linaro.org>
> wrote:
> >
> > On Sun, 17 Nov 2019 at 14:07, Dong Aisheng <aisheng.dong@nxp.com>
> wrote:
> > >
> > > Do not power off console domain in runtime pm.
> >
> > Would it be possible to configure a remote wakeup for the console
> > while the device becomes runtime suspended, rather than preventing the
> > power off altogether?

From HW view, the wakeup features requires power on, but clocks can be off.

In fact, the standard flow is power domain driver should not power off the devices
that enable the wakeup feature.

NXP internal tree already supported runtime pm. I will upstream the patch.

Andy
> >
> 
> Remote wakeup usually requires clock and power.
> Not sure if this device can support it. Copy module owner (Fugang
> Duan) to confirm.
> 
> The current lpuart driver seems not support.
> 
> Regards
> Aisheng
> 
> > Kind regards
> > Uffe
> >
> > >
> > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > > Cc: Ulf Hansson <ulf.hansson@linaro.org>
> > > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > ---
> > >  drivers/firmware/imx/scu-pd.c | 28 +++++++++++++++++++++++++++-
> > >  1 file changed, 27 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/firmware/imx/scu-pd.c
> > > b/drivers/firmware/imx/scu-pd.c index b556612207e5..770e3681bbbf
> > > 100644
> > > --- a/drivers/firmware/imx/scu-pd.c
> > > +++ b/drivers/firmware/imx/scu-pd.c
> > > @@ -85,6 +85,8 @@ struct imx_sc_pd_soc {
> > >         u8 num_ranges;
> > >  };
> > >
> > > +int imx_con_rsrc;
> > > +
> > >  static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
> > >         /* LSIO SS */
> > >         { "pwm", IMX_SC_R_PWM_0, 8, true, 0 }, @@ -173,6 +175,23
> @@
> > > to_imx_sc_pd(struct generic_pm_domain *genpd)
> > >         return container_of(genpd, struct imx_sc_pm_domain, pd);  }
> > >
> > > +static void imx_sc_pd_get_console_rsrc(void) {
> > > +       struct of_phandle_args specs;
> > > +       int ret;
> > > +
> > > +       if (!of_stdout)
> > > +               return;
> > > +
> > > +       ret = of_parse_phandle_with_args(of_stdout, "power-domains",
> > > +
> "#power-domain-cells",
> > > +                                        0, &specs);
> > > +       if (ret)
> > > +               return;
> > > +
> > > +       imx_con_rsrc = specs.args[0]; }
> > > +
> > >  static int imx_sc_pd_power(struct generic_pm_domain *domain, bool
> > > power_on)  {
> > >         struct imx_sc_msg_req_set_resource_power_mode msg; @@
> -233,6
> > > +252,7 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
> > >                       const struct imx_sc_pd_range *pd_ranges)  {
> > >         struct imx_sc_pm_domain *sc_pd;
> > > +       bool is_off = true;
> > >         int ret;
> > >
> > >         sc_pd = devm_kzalloc(dev, sizeof(*sc_pd), GFP_KERNEL); @@
> > > -251,6 +271,10 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
> > >                          "%s", pd_ranges->name);
> > >
> > >         sc_pd->pd.name = sc_pd->name;
> > > +       if (imx_con_rsrc == sc_pd->rsrc) {
> > > +               sc_pd->pd.flags = GENPD_FLAG_RPM_ALWAYS_ON;
> > > +               is_off = false;
> > > +       }
> > >
> > >         if (sc_pd->rsrc >= IMX_SC_R_LAST) {
> > >                 dev_warn(dev, "invalid pd %s rsrc id %d found", @@
> > > -260,7 +284,7 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
> > >                 return NULL;
> > >         }
> > >
> > > -       ret = pm_genpd_init(&sc_pd->pd, NULL, true);
> > > +       ret = pm_genpd_init(&sc_pd->pd, NULL, is_off);
> > >         if (ret) {
> > >                 dev_warn(dev, "failed to init pd %s rsrc id %d",
> > >                          sc_pd->name, sc_pd->rsrc); @@ -326,6
> +350,8
> > > @@ static int imx_sc_pd_probe(struct platform_device *pdev)
> > >         if (!pd_soc)
> > >                 return -ENODEV;
> > >
> > > +       imx_sc_pd_get_console_rsrc();
> > > +
> > >         return imx_scu_init_pm_domains(&pdev->dev, pd_soc);  }
> > >
> > > --
> > > 2.23.0
> > >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
