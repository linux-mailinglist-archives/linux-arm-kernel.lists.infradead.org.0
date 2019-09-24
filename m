Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88378BC55C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 12:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gbHgp2fhJ48Q8PtKx1NEZWPdmMGfu9/ADAcDVgmfrI=; b=ShTAhHJ+OzHhh5
	ZMGtgV6Za/DmDZSKdm5b48s/CU9lqxvghaI7FnmuWXMgsvF9QlznR3vCmL05OHbTesRix2F6eoOY/
	PdAN8ynW6CP35vLr9aIDHhKI5NCxcOz3uUJdotFl5uMxx0hIDb6FDgJPWOignUR0OL5MwPwtYbDk+
	IVwwI5+mWjXC4V9vg28eff/JjBgSXtkJ4hbqArvVK3TP8sQWhJHmx7CCA8pVlhyoHLOhSMyIVWw1a
	wLrdxcU5ScVSmD6ZhF0xUeLFDaif7HwU6SmfXjIvTQyFJAz2Yy6UM/mIBMXw6Inu0YqIB2I1YaJ+H
	nFlemA9kVmNbNrygASYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iChfT-0007zf-8t; Tue, 24 Sep 2019 10:03:35 +0000
Received: from mail-eopbgr70052.outbound.protection.outlook.com ([40.107.7.52]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iChfG-0007zJ-P9
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 10:03:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G4G7fFWd4yvx/gZcq9RgVexL3RL0TXZCInTwQZc162QR+w8iKKkq5fqQEWMIFHUB3JlZjPCh0wZhh4FuRt2I/PKkZeekv6KjwA7346CuXUQszUijq5BWTYwf0En3iUNCap+OhHRJ1yOrH7jF4weipPdVopjgAXSZ0OQCnRJYfBbKbpJJ2ficpaJQVXDfzc17KEzdQ9afOvs4+rgLmX1Yzvs2T4IrDQoUK4LFUBc08HRdb+oVxs7hr2fikhGDgHUIScPWoX9ilyx//JGiQHR4vYOgErZVM9++++zVYYoNSaIaHu+MZTvl5k0qbxdqPQxLInUDf3PipVd4lwH3oJ/26w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8NdzP6YDLfy/KAS5c7wZ1b+lg1003n02W6hpsoc08SI=;
 b=j+Yfuj05VlpA4mvVInWTZTeCkJRle1yd82z8oQIwR5/Xs3A5V/3bLuGN1V96UNYAMPzbf6c2P0sNlvIsk4aFg5yH39Z3dT6/qo0nUvQ1K35j4jMpC2mkNXBDkCz2nMMmRVla3bQgwtOejI56pwKk7Bnpa6sYUtnv4JT5AsGfN/sm1WABIc2ssJCKQTOHCKTcEMPV4tlQoiWmjUL2ittUmbFRYBowKBMd9rjkjZqG52qlYQUwO5A6AWRgC4WXDoqjFj4ffZmpiD2hgRjgSXiwZ6iEZlDfA34AqoWHmJdEsjlvItMJSXwnguQ17tBfM6q1Q/slprbJ4KrB+5tvxMQi/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8NdzP6YDLfy/KAS5c7wZ1b+lg1003n02W6hpsoc08SI=;
 b=ZCEv624489daZXcQKYVvDkPr0US6SSPidTBsSxcr90Y+vdctCmqysfspUcWEeIxx6gkaSvOpA1269i7VZTo6HTOFXXIJju/HWyy6/ZjsLQMJ+3zGTtorCjC9EEGyf8DhqvXFlvOlew+g/E5nBkIEerHZVISWT0jFNgAxHl7jcWA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3641.eurprd04.prod.outlook.com (52.134.69.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Tue, 24 Sep 2019 10:03:18 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 10:03:18 +0000
From: Anson Huang <anson.huang@nxp.com>
To: David Laight <David.Laight@ACULAB.COM>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
 repeatedly
Thread-Topic: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
 repeatedly
Thread-Index: AQHVcra4SlIMDowCwkO5fDgX0dE1dKc6lGgAgAADXwA=
Date: Tue, 24 Sep 2019 10:03:18 +0000
Message-ID: <DB3PR0402MB3916FFD66797DAC0AB1110D8F5840@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1569315593-769-1-git-send-email-Anson.Huang@nxp.com>
 <6cfb1595992b46dc884731555e6f0334@AcuMS.aculab.com>
In-Reply-To: <6cfb1595992b46dc884731555e6f0334@AcuMS.aculab.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79b46d9f-f78f-4196-64ef-08d740d66c8e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3641; 
x-ms-traffictypediagnostic: DB3PR0402MB3641:|DB3PR0402MB3641:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB36417682AB408E7E0A81E200F5840@DB3PR0402MB3641.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(199004)(189003)(76116006)(7736002)(2906002)(66556008)(66476007)(7696005)(66946007)(6116002)(305945005)(25786009)(3846002)(66066001)(478600001)(64756008)(33656002)(66446008)(446003)(11346002)(99286004)(2201001)(486006)(186003)(86362001)(76176011)(26005)(81156014)(81166006)(8676002)(2501003)(102836004)(6506007)(44832011)(52536014)(14454004)(5660300002)(6436002)(110136005)(6246003)(74316002)(476003)(71200400001)(9686003)(229853002)(55016002)(4326008)(256004)(14444005)(316002)(8936002)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3641;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iYun5GqQBQc3nzoGHU1tnfK2lggOMZAVKaCpY8kT9uOME+ntQtVj4lqvYFwbESMOiJZYT68n/RZ/bVRKiLSdlF6hFXVtlr3OUKydWKYEewn7MzgF9bT7cFrj6mt00OcqmHVA7oDDPjZmxSFbWdSBCKDQLpw+gOfgwvWwmKBth5Aoah92tCKbgNzx4GDEdGx6DaeO3M5tTuDYEhRSyOUeDXoT5gK43DoNKLF+dDIfIPIsnpDJU4FlBGJ+x6yO2er+2r3JhrjgnZeOWx9VUuPyC7WzLqJNeEYz9jMUJHredLl8gwItF1yYK67oOGPqZ5Jnr3dpNcXCg2urotSpTTpXsPgZ2JG6vlk+9PvpKX5yXj3AfDhz2+ed1zL3ev5qccwsBIKVE67EkBkWTS6tu4E2qRLS4XLiogMtRlvFous6+DM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79b46d9f-f78f-4196-64ef-08d740d66c8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 10:03:18.4085 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xNvCIcJm+bwZ+IjdjRSvTLcVlupW1dn0wnwwbUdc4eDHRp6o3rnBIQt3LXYxLpmMOZWC4rcRfTFCAH2hLlVtcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3641
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_030322_818134_35A3851E 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, David

> Subject: RE: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
> repeatedly
> 
> From: Anson Huang
> > Sent: 24 September 2019 10:00
> > Add helper variable dev = &pdev->dev to simply the code.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/pwm/pwm-imx27.c | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/pwm/pwm-imx27.c b/drivers/pwm/pwm-imx27.c index
> > 434a351..3afee29 100644
> > --- a/drivers/pwm/pwm-imx27.c
> > +++ b/drivers/pwm/pwm-imx27.c
> > @@ -290,27 +290,28 @@ MODULE_DEVICE_TABLE(of,
> pwm_imx27_dt_ids);
> >
> >  static int pwm_imx27_probe(struct platform_device *pdev)  {
> > +	struct device *dev = &pdev->dev;
> >  	struct pwm_imx27_chip *imx;
> >
> > -	imx = devm_kzalloc(&pdev->dev, sizeof(*imx), GFP_KERNEL);
> > +	imx = devm_kzalloc(dev, sizeof(*imx), GFP_KERNEL);
> >  	if (imx == NULL)
> >  		return -ENOMEM;
> >
> >  	platform_set_drvdata(pdev, imx);
> >
> > -	imx->clk_ipg = devm_clk_get(&pdev->dev, "ipg");
> > +	imx->clk_ipg = devm_clk_get(dev, "ipg");
> >  	if (IS_ERR(imx->clk_ipg)) {
> > -		dev_err(&pdev->dev, "getting ipg clock failed with %ld\n",
> > +		dev_err(dev, "getting ipg clock failed with %ld\n",
> >  				PTR_ERR(imx->clk_ipg));
> >  		return PTR_ERR(imx->clk_ipg);
> >  	}
> >
> > -	imx->clk_per = devm_clk_get(&pdev->dev, "per");
> > +	imx->clk_per = devm_clk_get(dev, "per");
> >  	if (IS_ERR(imx->clk_per)) {
> >  		int ret = PTR_ERR(imx->clk_per);
> >
> >  		if (ret != -EPROBE_DEFER)
> > -			dev_err(&pdev->dev,
> > +			dev_err(dev,
> >  				"failed to get peripheral clock: %d\n",
> >  				ret);
> 
> Hopefully the compiler will optimise this back otherwise you've added
> another local variable which may cause spilling to stack.
> For a setup function it probably doesn't matter, but in general it might have a
> small negative performance impact.
> 
> In any case this doesn't shorten any lines enough to remove line-wrap and
> using &pdev->dev is really one less variable to mentally track when reading
> the code.

Do we know which compiler will optimize this? I saw many of the patches doing
this to avoid a lot of dereference, I understand it does NOT save lines, but my intention
is to avoid dereference which might save some instructions.

I thought saving instructions is more important. So now there are different opinion about
doing this?

Anson 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
