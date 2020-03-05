Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099F117B030
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 21:59:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qKBPJHIhtlBKpfiFskFzozcsYgEZHB/BnJy2b90Nis=; b=Z2NOl6UfXFXAQt
	J1aRKcOVf7R/pqP+yRFjBP0BZc39osdMObpWIyQWDoy6UXNlVBCh4WV68BXtWrIym5X/Zfq3d4mat
	baTg2WA2gkQsWTrAluOZhAt16sXO1CfDSFVKgsFFKPD+Hb3h+4Z6NDcCoJy9k08TXyzhAxMfGMi+t
	u/2DESnQpOHLpeWDoVcMy+myTZlbDEvcAOU5TRALK7Wx0xv6Cy6jXS4CE4jzuYaq/23gA1WnGgRfB
	48od49eCvHlCUB2zKJhRMmAeR9aYbWdOibstwA0hU557iLsYdH1scIwV7vwHsaZsEgEp8x2sLK+yJ
	hKj1HiIVbbZrug7gJNGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xan-0001jI-6A; Thu, 05 Mar 2020 20:59:41 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xad-0001gg-FM
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 20:59:32 +0000
Received: from 250.57.4.146.static.wline.lns.sme.cust.swisscom.ch
 ([146.4.57.250] helo=martin-debian-2.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1j9xaR-0000e9-TW; Thu, 05 Mar 2020 21:59:19 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 1/5] hwrng: imx-rngc - fix an error path
Date: Thu,  5 Mar 2020 21:58:20 +0100
Message-Id: <20200305205824.4371-2-martin@kaiser.cx>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200305205824.4371-1-martin@kaiser.cx>
References: <20200128110102.11522-1-martin@kaiser.cx>
 <20200305205824.4371-1-martin@kaiser.cx>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_125931_676473_347F141D 
X-CRM114-Status: GOOD (  11.44  )
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
Cc: Martin Kaiser <martin@kaiser.cx>, stable@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sure that the rngc interrupt is masked if the rngc self test fails.
Self test failure means that probe fails as well. Interrupts should be
masked in this case, regardless of the error.

Cc: stable@vger.kernel.org
Fixes: 1d5449445bd0 ("hwrng: mx-rngc - add a driver for Freescale RNGC")
Reviewed-by: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>
Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---
 drivers/char/hw_random/imx-rngc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/char/hw_random/imx-rngc.c b/drivers/char/hw_random/imx-rngc.c
index 30cf00f8e9a0..0576801944fd 100644
--- a/drivers/char/hw_random/imx-rngc.c
+++ b/drivers/char/hw_random/imx-rngc.c
@@ -105,8 +105,10 @@ static int imx_rngc_self_test(struct imx_rngc *rngc)
 		return -ETIMEDOUT;
 	}
 
-	if (rngc->err_reg != 0)
+	if (rngc->err_reg != 0) {
+		imx_rngc_irq_mask_clear(rngc);
 		return -EIO;
+	}
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
