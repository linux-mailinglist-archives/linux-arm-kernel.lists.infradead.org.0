Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFB214602D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 02:01:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jGq27iupMAxg54b0h4tJo1h/pmzD28akn4dATDfsmrA=; b=p7gc8KZI5VH7l8
	VZcjqF1uekFhY/725WcZMYufw6zGFLP0CPtJUgAcpX8W98x0R7yVkf2Fcqz6s3mCDz1iOXV6LuDlX
	BYh6SfKQWUWQIyIhS33Btk2QwJ9ZpQ0vS8Qk1eKz0+0uNdw4ispc95QFrYJX+qmJ0IADcRWYRZois
	vOTEcvXrtzUkgTCJWxfKGJykeaq/bTmKeunLCoXdc3CdtohckjLQUXvj6dTPsFgYa37XVsZapYQki
	nQZUHftLK4nscsedyLi9XG44Ztd1iMRqOe2CyY5KPZVfnAZrPaqKCqwd4JIS81Sora2A3Ujl5sGgu
	s1eHv1g8zPJL6sRsKp1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuQsZ-0003Q2-DK; Thu, 23 Jan 2020 01:01:51 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuQsQ-0003PU-7g
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 01:01:44 +0000
Received: from [82.43.126.140] (helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iuQsI-00089p-FT; Thu, 23 Jan 2020 01:01:34 +0000
From: Colin King <colin.king@canonical.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
 "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-hams@vger.kernel.org,
 netdev@vger.kernel.org
Subject: [PATCH] net/rose: fix spelling mistake "to" -> "too"
Date: Thu, 23 Jan 2020 01:01:33 +0000
Message-Id: <20200123010133.2834467-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_170142_414013_6CBB393D 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake in a printk message. Fix it.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/dma/s3c24xx-dma.c | 2 +-
 net/rose/af_rose.c        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/s3c24xx-dma.c b/drivers/dma/s3c24xx-dma.c
index 8e14c72d03f0..63f1453ca250 100644
--- a/drivers/dma/s3c24xx-dma.c
+++ b/drivers/dma/s3c24xx-dma.c
@@ -826,7 +826,7 @@ static struct dma_async_tx_descriptor *s3c24xx_dma_prep_memcpy(
 			len, s3cchan->name);
 
 	if ((len & S3C24XX_DCON_TC_MASK) != len) {
-		dev_err(&s3cdma->pdev->dev, "memcpy size %zu to large\n", len);
+		dev_err(&s3cdma->pdev->dev, "memcpy size %zu too large\n", len);
 		return NULL;
 	}
 
diff --git a/net/rose/af_rose.c b/net/rose/af_rose.c
index 46b8ff24020d..1e8eeb044b07 100644
--- a/net/rose/af_rose.c
+++ b/net/rose/af_rose.c
@@ -1475,7 +1475,7 @@ static int __init rose_proto_init(void)
 	int rc;
 
 	if (rose_ndevs > 0x7FFFFFFF/sizeof(struct net_device *)) {
-		printk(KERN_ERR "ROSE: rose_proto_init - rose_ndevs parameter to large\n");
+		printk(KERN_ERR "ROSE: rose_proto_init - rose_ndevs parameter too large\n");
 		rc = -EINVAL;
 		goto out;
 	}
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
