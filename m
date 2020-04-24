Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC83E1B6BB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 05:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTPA2mTX8+ZjTQLlRpW56csMbAUmQSICq3xCh7JZFmg=; b=uPduduqiKHafZm
	hYFjfCsK4bp9nvnbP1nBtvo1i4t5LGjy4IaDgrM5a2d/Eywd+P0gYPQiyjer2uqIqmFupKdZM3N+W
	91oBICnoKGyPeLaihAmCufmFiEPkgkZpViV1uVbJJAQt7GZCo+B8WgeynXHEOwtMghuc9VPilrMH4
	4MuI+pMxu9QeKj355UOHcExbWjJswARqUVjybgNUv3/NKjLwr7Kpimt/CgGEH5/9QJlo3dfYY3efa
	14RMd87KDLL90m//3e15P9//iMbm5j4iPAp7V93FerfPJaVhm7V3vnomMCyheThEGVQc4tF5FEcCJ
	FEDab7ynz4SdiFMefZvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRoec-0008Pq-Gi; Fri, 24 Apr 2020 03:05:26 +0000
Received: from mail-db8eur05on2080.outbound.protection.outlook.com
 ([40.107.20.80] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRoeT-0008P2-N7
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 03:05:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GOXuXoGTV2quVY9mErTVpy8WqyJX7SXn+Tx1LOW0Vt2II/JQulHdJY9md+j/sSTcmVUt3DX4DyIAL4+idDRKiYE2gzgpe0EW5PxuTVSQUKPKVOXoJSpP5EM1WxSGVLfPX/frjqI41Rp25oVHab5UWL0AE0hSiozl7rplEE89LyPVVPy4w77MkosgMjmB5tOJuwWGP3Hmz1rd8PKWji3hX5/Wt+ELYQmZ4QGcp3lp9u4Roup/CFlEvbMCgZMTzv+12TaTzyGrzR6UmNtyO2hCa21p70NBwkDRPP/AX6IjNAwGTKjGZJE6nFRRmaYps8SwVApMTczB3qWHCrKBnVC/mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eok9cKFXesz11dPUiXb7Pe7i9+jhpIQbEmW2Ui/94/I=;
 b=SzLjF3bibz5itzzcDrUFJms2sIpQDTGplyDkQhllPZtf6ZtLELZDnRiuNRcd1sQy0f0YTf4D5vHbw8xGtRCqnb1VhlIIPU/A6AZbZt5qZ9jyln4ergrMIyCoKIPtr6aj2iZbtegiUqVIQApYkmarFOlEbS5tnBYTOVHBOQw1jm/RDWvGrKx8E6dshXBnqrTIDzt5W5QsQdILDfNVq3O3N33OtE5Ey9H0TrTBO4jTEYkH10UAbX/wWp9j08GtvSDJK7tUoY40nl2vXmj4bw4ZEJVhP0wEuj231PflLm3wYTUSFDoBN4P9LZZg1G4AjgqwTJq/HNHcqh+yh3v0knQETQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eok9cKFXesz11dPUiXb7Pe7i9+jhpIQbEmW2Ui/94/I=;
 b=iYfVaqgRAbNzEOPXMu6XkcjzZN69g+PrFtI2rJ6DkckxzUu+0hbgi4uLMGrUMoUdj27dmwjyp7GO8beTb3FGj8CY6jiyWHOPSs9DkQJoxRBsDQg366i5YWiyATo/V88o2M2gZtx9INmDf2XpEQI46aeFhANfs5hYCwrrXGAnTO0=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6598.eurprd04.prod.outlook.com (2603:10a6:20b:fe::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 03:05:14 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Fri, 24 Apr 2020
 03:05:12 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] mailbox: imx: Add context save/restore for suspend/resume
Thread-Topic: [PATCH] mailbox: imx: Add context save/restore for suspend/resume
Thread-Index: AQHWGcRIgrxdUkc8WEWRmowVEyQEl6iHi5TQgAACNYCAAAU8oA==
Date: Fri, 24 Apr 2020 03:05:12 +0000
Message-ID: <AM6PR04MB496671BFF3496FD1C4C51E7E80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587682871-528-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49666D6A0B015FD1DF3A20B480D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916D588A9432A9F1D1F99BAF5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916D588A9432A9F1D1F99BAF5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ea4456ae-c714-4428-fba6-08d7e7fc4e61
x-ms-traffictypediagnostic: AM6PR04MB6598:|AM6PR04MB6598:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB65983A24D88FC588E93A324C80D00@AM6PR04MB6598.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:568;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(366004)(346002)(376002)(396003)(6506007)(66946007)(8936002)(316002)(15650500001)(53546011)(44832011)(71200400001)(81156014)(7696005)(4326008)(26005)(8676002)(110136005)(186003)(66476007)(52536014)(33656002)(86362001)(66446008)(66556008)(76116006)(9686003)(2906002)(478600001)(64756008)(55016002)(5660300002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m1uJlzoCXYuH9dNrGchUXLn9aT27lARYTuTi3wNeFZGmEKNR7+ZPYoSUePPHWL2EEdCXErUnzvowm0A/U6w+Fngr1gLBeHhCVnG/B+7/QDjKRLllRPa5ssz6IQ87eUK8xedeI0xLT6+ljPYkp0QJkAaBEjLLymRqXI8yWVtEADwYMbf6CjO46fy0Yffx5Y+D3T4nW3/h+L4RhE53IsKP4skSuNRcbK41SIwMzy/SAkKcOTTuMKMcgowyYyw5TvvJmfqMW9dTkFPYxCIlivfWEeupM9atfcRjqDY5ZT49UG/m8CF/ouz7Q1LWM/fDh5Znt02eqvaIq7VsH9ByU3H6lwAFF+9tW+Ni5UhlcchJ+IKwDY6rwf97Tnz2JbaHZsVN8OXi0xvWH535r3YuQp7YM6Uo7Z9RcAmwrrIvnuTL+yOVeMm9VTiOsn1DCBi6ejbn
x-ms-exchange-antispam-messagedata: /oYvH0MBJKikAH5u+l98US5vmepuO6kzYk2ckT4UFLpUnpDv4zLrvcve7TLwGhc4Y+rrpLjkTZuu+I04K+Ajevz6x85qpiBxsWNWr7jZbz5mMa/WIlYEXCQNMzSms+nkwHCYgUxZs759m8mfKfCyEA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea4456ae-c714-4428-fba6-08d7e7fc4e61
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 03:05:12.7760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 24Xb27SB8gOq/Vs5ufBGrRNVIWw9gS9X6WzoktNSFW0j/6koQFL3Z2xpnr8HKTdH1I+AqFnGqrmnaKAbFHjJ7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_200517_753436_1C69671C 
X-CRM114-Status: GOOD (  27.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.80 listed in wl.mailspike.net]
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

> From: Anson Huang <anson.huang@nxp.com>
> Sent: Friday, April 24, 2020 10:33 AM
> 
> > Subject: RE: [PATCH] mailbox: imx: Add context save/restore for
> > suspend/resume
> >
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > > Sent: Friday, April 24, 2020 7:01 AM
> > >
> > > For "mem" mode suspend on i.MX8 SoCs, MU settings could be lost
> > > because its power is off, so save/restore is needed for MU settings
> > > during
> > suspend/resume.
> > > However, the restore can ONLY be done when MU settings are actually
> > > lost, for the scenario of settings NOT lost in "freeze" mode
> > > suspend, since there could be still IPC going on multiple CPUs,
> > > restoring the MU settings could overwrite the TIE by mistake and
> > > cause system freeze, so need to make sure ONLY restore the MU
> > > settings when it is
> > powered off.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >
> > As mentioned before, we'd better keep the original author.
> >
> > > ---
> > >  drivers/mailbox/imx-mailbox.c | 35
> > > +++++++++++++++++++++++++++++++++++
> > >  1 file changed, 35 insertions(+)
> > >
> > > diff --git a/drivers/mailbox/imx-mailbox.c
> > > b/drivers/mailbox/imx-mailbox.c index 97bf0ac..b53cf63 100644
> > > --- a/drivers/mailbox/imx-mailbox.c
> > > +++ b/drivers/mailbox/imx-mailbox.c
> > > @@ -67,6 +67,8 @@ struct imx_mu_priv {
> > >  	struct clk		*clk;
> > >  	int			irq;
> > >
> > > +	u32 xcr;
> > > +
> > >  	bool			side_b;
> > >  };
> > >
> > > @@ -583,12 +585,45 @@ static const struct of_device_id
> > > imx_mu_dt_ids[] = {  };  MODULE_DEVICE_TABLE(of, imx_mu_dt_ids);
> > >
> > > +static int imx_mu_suspend_noirq(struct device *dev) {
> > > +	struct imx_mu_priv *priv = dev_get_drvdata(dev);
> > > +
> > > +	priv->xcr = imx_mu_read(priv, priv->dcfg->xCR);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int imx_mu_resume_noirq(struct device *dev) {
> > > +	struct imx_mu_priv *priv = dev_get_drvdata(dev);
> > > +
> > > +	/*
> > > +	 * ONLY restore MU when context lost, the TIE could
> > > +	 * be set during noirq resume as there is MU data
> > > +	 * communication going on, and restore the saved
> > > +	 * value will overwrite the TIE and cause MU data
> > > +	 * send failed, may lead to system freeze. This issue
> > > +	 * is observed by testing freeze mode suspend.
> > > +	 */
> > > +	if (!imx_mu_read(priv, priv->dcfg->xCR))
> > > +		imx_mu_write(priv, priv->xcr, priv->dcfg->xCR);
> >
> > This could be separate patch if it aims to fix a specific corner case.
> 
> This is NOT corner case, it can be reproduced with our imx_5.4.y very easily, and
> this issue cause me many days to debug...Also cause Clark's effort to help test it
> a lot for many days...
> 

Is this issue only happen for non-state lost case (eg. Freeze mode)?
If yes, it's a specific case and worth a separate patch to highlight it IMHO.

BTW, it seems most drivers have this issue in current kernel because they don't know
whether the state are really lost, it seems like kernel still doesn't support this well.

> I do NOT think it makes sense to first send out your patch with bug for review,
> And then add another patch to fix it. 1 patch is enough for this feature.
> 

Anyway, if you really want to go with one patch, for this case, we usually could
keep original author and add a small fix note in commit message.
(You could see many community guys do like this if you search kernel commit log)

Basically we try our best to keep origin author in order to respect others' work
for community work.

Regards
Aisheng

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
