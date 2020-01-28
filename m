Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097D814B336
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 12:02:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ys1ucTuhIvccs4jMIf0gtT1TV11fIdWOFn3ROy06Qpg=; b=heBu98gp9xU71f
	3idb6HMXJ/ak+F3WQNBfcKorE2AHDQpldAAVDzj4uGzJxVQvDvs4+jqUIF2Zy0G7NMxEwkld0pYpU
	mSUUbpEieCBfkSxIqXzyuYsVoD/02EeF/fMG07F6dvGqtQzFS57CU4Yr1jzZ99H65Buvp0fC7nfYw
	kFHwsVERlgVCyvdSCaO2zXVKzrodruJZkpFQEcLd4uycHOb0CGlDQjjVDsp8nORWoecMhths9PtzF
	ZuAIeWjp1AtFMiDtIun4G9KgtNPeb3aENL4hGm9uzwMWUCzYX8M1mNOBJmsCV6UG/6ZA/goR58FS+
	8ZEIXU6N0M0cKTRmVKQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwOdX-0006bq-5I; Tue, 28 Jan 2020 11:02:27 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwOck-00068V-El
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 11:01:39 +0000
Received: from dslb-088-068-095-017.088.068.pools.vodafone-ip.de
 ([88.68.95.17] helo=martin-debian-1.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1iwOcf-0008Dy-Ji; Tue, 28 Jan 2020 12:01:33 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 2/6] hwrng: imx-rngc - use automatic seeding
Date: Tue, 28 Jan 2020 12:00:58 +0100
Message-Id: <20200128110102.11522-3-martin@kaiser.cx>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200128110102.11522-1-martin@kaiser.cx>
References: <20200128110102.11522-1-martin@kaiser.cx>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_030138_681115_E21985FC 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Martin Kaiser <martin@kaiser.cx>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rngc requires a new seed for its prng after generating 2^20 160-bit
words of random data. At the moment, we seed the prng only once during
initalisation.

Set the rngc to auto seed mode so that it kicks off the internal
reseeding operation when a new seed is required.

Keep the manual calculation of the initial seed when the device is
probed and switch to automatic seeding afterwards.

Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---
 drivers/char/hw_random/imx-rngc.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/char/hw_random/imx-rngc.c b/drivers/char/hw_random/imx-rngc.c
index 0576801944fd..903894518c8d 100644
--- a/drivers/char/hw_random/imx-rngc.c
+++ b/drivers/char/hw_random/imx-rngc.c
@@ -31,6 +31,7 @@
 
 #define RNGC_CTRL_MASK_ERROR		0x00000040
 #define RNGC_CTRL_MASK_DONE		0x00000020
+#define RNGC_CTRL_AUTO_SEED		0x00000010
 
 #define RNGC_STATUS_ERROR		0x00010000
 #define RNGC_STATUS_FIFO_LEVEL_MASK	0x00000f00
@@ -167,7 +168,7 @@ static irqreturn_t imx_rngc_irq(int irq, void *priv)
 static int imx_rngc_init(struct hwrng *rng)
 {
 	struct imx_rngc *rngc = container_of(rng, struct imx_rngc, rng);
-	u32 cmd;
+	u32 cmd, ctrl;
 	int ret;
 
 	/* clear error */
@@ -192,7 +193,18 @@ static int imx_rngc_init(struct hwrng *rng)
 
 	} while (rngc->err_reg == RNGC_ERROR_STATUS_STAT_ERR);
 
-	return rngc->err_reg ? -EIO : 0;
+	if (rngc->err_reg)
+		return -EIO;
+
+	/*
+	 * enable automatic seeding, the rngc creates a new seed automatically
+	 * after serving 2^20 random 160-bit words
+	 */
+	ctrl = readl(rngc->base + RNGC_CONTROL);
+	ctrl |= RNGC_CTRL_AUTO_SEED;
+	writel(ctrl, rngc->base + RNGC_CONTROL);
+
+	return 0;
 }
 
 static int imx_rngc_probe(struct platform_device *pdev)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
