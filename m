Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE84C8432F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 06:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KAWUAG6+Y7Dzm9aVXbufYr2efIzgbADJglROV6ouHJM=; b=HUMnorNHxlwdpcrq+R0ehhI8lX
	TqM1n16vD188h74WN10z5dpB8Ch1X5eLGBKumFCA282V3APqe5NWyrmFherTotwxP81bkrriDpGBW
	2whgv2RFo1fFh9tsGC4AnQN3rjNnFVoQTVu3H7oExBRxAcA9wqQI6BRdRGn4yWfQokTcTML7C17YH
	ZpVm3sIhwl3qff8hX1S1UXarm7ZV6eU6QVVMQSG/7iVd7v5cDps52ltwUep8sSQD2xDd0a0Tanu/n
	JGH3wK8Cd5AQuv9c5taVNr6CNzo1aPqpO1Lnx+46ue7LCcOjA4cVTSy9pnUa+NdD5UOUlrxeeezAa
	Y3iG6Gow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvDKY-0000Nk-OT; Wed, 07 Aug 2019 04:13:42 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvDJz-0008KI-Ui
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 04:13:09 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4D1E2200064;
 Wed,  7 Aug 2019 06:13:06 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CC4D92001EF;
 Wed,  7 Aug 2019 06:13:00 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C6FEB402B5;
 Wed,  7 Aug 2019 12:12:53 +0800 (SGT)
From: fugang.duan@nxp.com
To: srinivas.kandagatla@linaro.org
Subject: [PATCH nvmem v2 1/2] nvmem: imx: add i.MX8QM platform support
Date: Wed,  7 Aug 2019 12:03:19 +0800
Message-Id: <20190807040320.1760-2-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190807040320.1760-1-fugang.duan@nxp.com>
References: <20190807040320.1760-1-fugang.duan@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_211308_232671_80CF83DD 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, robh@kernel.org, festevam@gmail.com,
 fugang.duan@nxp.com, devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
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
