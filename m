Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B4D82E86
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 11:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZozTIpOwFkGI4QqHa5SduFkFKzNLAS5DxHEenEHQEp0=; b=H8aw+lKY70QMzY
	qGc2mwVL7iAXbWCsnY3MveCINkoogPo94PLNGuCuL+fxireBW+IhSwbQIVMZr/syYsZkA678yqE/G
	oDQaWLlTOrt2P6t4YkksYFV6wklBuWFK9KkK0vI+BRDWJgO+QKMLZUbPwc2ee/SSH59syin/OFdhM
	mShNUqjTfkSlDq1SO8xWSCY6qsA6PGJoJCKg69uF8XHHKROJT/4iSBvKNNdnt1zceRV8KgOyDnaUW
	W21QlW0WJlqfwRRHtw2Iu0Dml6tGKSS4qvrKT0IosWSAZu/RfDY1XpKlTEqG6KBr4VJKxSC2EKTLI
	6/kXepujHu4jmwoe8vyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huvb5-00057D-2D; Tue, 06 Aug 2019 09:17:35 +0000
Received: from mail-eopbgr130083.outbound.protection.outlook.com
 ([40.107.13.83] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huvaj-00056P-5X
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 09:17:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+bOYeGQOvWtru5iTgrQjphmyV/dlvAD7aXTSz4SyDQDFGFf+t3/DHUhWMRqrDGhGLPo+1o1xzSFMFWhCZBl8poW/VYW+WZBkcmqVVhfJDC4/hlVEkismGHriA5T/uctQOsheY5YuoLT33FxU5sSNPudbe9+wsoWVFomEqyO/pCPiGvwrvA73ak/8W8mWJVdv4A/J7ro6HasZ89/Vx5zYy4JptEfkjwArsPJu0CzQS8gc0sE+uPYoNXs0gqOD3bNZLvWDKd4Je+gHUQWoxPgaVq9W/aScExO4eRKMK54p4Ndw1G8OAsAzSjbwQ0ERLHXh+V60Bwan63hvnF45jdjBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJsuXJRtZrnN4NxkETC75H9wdjZOR2+xl+7WvS4uADg=;
 b=cdQewf5YRLjrrXJYNmyGt7mzM5HqBYy38WbLeTcZTNzwfw8KiTjSm/mIGSOkYqKFdctSjuSAcukpSlr56vhjmspv7TD8VdySow0pOj11bW4N2o3/Z50c9FQ2xGG8ckfElFRRBU7aAdQ2ZYpfvhbDgjC/wSz5GEGH7Ah9ayJSKcZfDi4KnQQAguYszp4Lo4Je/XdrY1jjJgv6yxMTGvu57pd761XjWKhZSoHJIpP+G/MZTxo8+pi3OvfRZNJJW7RsoT3U1nDtsyeuqvcRhwfwRcWyUnYjFygjGUl7ZzY+b5GCtIs3436X8pEbgl3+rC+DpXiiRxS4LZfiVy9E93w4qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJsuXJRtZrnN4NxkETC75H9wdjZOR2+xl+7WvS4uADg=;
 b=B5RPb+vgiyhSP3QEyVG5ItYkeSqJ6Lx6su9I3HbsmNK/xq3rlxpSp7zPciW9+aqZOENqhILterFpizlAZgRHlUHXROTm5lWKw349rTb25iXlpLFmmvo5xPAKgSCS5K3WV29MpmVBEdp10SgNXye+U/6CIDt418usvLN1TgmgW3Q=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB6030.eurprd04.prod.outlook.com (20.179.24.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Tue, 6 Aug 2019 09:17:07 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::c85e:7409:9270:3c3c]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::c85e:7409:9270:3c3c%7]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 09:17:07 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Fancy Fang
 <chen.fang@nxp.com>, "mturquette@baylibre.com" <mturquette@baylibre.com>, 
 "festevam@gmail.com" <festevam@gmail.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Jacky Bai <ping.bai@nxp.com>, Jun Li <jun.li@nxp.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, Abel Vesa <abel.vesa@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Anson Huang <anson.huang@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, Peng Fan
 <peng.fan@nxp.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>, Leonard
 Crestez <leonard.crestez@nxp.com>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: Re: [PATCH 2/2] clk: imx8mq: Unregister clks when of_clk_add_provider
 failed
Thread-Topic: [PATCH 2/2] clk: imx8mq: Unregister clks when
 of_clk_add_provider failed
Thread-Index: AQHVTCQFiMf7Z6GBnEmButhUFBiCbabt1yYA
Date: Tue, 6 Aug 2019 09:17:07 +0000
Message-ID: <01256fbd0ec5c14e30027be902e89b65ab921970.camel@nxp.com>
References: <20190806064614.20294-1-Anson.Huang@nxp.com>
 <20190806064614.20294-2-Anson.Huang@nxp.com>
In-Reply-To: <20190806064614.20294-2-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0cca0302-0f35-47ca-b4ec-08d71a4edac7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6030; 
x-ms-traffictypediagnostic: VI1PR04MB6030:
x-microsoft-antispam-prvs: <VI1PR04MB60301B80ACB8F7F4F83E9B24F9D50@VI1PR04MB6030.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(199004)(189003)(26005)(6512007)(478600001)(486006)(76176011)(11346002)(476003)(446003)(14454004)(2616005)(68736007)(6486002)(6506007)(25786009)(66446008)(5660300002)(64756008)(86362001)(71200400001)(186003)(76116006)(256004)(14444005)(91956017)(4744005)(71190400001)(66476007)(66946007)(66556008)(2501003)(7736002)(50226002)(305945005)(8936002)(81166006)(81156014)(8676002)(110136005)(2906002)(102836004)(66066001)(7416002)(53936002)(2201001)(6246003)(44832011)(4326008)(99286004)(6116002)(229853002)(3846002)(118296001)(6436002)(316002)(36756003)(99106002)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6030;
 H:VI1PR04MB4094.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: s4d+oj7CC1eHCjJKPP7t4y5gJmH3D9U+MedriCqYvbfcx2WyFtHmtElcewzqiGXboPlgshxuwznPj5bLfJCMphzlxaGkikR6XuEQF9vn2CHlZINEXHgpmHjOKwtRyDWYP0oid0TRlag7R6VAFqRHtn4A9lf09EtsCoeRobzLl+jM5wr5DDmZChubTgKn+j8xuMaM2HZyYgShgBAdT8ukX80tCQQ+i9p9yJfJVRy1jX/W+XLwvja/7WtZ12fpgsqiy+0wHYg00/WnGUekh9gG3oAHFzEYkwS9+WKwRCyl2gE+kUwWw35KqzcKIwS4pRAnPXKVj1G9z6H/U17eJQ0tI6DY68BZRH3ud5rFNJ/tqMu7hQ/nv0ftrOQPQh/AsMEPFdUFBrk9OHGJI2rae2PlqrBrBIuso0+yNocbg0es7e8=
Content-ID: <440199482DA6994BA78BD8BEFD5D9B37@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cca0302-0f35-47ca-b4ec-08d71a4edac7
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 09:17:07.4807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: daniel.baluta@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_021713_214773_FE7F5C1B 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-08-06 at 14:46 +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> When of_clk_add_provider failed, all clks should be unregistered.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

> ---
>  drivers/clk/imx/clk-imx8mq.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-
> imx8mq.c
> index 04302f2..81a0249 100644
> --- a/drivers/clk/imx/clk-imx8mq.c
> +++ b/drivers/clk/imx/clk-imx8mq.c
> @@ -562,10 +562,18 @@ static int imx8mq_clocks_probe(struct
> platform_device *pdev)
>  	clk_data.clk_num = ARRAY_SIZE(clks);
>  
>  	err = of_clk_add_provider(np, of_clk_src_onecell_get,
> &clk_data);
> -	WARN_ON(err);
> +	if (err < 0) {
> +		dev_err(dev, "failed to register clks for i.MX8MQ\n");
> +		goto unregister_clks;
> +	}
>  
>  	imx_register_uart_clocks(uart_clks);
>  
> +	return 0;
> +
> +unregister_clks:
> +	imx_unregister_clocks(clks, ARRAY_SIZE(clks));
> +
>  	return err;
>  }
>  
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
