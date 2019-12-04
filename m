Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC4C11215F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 03:22:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRryMY7a39sqBQH0emeVsB+mbi0LH+GFD5srD6O12DA=; b=RRZgcTA5dOtKPY
	WgHvf85u9fYRE4yCzE9Rehqq89iR7GdCouaqn+pfUZAtq1D71+fW9KNvhYQrb7UTYwSlxy9Fjxn94
	B9NUrdftnETElNQl0wt+AyF907AYjYk5zzAUQPfyy90s65AUh5bYg8Bby9QBcprzpRUNenW4tEHFI
	QxGiGmNani3Kj0MRqzBX7Pu31lwjTQIR+XT/nW6L/tSEqFUL9J2YqEJPZeEO0IdIwXAp2yFEajqo3
	LqXipfbJntfnDhpf0Fjjjo3Ih3JS3cVypYMCq1X8A+M+i40astH2tF3rqIxL2FCkgCndbLHPorppV
	HfI2Nl6SlGwMMsRRuXxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icKJT-0006bC-6S; Wed, 04 Dec 2019 02:22:47 +0000
Received: from mail-eopbgr30042.outbound.protection.outlook.com ([40.107.3.42]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icKJK-0006Wt-VR
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 02:22:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EWXpsGUqmnSoSL+D9JlGrMBaOKJzjY2XsFGPM+W61/ld9BL9GTNQjxmoylC3ToaWnv8QyeUBVBOHcDzmTujSaxgCGQCTxOSqSn6Ey8dEWT7AQncFv0PlK6K5xQdY3TIcrUDvDeKLBmIfSlB0+RvVSMN4uerMzObfm8tyUZH/c1nAj7qYGyG0PtuB3MVPeNQuG1xZ2BkxNdq99z3v86M2kI1t0YBl0CxlO85ipl9w8JnHBoYYtvOLojKZOJwJ+tg3HiXXQn3fzlrwFUezXTN6iTdqJLpCrhBINBZkkRF2Gt2XnDgFnTwRCDArPy21Atzib/6hc2YSZZd7HJc72bRZew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DbJxBly5TyryvPHM5vQVZjy9njGk9fxennF/bq0h/S8=;
 b=Gfx2HF0jt1MOmVazZ1LOfX34recCKCwqlVDOKr097FuxCj1/zpHqScTMwIuxZ7H6RLCu/J8OmqXCLj6+6ZJT64IsUNegZwJSZ4iy5Hv+03BL3W2/OWtaz+0Bfegcsx7l/3A0zA7cn+6OtwfOdW54az+nu3plvJF7zbTAO3vN3dWv4sqdzvQNocOT0jjEg27LufG/kEKbKNbXUYOJzFzYvoHBCsKKITAC3P9DKwDbzGb1YpVTLxmsV0L7hpNd9PcPZRkiqgpQcGv25L+jju0S0DDl5KrIHfyHAW7eZegSBiVnLGxLkR0IbsSpctaDcuxv2EmMv2mBNGPjolNwgWWd0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DbJxBly5TyryvPHM5vQVZjy9njGk9fxennF/bq0h/S8=;
 b=obsjUILeJyx3tedyCjXh8WB8lmZEIuqCh8EvNfi4O8EOgqx/w+4dpp8u5otApOV+GIK8Qwr7fsOGq6RQxPr4RH5rT0ZDlVCsXrzt9s21eZBwAUStd2gSzqRwmMI7xMu3WnT67S90n9lGRf3hDqYJUzrsdAIZNitVGdqz8nqhihI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4786.eurprd04.prod.outlook.com (20.177.42.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.21; Wed, 4 Dec 2019 02:22:35 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 02:22:35 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] clk: imx: pll14xx: fix clk_pll14xx_wait_lock
Thread-Topic: [PATCH] clk: imx: pll14xx: fix clk_pll14xx_wait_lock
Thread-Index: AQHVlGNoepC2TDBj7kaCYRyt+h3yD6epaaSAgAAAaIA=
Date: Wed, 4 Dec 2019 02:22:34 +0000
Message-ID: <AM0PR04MB4481A56B3651CDE63465B7AB885D0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1573018178-14939-1-git-send-email-peng.fan@nxp.com>
 <20191204021908.GN9767@dragon>
In-Reply-To: <20191204021908.GN9767@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d01cdf88-d1a0-4354-54dd-08d77860d321
x-ms-traffictypediagnostic: AM0PR04MB4786:|AM0PR04MB4786:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4786C49AF7A7D316D0AAF7E9885D0@AM0PR04MB4786.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(366004)(396003)(39860400002)(189003)(199004)(6116002)(186003)(11346002)(3846002)(44832011)(446003)(52536014)(4326008)(7696005)(76176011)(6916009)(478600001)(14454004)(6506007)(8676002)(71190400001)(102836004)(71200400001)(25786009)(81166006)(81156014)(26005)(5660300002)(66476007)(2906002)(33656002)(66446008)(66556008)(64756008)(305945005)(66946007)(14444005)(86362001)(229853002)(55016002)(8936002)(9686003)(7736002)(256004)(74316002)(316002)(6246003)(99286004)(6436002)(54906003)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4786;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jB5wnzL9ifjnbHUL6Zt6wdNhFMZm0bMiZE3MWa4DY4O77bsEHBpS1bTSaXDBv1lyxbtFRVachYSlKMYlX4RL8fWPVbcsfK42Ih5jICJQP4kr2kelo3yuFnwtJAUManzeO6TpCtjkW95kT4ViPuVcDicXuFD4YAQKsERmXq3xiovx7L4pKe7Z+M/Txs45kQNaMzlKfi7nxNn4WIeYD3bUMKHuUskbkj4ZA2J+uYVrCwgrpGwjqM3bXWlOOdAMSoNFU5ldzlR0v6zmDkrL3wsr6DTcQ+RlkHzFt5e22lHnQy0dsCeyfbv2/Mc/H8/jZ9/BycCVgLyJs/D/uLZ/uzY7tI3QmQ/p/mm2ul1tHzEnb2Vg9rwESIEXn6yejFHN/+wfHZhbVC1mmR20BzhuGgpPrlHvK3CwYGJ6VCsreiqkaIwqrKS6+nZtslzoGgM99v3g
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d01cdf88-d1a0-4354-54dd-08d77860d321
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 02:22:34.9645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8zHnylVv9WZUNY0q/sK3wRhd7h2v8lTLBn+vp/zliJm/83ROl3CcjjirzWvKZ7O+Co5Lm6pp75fWWYAu3do02Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4786
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_182239_021472_21E12E0A 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

> Subject: Re: [PATCH] clk: imx: pll14xx: fix clk_pll14xx_wait_lock
> 
> On Wed, Nov 06, 2019 at 05:31:15AM +0000, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > The usage of readl_poll_timeout is wrong, the cond should be "val &
> > LOCK_STATUS" not "val & LOCK_TIMEOUT_US".
> 
> Is this caught just by code inspection or a real world bug? 

Code inspection.

 If you want this
> get into -rc (and stable kernel) as a fix, you should add more information
> about the bug, like how it's been triggered, what's the consequence of the
> bug, and kernel dump message etc.
> 
> >
> > Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >
> > V1:
> >  Hi Shawn,
> >    This patch is made based on 5.4-rc6, not your for-next branch,
> 
> Please rebase it on 5.5-rc1 which will be coming next Monday.

ok. I'll wait 5.5-rc1, then rebase and post v2.

> 
> >    not sure whether this patch could catch 5.4 release.
> 
> You can Cc stable kernel, so that it will be back ported.

ok.

Thanks,
Peng.

> 
> Shawn
> 
> >
> >  drivers/clk/imx/clk-pll14xx.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/clk/imx/clk-pll14xx.c
> > b/drivers/clk/imx/clk-pll14xx.c index 7a815ec76aa5..d43b4a3c0de8
> > 100644
> > --- a/drivers/clk/imx/clk-pll14xx.c
> > +++ b/drivers/clk/imx/clk-pll14xx.c
> > @@ -153,7 +153,7 @@ static int clk_pll14xx_wait_lock(struct
> > clk_pll14xx *pll)  {
> >  	u32 val;
> >
> > -	return readl_poll_timeout(pll->base, val, val & LOCK_TIMEOUT_US, 0,
> > +	return readl_poll_timeout(pll->base, val, val & LOCK_STATUS, 0,
> >  			LOCK_TIMEOUT_US);
> >  }
> >
> > --
> > 2.16.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
