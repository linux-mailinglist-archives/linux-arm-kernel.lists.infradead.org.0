Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E4E1BD1F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 04:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlOo2hQ4hLOpCCE2NDkoiOp+jQUW9dCSo4tpwibzqqc=; b=PThwZPJEW/ygL+
	dalDe7uXJXfUWoWrf6e4o513rS6pmOBefLW5Db5yf8CgU2789rhKLRbd5S2XQRwyrpEchmPTR49ua
	48B3Lt+PL53Yu6fkMCZ3rABwFm+akEyBcL70KUi8aYSg0yqBXbmfwo6c6VDYtkJqstUFyzdqYlRrI
	siv86xI+KG53pornYb9DnfF0mEZrevFgtE121XQbHloiEhF/C99iBBN9A1UL4RGnmSq1JQLMRfeLE
	daoVPET5ztfP7EbLZKfkFcXS7ihRS46tY4W/H/+3aWRRQIdtKL/yfauCrHuZIohe+Bn8F+owQanJt
	Lu0N3S9cEvu5DxnhSM9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTc1e-0005ZR-SR; Wed, 29 Apr 2020 02:00:38 +0000
Received: from mail-eopbgr40044.outbound.protection.outlook.com ([40.107.4.44]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTc1V-0005YC-Ma
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 02:00:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ge4HbujKEqzBgFcGhx3KHwzPDf/kPPix2al0LwbUvFhGHCwwmiZbIiOkEMbo9/x7ttVdAE7fTIo3q1MkWbuRPlt9dSeXR1acnDhuRIw4TSUt+lVl89PDXOABQDegMCnGWVVo5qHcY7XX1NG5RNXCg5HALDD2ZXsZyto3+tSBiaTD4Cguccm2wTcf2BvsTC2HcSemVzzTwSBYLhpKreTjfGsEj+o++WssUuBu3Dt841WB+FkRLIRFLq8twdqgb+IlKHMdfrr7khahxw1jdPL6JAd4+jMVuSe9UdaDV3ZcNxJ0dDGz2iXQ9+lH/n1D4mY9N7lTqPUXTtQ72Ep8fEviQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZsKOs36Po3PsPaxTcCQR1X9piHfdZlMmT+V+TEzwSGc=;
 b=VxBjwbiFVoEUZwGOYdYRR32GasV8/qcm9syRnlcwhwKdhUHHw5dNvlLanhv7GMTKM9aHK3gf/7h06qQiZio6NRmx0U/PVT3RZ1zpKGjstpB0FjVHsjOjsl8JhxDbRbVgyqcofBUXgk+2qvF3WPHXhGADdm1oAwKreoAC26oswysder7DigZ9ZaklBepB8Vd1l1FTUI6GZaSKn825FACRxgTJ+X5e13gO7ikSF6I/oe7EebhCtUdKWxSlPDn6JWqeILKUXGjk1zhPPv4SkEvkoB6BMRORU3ylVFjS05PyMXnoCHArkzE3mhQPDCkIkLivbZ3wTMu4tZehJdg5JOTCeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZsKOs36Po3PsPaxTcCQR1X9piHfdZlMmT+V+TEzwSGc=;
 b=USDt4vRTgxwrCu6/vGRjzuXaoohQ88TcIoGZnYdoLndNIc6IbC5xGbCpjyHfg8wJHo332d0Gr7vLpOHuEtqy0S90oJmdJZ6pjO4LJbILr10KfJdfgVcqDswjfsaF0zHrj5pjxsacuWE39l1jHDZWnFZJvZCOoaABD3EibYQMMQ0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3868.eurprd04.prod.outlook.com (2603:10a6:8:f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Wed, 29 Apr
 2020 02:00:24 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2937.023; Wed, 29 Apr 2020
 02:00:24 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Amit Kucheria <amit.kucheria@verdurent.com>
Subject: RE: [PATCH V2] thermal: imx: Add missing of_node_put()
Thread-Topic: [PATCH V2] thermal: imx: Add missing of_node_put()
Thread-Index: AQHWA3vs1K0ehrl/EEGfGjkXLirnQKiPME8AgABcN3A=
Date: Wed, 29 Apr 2020 02:00:23 +0000
Message-ID: <DB3PR0402MB3916E5752413D058A5177820F5AD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1585232945-23368-1-git-send-email-Anson.Huang@nxp.com>
 <CAHLCerP7O19cRsK6OfmGm89K7KefRQnCUdNCNQM8mEAbycUjbg@mail.gmail.com>
In-Reply-To: <CAHLCerP7O19cRsK6OfmGm89K7KefRQnCUdNCNQM8mEAbycUjbg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: verdurent.com; dkim=none (message not signed)
 header.d=none;verdurent.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 20fc65e7-c203-4faf-8d67-08d7ebe1148e
x-ms-traffictypediagnostic: DB3PR0402MB3868:|DB3PR0402MB3868:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38681B194F58DAE2FC78D806F5AD0@DB3PR0402MB3868.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 03883BD916
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(396003)(39860400002)(346002)(136003)(44832011)(5660300002)(2906002)(478600001)(33656002)(4326008)(7416002)(8936002)(6916009)(66476007)(66946007)(66556008)(64756008)(66446008)(52536014)(76116006)(55016002)(8676002)(7696005)(71200400001)(53546011)(54906003)(316002)(9686003)(6506007)(186003)(26005)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mZq5459DAqr58mUH1G4bW0tkbLPWXluFnnAMWnYEBACliHJi3zKjXRrGfpcXRWbLsdzhDffN1wiXTca4cCKW4tDJ1Dq0fK9xZ6ivwYhZOH0vIPEzGPB7LEkbc755v6fQg4nacSY73Xusm9hLe0/HtC9LMHSnLANIKl28CiQF4nXhnqk/scIdfBg4BjSuenxf2sJNXg2x8/v4UrL2NXrOHA/Ux5U64YzKPAcT9Uc1wkCDxhOqxZPhTVFruwJ+/Fa0rLU+JXCq2hygtgJJQeXFrGt3osgo6LzlWaB546TlzvJlHbnB35Ddc6GYfN3qDcaTzmXgbkW0uSQDPJXxku9O8nT0JHjugpr4GEjaRJ21ffDVG9tddNwnoSU3DuQBp2cwu69tOHbDMONxDTE3YT25AEtr/9zM4jYg+gYLsrMHk29eeNPgMeESvl2lACq/MjxT
x-ms-exchange-antispam-messagedata: mROZT0VzJTi1WfNfgw7qRD5MG+XaahEn5QwhA5gBp+ZhkeUCxc1DLD9ZjnrnTwbwvhFYIDU1VtPyuE1FPKTrjsm962rt6r4OdgERNEp0TJMnY65G3+aedQmSVZOIpWy7Nm9N2FVPBOmYhLA+JVIG0N1LfbH4+3jQBoC+xODUj7AjYm5ZT6hXNoXpHn30E/aXPeNelvbLkHrIb+gh4zRCedzAmGlxxJLL2umB2mvS+vl1+GUK5iw+PK7ky2MBwB1H4k8b4sO3ubYdhkgwhjRymqAmPDtFmBwzQPsex7T0Sjby+cfegyBRb8QvmrcN3emlPEpD2kCU1eA9ByQlh+2VVrnLxxjvs9g7cPw6FF5V9pmBiKGNOWQdOdQmg9+vrshdZDBaiH+u2gPqdd7qZ7ps/KP7owgE/KCX790URXUQhQGUSqs86DYgdtowGpNZlBabH8SnNQbB5y0NPx5tSTmIQ3sLrtnXvuDaKXTfKvvqxit0rPjQ0bccXbk5awaVivykbQCi1GdeiDRI4+nLdVbzZjhU+Jb/hWnhtUrYPjXTMEDE5DD2mhtLC/K2jqjEZEVJ/VywCpCtggDClA7X2e41Qw/Ol6ZC4Vqyc8IDed1j2X9NxwsZeFO+r1zQHOTjDOVM03LD1IXEKieJDe//mJioXS6QZuvdeb9y0WiyoHZLs/vszgB6SRUu6msnu7P6ADYBkyaXliNAm+coJZCmExKvMCElxvKOnjxoMadP4TjDvrxM5dUSa8+pG1sxaEpfAnrrZRdXQWuB9wm49UdEMMG/tGu7xael8rOP+FKp9v903Tw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20fc65e7-c203-4faf-8d67-08d7ebe1148e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2020 02:00:24.0120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dgeegBiRe/lj/4sh+nS0WGaSlLYBkG8TOuIfyYsYuVxti1S4+c3hTuAmX00gp7vyzOJTuaRPP28jonuvraeI7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3868
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_190031_137103_800F2917 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.44 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux PM list <linux-pm@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Fabio Estevam <festevam@gmail.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Amit


> Subject: Re: [PATCH V2] thermal: imx: Add missing of_node_put()
> 
> On Thu, Mar 26, 2020 at 8:06 PM Anson Huang <Anson.Huang@nxp.com>
> wrote:
> >
> > After finishing using cpu node got from of_get_cpu_node(),
> > of_node_put() needs to be called.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> >         - improve the logic, no need to use got.
> > ---
> >  drivers/thermal/imx_thermal.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/thermal/imx_thermal.c
> > b/drivers/thermal/imx_thermal.c index e761c9b..1b84ea6 100644
> > --- a/drivers/thermal/imx_thermal.c
> > +++ b/drivers/thermal/imx_thermal.c
> > @@ -649,7 +649,7 @@ MODULE_DEVICE_TABLE(of,
> of_imx_thermal_match);
> > static int imx_thermal_register_legacy_cooling(struct imx_thermal_data
> > *data)  {
> >         struct device_node *np;
> > -       int ret;
> > +       int ret = 0;
> >
> >         data->policy = cpufreq_cpu_get(0);
> >         if (!data->policy) {
> > @@ -664,11 +664,12 @@ static int
> imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
> >                 if (IS_ERR(data->cdev)) {
> >                         ret = PTR_ERR(data->cdev);
> >                         cpufreq_cpu_put(data->policy);
> 
> You could move this policy release outside the if block too, no?

Looks like yes, the policy can be put before function return anyway, I will do it in V3.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
