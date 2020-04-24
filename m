Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B495F1B77EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 16:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uEgXfzPETI8MKIYpRwM12lzS9KdLaK64MG2He+uF1Zo=; b=SR5tbkCdKA1v5OlJj/yjKXHSeZ
	slyPDFHJyOfOIZIkMA5m3XyOnbN0OlvX7Ky7g2jh4WYUKrN+J3rZ/jbRiBJ+0vOoRLCyIRVZ2YxY6
	GvQEm41FdgoyB2M8TI3OWAWFLtoCPKmmmMZV5z8ShcmBSDvBXtP66HRZE7OQwd31+W1GVhl+H6DcQ
	NapRK1q57yBXnBlReNTTQdaCtdBhw47CLasZl6gjmvR/xG1XliKupqEmMWjQCzGin3OvO9CygzKnU
	n3AtmZJkpSvmMHf69ZmkrqA6qVNPG0soJVtRxvaPYBPcFgA2tNjmqrEHTSzymek0qYKGMAbcosdcJ
	mA52Wn1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRywZ-00044b-HW; Fri, 24 Apr 2020 14:04:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyuc-0002cM-Qm
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 14:02:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id b11so10943290wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 07:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pWbS/s39PP0txqZELi1mJMojHzNj+5WACojohoe9Hn0=;
 b=E+x3rdrRxvqX1kENH+jscSW/UABchcxO9CTu8cF7INE3cgmDdcyjYFNwNnpsPJD0pV
 pqj+mL8Zr/uwctjOn7VXSKS33FDb3TWefuH61KfabcCGQzoJ2PuX19rLlCg42zV3+utH
 zqbCA1cRtJ7ETeukeoyLFrX1+EVirtX3y5h14D78M0dCeh/D4EqIa9AhJt6e2ycilSiB
 cjR6F52GHmmvibz2W7qF3cPxKBxJmqk0XF7cQM6U20PzylljFQtyc2jDurramlxknrlo
 ShpWCwAhWqgUPDNbj8tcS18HZVLnamflivFwMR6baPuGtbYPoC/HlcYeyN20/kvqQ6Jb
 wJRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pWbS/s39PP0txqZELi1mJMojHzNj+5WACojohoe9Hn0=;
 b=mTdd2ExsvOA03b0srPfGSKwY7E9DriBLDaFzqTR2NcQCbNEaVRY71qnuvqgUkXTjP7
 C/nUpML5W5DzyaKWe8ZmPLEQGw9JyMeJ2Ovtadtg9TH6tzPkyIKSK0QMN9HgT5iKTj1E
 tRiNJw/bTRiD7gi6ZMI0gbe2WUYb0IyFv8hyrbORmsOz/7q1rArBHKt45cmtnR9UqJ2G
 mh7fHZSBqNDt/3WAR8XysxPSJWI6JS1NZ6OD1NTYR9NzI/L5EHUE7JyWf/pNf4VgWTdg
 N2SqAptosUBCK1Asg7xLXKLtyyxLETDHa+flGpXWNIH0VQR3mHVi+SZZ3MEbaMImImRR
 /JRg==
X-Gm-Message-State: AGi0PuYaZPxSfHziJxvhjM2IMsovQiJuVGt/ELIGj8MtgMZXLjURNKkR
 NahZff4t76xAm3Bwrpy5fjnOpg==
X-Google-Smtp-Source: APiQypJH9QGS65GaHZzbaFfyRpcD4LWiy1aLfIgzk3v8rGB/dgx0iG+5nhX26nePSEEAadRUEN1Ldg==
X-Received: by 2002:a5d:5745:: with SMTP id q5mr12045617wrw.351.1587736953294; 
 Fri, 24 Apr 2020 07:02:33 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v131sm3061051wmb.19.2020.04.24.07.02.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 07:02:32 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v2 05/14] crypto: sun8i-ss: Add more comment on some structures
Date: Fri, 24 Apr 2020 14:02:05 +0000
Message-Id: <1587736934-22801-6-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_070239_023113_A7F6F1F7 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patch adds some comment on structures used by sun8i-ss.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
index 056fcdd14201..b2668e5b612f 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
@@ -171,6 +171,8 @@ struct sun8i_ss_dev {
  * @ivlen:	size of biv
  * @keylen:	keylen for this request
  * @biv:	buffer which contain the IV
+ *
+ * t_src, t_dst, p_key, p_iv op_mode, op_dir and method must be in LE32
  */
 struct sun8i_cipher_req_ctx {
 	struct sginfo t_src[MAX_SG];
@@ -193,6 +195,8 @@ struct sun8i_cipher_req_ctx {
  * @keylen:		len of the key
  * @ss:			pointer to the private data of driver handling this TFM
  * @fallback_tfm:	pointer to the fallback TFM
+ *
+ * enginectx must be the first element
  */
 struct sun8i_cipher_tfm_ctx {
 	struct crypto_engine_ctx enginectx;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
