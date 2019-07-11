Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F94065049
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 04:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H/gsf+5eU92TKIqdt20h2UfK/g+nGJPzdHXRRj59w0Y=; b=WBcSKfdjPDsm+NMRiu5Ygapee1
	398ZhSJCuzGhLl4Z04bbiMsDSxz1ywE8zPRPh60hTVI7IApQjuUU/K0YjbTK97cuVwb7YCCt/Nobz
	FDEEHZ9HysaBJm9LvRoxVFKaiKnS6Mo9Iols8h+gYkTjOM8NpnyekxUVVFcCT0HIADO4Xs7lz18Co
	Y3nTdt++3WAhBs+qhlOPSeBaFK692ENxjRMbgep+h1NzE7gZVZ9cGi99Wke7MZmdsx5Vpk059ttYb
	lqBM2TfuMuj5uJqerMWEpz8yazxJXOsADLTln+pem4bzts834eUTiHTLZkKBnWp3jIlpAUXy9XSlb
	rb8nytxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlP6b-0001Lq-KU; Thu, 11 Jul 2019 02:46:45 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlP6O-0001L5-Vb
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 02:46:34 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C11321A08BB;
 Thu, 11 Jul 2019 04:46:29 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 011881A08F3;
 Thu, 11 Jul 2019 04:46:24 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A4C5440302;
 Thu, 11 Jul 2019 10:46:16 +0800 (SGT)
From: Anson.Huang@nxp.com
To: srinivas.kandagatla@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] nvmem: imx-ocotp: Add i.MX8MN support
Date: Thu, 11 Jul 2019 10:37:14 +0800
Message-Id: <20190711023714.16000-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190711023714.16000-1-Anson.Huang@nxp.com>
References: <20190711023714.16000-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_194633_160088_6BADEF6F 
X-CRM114-Status: UNSURE (   7.04  )
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

i.MX8MN is a new SoC of i.MX8M series, it is similar to i.MX8MM
in terms of addressing and clock setup, add support for its fuse
read/write.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/nvmem/imx-ocotp.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 42d4451..dff2f3c 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -479,6 +479,12 @@ static const struct ocotp_params imx8mm_params = {
 	.set_timing = imx_ocotp_set_imx6_timing,
 };
 
+static const struct ocotp_params imx8mn_params = {
+	.nregs = 256,
+	.bank_address_words = 0,
+	.set_timing = imx_ocotp_set_imx6_timing,
+};
+
 static const struct of_device_id imx_ocotp_dt_ids[] = {
 	{ .compatible = "fsl,imx6q-ocotp",  .data = &imx6q_params },
 	{ .compatible = "fsl,imx6sl-ocotp", .data = &imx6sl_params },
@@ -490,6 +496,7 @@ static const struct of_device_id imx_ocotp_dt_ids[] = {
 	{ .compatible = "fsl,imx7ulp-ocotp", .data = &imx7ulp_params },
 	{ .compatible = "fsl,imx8mq-ocotp", .data = &imx8mq_params },
 	{ .compatible = "fsl,imx8mm-ocotp", .data = &imx8mm_params },
+	{ .compatible = "fsl,imx8mn-ocotp", .data = &imx8mn_params },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, imx_ocotp_dt_ids);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
