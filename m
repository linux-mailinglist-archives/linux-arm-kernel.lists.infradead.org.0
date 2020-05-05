Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272C91C5294
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pAg9m2cfvnjSrGGhg1276mqyDFGTH9bqsNDjYZXDlww=; b=pii3F2Zh133Wwa
	gy8+KO4MIcP9oZW1jgeky1k7psWU5rLKiccGb8ihKGRHKqQgX2VRzcOxULfCCmnHLPMr+M0VDUdDI
	wlV10Uq5X2dityUZRQp9MHUqVLepmBDvEe9A3Ino1GMb4l5XewyOlo5MIN91T0jvNBtEJKg9Gj5w5
	+Z9edIfsCWZohfBYi73IHEVvABNOndRT6g+WJlmMQD7XSOk9B7T33BBwjXH1wiU19YEgmoUS6v/+F
	VdOo9nHUjBbY/fr7Wb74o4PupJbuzDP2NvFcEt7EzRrdrWVs157Xa8alz9Kt1VcAqvNfaqSBJ9FSj
	HR+2pX2oxrpaweH7B5tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuUp-00025X-BF; Tue, 05 May 2020 10:08:15 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuUh-00024t-Qf
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:08:09 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 00E1E9BE0A6632AAFBDE;
 Tue,  5 May 2020 18:08:00 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.487.0; Tue, 5 May 2020 18:07:50 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, Michal Simek
 <michal.simek@xilinx.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Kalyani Akula <kalyani.akula@xilinx.com>, 
 Jolly Shah <jolly.shah@xilinx.com>
Subject: [PATCH -next] crypto: xilinx - Remove set but not used variable
 'drv_ctx'
Date: Tue, 5 May 2020 10:12:00 +0000
Message-ID: <20200505101200.195184-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_030808_025966_8E1D18FE 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
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
Cc: kernel-janitors@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Hulk Robot <hulkci@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/crypto/xilinx/zynqmp-aes-gcm.c: In function 'zynqmp_aes_aead_cipher':
drivers/crypto/xilinx/zynqmp-aes-gcm.c:83:30: warning:
 variable 'drv_ctx' set but not used [-Wunused-but-set-variable]

commit bc86f9c54616 ("firmware: xilinx: Remove eemi ops for aes engine") left
behind this, remove it.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/crypto/xilinx/zynqmp-aes-gcm.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/crypto/xilinx/zynqmp-aes-gcm.c b/drivers/crypto/xilinx/zynqmp-aes-gcm.c
index d0a0daf3ea08..9a342932b7f3 100644
--- a/drivers/crypto/xilinx/zynqmp-aes-gcm.c
+++ b/drivers/crypto/xilinx/zynqmp-aes-gcm.c
@@ -79,8 +79,6 @@ static int zynqmp_aes_aead_cipher(struct aead_request *req)
 	struct zynqmp_aead_tfm_ctx *tfm_ctx = crypto_aead_ctx(aead);
 	struct zynqmp_aead_req_ctx *rq_ctx = aead_request_ctx(req);
 	struct device *dev = tfm_ctx->dev;
-	struct aead_alg *alg = crypto_aead_alg(aead);
-	struct zynqmp_aead_drv_ctx *drv_ctx;
 	struct zynqmp_aead_hw_req *hwreq;
 	dma_addr_t dma_addr_data, dma_addr_hw_req;
 	unsigned int data_size;
@@ -89,8 +87,6 @@ static int zynqmp_aes_aead_cipher(struct aead_request *req)
 	char *kbuf;
 	int err;
 
-	drv_ctx = container_of(alg, struct zynqmp_aead_drv_ctx, alg.aead);
-
 	if (tfm_ctx->keysrc == ZYNQMP_AES_KUP_KEY)
 		dma_size = req->cryptlen + ZYNQMP_AES_KEY_SIZE
 			   + GCM_AES_IV_SIZE;




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
