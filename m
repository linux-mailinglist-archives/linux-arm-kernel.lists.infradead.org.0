Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45435194118
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 15:17:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7cztZUFpdQvzDiLorLTPhSuBLy0+RVlQ8gK5WbQ6QY=; b=KywTQ1HKWsSc27
	qiz0Gn+6FKZNZcvdX7x8UrUOWKDHFRGHWKk0k35axqTEVbTPpu/plRl80ZmVgh4s6GvXotvRNCKt/
	HQL6oPglWeFzN6pa2gnCcOv1CVQuMg0fsIMnvj9x/upGmNMfJY/VFLNR+aJnNemL3TdQhN0kDhOkD
	aip9VAo1/50eNBZE8Nw3MJvlYtWBGOTmbAjVO6xnfr6q90IpMG1Scg5zTigWoeqLljCbiZIpZqxra
	YJzHfx5OrolMapzentdVLlgfnaJ/Y/Fbh0ty4FDX5WHCpnGOhqEFfVWoxOj+0C0GhnM5qvC0jmHOt
	gOEuizYJ0jMl+gF+++Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHTJx-0006ar-Th; Thu, 26 Mar 2020 14:17:21 +0000
Received: from mail-eopbgr70048.outbound.protection.outlook.com ([40.107.7.48]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHTJn-0006ZJ-KE
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 14:17:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bjlQa9HgI+twreTv1Hv6oJmaNjbki1o2sjaxpm9de3dHOHNHO8hiHXZLXr6iPUWUSWmqcteY0WpnOJzDmgYVpVeRDP+Q5Unl/Za6dEm64C4KLnWDSKZqDwFoZE0K5w80I5pi3yaalRMmMNbkHoQJ0Cqr3j8Y24MsYROpJtpa2GIABlWz5ogKALfykt4OIsh7DlXTeSRIghzaSpkI5MukH0DWt4jIqXPx9GNNrpqfh+GsAsO8jTqdMgFh8+Cg1kOqLK0F75j9Sgf9JIMe0d3WtRBuie5Q3F78OsOF+rzoPYUIz3k3nL2OERpLKVtoNJOh1UaxL03j23wwAHvsXKmkrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1xRMCs5XdbSctT6VGReAGpgj7mfw20McXX7MyGgey5c=;
 b=Z5UWfAPuenbdb/E2l0YmqgigiAxXQZXSYrisQtU22Gyu93/yrmLGD4mh9WBnrCzXy6KkCkM5HoUR6/Z2ridw1zUNu7u44MSnsaUOok2VniI7ly+wqLuL7cMSdT2nT47VoaepSuGt5MlfTuRw2biHYIHBnQwGicoQ71uVa812kHh4R3/A7yQEhaMtWPh8WkBJiclnlgBmUx9A24uEnogwE5844tl727T9yqokz8Ug+x8/N7DvQDb4Y7hx5CXW+C2c0+wCAyZeW0pZcqB0FYH+3E5YW7ihfGPjEOReHQhKu/8KJeP7FrzD86dB7v+BS21mj4sVsBS5M0i89aJbgEEUPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1xRMCs5XdbSctT6VGReAGpgj7mfw20McXX7MyGgey5c=;
 b=pwpUmBWd1E60RkmOcXNYhJEPM1fneMG6ZMadb7VbVSMwtMQmE4y1wg0rSB1rwYyjtCqUUQMNLapmdU/SmGhdg3HXrpGBUo4NdbSWiPSMSk7p4HktaLzn+DuKFcplV9fji0g/L7YodWOKvSC01nnF5MnbMTaBHoggT62jOT/MpsQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3865.eurprd04.prod.outlook.com (52.134.73.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.22; Thu, 26 Mar 2020 14:17:05 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2835.023; Thu, 26 Mar 2020
 14:17:05 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] thermal: imx: Add missing of_node_put()
Thread-Topic: [PATCH] thermal: imx: Add missing of_node_put()
Thread-Index: AQHWAzBAgRLyKlHtTk2Dsujd2fCjGqha6SaAgAABlyA=
Date: Thu, 26 Mar 2020 14:17:05 +0000
Message-ID: <DB3PR0402MB3916F370C524F3F8CE590167F5CF0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1585200445-16461-1-git-send-email-Anson.Huang@nxp.com>
 <8325cde9-02f3-b913-b020-4c98d19936f4@linaro.org>
In-Reply-To: <8325cde9-02f3-b913-b020-4c98d19936f4@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ba938f9a-0f00-4771-59fb-08d7d1905c86
x-ms-traffictypediagnostic: DB3PR0402MB3865:|DB3PR0402MB3865:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3865D6D42F57C637AFD29BBDF5CF0@DB3PR0402MB3865.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 0354B4BED2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(346002)(366004)(39860400002)(2906002)(66556008)(66476007)(66446008)(55016002)(8676002)(316002)(64756008)(66946007)(5660300002)(86362001)(7416002)(71200400001)(9686003)(110136005)(7696005)(33656002)(52536014)(26005)(81166006)(44832011)(478600001)(4326008)(76116006)(53546011)(81156014)(8936002)(6506007)(186003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3865;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qSWLBoj/p6fNgEdU3KD7xRMF16qBlT+xNQkHhuae6EvlAvTEXzi6xZ8iT8K/SvYP71Q3aQco2MCmUdegW0nLQCoZlZPnGQ667GO3BqIlyafUHD9qmjSAlzKmXx82axKBF9qgQcn0F/3J0wJyssVhYSon0OZZ5Sj8cuvKM4Jpm3i5ofO7flgJTnKKRZOXgaTWgkrmYV70UpSrLVSzLUN0LJvLVb0lt2FD+1JkfzAZtM4cctco31K/qrDZIKDaQej4dTAXe2evut4b9DiQuCDSPDZILro7tKeRtcVbjTppUsUiSpLZHuklntis6TJGgnho0ZpjdYad1c0wl7a0IMmdUvXL/C+2Ig5iPrHlWNDRC6DNBN1eN2Sxt2d0pBPuoOp2WdCVrB1+RQmzc8avZgDdEujwDGwrEeeOZxwmvsHqafRokjGHyOgTguI8Kqv7t7WYm3GasKn0d6mHYgQZOPPWyOwUyeA+KqGpiMv14pQqsZKnrka0SY9d64bf0kxoudqW
x-ms-exchange-antispam-messagedata: gE/0lHS7dG4g/Pamo49kCnc32z8NiJAq1jqQJ71iYRS122shG4KV32FCvtYQnocMXlwJmaVidBjAUIa/9xIDMIW1JLLSJMJiM8U5VmamuEfn1XgYffs4aqTfDwAqvjddIuHWYMAujFW71ejNw6k62A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba938f9a-0f00-4771-59fb-08d7d1905c86
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2020 14:17:05.1840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PdiKLiBjDF0tPqWcat0h528FQDWxOa7XzkFRdS2vDhi9MUjAyRLFuQrWtjGggFYdqgZwb+5Qf36hHBV22s0i2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3865
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_071711_668716_EC821199 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> Subject: Re: [PATCH] thermal: imx: Add missing of_node_put()
> 
> On 26/03/2020 06:27, Anson Huang wrote:
> > After finishing using cpu node got from of_get_cpu_node(),
> > of_node_put() needs to be called.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com> ---
> > drivers/thermal/imx_thermal.c | 10 +++++++--- 1 file changed, 7
> > insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/thermal/imx_thermal.c
> > b/drivers/thermal/imx_thermal.c index e761c9b..f7b970d 100644 ---
> > a/drivers/thermal/imx_thermal.c +++ b/drivers/thermal/imx_thermal.c
> @@
> > -649,7 +649,7 @@ MODULE_DEVICE_TABLE(of, of_imx_thermal_match);
> static
> > int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
> > { struct device_node *np; -	int ret; +	int ret = 0;
> >
> > data->policy = cpufreq_cpu_get(0); if (!data->policy) { @@ -664,11
> > +664,15 @@ static int imx_thermal_register_legacy_cooling(struct
> > imx_thermal_data *data) if (IS_ERR(data->cdev)) { ret =
> > PTR_ERR(data->cdev); cpufreq_cpu_put(data->policy); -
> 	return
> > ret; +			goto put_node; } }
> >
> > -	return 0; +put_node: +	if (np) +		of_node_put(np);
> 
> of_node_put() is already checking if 'np' is NULL.

OK, I will remove the checking of if 'np' is NULL.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
