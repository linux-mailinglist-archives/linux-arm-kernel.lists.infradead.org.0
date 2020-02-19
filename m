Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4B41640E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXIanydYHf1kYp3X1bNKW1hssIBEvHcyah6iYLNeFkE=; b=S6ajbtz3GXqKSj
	9TvwBYlIomflVtKhPhR4UXv4rvNaKXwLqdmShifxeSvFZyoaiFby2kEVOdmhXJznqInF3ETlvNf0i
	ZH7Oh+zG82HYS2TM1WSIaAa3SDfc1NcoEp0rDFT8E3Ol2YX/5mtjqCP/G6Z0WecUXpQnO13f4sTFQ
	xshPjk9oaywe5Zq9Aq8QaRb3iq81yHQti09c8nZsrMZ2Btx89O90jO1g9GesMKVrYaQy0s18vRMCF
	1aWC9qIQld1Myc4mkDrx5FEtF+Iauvw9OQh1Jo9CrlSEePF9g1PDgW0eZ+vnDjz2hR8+kLTWKvbf/
	b23qsE80rn9TG+kfrKKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4M5B-0000gf-K5; Wed, 19 Feb 2020 09:55:53 +0000
Received: from mail-eopbgr20047.outbound.protection.outlook.com ([40.107.2.47]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4M50-0000g6-Sy
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:55:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MhPIkTGq/DmZKGTO55vrBn9jnfaQ7tycRCS9yw/UiHVDp/11CAuG1aaY6NP91s6BXFL0oRzxaB47v3kXZkX6/EkgBC/rOpSSh3d1FEEfG65fJI4F6rVny0L/gFdbKfQGaLoBo0eXbsOI9Dg3CSMZ3C0epp0Lg68D6EQGZb9ufTfBKny/BP0Pm1aFh9bwudbi0JhPCriy4cAyJ2FXp/6+OnM7bOwfDDJEMpnw6GMDERuNSt0YjS1pC9UZO2MFVmJl7/1lsEs4iX4EGLOjxJYfTDWfWi1Ll3nX1JBlg56m4FBQ7ADEQln86wxJgJgtZxKgklrGpQRpgxUQVF/b7f9EfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JqD83DZNrnn/o8j0K6PwZLQEadzOVt1Lxc7Jw432W0o=;
 b=GhbioS6N+a2dP7k0BKImypSiI3pyisxMyG9F0nXubViudONfEAxFu92XVSG6Uzi3+UcSTU1U2wRuBO1zgKF/eEWGnD99O5yyD22KHlWjG3Eh5h6mc/qSvmigiUkcIsNn5B+N7X3xAfTQZASYNjZx4I11D39Wkpcvut+8QmfcmnMnjTJofaOXyUMacfUcXqvWiQjgZuu0QJyebBWZPyuF46VVIveoiZgdbwTYGqq9pw8qcl7c6Qz0KQVM4+R81fIqbJBP+J9NS4YavzchRILaw7okAUYJ2JSOK6mJP+pGbEo6cQgPoIkH2zghv0pyi5bwW9vyFz3X+DnnJC6I9ZlweQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JqD83DZNrnn/o8j0K6PwZLQEadzOVt1Lxc7Jw432W0o=;
 b=AdkOxge9SqQM7ofmHw0WA271sfEG13bR91/OIOGoUR5Aj3oVu1o98q5s5+yLj+dQexpxZugZ2XPDgaDgSn/pfIgSKxHyDWHtR7YoODL1Xk11P61FiySDUUAN5ww5hlrmQrp/jwp6ysyRXIQ1KISfk/NRG6pbX6xGxYHKg5OBme0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4979.eurprd04.prod.outlook.com (20.177.40.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Wed, 19 Feb 2020 09:55:39 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 09:55:39 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: RE: [PATCH v2 10/14] cpufreq: dt: Allow platform specific
 intermediate callbacks
Thread-Topic: [PATCH v2 10/14] cpufreq: dt: Allow platform specific
 intermediate callbacks
Thread-Index: AQHV5vuGM17dCu5aOkOrNUFZCKyD1qgiRNWAgAAAzHA=
Date: Wed, 19 Feb 2020 09:55:39 +0000
Message-ID: <AM0PR04MB4481BE7EB99F6D3E198A4D7088100@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-11-git-send-email-peng.fan@nxp.com>
 <20200219094603.2yfat5xxyabunlja@vireshk-i7>
In-Reply-To: <20200219094603.2yfat5xxyabunlja@vireshk-i7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8f30c23a-0281-4a2f-89e5-08d7b521e03e
x-ms-traffictypediagnostic: AM0PR04MB4979:|AM0PR04MB4979:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB49793C215A9151F5918A837588100@AM0PR04MB4979.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(366004)(396003)(376002)(199004)(189003)(2906002)(53546011)(6506007)(8936002)(26005)(81156014)(52536014)(66476007)(66446008)(66556008)(64756008)(5660300002)(186003)(8676002)(81166006)(66946007)(76116006)(86362001)(71200400001)(6916009)(316002)(4326008)(54906003)(7696005)(33656002)(7416002)(478600001)(9686003)(55016002)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4979;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zzjx40BdPqviYtovZr+0yorcMGqlPSXwtFfwvd42CwWaHOXKdduvPHffQ8h/zB0Tb0DKxYZqNT0DRtv0vD+eFDprIkYuCvXlrGhNVhXDTNpndSOJXXro5ba4KFaZQMWiPqTPy8RoK49Ywk2SXfDTTcgoi5OWE5wtkLub2NMRmKYBv5NpEeJ5k2bLmAzqlOpkmec+YVQOvoMST6fUbSY9PyJC/idIuBIqfvMcfRMUFU+syhlASQ98lgD8BWbLJGsxZtt04VZfa2n9AdEnFc8Seb8PJdWW8I2Lq9jJtOHd0y7taBbVxgy73xWaYNIpKn/yDXWBKLkBEVzwF9tFTnLmsVHiNpVTtOKNd8KGe8JXoMXa6aixvAPbgRBFG5dPg/QssEhQyRmZJRr65L0nxyxuroCwL/wdd6m4O9kco53DO9sRyuszfbmsKOxTIKC1gu2v
x-ms-exchange-antispam-messagedata: w3Yb/n1Gz6lNZxgCCkbHk9VUm4xYMFiAswrwU/ltHkq5nTRJybvgFIBQeM1X41xur8Lk9OIcJ5iCAYr13yTa3lD6MFP7jH7GrXkghtfC/8ZvLOczT0tRq7PMkkhIGu9jMHE6QcEMM0GJWMCpRHS8SA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f30c23a-0281-4a2f-89e5-08d7b521e03e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 09:55:39.6178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZxrmUlPCZ0k2t2PRXK6nGA0SHG+Jb9ZuxWgEVMHXSFNI9AhM7qsKGvMMDFpxkDxGAv9AJFbp7Eunj9hKV7U2Fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4979
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_015542_937294_B12A919C 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

> Subject: Re: [PATCH v2 10/14] cpufreq: dt: Allow platform specific
> intermediate callbacks
> 
> On 19-02-20, 15:59, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Platforms may need to implement platform specific get_intermediate and
> > target_intermediate hooks.
> >
> > Update cpufreq-dt driver's platform data to contain those for such
> > platforms.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/cpufreq/cpufreq-dt.c | 4 ++++  drivers/cpufreq/cpufreq-dt.h |
> > 4 ++++
> >  2 files changed, 8 insertions(+)
> 
> Looks fine to me, please lemme know the patches you want me to apply to
> the cpufreq tree.

Thanks for quick reply.

Patch 1-9,13 needs to go into i.MX tree. Patch 10-12 needs to go into your tree.

But patch 11,12 depends on patch 3-9 to make i.MX7ULP cpufreq work. So
for now, only patch 10 could be directly taken into your tree.

Will let you know after CLK and i.MX maintainer agree on the clk part, then
you could take patches 10-12 in a whole.

Thanks,
Peng. 

> 
> --
> viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
