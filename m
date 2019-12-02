Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E0010E7E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 10:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Z9s1yH/Tcqft1SYbzIkFDGxz5ABwj0ArQqBKkXRSiY=; b=MH5AIzsaCsvNuy
	KUCo0OWH/BIfHmJ57jxtaHUwZInovWDpCzIHZ2OL/RNxMTbzQ+vRflO+X+0SQS720SfTlIuGxVcib
	NuUH4/RDNRvgr0qrkGeQo52IMOCLI9uCLKYiuSBQGQJWkVNvzkW96GCgpwoorGj3BJ9CMA+yi9vIO
	K2zzVrRmkuS3/8gMJVRS3DzNxIK1YEYKYC465ojDUG2BK1l9vl2VfWzLz4D3qCtYTP7W/WU2Gnwp5
	ep9IQEzTou5bCUDyfUMIfpUXET4ii89mcpqDO4P34dXEBmrQ3KB8N2KIxb3g+f3zT/Ij0Jw70w527
	rsjzdDAfzUv8Ayau9vIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibiGt-0005Kd-6U; Mon, 02 Dec 2019 09:45:35 +0000
Received: from mail-eopbgr40059.outbound.protection.outlook.com ([40.107.4.59]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibiGm-0005K3-7g
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 09:45:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IJLDTQMACobf7e8u1MsoZNm1aD6yX2Y+Nq5pRnpssF2wyJqVU8wf000ApJbVwgCyOFDBoW1bbQTa4StOl0kThhVOhZeQmWE9RLMERB1lzR+OXww88BA/m8NQwabZyqXFAEPynlTya1EfDEO3+EId/SKrmTRD1INtfdS3dIcYE5xXiMkDker2294bLhMpZ4SKmUU41Y8gK08hcBvoHKukWhVlzgwDwchHR/HhPAr1cpAuQKr/UfixczUtLBqsQv1uA+UOkMS0XYdzDBli1kyJgd/cE7tkEpWk1oaNbiCtTT+9lVgvKHDeek93RxVzUfr0aXWIfJfInsNptJ/QI9aMnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iHKD30VXFMShPA1Yq6qDTuokNKWFsacsp5qNK3o/p64=;
 b=I1voTlVJXQB+JfmzA9dEULelTVvbX0j6wzdtCZsbZiXKjbirU6UTPD7l7zp9l5k27nuowjfQzVr82IbuWNmRKWM1m1E3J0sL62RUu46N7NLWabdN7qO5d0BDOpji6nKHWqcWI9OG2epFdTvee+FFzqw5c6OEDUMZkKhFoqs7jrBYUc6WPU0wwqup3v6mItoL37v9KDCH6huDzmQItCzygffuXbl/G3CoFZGiUXGkTIqHNqaqhdCWYx8q9bDbebmGj2e8bGV2zV3Zn8utsiLj1xd2gi/i3x5fMQANWIAT832W1/rXlKkDCyBEIgYM3NIGxVWdvIgmSiC40oUnE3bTKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iHKD30VXFMShPA1Yq6qDTuokNKWFsacsp5qNK3o/p64=;
 b=XBO2mq/YZiFY6rBDHHqB5Ytki70GiKKT/jmTJI/zYWggmLcVCJvHW7cporhosGQh/6dqTumKt5fCPfbXovRQOsefVICaVNraPZek9pjnBD4H5U07jYMz3lQtDrA2EbzJciJbtya+1AvCBfiee8nAhEN12xuUf/+qGAdE9x5nImw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4706.eurprd04.prod.outlook.com (20.177.40.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Mon, 2 Dec 2019 09:45:25 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 09:45:25 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "axboe@kernel.dk" <axboe@kernel.dk>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "hdegoede@redhat.com" <hdegoede@redhat.com>, "tj@kernel.org" <tj@kernel.org>
Subject: RE: [PATCH] ahci: imx: i.MX8QM: fix error handling
Thread-Topic: [PATCH] ahci: imx: i.MX8QM: fix error handling
Thread-Index: AQHVmRhVtJOcbRZcDU+JyEEqGXtClKemuBgg
Date: Mon, 2 Dec 2019 09:45:24 +0000
Message-ID: <AM0PR04MB448164AD76243D955BC025E588430@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1573535674-25364-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1573535674-25364-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [114.220.170.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 43451e89-36f8-425a-190a-08d7770c5b51
x-ms-traffictypediagnostic: AM0PR04MB4706:|AM0PR04MB4706:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4706391460B390501E44673D88430@AM0PR04MB4706.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(39860400002)(366004)(346002)(199004)(189003)(51234002)(2906002)(229853002)(9686003)(6246003)(102836004)(14454004)(478600001)(110136005)(66476007)(7736002)(86362001)(66556008)(64756008)(26005)(256004)(76176011)(14444005)(4326008)(5024004)(66446008)(6506007)(7696005)(7416002)(25786009)(74316002)(71190400001)(71200400001)(186003)(52536014)(6436002)(55016002)(54906003)(6116002)(3846002)(305945005)(8936002)(11346002)(2201001)(446003)(76116006)(5660300002)(2501003)(81156014)(8676002)(81166006)(33656002)(99286004)(44832011)(316002)(66946007)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4706;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R5xLjIX6aMgomFluNY6YbB5tHZ8IQwdpGFRAsLzlJods3zXp8Q5KxrrkEJlarI61tJETQfzO8UdGNRRmjMm24NLeibbckBaOmlfRBL2cgyHHT9Pe0GvdaxQ/NkUNeWTZ+WlWXEzjQTBDLxgh9mI+0JK68E6gH5xmAe1PvhaO0XVCEGirXsQRgiE5J2h2bsxm8Tnl9MsGxY8ZGMc4Y3QhTAkn/PEgOaaJKEcsYNxuhvnJj0BhdeDZMRTWYCPTvmvZg9seItgnlZgzZBlbipTZufVBnlFsIz6uceyKzPQHE0RKjSw8b2dsdVeT9zNY9WEiYi7H+t0qYciZEVeBl8mu0l/Js5T6dLVobP+DaXwf/sXOzYqg9zw6HuYMgVR4S0aEXxCIWDGCpmp9fVcHiePHNmqi0Nud7swN+x+9oSGxpGQXCmxZ6FcNI8ICBuElw+9xmUYYXllmkBIxWeRynD7hZA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43451e89-36f8-425a-190a-08d7770c5b51
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 09:45:24.9110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /PK47h6uymx3cvgoeIkORYdEQFpU9tU4SBVCzQ6HbzLHpysw1sn1Eh5raqbsuVys5USDmo4q296VLIV6e2P09w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4706
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_014528_278504_702C9EEC 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.59 listed in list.dnswl.org]
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-ide@vger.kernel.org" <linux-ide@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH] ahci: imx: i.MX8QM: fix error handling

Ping..

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> When imx8_sata_enable failed, need to jump to path disable_clk.
> Otherwise there will be kernel dump as following.
>     Workqueue: events deferred_probe_work_func
>     pstate: 60000005 (nZCv daif -PAN -UAO)
>     pc : _regulator_put.part.27+0x34/0x158
>     lr : _regulator_put.part.27+0x2c/0x158
>     sp : ffff80001286bb00
>     x29: ffff80001286bb00 x28: 0000000000000000
>     x27: 0000000000000000 x26: ffff8000100fddf0
>     x25: 0000000000000000 x24: 000000000000001b
>     x23: ffff80001286bbd8 x22: ffff0008ea007600
>     x21: ffff0008ea0104f0 x20: ffff0008ea007e00
>     x19: ffff8000120753e8 x18: 0000000000000010
>     x17: 00000000eefd8a54 x16: 00000000deadbeef
>     x15: ffffffffffffffff x14: ffff800011f198c8
>     x13: 0000000000000000 x12: 0000000000000001
>     x11: 0000000000000000 x10: 0000000000000990
>     x9 : ffff80001286b870 x8 : ffff0008eb99c0f0
>     x7 : ffff0008eb99b880 x6 : ffff0008eb99b7c0
>     x5 : 00000000000001df x4 : 0000000000001adb
>     x3 : ffff8008de089000 x2 : a4c383a3cc862400
>     x1 : 0000000000000000 x0 : 0000000000000001
>     Call trace:
>      _regulator_put.part.27+0x34/0x158
>      regulator_put+0x34/0x48
>      ahci_platform_put_resources+0x64/0xd0
>      release_nodes+0x1b0/0x220
>      devres_release_all+0x34/0x50
>      really_probe+0x1b8/0x308
>      driver_probe_device+0x54/0xe8
>      __device_attach_driver+0x80/0xb8
>      bus_for_each_drv+0x78/0xc8
>      __device_attach+0xd4/0x130
>      device_initial_probe+0x10/0x18
>      bus_probe_device+0x90/0x98
>      deferred_probe_work_func+0x64/0x98
>      process_one_work+0x1e0/0x358
>      worker_thread+0x208/0x488
>      kthread+0x118/0x120
>      ret_from_fork+0x10/0x18
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/ata/ahci_imx.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/ata/ahci_imx.c b/drivers/ata/ahci_imx.c index
> bfc617cc8ac5..1d6a5ef78259 100644
> --- a/drivers/ata/ahci_imx.c
> +++ b/drivers/ata/ahci_imx.c
> @@ -692,6 +692,8 @@ static int imx_sata_enable(struct ahci_host_priv
> *hpriv)
>  		}
>  	} else if (imxpriv->type == AHCI_IMX8QM) {
>  		ret = imx8_sata_enable(hpriv);
> +		if (ret)
> +			goto disable_clk;
>  	}
> 
>  	usleep_range(1000, 2000);
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
