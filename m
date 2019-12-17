Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AECC9122A13
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YBD59GGY09Lwesf+jFQJmfV3a/s7+O2ZxUeQXlTQrco=; b=ioTVUhRp58gtZa
	YctR2GnCbx5Yb3jUog3+0wXBweenB43gfK9qhJ4BnSeF1qlDajsvHQD6WgP0TIZEvYloTh8NpojFd
	5DYIBQGJl/aintDNflIA9uOVTgd6RWxDFL/iNwl956bv8CiDgSOC5witramHr9gtwIYadvvEe/UCu
	4uqjNFlBjbaMm2cPhJwFN1J/eEQTUkYGdy0wq2+nS7pUHdtcCxyMIh3zURHOY9zTAR8IDi5JoIMXE
	GXOKIokJcozaTdTNEkunhFiLxk7FCZZSZLLlMo9Kf4IIfekCFHZeNEaA4JhNz/yZxIuxDOTiDAQZV
	b4PpgPo2B9p3vXkXZ4tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihB4S-00047x-RX; Tue, 17 Dec 2019 11:31:20 +0000
Received: from imap2.colo.codethink.co.uk ([78.40.148.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihB4J-00047K-Od
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 11:31:13 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap2.colo.codethink.co.uk with esmtpsa  (Exim 4.92 #3 (Debian))
 id 1ihB3Z-0004pv-Lh; Tue, 17 Dec 2019 11:30:25 +0000
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.3)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1ihB3Y-008qmJ-V6; Tue, 17 Dec 2019 11:30:24 +0000
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: ben.dooks@codethink.co.uk
Subject: [PATCH] crypto: sun4i-ss: make unexported sun4i_ss_pm_ops static
Date: Tue, 17 Dec 2019 11:30:24 +0000
Message-Id: <20191217113024.2109457-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_033111_800839_DBB8DC3C 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org,
 Herbert Xu <herbert@gondor.apana.org.au>, YueHaibing <yuehaibing@huawei.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, "David S. Miller" <davem@davemloft.net>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sun4i_ss_pm_ops is not referenced outside the driver
except via a pointer, so make it static to avoid the following
warning:

drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c:276:25: warning: symbol 'sun4i_ss_pm_ops' was not declared. Should it be static?

Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>
---
Cc: Corentin Labbe <clabbe.montjoie@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: Allison Randal <allison@lohutok.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: YueHaibing <yuehaibing@huawei.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: linux-crypto@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c
index 814cd12149a9..52c8b7f680a7 100644
--- a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c
+++ b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c
@@ -273,7 +273,7 @@ static int sun4i_ss_pm_resume(struct device *dev)
 	return err;
 }
 
-const struct dev_pm_ops sun4i_ss_pm_ops = {
+static const struct dev_pm_ops sun4i_ss_pm_ops = {
 	SET_RUNTIME_PM_OPS(sun4i_ss_pm_suspend, sun4i_ss_pm_resume, NULL)
 };
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
