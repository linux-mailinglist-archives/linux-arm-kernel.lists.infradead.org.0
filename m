Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C30565F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B0VcgyjyTsJBSGbBuAd/7NKlralY8LWAYl1pNZEFaFQ=; b=ki5
	Ex76pd4Hs8eWbYE5Yl+rMfm+RXFEpEka0lFdbSCyOO9YBArLpVnX0cXgIG22NNUOCsQKnPykVgnzx
	Odn83IYBGTEWf/uDQgHk+dnYICgr87r7S6ZOgZi4lCpWrXRsuRycqUGTnZs2mKTNFD/oshz7VlJLV
	UID9nPr+XupWiquG9Y7+QCMB3xAlHsfG9f6/jBOd7MyBMo3OURGlIGyLaroooCjg0ZD9j7jyGbIEt
	bz7qHDbnu4ng/uPQFpB1/caRd4r7UbKRg+4l0WLHtx36AoC6mz2DCv3eE+rV1Shmf3ryQgLw94kYx
	eHRfcQxM/I6jLSqGmzFjzlmClsVcTQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4cq-0008BP-29; Wed, 26 Jun 2019 09:54:00 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4cb-0008AQ-5L
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:53:48 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 48EF21A0011;
 Wed, 26 Jun 2019 11:53:43 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3C92A1A000D;
 Wed, 26 Jun 2019 11:53:43 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7D9FC205DB;
 Wed, 26 Jun 2019 11:53:42 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Bryan O'Donoghue <pure.logic@nexus-software.ie>
Subject: [PATCH RESEND] nvmem: imx-ocotp: imx8mq is compatible with imx6 not
 imx7
Date: Wed, 26 Jun 2019 12:53:38 +0300
Message-Id: <41a273f30656ac1a699b1f130cd701f00177b0cc.1561542673.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_025345_337074_DDF3779F 
X-CRM114-Status: UNSURE (   7.09  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to NXP Reference Manuals and uboot/atf sources the OCOTP block
on imx8m behaves more like imx6 than imx7.

- Fuses can be read/written 32bits at a time (no imx7-like banking)
- The OCOTP_HW_OCOTP_TIMING register is like imx6 not imx7

Since nvmem doesn't support uboot-style "sense" and "override" this
issue only affected "write" which is very rarely used.

Fixes: 163c0dbd0cb1 ("nvmem: imx-ocotp: add support for imx8mq")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>

---

Link to v1: https://patchwork.kernel.org/patch/10908081/

That patch prompted a series of other fixes for imx-ocotp from Bryan
O'Donoghue: https://patchwork.kernel.org/cover/10928999/

That series is for 8mm, this patch fixes the 8mq compat and still needs
to be applied.

I don't Bryan's series in linux-next either, maybe it slipped through
the cracks? Consider this a gentle ping.

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index bd016b928589..aec4d5b80f8d 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -438,12 +438,12 @@ static const struct ocotp_params imx7ulp_params = {
 	.bank_address_words = 0,
 };
 
 static const struct ocotp_params imx8mq_params = {
 	.nregs = 256,
-	.bank_address_words = 4,
-	.set_timing = imx_ocotp_set_imx7_timing,
+	.bank_address_words = 0,
+	.set_timing = imx_ocotp_set_imx6_timing,
 };
 
 static const struct of_device_id imx_ocotp_dt_ids[] = {
 	{ .compatible = "fsl,imx6q-ocotp",  .data = &imx6q_params },
 	{ .compatible = "fsl,imx6sl-ocotp", .data = &imx6sl_params },
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
