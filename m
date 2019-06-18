Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38E049DAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ut7Z4vBMDGfTE4+h1haM0iMeUOPKEbvmQZ6Z88UyRj8=; b=CEBlZa3i7dK63J
	jCulXR1pAhxCTCQNkb0uMb8aY7ZQbTw4vk/AhJDgemKqUkXI/kw0SY+vQSz1jX+YPhMVO4Ic6L0m/
	tpi7oFw/nG/mBNhjeeJqc/ydMKYF6UB1ZlUdON3U36dG0ZrQTjFfWq/g6PkGTKQDK/aB4mF59FNqn
	jXwuKa+ndO1NhDdJm7+1Dax06DvBO9mB7dS8hAGfYojdjjY9mwBW8ChX7brdqD+623eg0x6HHCWAi
	mP5HLpGzcjiDMaWNW62ojfiHfACb9AmkSsZTU7qD2ZG9f2FOPYYrj6I7JbXx//EO1Hb+oqgK8H7Je
	ZNI+Lj8an94+WTCtjXZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAfb-00029p-MN; Tue, 18 Jun 2019 09:44:51 +0000
Received: from mail-eopbgr30047.outbound.protection.outlook.com ([40.107.3.47]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAfP-00023U-PL
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:44:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0H89k2AoZhrV0TSzPJzRfK3OJx5SjnZPRp/rdgl1/Bc=;
 b=heJV77SzxSJRtj0PwvnaesafTc27dHk4+QscRgZF2nU6hjLVng1DM29iMvENdR0XaQLaORdX5UifOZ8bEyfAibTwNKboL/vTk1R9iAUQfGudE6l9rd09/zgGqyXtoZkQjJdlrkv2p7MS2XgNk7FT6a6kHVw/9r+ixWc5ukTnVcA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3641.eurprd04.prod.outlook.com (52.134.69.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Tue, 18 Jun 2019 09:44:35 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1987.014; Tue, 18 Jun 2019
 09:44:35 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH V2 2/2] soc: imx8: Use existing of_root directly
Thread-Topic: [PATCH V2 2/2] soc: imx8: Use existing of_root directly
Thread-Index: AQHVIogDK1yz8od2k06kc5I/LWM47qahJ3qAgAAHn0A=
Date: Tue, 18 Jun 2019 09:44:35 +0000
Message-ID: <DB3PR0402MB3916AF21E4C4199E083790A1F5EA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190614080748.32997-1-Anson.Huang@nxp.com>
 <20190614080748.32997-2-Anson.Huang@nxp.com> <20190618091442.GM29881@dragon>
In-Reply-To: <20190618091442.GM29881@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95f21d7a-63bf-4292-ee75-08d6f3d192f3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3641; 
x-ms-traffictypediagnostic: DB3PR0402MB3641:
x-microsoft-antispam-prvs: <DB3PR0402MB36411B7D585F53306811BBF7F5EA0@DB3PR0402MB3641.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 007271867D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(376002)(39860400002)(346002)(366004)(13464003)(189003)(199004)(476003)(446003)(11346002)(5660300002)(9686003)(53936002)(55016002)(6246003)(3846002)(53546011)(54906003)(76176011)(44832011)(33656002)(486006)(66556008)(66946007)(7736002)(6506007)(6916009)(8936002)(305945005)(74316002)(25786009)(102836004)(73956011)(6436002)(4326008)(8676002)(81166006)(76116006)(7696005)(256004)(99286004)(66066001)(66476007)(6116002)(64756008)(186003)(66446008)(26005)(71200400001)(52536014)(68736007)(316002)(229853002)(71190400001)(2906002)(478600001)(14454004)(81156014)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3641;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EU8P6xdtiXe+znPd2l12sbjJWCizeywZR/ZZAASl/yPLqaHAOAat45i8C9g25Sotv8BvEbxFiN1YCUPV237ly4bEcyOu59/BQoUgyl8EFNyIYGCJHLV4Dq7/RCV+MamuFyyqy1qD+jzeqCnLg6NJJTH2MSUapyf92CezHXf2Z5E2CZt5dAyZuENnv9OQt6ppePmcbuu99c0kbAM6P2574XvE6EXUqetwe+Ukzf5hX3rj0T9PAwrQvj9ZhYPiT7jnAT1Iwv8cdJRfHPpqPj2CPJgPlg5mE/UkuBO0Kjejmh4++WiPbPEj5tCmMQ7lyQo8ImXIF5cTxpDYleB6fWcqz9iuWclXpuGvB/yuHsdf3ADm2Vgk3bKrlFk0ewWGH8TBTt+7QDjKHVFQnoDxNGoRpJaQUNJ9Ri5Xbko9akDsctA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95f21d7a-63bf-4292-ee75-08d6f3d192f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2019 09:44:35.6909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3641
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_024439_903153_EAD39C1E 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Tuesday, June 18, 2019 5:15 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> Leonard Crestez <leonard.crestez@nxp.com>; viresh.kumar@linaro.org;
> Abel Vesa <abel.vesa@nxp.com>; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH V2 2/2] soc: imx8: Use existing of_root directly
> 
> On Fri, Jun 14, 2019 at 04:07:48PM +0800, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > There is common of_root for reference, no need to find it from DT
> > again, use of_root directly to make driver simple.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> 
> It cannot be applied.  Please resend by basing on my imx/drivers branch.

OK, just resent, there is a soc driver patch in linux-next, previously I did it based on it.
Now I change it to your git repo, you could meet conflict during merge.

Thanks,
Anson

> 
> Shawn
> 
> > ---
> > No changes.
> > ---
> >  drivers/soc/imx/soc-imx8.c | 9 ++-------
> >  1 file changed, 2 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
> > index 5c7f330..b459bf2 100644
> > --- a/drivers/soc/imx/soc-imx8.c
> > +++ b/drivers/soc/imx/soc-imx8.c
> > @@ -105,7 +105,6 @@ static int __init imx8_soc_init(void)  {
> >  	struct soc_device_attribute *soc_dev_attr;
> >  	struct soc_device *soc_dev;
> > -	struct device_node *root;
> >  	const struct of_device_id *id;
> >  	u32 soc_rev = 0;
> >  	const struct imx8_soc_data *data;
> > @@ -117,12 +116,11 @@ static int __init imx8_soc_init(void)
> >
> >  	soc_dev_attr->family = "Freescale i.MX";
> >
> > -	root = of_find_node_by_path("/");
> > -	ret = of_property_read_string(root, "model", &soc_dev_attr-
> >machine);
> > +	ret = of_property_read_string(of_root, "model",
> > +&soc_dev_attr->machine);
> >  	if (ret)
> >  		goto free_soc;
> >
> > -	id = of_match_node(imx8_soc_match, root);
> > +	id = of_match_node(imx8_soc_match, of_root);
> >  	if (!id) {
> >  		ret = -ENODEV;
> >  		goto free_soc;
> > @@ -147,8 +145,6 @@ static int __init imx8_soc_init(void)
> >  		goto free_rev;
> >  	}
> >
> > -	of_node_put(root);
> > -
> >  	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
> >  		platform_device_register_simple("imx-cpufreq-dt", -1, NULL,
> 0);
> >
> > @@ -159,7 +155,6 @@ static int __init imx8_soc_init(void)
> >  		kfree(soc_dev_attr->revision);
> >  free_soc:
> >  	kfree(soc_dev_attr);
> > -	of_node_put(root);
> >  	return ret;
> >  }
> >  device_initcall(imx8_soc_init);
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
