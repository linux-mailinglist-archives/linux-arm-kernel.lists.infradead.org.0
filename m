Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 588801AB3F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 10:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iR13OXG74W/ufEHcMTwtreuqIwL/XS2HCRv4J+QVy0I=; b=sJBjUqCo/EeKEP
	i47YzoTZZF5ZWd+XxqNX3M0qKYgHUgkgTXysVbd7NagcD71/1IcSiUB42RhCAKf3IpnrqfHfc9QpM
	6j408iV+ZConvgBv0N1eB0zw5EreGJABY8G+6hHgIuNJmMx1Qo5F2kTYifFPU2ZJxRiqwtR6+GeeQ
	Xlu97gIiHpleUOOdWLufFW6mapZvr2jZZL5YIdIndJj+ySXQesxND92hhXxC8jiOoEGcGTKVMgncG
	7Fh6G9M3D+lJvE1I0Xkb2CNZz7ffSNmWrbI+AMrjp/gFVytXsHieEDodvsLJeq3ujMRHlIpBIYUib
	BHCR3R4C80fvfYL5GTvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPk0C-0004sd-K9; Sun, 12 May 2019 08:38:36 +0000
Received: from mail-eopbgr70042.outbound.protection.outlook.com ([40.107.7.42]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPk04-0004rz-VW
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 08:38:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nZToeyy/VbKu85ClC/RMpd8GpTvydWxW9CqYxhqmVOA=;
 b=iakjAbjLKm6xsMbXdIVfGVtBpS8AsVus0NDtJBEDrD4r8SXSgb5N4OSckpr62YMKh3JT1kCWNVZGdYufXloOs2Hd83hbXI8031T+ESBeosYtzMjj+xaJz+TUhBx78K4x8gEsw5mD3vUtcaeybUCf91Z+f6IzuhYBzQy4tqVb8TU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3899.eurprd04.prod.outlook.com (52.134.71.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Sun, 12 May 2019 08:38:23 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 08:38:23 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RESEND] firmware: imx: SCU irq should ONLY be enabled after
 SCU IPC is ready
Thread-Topic: [PATCH RESEND] firmware: imx: SCU irq should ONLY be enabled
 after SCU IPC is ready
Thread-Index: AQHVCJ4Ptwa9h9gYOEacqXJaiRkUag==
Date: Sun, 12 May 2019 08:38:22 +0000
Message-ID: <1557650002-10565-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0024.apcprd06.prod.outlook.com
 (2603:1096:202:2e::36) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf69ddd5-5667-4ed3-af71-08d6d6b53173
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3899; 
x-ms-traffictypediagnostic: DB3PR0402MB3899:
x-microsoft-antispam-prvs: <DB3PR0402MB3899831FA7034745F64F6C67F50E0@DB3PR0402MB3899.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(396003)(136003)(366004)(346002)(199004)(189003)(25786009)(66476007)(66556008)(486006)(66446008)(8676002)(64756008)(2616005)(476003)(73956011)(4326008)(14454004)(8936002)(50226002)(66946007)(6512007)(53936002)(2201001)(26005)(102836004)(71190400001)(86362001)(71200400001)(7736002)(6506007)(478600001)(386003)(81166006)(81156014)(305945005)(2906002)(316002)(6116002)(110136005)(3846002)(66066001)(5024004)(256004)(5660300002)(68736007)(36756003)(186003)(2501003)(99286004)(6436002)(52116002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3899;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3/50CWsn+iDxOHpl7J4VNNfvgd0PFRmHLuuEcZcSTKT8zRyHW1nunXH+t8fdn1jXFlFuvkqwTb8PmGx+8IeOPCouVFZO23DHj1ye7Do7Bicp/2CofyLDmnGIe0LzeXFvjdT/uJQH5XfUcX39jJvCKVWgWDJxdSBLqglnD6pzNjNOXYfe49jWZJS88FluK/S2cd+kAwmdJi0+2K+n9dGufBqYqWFuMR1iNBMHYZw+13IxN7ZLxOa/tmRkXsKnJ2xbGiV38dXWAvesaIsmDw5ASVzo1s1GIxGK0nDVo7dsimz7dlQTUmbFCo2Vj559FwHoXB7BjUT4mvS6SyWVTNy+KQbBdEawKk4P452Fe7ufy5XcFgwQJXSNCfiXu9PMQgqDGGYXp/TQsXoAMydUBDjr0h3Qke/TqkBp5dpqZllLoec=
Content-ID: <43778D673E641949BC90A47382C53AA7@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf69ddd5-5667-4ed3-af71-08d6d6b53173
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 08:38:22.9855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_013829_088872_3C1C4568 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

The imx_scu_irq_group_enable() is normally called during module driver
probe phase to enable SCU group irq, if SCU IPC is NOT ready, below
dump will show out:

[    0.933001] Hardware name: Freescale i.MX8QXP MEK (DT)
[    0.938129] pstate: 60000005 (nZCv daif -PAN -UAO)
[    0.942907] pc : imx_scu_call_rpc+0x114/0x158
[    0.947251] lr : imx_scu_irq_group_enable+0x74/0xc4
[    0.952113] sp : ffff00001005bae0
[    0.955415] x29: ffff00001005bae0 x28: ffff0000111bb0a0
[    0.960712] x27: ffff00001140b000 x26: ffff00001111068c
[    0.966011] x25: ffff0000111bb100 x24: 0000000000000000
[    0.971311] x23: ffff0000113d9cd8 x22: 0000000000000001
[    0.976610] x21: 0000000000000001 x20: ffff80083b51a410
[    0.981909] x19: ffff000011259000 x18: 0000000000000480
[    0.987209] x17: 000000000023ffb8 x16: 0000000000000010
[    0.992508] x15: 000000000000023f x14: ffffffffffffffff
[    0.997807] x13: 0000000000000018 x12: 0000000000000030
[    1.003107] x11: 0000000000000003 x10: 0101010101010101
[    1.008406] x9 : ffffffffffffffff x8 : 7f7f7f7f7f7f7f7f
[    1.013706] x7 : fefefeff646c606d x6 : 0000000000000000
[    1.019005] x5 : ffff0000112596c8 x4 : 0000000000000008
[    1.024304] x3 : 0000000000000003 x2 : 0000000000000001
[    1.029604] x1 : ffff00001005bb58 x0 : 0000000000000000
[    1.034905] Call trace:
[    1.037341]  imx_scu_call_rpc+0x114/0x158
[    1.041334]  imx_scu_irq_group_enable+0x74/0xc4
[    1.045856]  imx_sc_wdt_probe+0x24/0x150
[    1.049766]  platform_drv_probe+0x4c/0xb0
[    1.053762]  really_probe+0x1f8/0x2c8
[    1.057407]  driver_probe_device+0x58/0xfc
[    1.061490]  device_driver_attach+0x68/0x70
[    1.065660]  __driver_attach+0x94/0xdc
[    1.069397]  bus_for_each_dev+0x64/0xc0
[    1.073220]  driver_attach+0x20/0x28
[    1.076782]  bus_add_driver+0x148/0x1fc
[    1.080601]  driver_register+0x68/0x120
[    1.084424]  __platform_driver_register+0x4c/0x54
[    1.089120]  imx_sc_wdt_driver_init+0x18/0x20
[    1.093463]  do_one_initcall+0x58/0x1b8
[    1.097287]  kernel_init_freeable+0x1cc/0x288
[    1.101630]  kernel_init+0x10/0x100
[    1.105101]  ret_from_fork+0x10/0x18
[    1.108669] ---[ end trace 9e03302114457de9 ]---
[    1.113296] enable irq failed, group 1, mask 1, ret -22

To avoid such scenario, return -EPROBE_DEFER in imx_scu_irq_group_enable()
API if SCU IPC is NOT ready, then module driver which calls this API
in probe phase will defer probe after SCU IPC ready.

Fixes: 851826c7566e ("firmware: imx: enable imx scu general irq function")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No code change, just resend the patch with correct encoding.
---
 drivers/firmware/imx/imx-scu-irq.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/imx/imx-scu-irq.c b/drivers/firmware/imx/imx-scu-irq.c
index 043833a..687121f 100644
--- a/drivers/firmware/imx/imx-scu-irq.c
+++ b/drivers/firmware/imx/imx-scu-irq.c
@@ -100,6 +100,9 @@ int imx_scu_irq_group_enable(u8 group, u32 mask, u8 enable)
 	struct imx_sc_rpc_msg *hdr = &msg.hdr;
 	int ret;
 
+	if (!imx_sc_irq_ipc_handle)
+		return -EPROBE_DEFER;
+
 	hdr->ver = IMX_SC_RPC_VERSION;
 	hdr->svc = IMX_SC_RPC_SVC_IRQ;
 	hdr->func = IMX_SC_IRQ_FUNC_ENABLE;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
