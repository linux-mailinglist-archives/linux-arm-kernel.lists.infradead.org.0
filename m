Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB54C97039
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 05:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nt2YomrQiBSgx5W69Y3nIzKay1HqMA0I9XdU3o9eCgo=; b=l2YiEHjmStNgAg
	Vz+eIWed9YNEiIr8EBiZJuKpyvnV4+YqcYoGgTL+hGB/gzXheJnrKf73T8/NhZbrDfkjx9yZi1ptr
	/hObyHD8H61dXFBWhI+I7vkxepOzfMQeq6xbqTSGOIWPipF/+oKxjAprJMGkuYrX0dVsGVQsXpEtO
	38mha3Sf29sS8AcLrUhhx6zb7leww0lzyDFRW3WH3ODHoRad88je/0fdFDlP0T2yNElcbbK9T/08/
	YaCP9kTC3UWlVbAKli5V7yMLqQuZhP6+WVJwOVAT2fpkrceCj+nZc0aBdZftPIKxtuAIIyHQzkode
	7BjSeKDH4NoX/zGwq2IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0HCy-0005Fq-Ry; Wed, 21 Aug 2019 03:22:49 +0000
Received: from mail-eopbgr40043.outbound.protection.outlook.com ([40.107.4.43]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0HAv-0004iC-O4
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 03:20:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IaEtFRSpYrJdGHlAehSWVhtvPtl0NkuS1t07Ol/+yM+xr+Nf+A21zYMN7l8YGEEbfmYkrv6dbtnM/y6slA7yPIhDjK04SfUXrxwBfCjBu7zQVuIlPHnL47UtJm3/0Mf/UmrsZMaUV2JU4HWTwlEDiT4kplc56z/suSKwCngrw3OhRvNxc1eFfbdChRVDkgxHIHyxtTJpiTwitleJRmmKqAjFeDnVmpx6yLEJ9Two4ZEfwQxZdCYu5NAgZf73bOb8dJpbum/iO+NYeUMx9CuTzF8oODBUXZIfk519Nxv9udnD8yCMWTC0Y+MFAmnZi1yE92kcd//uYMaFJembTN4dJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kmn6MUHjKOeZEAvYJUjw326oX9mQ+bzeUcfEbsy/rdY=;
 b=gRIc3J75ZN3klAEGFi32YnGZtPfQvRR+iOExQkTtxwQ/dLBKPgCdO0o8vCeec0fJroxoJkhNTom4T7FIKxhvCXyBjsBCrg4BTSCYBxcRC94as0Pdgo/GQq6virN5/CiwdveDEJNdaIKo+SUSgJjnlPjiGqEHMXJgNE0Nad9kCdOBK3kxeVaDQC16d9PT5ZJUfTo0qWmyqcpDjtfYYBGmgSGNruHYhp1EvxRg+holPwxaP7rl8ko25s3iUiVq1Ze68NoWLKXONv4RcPht2l8w2P+clGKsQzL74A3Z2PXLyAwiU39lOFsGOUygc+vdAbqey9eU5cQ46hL2lXx6avr/xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kmn6MUHjKOeZEAvYJUjw326oX9mQ+bzeUcfEbsy/rdY=;
 b=MttwzOO++MRgWrfxwQ7di+MGl9hrCiGKvxhBlz4jMFPMKv8FgLhYGp17hd5hLNd/j1l39qVnd+cwwVdzffQLbCCk1V1E7SBLzhJFY+oMA+GzHxBLL/j12oQz6BJcNMLcbTvx7s1X4JNEMXHTB48Ek/AwsKrMgJ6yS8oJpCVpEdI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4465.eurprd04.prod.outlook.com (52.135.148.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 03:20:35 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 03:20:35 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: [PATCH 2/2] nvmem: imx: scu: support write
Thread-Topic: [PATCH 2/2] nvmem: imx: scu: support write
Thread-Index: AQHVV89l2gZHrF0tR0yZfYtuVeLxmg==
Date: Wed, 21 Aug 2019 03:20:35 +0000
Message-ID: <1566356496-30493-2-git-send-email-peng.fan@nxp.com>
References: <1566356496-30493-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1566356496-30493-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0054.apcprd04.prod.outlook.com
 (2603:1096:202:14::22) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec9c44d8-831c-457e-f495-08d725e6881d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4465; 
x-ms-traffictypediagnostic: AM0PR04MB4465:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB44650224D412C3F66F5DA16B88AA0@AM0PR04MB4465.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(396003)(376002)(39860400002)(189003)(199004)(52116002)(66446008)(26005)(71200400001)(5660300002)(71190400001)(110136005)(2616005)(446003)(66946007)(66476007)(54906003)(8936002)(64756008)(14454004)(256004)(14444005)(11346002)(386003)(102836004)(66556008)(7736002)(486006)(305945005)(2906002)(6506007)(25786009)(44832011)(316002)(186003)(86362001)(4326008)(476003)(66066001)(6436002)(6512007)(50226002)(36756003)(478600001)(3846002)(6116002)(99286004)(8676002)(2501003)(81156014)(81166006)(53936002)(2201001)(6486002)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4465;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OeY5I3ydmUWL3pT93clK7wBJXO62x5aEKYLxHWx8fXYVdxOwDApIfd5wjP192FZYDGAHTjqfWk7BIxJukyFYfBAGIMe91WrjxUyeTC1HAoK9hMDiV8Wn4Mrlx/GYC6QnD87a0Eg7PJHB9gBjodwbjysIvUoQbwlWOAFD3pUs+cSZuKGrAI/j60GwoTOqFy9rfHeqeQB9nuDmuzYmvGBr49YgRsPZaQEoiNPR6Fy7Rswces1wqGqrWE2jHvEQm/SM/rjB5u53TKhKgo82ax4KnPbGh3xpDWcFLVMlKyolDjBVwJGb/c5kLgVL/BKpidp0ooeNY98GBfkePnWrU7p21aEdKtKTH0AmNLdjxS7VfSKszTEcsRN9SRlEAkUFMWSTiA/bTquyB6IzFYMqNb4/AiT2aj0fkNC4bTbDRF4r9gk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec9c44d8-831c-457e-f495-08d725e6881d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 03:20:35.4503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fOc7+ODw/hV5bmUXjU2H+N+q+PH9xQ09asuHcmZPZNK5Xah6zGAsF+2N67hef9Zasu73TkamSB32LzLIY3SEMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4465
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_202041_935561_FA52AD31 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.43 listed in list.dnswl.org]
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

The ATF patch will soon be posted to ATF community.

 drivers/nvmem/imx-ocotp-scu.c | 73 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 72 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
index 2f339d7432e6..0f064f2e74a8 100644
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
 };
@@ -45,6 +49,8 @@ struct imx_sc_msg_misc_fuse_read {
 	u32 word;
 } __packed;
 
+static DEFINE_MUTEX(scu_ocotp_mutex);
+
 static struct ocotp_devtype_data imx8qxp_data = {
 	.devtype = IMX8QXP,
 	.nregs = 800,
@@ -73,6 +79,23 @@ static bool in_hole(void *context, u32 index)
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
@@ -116,6 +139,8 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
 	if (!p)
 		return -ENOMEM;
 
+	mutex_lock(&scu_ocotp_mutex);
+
 	buf = p;
 
 	for (i = index; i < (index + count); i++) {
@@ -126,6 +151,7 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
 
 		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i, buf);
 		if (ret) {
+			mutex_unlock(&scu_ocotp_mutex);
 			kfree(p);
 			return ret;
 		}
@@ -134,18 +160,63 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
 
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
