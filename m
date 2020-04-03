Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF8D19DED8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 21:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VW90x4WfENLlXGWO5qA3gWi6Uf8jpYdHsInkGI4k1Og=; b=uxXLmmwRHdOPxuL8u3SkFoQAVX
	qZIyLd68b4BAaq2nsCmsFueptkYLVWMz6/3EFT06wzXinHwSt+tLchGnS7X99LW9FUVGYJHjQJc2k
	ut8A5IZQp8LOtrxQ02KLTeSwzwT4Q8u39Gf/meu2jZxzwM9f8siwkWwSSFPSzwkuHh9cb4jRJlVRX
	dS/uarFCdo5V30BVVak1Q1j6IlhAQGr8/nLS5M1WZLgiz318PP/fJ9d70CBRyp76HZUWNrkmNMNta
	z7e82WZKv0uOcFoMhs3ngYxPn0qnXfEAbxB90G8idIgylJ0kcke75HKGyn7Uq50qixJoasfRzKkCA
	7cSfzvGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKSMD-0007Pb-VH; Fri, 03 Apr 2020 19:52:01 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKSL8-0006Pf-5Y
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 19:50:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id t8so8353337wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 12:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6dyRuU0qv/GfpSwaUpO6HqsZ5FNV24sN7mKJHA69ZbQ=;
 b=zNYI2Bz2ZZvxRiGQWc2aqfXuQwlHzVy/1JcTsIrA5fNpzW1UBC2MNvUaEIJH/MeS0R
 b4NbRNp5RSpQVi6DIwGBkW0nzYlv+8ulLfhvFYhiqcTS7l0WRwpDS1T5InYY4hUUWdU4
 GIH/RmJUL5QP1ejC0BPdEr2eLrm+oOVUgIf8xIr8M0nDHbcof2qdD0U/Hh+9Jp0PMYel
 iG1Yds8CmordrP3frOlREDxf09MxB53pUr7RCAlkL3arlQlX9bXAClR6IjBJzTGoAMgL
 bKah+oTIGcEAFbim7HTaEiZKAd6EoieAGKqL76O/mYidEdUL/Matv98UArNfDudYrZ6C
 E8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6dyRuU0qv/GfpSwaUpO6HqsZ5FNV24sN7mKJHA69ZbQ=;
 b=NbL+XWLqWDyaTwzhQxrfyW0hZ3ziz8Vgh/729Fe9eJBHam8UYgHtm6ZZrvqimYhPXm
 zpWWZlgqiZU1HPhwpQo/ZgqV0qJlBjnEOGP5E5WYGeZIO3SoV3algXuP3Tlb6FC5tPU5
 vZB02QUwxtFgYuONocgNduX2vOcbv/X2QOJMWRtWgRY5rZOMhNo+iYEm9PWscSGKQK05
 TYzR6RCvfLj+ELxoAgbRM/tmMCakGLBvV8aCB5orMzbcEHUHx7Co0qEVBjRgc40jixNE
 JTXl5W8bLkgmcIVTF1+1nZ/i/nD5GE4UlZkXLi0RasnI9viGAjZoQVzdPw3ix8Y74VnX
 alLw==
X-Gm-Message-State: AGi0PubvFn+tc40NJrRVi98qrMlEwgsLhs/VeOisQiPb7NKZlqVUxE2v
 1TUhV5WJ+PmmbwLsFPETaHrytQ==
X-Google-Smtp-Source: APiQypK1L403HNRMCm4e7EzTNVx3G7MJ++mQkJ655tG116RXQ/l009JoC493CMtHX26eyzZI0Iznlg==
X-Received: by 2002:a7b:cfc9:: with SMTP id f9mr10639456wmm.137.1585943452353; 
 Fri, 03 Apr 2020 12:50:52 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id c17sm8102448wrp.28.2020.04.03.12.50.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 03 Apr 2020 12:50:51 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 5/7] crypto: sun8i-ss: fix a trivial typo
Date: Fri,  3 Apr 2020 19:50:36 +0000
Message-Id: <1585943438-862-6-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585943438-862-1-git-send-email-clabbe@baylibre.com>
References: <1585943438-862-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_125054_255162_34D6FE1D 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

This fixes a trivial typo.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
index 350a611b0b9e..056fcdd14201 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
@@ -100,7 +100,7 @@ struct ss_clock {
  * @alg_hash:	list of supported hashes. for each SS_ID_ this will give the
  *              corresponding SS_ALG_XXX value
  * @op_mode:	list of supported block modes
- * @ss_clks!	list of clock needed by this variant
+ * @ss_clks:	list of clock needed by this variant
  */
 struct ss_variant {
 	char alg_cipher[SS_ID_CIPHER_MAX];
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
