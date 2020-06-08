Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F551F2470
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNNvy7lMrj5rIJQAtqpBzNyMEor8PJlc9COs9yf5pfs=; b=jebcQOtx3VVHvq
	sw130vdcsDnKk1bi7FJJV0uePZanCRsz1BOEwyb1cmebNnM1/GMtSZ2d0Bdb8NH2e/IeL0CojNeYL
	O3eIp3XhNATMz5zajJG2shDDO4krKCCZS6MqmjIDOqbrwBmI76w+Mg/mKcYsHwSuwShxI58WhUgRE
	pfYZo/p+pbaGuxUDWx9xeoWQBVSmNDdLnt9oKY0P/FA+LsHshAbaryO1ud3BQE/bjTc/X4kgmBp76
	Zd7M9fpuxEG5/NwBqJIOh0Rwl50g5pBORsdDH425y2F0Rrd0HpsKMaIpkLkJl38l9Jpn9aSzbgL6D
	b+Qc4NfxXAFMmJPGuBLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiR4u-0000qD-5Q; Mon, 08 Jun 2020 23:21:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQuw-0004M2-VI
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:11:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DC3020CC7;
 Mon,  8 Jun 2020 23:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657858;
 bh=ulf2SztqD35ITArIHACtWdmO6AcDVM1Uqldkqoc+rQg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=De+4KpYGNwnXl/FdJsiQZUsI4wC686zjANFRFDfRkOO1SkcbUGc2QBzqfVjmkeC6u
 JEhRlqDuz2MWW1rWE3teUJrMNrByx38Cfncn5Sl9ux3kw6AEM6S18uR5P410LtuXfX
 xNzZol4PgvAWHb9muN396RV9Bn40AFkm5wKtkC2Q=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 221/274] crypto: stm32/crc32 - fix run-time self
 test issue.
Date: Mon,  8 Jun 2020 19:05:14 -0400
Message-Id: <20200608230607.3361041-221-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161059_205717_46279147 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Nicolas Toromanoff <nicolas.toromanoff@st.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Toromanoff <nicolas.toromanoff@st.com>

[ Upstream commit a8cc3128bf2c01c4d448fe17149e87132113b445 ]

Fix wrong crc32 initialisation value:
"alg: shash: stm32_crc32 test failed (wrong result) on test vector 0,
cfg="init+update+final aligned buffer"
cra_name="crc32c" expects an init value of 0XFFFFFFFF,
cra_name="crc32" expects an init value of 0.

Fixes: b51dbe90912a ("crypto: stm32 - Support for STM32 CRC32 crypto module")

Signed-off-by: Nicolas Toromanoff <nicolas.toromanoff@st.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/stm32/stm32-crc32.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/crypto/stm32/stm32-crc32.c b/drivers/crypto/stm32/stm32-crc32.c
index c6156bf6c603..1c3e411b7acb 100644
--- a/drivers/crypto/stm32/stm32-crc32.c
+++ b/drivers/crypto/stm32/stm32-crc32.c
@@ -28,10 +28,10 @@
 
 /* Registers values */
 #define CRC_CR_RESET            BIT(0)
-#define CRC_INIT_DEFAULT        0xFFFFFFFF
 #define CRC_CR_REV_IN_WORD      (BIT(6) | BIT(5))
 #define CRC_CR_REV_IN_BYTE      BIT(5)
 #define CRC_CR_REV_OUT          BIT(7)
+#define CRC32C_INIT_DEFAULT     0xFFFFFFFF
 
 #define CRC_AUTOSUSPEND_DELAY	50
 
@@ -65,7 +65,7 @@ static int stm32_crc32_cra_init(struct crypto_tfm *tfm)
 {
 	struct stm32_crc_ctx *mctx = crypto_tfm_ctx(tfm);
 
-	mctx->key = CRC_INIT_DEFAULT;
+	mctx->key = 0;
 	mctx->poly = CRC32_POLY_LE;
 	return 0;
 }
@@ -74,7 +74,7 @@ static int stm32_crc32c_cra_init(struct crypto_tfm *tfm)
 {
 	struct stm32_crc_ctx *mctx = crypto_tfm_ctx(tfm);
 
-	mctx->key = CRC_INIT_DEFAULT;
+	mctx->key = CRC32C_INIT_DEFAULT;
 	mctx->poly = CRC32C_POLY_LE;
 	return 0;
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
