Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CECEE9B079
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 15:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4C91GnlemnDppEgVtGXs6PUus5Tl7W5iLgeKlX/o9uA=; b=Pr8AznCTDK1ttd
	XKg2gJL+mlMiOR9nvanZl3wyixDXLOG3AIVpVDjIgKNVo7GAVHIqf2/vSNsfYVCO5B+zrlz6loBKI
	8QSNlsKy+aJCU/d+nGGZIU2gGY7G7aBsgNuKXx5tRG49zuudtGBoSOSOeBDZiqMO+jDhbsiS1Dsjq
	AhSY9Z5M7H3sVZcJV0KoEJ4+bfstgpiOuVYpsIKUW8HWA6u6VPjE3U38G0OtP4M2sQYfEAyGHH35i
	QR5LLhx8ekKmP+UeJaWih3e+2WXZHNJtrkVNIrzyTTFTm/7s1IBkyxrbxTtjZO0ck3GZ8sI9sUwta
	gyIbK2fSqiBxjEKEo9ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19MI-0007ip-CA; Fri, 23 Aug 2019 13:12:02 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19M9-0007iT-Is
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 13:11:55 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 318783CD6D96C5C7B307;
 Fri, 23 Aug 2019 21:11:48 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Fri, 23 Aug 2019
 21:11:37 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <festevam@gmail.com>, <linux-imx@nxp.com>,
 <yuehaibing@huawei.com>, <daniel.baluta@nxp.com>,
 <pierre-louis.bossart@linux.intel.com>
Subject: [PATCH -next] ASoC: SOF: imx8: Make some functions static
Date: Fri, 23 Aug 2019 20:59:39 +0800
Message-ID: <20190823125939.30012-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_061153_784918_ED66140B 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix sparse warnings:

sound/soc/sof/imx/imx8.c:104:6: warning: symbol 'imx8_dsp_handle_reply' was not declared. Should it be static?
sound/soc/sof/imx/imx8.c:115:6: warning: symbol 'imx8_dsp_handle_request' was not declared. Should it be static?
sound/soc/sof/imx/imx8.c:336:5: warning: symbol 'imx8_get_bar_index' was not declared. Should it be static?
sound/soc/sof/imx/imx8.c:341:6: warning: symbol 'imx8_ipc_msg_data' was not declared. Should it be static?
sound/soc/sof/imx/imx8.c:348:5: warning: symbol 'imx8_ipc_pcm_params' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 sound/soc/sof/imx/imx8.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
index e502f58..6404724 100644
--- a/sound/soc/sof/imx/imx8.c
+++ b/sound/soc/sof/imx/imx8.c
@@ -101,7 +101,7 @@ static int imx8_get_window_offset(struct snd_sof_dev *sdev, u32 id)
 	return MBOX_OFFSET;
 }
 
-void imx8_dsp_handle_reply(struct imx_dsp_ipc *ipc)
+static void imx8_dsp_handle_reply(struct imx_dsp_ipc *ipc)
 {
 	struct imx8_priv *priv = imx_dsp_get_data(ipc);
 	unsigned long flags;
@@ -112,7 +112,7 @@ void imx8_dsp_handle_reply(struct imx_dsp_ipc *ipc)
 	spin_unlock_irqrestore(&priv->sdev->ipc_lock, flags);
 }
 
-void imx8_dsp_handle_request(struct imx_dsp_ipc *ipc)
+static void imx8_dsp_handle_request(struct imx_dsp_ipc *ipc)
 {
 	struct imx8_priv *priv = imx_dsp_get_data(ipc);
 
@@ -333,21 +333,21 @@ static int imx8_remove(struct snd_sof_dev *sdev)
 }
 
 /* on i.MX8 there is 1 to 1 match between type and BAR idx */
-int imx8_get_bar_index(struct snd_sof_dev *sdev, u32 type)
+static int imx8_get_bar_index(struct snd_sof_dev *sdev, u32 type)
 {
 	return type;
 }
 
-void imx8_ipc_msg_data(struct snd_sof_dev *sdev,
-		       struct snd_pcm_substream *substream,
-		       void *p, size_t sz)
+static void imx8_ipc_msg_data(struct snd_sof_dev *sdev,
+			      struct snd_pcm_substream *substream,
+			      void *p, size_t sz)
 {
 	sof_mailbox_read(sdev, sdev->dsp_box.offset, p, sz);
 }
 
-int imx8_ipc_pcm_params(struct snd_sof_dev *sdev,
-			struct snd_pcm_substream *substream,
-			const struct sof_ipc_pcm_params_reply *reply)
+static int imx8_ipc_pcm_params(struct snd_sof_dev *sdev,
+			       struct snd_pcm_substream *substream,
+			       const struct sof_ipc_pcm_params_reply *reply)
 {
 	return 0;
 }
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
