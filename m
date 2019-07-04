Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BEE5FA19
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KAWUAG6+Y7Dzm9aVXbufYr2efIzgbADJglROV6ouHJM=; b=gJY
	xbhP1z2n3061OO+iXv6JpOa/tYLMW8q6MN3osTiLn5e4D6sShXgKX8ju1FISbGXgAcWAGkqYnKlpM
	DR9nvcOY8huCLc8yir3b9AVvXiAz4L6O42faIgXJQ3WgxYr9v/WvnsRPVFsDHe45EbVeGaXjO/qyb
	EXwsYQHMUCyddajLqhBSFAnDU74kJSlWtGFQaV5r2oDaUwMoHr4gnBQq/Eg9n1Li35qBS96P1bRCY
	UbJL8ub+p7x9WNmt6Ri4wVWtTW0h9J0AvlstjVPAumF8Q4SW0/WezaPYF62xfbK8AAm4WpaWBEhCZ
	9F/mrsbNuT6N6YEHnHO33+Ehe/k6LqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2kF-0006cF-QM; Thu, 04 Jul 2019 14:29:55 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2k2-0006Yr-5q
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:29:43 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A25E61A05FF;
 Thu,  4 Jul 2019 16:29:38 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CB6C61A05F8;
 Thu,  4 Jul 2019 16:29:33 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9B0CD402C3;
 Thu,  4 Jul 2019 22:29:27 +0800 (SGT)
From: fugang.duan@nxp.com
To: srinivas.kandagatla@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de
Subject: [PATCH nvmem 1/1] nvmem: imx: add i.MX8QM platform support
Date: Thu,  4 Jul 2019 22:20:32 +0800
Message-Id: <20190704142032.10745-1-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_072942_388514_36B9177F 
X-CRM114-Status: UNSURE (   6.82  )
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
Cc: fugang.duan@nxp.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fugang Duan <fugang.duan@nxp.com>

i.MX8QM efuse table has some difference with i.MX8QXP platform,
so add i.MX8QM platform support.

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
---
 drivers/nvmem/imx-ocotp-scu.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
index be2f5f0..0d78ab4 100644
--- a/drivers/nvmem/imx-ocotp-scu.c
+++ b/drivers/nvmem/imx-ocotp-scu.c
@@ -16,6 +16,7 @@
 
 enum ocotp_devtype {
 	IMX8QXP,
+	IMX8QM,
 };
 
 struct ocotp_devtype_data {
@@ -39,6 +40,11 @@ static struct ocotp_devtype_data imx8qxp_data = {
 	.nregs = 800,
 };
 
+static struct ocotp_devtype_data imx8qm_data = {
+	.devtype = IMX8QM,
+	.nregs = 800,
+};
+
 static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
 				     u32 *val)
 {
@@ -118,6 +124,7 @@ static struct nvmem_config imx_scu_ocotp_nvmem_config = {
 
 static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
 	{ .compatible = "fsl,imx8qxp-scu-ocotp", (void *)&imx8qxp_data },
+	{ .compatible = "fsl,imx8qm-scu-ocotp", (void *)&imx8qm_data },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, imx_scu_ocotp_dt_ids);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
