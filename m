Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42B881119
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 06:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bME5fwgBoTA6H7HAHLZ9WB8uqwLEsW7XlAZPqSFyIBM=; b=KWZ0//RsGRb0AQ
	n8SpyHldhGp6Euqvd6FufIAZn5M6ntkeA3j9C+DSbBMyJhhtN9tqdjSSdJClKJElP0OlU1TOrs8Ip
	6QPZy6TDIV9vpmteDhusxDHmFKgP0wdFrrFG5tvnTUPVybi+1CJ5782fooFdxigq1yOan47psvvJ7
	mf7xZGGVy727zrnIxSz/aadUs3/dnlUxZVqar/DnAndNCdc8gxKFs3RXkQ0vw2YmMIqC8FaAFUBI6
	RmHD6E/nO2qA1bSnVONtDNt4ynU/b2k64+VAUo5xbLhd18yXqcvgkYcGAtxAou/qreaD0HBHS4hCa
	u+5+lCqucWo9eCch0ggA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huUlU-0000tG-Ab; Mon, 05 Aug 2019 04:38:32 +0000
Received: from mail-eopbgr10055.outbound.protection.outlook.com ([40.107.1.55]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huUl6-0000s3-GW
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 04:38:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fd23NVKx7cDbYRak1zbr7KEEh/3maliFQuTyjQLmZib4HlmEVVsWKFztjfspvSqUIFaQMC0ZtK02Ph+ka/lzxugEh7rlOozTuhAEdSc1sMi9UDoLdNEaWWGMzVK1CuvkK0GIbaCsM2d2KNFlwDVAqJIdwxbA+9CVfw73XmJVwIQBwU2CeU33eCAeS/8QjoMbzsraTbbUe2MK8d5eC9aBHc7CFUbNOrHZY+n4KfPd/XC4E+qFYz3h+rOUvoOLNrGNYj3LoJlcb6xqpmWjGo50NGig1yPbIw3XILLS++MxheEzpB0xs+Ug/eQM8vK/Vp6oT+ZlpnEAW9rH/Ri9bei8Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VGm9qwKxbWy/x8EK8OcH3SFTISCiKNwgT0VpluwbUOU=;
 b=TU58vhZzealtubDbAdz0TYLbkjIWyzfBu30VTfB+0hIS6RbZbjUyaR8HBP4hWVnlOeTWPRNprhbJWVI9NPFRvzcrGsgyCDwnVMf/+pZQh8iVB0kZvp1qNKVuLQmJS9fz7kVVVwBlQ2X12PrNagYmna2P3Z/6HPlZW7McwNNxN7qFgbF6tj/XHUacQiuBmAkJDx2gk6QGzERz68IpUGqUtP8SZvx6tHDz/Bzk7FB16STOL6D7oWclDT3GGBNB/F26OcPZL5wlNdbYxVXk6aqxWmmqcwbEtGFnB7RVOmZmXSOZAYTzfDH8OzK5f3dHMy00FPixFecrHz9jws01qX9O6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VGm9qwKxbWy/x8EK8OcH3SFTISCiKNwgT0VpluwbUOU=;
 b=eGTrtY+VvanAfOZfPeUjBMC655eqhgUN0wygsMT3MWR+ji73S6L1fw8HeG9eR3wRcKR5LaGt4Zoa9YXAnG4SMMT0kY751ecU6La/vt4gATtiudgSeDwXCX8qOSsDgj+NUQ9UaCMJAgPxeSsT28wIvta3PUkAIxw709oNtX5AqR4=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4708.eurprd04.prod.outlook.com (20.177.41.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Mon, 5 Aug 2019 04:38:02 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::5553:29b6:d66c:6afe]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::5553:29b6:d66c:6afe%5]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 04:38:01 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Richard Zhu <hongxing.zhu@nxp.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "o.rempel@pengutronix.de"
 <o.rempel@pengutronix.de>, Daniel Baluta <daniel.baluta@nxp.com>
Subject: RE: [PATCH v5 1/4] mailbox: imx: Fix Tx doorbell shutdown path
Thread-Topic: [PATCH v5 1/4] mailbox: imx: Fix Tx doorbell shutdown path
Thread-Index: AQHVSzvezKWv3EJXXkmBW/lAhGcXzabr9jwg
Date: Mon, 5 Aug 2019 04:38:01 +0000
Message-ID: <AM0PR04MB42110CA7AD41C91EF763808B80DA0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1564973491-18286-1-git-send-email-hongxing.zhu@nxp.com>
 <1564973491-18286-2-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1564973491-18286-2-git-send-email-hongxing.zhu@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 559cfe55-22bb-4beb-6e2d-08d7195eb32d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4708; 
x-ms-traffictypediagnostic: AM0PR04MB4708:
x-microsoft-antispam-prvs: <AM0PR04MB4708CCA41973650DCE9B7E7B80DA0@AM0PR04MB4708.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(396003)(376002)(136003)(346002)(39860400002)(366004)(199004)(189003)(51234002)(6436002)(5660300002)(9686003)(2501003)(81166006)(44832011)(26005)(486006)(14454004)(11346002)(186003)(6506007)(52536014)(66446008)(8676002)(110136005)(66946007)(53936002)(6636002)(55016002)(305945005)(4326008)(71190400001)(45080400002)(66476007)(76116006)(64756008)(8936002)(54906003)(66556008)(99286004)(86362001)(256004)(66066001)(229853002)(25786009)(68736007)(71200400001)(6246003)(2906002)(102836004)(316002)(446003)(7696005)(81156014)(74316002)(2201001)(14444005)(7736002)(33656002)(76176011)(478600001)(6116002)(3846002)(476003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4708;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: APi9qBQaA/cRK14SD9xqHhaFOzrcGpI1+wEFklSORn9YILkkD5F4yM0q1XMTv3L/HPmfaB9L59Z5NWRvgFAe/SHw7Jcby+FCMTSsrZYP3W9xL1EUSea/gktVz8aSyyDWDsvTboZ26In1XvJPcb6KKUcCDzf76M7q1ffvQ1MLLQgDeFLntHvT2GQXkSmuCvhZxh29u7NvJQfGgl5ZlEoHUwwcADGpFYGeHcU/0jnR5JLslb+Sb700w16l2ttO3L6oCRQ+RG2+bDNbiVjZqCpuNWrz6JyRXNNzKF14PUj2CKgnOLZmWFoM7o2YMKLI/aD4gmBSjmRx6OJT5W5yI3kaBsWnHKsbQLpMToJ8v74Z6fq67vhsJnqgsplMt+RRpHSTAXY2oQyriai1OTM1qziWLiwnzod575SpmPQSkLWDCdE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 559cfe55-22bb-4beb-6e2d-08d7195eb32d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 04:38:01.8604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4708
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_213808_636719_C4C16DC4 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.55 listed in list.dnswl.org]
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Richard Zhu <hongxing.zhu@nxp.com>
> Sent: Monday, August 5, 2019 10:51 AM
> 
> Tx doorbell is handled by txdb_tasklet and doesn't have an associated IRQ.
> 
> Anyhow, imx_mu_shutdown ignores this and tries to free an IRQ that wasn't
> requested for Tx DB resulting in the following warning:
> 
> [    1.967644] Trying to free already-free IRQ 26
> [    1.972108] WARNING: CPU: 2 PID: 157 at kernel/irq/manage.c:1708
> __free_irq+0xc0/0x358
> [    1.980024] Modules linked in:
> [    1.983088] CPU: 2 PID: 157 Comm: kworker/2:1 Tainted: G
> [    1.993524] Hardware name: Freescale i.MX8QXP MEK (DT)
> [    1.998668] Workqueue: events deferred_probe_work_func
> [    2.003812] pstate: 60000085 (nZCv daIf -PAN -UAO)
> [    2.008607] pc : __free_irq+0xc0/0x358
> [    2.012364] lr : __free_irq+0xc0/0x358
> [    2.016111] sp : ffff00001179b7e0
> [    2.019422] x29: ffff00001179b7e0 x28: 0000000000000018
> [    2.024736] x27: ffff000011233000 x26: 0000000000000004
> [    2.030053] x25: 000000000000001a x24: ffff80083bec74d4
> [    2.035369] x23: 0000000000000000 x22: ffff80083bec7588
> [    2.040686] x21: ffff80083b1fe8d8 x20: ffff80083bec7400
> [    2.046003] x19: 0000000000000000 x18: ffffffffffffffff
> [    2.051320] x17: 0000000000000000 x16: 0000000000000000
> [    2.056637] x15: ffff0000111296c8 x14: ffff00009179b517
> [    2.061953] x13: ffff00001179b525 x12: ffff000011142000
> [    2.067270] x11: ffff000011129f20 x10: ffff0000105da970
> [    2.072587] x9 : 00000000ffffffd0 x8 : 0000000000000194
> [    2.077903] x7 : 612065657266206f x6 : ffff0000111e7b09
> [    2.083220] x5 : 0000000000000003 x4 : 0000000000000000
> [    2.088537] x3 : 0000000000000000 x2 : 00000000ffffffff
> [    2.093854] x1 : 28b70f0a2b60a500 x0 : 0000000000000000
> [    2.099173] Call trace:
> [    2.101618]  __free_irq+0xc0/0x358
> [    2.105021]  free_irq+0x38/0x98
> [    2.108170]  imx_mu_shutdown+0x90/0xb0
> [    2.111921]  mbox_free_channel.part.2+0x24/0xb8
> [    2.116453]  mbox_free_channel+0x18/0x28
> 
> This bug is present from the beginning of times.
> 
> Cc: Oleksij Rempel <o.rempel@pengutronix.de>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>

I think you should keep the original author and Fixes tag.
Otherwise:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
