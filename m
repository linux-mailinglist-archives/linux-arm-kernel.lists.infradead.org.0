Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC6D5CA15
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 09:55:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qsfT3poljZpQU14Ucv+SQq3NIok+X+JWP60cdV7ZQTw=; b=SOC
	Eo8TgpcQ7QVMHRH15AxfsKmvvVMDRWcAbcw8ND5d7TO4D/wlYpLhA4WkHxVWuZAEyKluy0vDbjKe9
	ozHjis62jrteXcVlzB/mBoUW+1H5C3lVM3K11MC6FXfQ8DseDz4sw+/o8/qrPyteCpiSgRal5PQwe
	XuCpIh5YDcU6cuZDx+Eb4EoHUtJ9FhR7KyapZhRNA8QFQIHiELI8nWfia70ngldTXSNwaEZdlKPIy
	OZchqYSZk8ZBeKUXgY3s213eLl9+qA7UJKYIl3p7t5hUYtO2O/FZY5pBlyK3L24bpO5mlKpg76Ox6
	Vg7Ad/cT0aV8n+vYVmzrPP8Kd48onxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiDd3-0001mk-Qk; Tue, 02 Jul 2019 07:55:05 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiDcp-0001mQ-0Q
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 07:54:52 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 43E0B1A0BA2;
 Tue,  2 Jul 2019 09:54:48 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F285E1A01F0;
 Tue,  2 Jul 2019 09:54:42 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 42722402B6;
 Tue,  2 Jul 2019 15:54:36 +0800 (SGT)
From: Anson.Huang@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 m.felsch@pengutronix.de
Subject: [PATCH V3] soc: imx-scu: Add SoC UID(unique identifier) support
Date: Tue,  2 Jul 2019 15:45:45 +0800
Message-Id: <20190702074545.48267-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_005451_193915_085D7B53 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Add i.MX SCU SoC's UID(unique identifier) support, user
can read it from sysfs:

root@imx8qxpmek:~# cat /sys/devices/soc0/soc_uid
7B64280B57AC1898

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
---
Change since V2:
	- The SCU FW API for getting UID does NOT have response, so we should set
	  imx_scu_call_rpc()'s 3rd parameter as false and still can check the returned
	  value, and comment is no needed any more.
---
 drivers/soc/imx/soc-imx-scu.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
index 676f612..50831eb 100644
--- a/drivers/soc/imx/soc-imx-scu.c
+++ b/drivers/soc/imx/soc-imx-scu.c
@@ -27,6 +27,40 @@ struct imx_sc_msg_misc_get_soc_id {
 	} data;
 } __packed;
 
+struct imx_sc_msg_misc_get_soc_uid {
+	struct imx_sc_rpc_msg hdr;
+	u32 uid_low;
+	u32 uid_high;
+} __packed;
+
+static ssize_t soc_uid_show(struct device *dev,
+			    struct device_attribute *attr, char *buf)
+{
+	struct imx_sc_msg_misc_get_soc_uid msg;
+	struct imx_sc_rpc_msg *hdr = &msg.hdr;
+	u64 soc_uid;
+	int ret;
+
+	hdr->ver = IMX_SC_RPC_VERSION;
+	hdr->svc = IMX_SC_RPC_SVC_MISC;
+	hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
+	hdr->size = 1;
+
+	ret = imx_scu_call_rpc(soc_ipc_handle, &msg, false);
+	if (ret) {
+		pr_err("%s: get soc uid failed, ret %d\n", __func__, ret);
+		return ret;
+	}
+
+	soc_uid = msg.uid_high;
+	soc_uid <<= 32;
+	soc_uid |= msg.uid_low;
+
+	return sprintf(buf, "%016llX\n", soc_uid);
+}
+
+static DEVICE_ATTR_RO(soc_uid);
+
 static int imx_scu_soc_id(void)
 {
 	struct imx_sc_msg_misc_get_soc_id msg;
@@ -102,6 +136,11 @@ static int imx_scu_soc_probe(struct platform_device *pdev)
 		goto free_revision;
 	}
 
+	ret = device_create_file(soc_device_to_device(soc_dev),
+				 &dev_attr_soc_uid);
+	if (ret)
+		goto free_revision;
+
 	return 0;
 
 free_revision:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
