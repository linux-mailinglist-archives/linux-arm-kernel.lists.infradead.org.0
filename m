Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF48717B036
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 22:01:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fv+Wu/K8cKMQzzsaENVc3JvyvHZNoQCIk9yAGuURxKQ=; b=djr+CfHOPo6hnw
	NFWXhpYIRW82zz0a6f3K3wIpUhjak0//KyHiPObAgR//Ej7i6/zjxfPhEPGglDLmZQPORtsYjPFdy
	cQWekTZZ3CIPblbFwR8eYjjuEoXZyoSFnEC4pbd8ixTx2+u2lS2oiQ6K1DoxZqMLXkP9cPgRwboxz
	nE/4KRPd2N7+uD8tPFUKW6sTMsBetTAG9mwfGE06oiwioA3AgvN54uq4dgbkn1hi8UppfStz83zvV
	s6S9WmKcPTgZjibTotDnE384PJm6SfXP95ykRrs8VZu39u97Ke/5JiH5zqChS37KK2oxqk+G/nLnJ
	A6MCiux4XSu9qwBjT2mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xbz-00044L-RA; Thu, 05 Mar 2020 21:00:55 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xag-0001iz-C4
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 20:59:35 +0000
Received: from 250.57.4.146.static.wline.lns.sme.cust.swisscom.ch
 ([146.4.57.250] helo=martin-debian-2.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1j9xaa-0000e9-Jw; Thu, 05 Mar 2020 21:59:28 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 5/5] hwrng: imx-rngc - simplify interrupt mask/unmask
Date: Thu,  5 Mar 2020 21:58:24 +0100
Message-Id: <20200305205824.4371-6-martin@kaiser.cx>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200305205824.4371-1-martin@kaiser.cx>
References: <20200128110102.11522-1-martin@kaiser.cx>
 <20200305205824.4371-1-martin@kaiser.cx>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_125934_586537_A317C0E8 
X-CRM114-Status: GOOD (  14.94  )
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

Use a simpler approach for masking / unmasking the rngc interrupt:
The interrupt is unmasked while self-test is running and when the rngc
driver is used by the hwrng core.

Mask the interrupt again when self test is finished, regardless of
self test success or failure.

Unmask the interrupt in the init function. Add a cleanup function where
the rngc interrupt is masked again.

Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---
 drivers/char/hw_random/imx-rngc.c | 43 ++++++++++++++++++++-----------
 1 file changed, 28 insertions(+), 15 deletions(-)

diff --git a/drivers/char/hw_random/imx-rngc.c b/drivers/char/hw_random/imx-rngc.c
index 50a8923d829a..9c47e431ce90 100644
--- a/drivers/char/hw_random/imx-rngc.c
+++ b/drivers/char/hw_random/imx-rngc.c
@@ -111,17 +111,11 @@ static int imx_rngc_self_test(struct imx_rngc *rngc)
 	writel(cmd | RNGC_CMD_SELF_TEST, rngc->base + RNGC_COMMAND);
 
 	ret = wait_for_completion_timeout(&rngc->rng_op_done, RNGC_TIMEOUT);
-	if (!ret) {
-		imx_rngc_irq_mask_clear(rngc);
+	imx_rngc_irq_mask_clear(rngc);
+	if (!ret)
 		return -ETIMEDOUT;
-	}
-
-	if (rngc->err_reg != 0) {
-		imx_rngc_irq_mask_clear(rngc);
-		return -EIO;
-	}
 
-	return 0;
+	return rngc->err_reg ? -EIO : 0;
 }
 
 static int imx_rngc_read(struct hwrng *rng, void *data, size_t max, bool wait)
@@ -185,10 +179,10 @@ static int imx_rngc_init(struct hwrng *rng)
 	cmd = readl(rngc->base + RNGC_COMMAND);
 	writel(cmd | RNGC_CMD_CLR_ERR, rngc->base + RNGC_COMMAND);
 
+	imx_rngc_irq_unmask(rngc);
+
 	/* create seed, repeat while there is some statistical error */
 	do {
-		imx_rngc_irq_unmask(rngc);
-
 		/* seed creation */
 		cmd = readl(rngc->base + RNGC_COMMAND);
 		writel(cmd | RNGC_CMD_SEED, rngc->base + RNGC_COMMAND);
@@ -197,14 +191,16 @@ static int imx_rngc_init(struct hwrng *rng)
 				RNGC_TIMEOUT);
 
 		if (!ret) {
-			imx_rngc_irq_mask_clear(rngc);
-			return -ETIMEDOUT;
+			ret = -ETIMEDOUT;
+			goto err;
 		}
 
 	} while (rngc->err_reg == RNGC_ERROR_STATUS_STAT_ERR);
 
-	if (rngc->err_reg)
-		return -EIO;
+	if (rngc->err_reg) {
+		ret = -EIO;
+		goto err;
+	}
 
 	/*
 	 * enable automatic seeding, the rngc creates a new seed automatically
@@ -214,7 +210,23 @@ static int imx_rngc_init(struct hwrng *rng)
 	ctrl |= RNGC_CTRL_AUTO_SEED;
 	writel(ctrl, rngc->base + RNGC_CONTROL);
 
+	/*
+	 * if initialisation was successful, we keep the interrupt
+	 * unmasked until imx_rngc_cleanup is called
+	 * we mask the interrupt ourselves if we return an error
+	 */
 	return 0;
+
+err:
+	imx_rngc_irq_mask_clear(rngc);
+	return ret;
+}
+
+static void imx_rngc_cleanup(struct hwrng *rng)
+{
+	struct imx_rngc *rngc = container_of(rng, struct imx_rngc, rng);
+
+	imx_rngc_irq_mask_clear(rngc);
 }
 
 static int imx_rngc_probe(struct platform_device *pdev)
@@ -272,6 +284,7 @@ static int imx_rngc_probe(struct platform_device *pdev)
 	rngc->rng.name = pdev->name;
 	rngc->rng.init = imx_rngc_init;
 	rngc->rng.read = imx_rngc_read;
+	rngc->rng.cleanup = imx_rngc_cleanup;
 
 	rngc->dev = &pdev->dev;
 	platform_set_drvdata(pdev, rngc);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
