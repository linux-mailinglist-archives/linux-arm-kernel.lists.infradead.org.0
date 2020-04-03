Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E1119DED3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 21:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0VnNa/WhFp6EkaxNQwpvF9Gu+E4levXDdX3uXyK6Ty0=; b=grRaeho/MKmybXT9kkhb5aeogm
	cZjrThYNJzmjJ7rxL10P2cBIDJ7VHUGdj60snx6hxM0nM3kAlDyyeuMRI+T/Hr84QMGADR2vj49+9
	F+ak773bmR/02YFDqqLSgk0bVrf4rsdBp9FifJRTd0SEnlwlfFvLJWM5+KPWKmg4q+ginVUDwq2MU
	VlgpYYYvbcuSdL/tskpev7KqSe8NIntH9wo5t7p4ELB+EwoNuBe6ONsi9mLNhH6xkKjSejYZ4ghQY
	iOfRfvQYIJWvo+OlgHJxR5dsHfxJHN8rGlqo7By2p7oQ3U6+T53Lx+q7iHw10y1JiqjgzvLcNANUx
	Dpv6Up/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKSLj-0006yT-9U; Fri, 03 Apr 2020 19:51:31 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKSL4-0006KV-Cy
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 19:50:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id t128so8388405wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 12:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JPGH//guNKXE+zw41mQiI9K56gZGeqLsPljirbPkDWA=;
 b=oTC8E0fOGssBxycTlFxGc5xx1oGSLXbNDvBvKosjDidLGr48hSossWLYM0KZigOptZ
 YAAtgwVJT3V6AW3KvWpvdSLfBe2WYYiAQ4pm3tqJNDw4SsjmCdubD2xam8FVAP2eSjrR
 byJESroXjDP2Sj9enh9tZm/Je857QdVz6kJkA5qsFOhjIcGDtTAanvVWudXfqe9yIuB9
 eB9SLG4ado0P2ITngZHDhfKb2ghxqlfk3m7sSlOO+CEpL/pSPsbIu+eSaBhWt6hWYoS6
 JgqyDOhQvWYJU7Zj35xuD9AJCJ9qJREu0wA1ugn+NMW5Uo9e5Uj9Ti7YEQ/keW1fScl/
 IuoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JPGH//guNKXE+zw41mQiI9K56gZGeqLsPljirbPkDWA=;
 b=YwZblmRG3v+OfjJyPUxyOrq40WjpPtzzoMumjDccrjaNU+Gi+lUujsXOxYZCQyY6xd
 gs/Ltl24Aof3zLB9FVLGHIXoi2q3jTjxGkTLXPzUP0eKvwcRuNI2rQgJ4gtpd469s+nM
 0sNQr4jX5qFU+umXeOli/XypxMDD+aF4v4ly70S3imdQiGRmg9jS5eiNfs3Gv4DEGVHk
 J6YioxpNUE7FGAO/N2UMcjmAnrUb5duyo31GXryg8NTYEZnSrcPdQM1sPSiPURM2n4we
 BrICbqpi//rTXvVgAaYsbiZCrT3bzw86ZyfLdagZM38B5PjQ0cWplY4ko33sKePMByC9
 P7AA==
X-Gm-Message-State: AGi0PubETyUr3BCynbBj0dsiFK9BDVT6wX/hGnEtT7DZBGoZe7zms3CZ
 mgKnpLkc9QgfgttbKXfFWBtY9Q==
X-Google-Smtp-Source: APiQypJEbUNkRzvYEwZksUdMc+GOiGb1oOeidTkof3qLE2rcJOLmNJKIfsDxMpHa2IfgnELMwfr6uQ==
X-Received: by 2002:a05:600c:2c06:: with SMTP id
 q6mr10472251wmg.42.1585943448931; 
 Fri, 03 Apr 2020 12:50:48 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id c17sm8102448wrp.28.2020.04.03.12.50.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 03 Apr 2020 12:50:48 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 2/7] crypto: sun8i-ss: Add SS_START define
Date: Fri,  3 Apr 2020 19:50:33 +0000
Message-Id: <1585943438-862-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585943438-862-1-git-send-email-clabbe@baylibre.com>
References: <1585943438-862-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_125050_452292_E2A4B12E 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-sunxi@googlegroups.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of using an hardcoded value, let's use a defined value for
SS_START.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 2 +-
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h      | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
index 6b301afffd11..a5cea855e7d8 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
@@ -61,7 +61,7 @@ int sun8i_ss_run_task(struct sun8i_ss_dev *ss, struct sun8i_cipher_req_ctx *rctx
 		      const char *name)
 {
 	int flow = rctx->flow;
-	u32 v = 1;
+	u32 v = SS_START;
 	int i;
 
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
index 29c44f279112..f7a64033fc03 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
@@ -13,6 +13,8 @@
 #include <linux/debugfs.h>
 #include <linux/crypto.h>
 
+#define SS_START	1
+
 #define SS_ENCRYPTION		0
 #define SS_DECRYPTION		BIT(6)
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
