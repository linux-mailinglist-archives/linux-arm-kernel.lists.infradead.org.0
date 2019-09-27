Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A29CBFD29
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 04:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBY02CzjYM44CETrJOYOh2+Z0NnzQ2saAgs1Y4nsRLs=; b=ZuzeJGhJyVLUwY
	hKSmj2rtfo29tF8uCVZkmx1gQIvcDYKLI6KQi1Gn0Nm/G8PBg8mRinjtbDORE3hlZoqNSW4P5bZEI
	hfr3WsuGbZEf3vnrdrxUVxbJswKDHKUc8laWe5InQSXCx7L0JXGZspRg0+8vn5thhGxiKzFr0TgxT
	aQ20tUjCc3LipCvbVYssRsaMgLwMW1sZxrX+CIzPnUCXxbKKSjRvjtHVYkFweli7tKC3DPEbYMv0Z
	TirvZnxgqPCNpeKgEi5DnmlYkLb82MzZjH2O8MLO5LLufhp8UgU7Pnbq+zRS4oYeSciwyBAiqicQb
	up+oFT0roL7O+50lkfow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDfvZ-0003RA-RF; Fri, 27 Sep 2019 02:24:13 +0000
Received: from mail-eopbgr130088.outbound.protection.outlook.com
 ([40.107.13.88] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDfv8-0003J4-Bq
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 02:23:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hMqRyMlvVwRmhMJCnv/hohaPFBqQMoeKMpudn4RpfxJ5Qz1VAVMPKsw0oOFqMFSbHMC+86ni6TV+1qk4BXHFapKliVZx8iTXcSR9SwFi23zzhI+Vb8CUXHIDYqxpzOtjWyRUfI3IAnkNfcY1Q07xlZ6Je7FPUpTPpDSggYAqs5Gw/4YtCRj2Pi+UQ4/oRJ/G6huN0xh0G+/3EsQBl/dbwwTos0WZlZuALfMVqr1bLmn/38mx/bfcEFL+/qlULQXrC49JCL8vJUhaGcDWDGgVKgoK72fnFhA+NCDLmXEBLh/r9I0JXYYZcAKLHsFbQaKRSQR9h7/8038bisTJ64Yeng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xccQNTD57IXyhSef/plRJ/zrUfYyV5oWPiMYwMx27dg=;
 b=TBLDN6tsANlE8BM5AFx3HaUXtDK0TUFwDXPSf88jumPz/RjmDDDToZZ39HzLmebLLWQP1sLV0lqCBV1ISuZ2WA1PQQXVykJr+DF0HgxY7wDklrfKm/u3z6Grtc3csyaYlVQ+Ht9iGYVq0NLfFMfvXjz0msS+RUg0amM+jLWpv5e++eApXltKk1v5xfMpXpUbGzp5+lLaMQ0IBUjlw2mttT9CPps/DIuwc/EbEY4gtFyTaskk/aOIfO7l0DKzCm5rCB0/r7LfKG+40m7GspWq5bvwPsDlAC2b5eU8Ly4tAHiLfGqcit6cjMynnko8ojYZm3Z9NLLg6cppXlq10z/S2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xccQNTD57IXyhSef/plRJ/zrUfYyV5oWPiMYwMx27dg=;
 b=HpFZ6ppOZ7hsG4DCOuoJN4eMByJrDlgiW74J9hDyN8Y5yvqnGwtdrBtDBZbk1i68WecPhWGrtrLgH9U13TibANubGcgODQvq5OIOsXvw+dT1aAsx3iZg/nOeDDl99zc5vURQSkSEukkNtiAQssnRF8K8iJe4lF0fUBYBIWp3TL4=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB5338.eurprd04.prod.outlook.com (52.135.128.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Fri, 27 Sep 2019 02:23:44 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa%5]) with mapi id 15.20.2284.023; Fri, 27 Sep 2019
 02:23:44 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: [PATCH V2 2/2] nvmem: imx: scu: support write
Thread-Topic: [PATCH V2 2/2] nvmem: imx: scu: support write
Thread-Index: AQHVdNqWV3bDbWXLM0C9Hq/ux+/f2Q==
Date: Fri, 27 Sep 2019 02:23:44 +0000
Message-ID: <1569550913-10176-2-git-send-email-peng.fan@nxp.com>
References: <1569550913-10176-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1569550913-10176-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0021.apcprd04.prod.outlook.com
 (2603:1096:202:2::31) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed95b29c-9f14-4c8d-49dc-08d742f1b888
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB5338; 
x-ms-traffictypediagnostic: DB7PR04MB5338:|DB7PR04MB5338:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB533899A5D77BC63B5D4B85A788810@DB7PR04MB5338.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(136003)(396003)(346002)(199004)(189003)(54906003)(6436002)(110136005)(6486002)(81166006)(81156014)(50226002)(8676002)(2501003)(64756008)(8936002)(2201001)(66446008)(186003)(66556008)(66476007)(6512007)(6506007)(52116002)(478600001)(386003)(99286004)(4326008)(6116002)(86362001)(26005)(102836004)(256004)(14444005)(446003)(44832011)(7736002)(5660300002)(305945005)(36756003)(66946007)(3846002)(316002)(2616005)(76176011)(14454004)(486006)(2906002)(11346002)(66066001)(476003)(71190400001)(71200400001)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5338;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gCujlQzd4+7VoFPuc2ZiuLhrZJW+46k1YscePlrm0WAQmA2jzX/3GPdyq1Ek9LkXnqz6hmynUT5XQvicNl1dOV2YHJrjKJ3D35hNh/CH20AqEM/aduVSbVKkRKFGKM071FBS24le1PaUG2Lr0LWxdUdlWpyjWue011AVzzhjFuzjAGap3/OIvwxgNs0U9V9CKKFhlZx+64wKgbvVNXI/JMF+qDOGqvda1CZ8xYRzCtdDPpAvRDHTwWRFvm9YzRqwN/HtDXz9Djw1Usnm9QW/dzpyr8wB4vZAi/SIID//+8EHbEtuXgx/Fo6RWkQOIuk9FMTErp7etVVOHvuP/atX6Y5bwnu+ERAYbDuGuMmH4uW0tvJt0fG+Q0l0i/zxQUnSnWVVa5lT96gHmSS2yXNauHQa7kxLUC+MYMTjCsb+EWE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed95b29c-9f14-4c8d-49dc-08d742f1b888
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 02:23:44.8254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ozf6TbbjPxs41FdgzUPe9CteAxzfDPpEHZC5TpBOrZYsR57nUw1c/2npXz6Pxo4W71emE10/0OOZMnQisf1Row==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_192346_403687_A4132EC8 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.88 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The fuse programming from non-secure world is blocked, so we could
only use Arm Trusted Firmware SIP call to let ATF program fuse.

Because there is ECC region that could only be programmed once,
so add a heler in_ecc to check the ecc region.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 Rebased on Latest linux-next

 drivers/nvmem/imx-ocotp-scu.c | 73 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 72 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
index 030e27ba4dfb..03f1ab23ad51 100644
--- a/drivers/nvmem/imx-ocotp-scu.c
+++ b/drivers/nvmem/imx-ocotp-scu.c
@@ -7,6 +7,7 @@
  * Peng Fan <peng.fan@nxp.com>
  */
 
+#include <linux/arm-smccc.h>
 #include <linux/firmware/imx/sci.h>
 #include <linux/module.h>
 #include <linux/nvmem-provider.h>
@@ -14,6 +15,9 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 
+#define IMX_SIP_OTP			0xC200000A
+#define IMX_SIP_OTP_WRITE		0x2
+
 enum ocotp_devtype {
 	IMX8QXP,
 	IMX8QM,
@@ -46,6 +50,8 @@ struct imx_sc_msg_misc_fuse_read {
 	u32 word;
 } __packed;
 
+static DEFINE_MUTEX(scu_ocotp_mutex);
+
 static struct ocotp_devtype_data imx8qxp_data = {
 	.devtype = IMX8QXP,
 	.nregs = 800,
@@ -84,6 +90,23 @@ static bool in_hole(void *context, u32 index)
 	return false;
 }
 
+static bool in_ecc(void *context, u32 index)
+{
+	struct ocotp_priv *priv = context;
+	const struct ocotp_devtype_data *data = priv->data;
+	int i;
+
+	for (i = 0; i < data->num_region; i++) {
+		if (data->region[i].flag & ECC_REGION) {
+			if ((index >= data->region[i].start) &&
+			    (index <= data->region[i].end))
+				return true;
+		}
+	}
+
+	return false;
+}
+
 static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
 				     u32 *val)
 {
@@ -127,6 +150,8 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
 	if (!p)
 		return -ENOMEM;
 
+	mutex_lock(&scu_ocotp_mutex);
+
 	buf = p;
 
 	for (i = index; i < (index + count); i++) {
@@ -137,6 +162,7 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
 
 		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i, buf);
 		if (ret) {
+			mutex_unlock(&scu_ocotp_mutex);
 			kfree(p);
 			return ret;
 		}
@@ -145,18 +171,63 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
 
 	memcpy(val, (u8 *)p + offset % 4, bytes);
 
+	mutex_unlock(&scu_ocotp_mutex);
+
 	kfree(p);
 
 	return 0;
 }
 
+static int imx_scu_ocotp_write(void *context, unsigned int offset,
+			       void *val, size_t bytes)
+{
+	struct ocotp_priv *priv = context;
+	struct arm_smccc_res res;
+	u32 *buf = val;
+	u32 tmp;
+	u32 index;
+	int ret;
+
+	/* allow only writing one complete OTP word at a time */
+	if ((bytes != 4) || (offset % 4))
+		return -EINVAL;
+
+	index = offset >> 2;
+
+	if (in_hole(context, index))
+		return -EINVAL;
+
+	if (in_ecc(context, index)) {
+		pr_warn("ECC region, only program once\n");
+		mutex_lock(&scu_ocotp_mutex);
+		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, index, &tmp);
+		mutex_unlock(&scu_ocotp_mutex);
+		if (ret)
+			return ret;
+		if (tmp) {
+			pr_warn("ECC region, already has value: %x\n", tmp);
+			return -EIO;
+		}
+	}
+
+	mutex_lock(&scu_ocotp_mutex);
+
+	arm_smccc_smc(IMX_SIP_OTP, IMX_SIP_OTP_WRITE, index, *buf,
+		      0, 0, 0, 0, &res);
+
+	mutex_unlock(&scu_ocotp_mutex);
+
+	return res.a0;
+}
+
 static struct nvmem_config imx_scu_ocotp_nvmem_config = {
 	.name = "imx-scu-ocotp",
-	.read_only = true,
+	.read_only = false,
 	.word_size = 4,
 	.stride = 1,
 	.owner = THIS_MODULE,
 	.reg_read = imx_scu_ocotp_read,
+	.reg_write = imx_scu_ocotp_write,
 };
 
 static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
