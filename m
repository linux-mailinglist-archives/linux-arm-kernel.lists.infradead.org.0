Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1698B4D5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 05:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o04114hflCMPpgA2/um7WvttdBsg34bWqxkkzc+QlO4=; b=hMhBpEmuexxD1e
	XwH3Pc+zvnxk9+2Nk0GyC+JMzx8NyeOjHNA7O+Fr0fi9C+X6LioP5O+OqJN91jHnNx0hKz/C7LCmL
	EVsIOIxdCORSLtcjGyZddjMx7WS0XBrNEXGQfswT87NUBuIcfq0EZxLxlMAgMy9fLxChJtWamOaot
	SkhkKEz+Wk7ud01sGRjPpqpvi1xG6hFYiIJX+xyFgk7MUmIHIjzKUg6XEJwh10H0WFVEwA7ccOLDr
	b0cTu34l6JRtWqmL7+1WtXY8WGFF+KYSu3llojbUaCEj1S9rKt2cPXmLqPk5bbfrWvrorfGtmgbYB
	t0Qsr08R8mzvsWNUDhsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKa69-0007cO-Ok; Sun, 28 Apr 2019 03:03:25 +0000
Received: from mail-eopbgr80055.outbound.protection.outlook.com ([40.107.8.55]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKa5z-0007bz-Rv
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 03:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Dh0oyIDNLwuIif9QgsYfiYn6zvbWbnH+f156Rv6Gvk=;
 b=APYJoQYRCNZgKE5VzseUy+fsW4JmoMDQhGgc2Hc3DCHF0TnIk9ZburZQkIZGMSw+7JqhxS/+Et0P2jJgPqFdED97AK3+5PK9HPl+GtsPJmScFOcnTGNBZMAKnwWZ/nXzwHBJUwIPbLQKmQxUt2zwXGNAI1jeT87NcMN4hnFTpg0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3882.eurprd04.prod.outlook.com (52.134.72.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Sun, 28 Apr 2019 03:03:12 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.015; Sun, 28 Apr 2019
 03:03:12 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V2] firmware: imx: SCU irq should ONLY be enabled after SCU
 IPC is ready
Thread-Topic: [PATCH V2] firmware: imx: SCU irq should ONLY be enabled after
 SCU IPC is ready
Thread-Index: AQHU/W7qy26RYcrGkE20NBp+jw1zUg==
Date: Sun, 28 Apr 2019 03:03:12 +0000
Message-ID: <1556420305-14680-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2P15301CA0013.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::23) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6881be59-8708-425c-d502-08d6cb860ca7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3882; 
x-ms-traffictypediagnostic: DB3PR0402MB3882:
x-microsoft-antispam-prvs: <DB3PR0402MB38823BF7D16AF7DF85D4B3B8F5380@DB3PR0402MB3882.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:619;
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(39860400002)(136003)(346002)(376002)(199004)(189003)(2906002)(66446008)(64756008)(186003)(71190400001)(71200400001)(26005)(52116002)(50226002)(102836004)(6506007)(386003)(8936002)(486006)(81156014)(476003)(73956011)(66946007)(66556008)(2501003)(66476007)(2616005)(3846002)(6116002)(36756003)(7736002)(66066001)(6436002)(305945005)(99286004)(6486002)(5660300002)(2201001)(316002)(53936002)(478600001)(110136005)(68736007)(4326008)(14454004)(5024004)(97736004)(86362001)(81166006)(8676002)(6512007)(256004)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3882;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: huKK1lU0rmkK6Ljzje8goZkZPo+iALUFj1wZIYCa1aA3Aq6LqOlS9jeLAweN3cyOFta0K18G1+wxchSgCFGLXPr6XuPpbr+JenZIY3lW6qpyLBDY6QTpfwvZht5mo811XH7Fvnb9DJJQCeJGzRBe5oYfwpE6UpCG7kHIXQhUkzcMUMwkro+h+4BY9j5klJCdUJxqvdEUlWimTG3ORRSkzhhkUyjxzbHs5G0csKubHJvwCMjAoSeASudVfPYRkxRAWETnpiP1QBM5BOLSUZqRxDM49cv9sQ26TfU/dBPt6gb5RTCkP3XSkVr5372t2viKAAO3RDvLaKeG43xHaV6XyN6MWMNx1l5JuxxowOVBsgnqgamKhT/P6Z5cE4R12oVDCrW2SXRw8Hw4VcS8HZ8wlTTq2fyV/1r7kpeIAvbf2f4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6881be59-8708-425c-d502-08d6cb860ca7
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 03:03:12.4120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_200315_909093_AF383D57 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
No code change, just remove the watchdog related words to improve the commit message.
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
