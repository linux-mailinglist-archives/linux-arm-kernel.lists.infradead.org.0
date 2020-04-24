Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B97B21B77C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 16:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cBqn/82gAWVn0uYm7F12Gj+7alYEyiXTb80qNIQGZgs=; b=hy91Ylgvo9cbsMbKY59pTIuoWV
	5kquGjIdQScu2RL0ZVr5wE4yhNrPmyhFMgkTgrUD6hPAj5a6lKBe5mxbhFPsmCSyWnGNBpom1TdbK
	0zE2aeI5sVtUuZ5AFN8W9OP+xzY1L8/ID92+kb2bGGl+LwjZgvcwdnaSxxjZeNNTVUnGwYcqnsCUA
	1K3FQNSR81fo03n9GqpoTWAs4cdpffV9Uag1hX+i9UOfyOOAKxiusEsrRCtkSim3SOqSc2IyxKH4m
	QpcA3CJKZybKwO1UuK6/dhs8WZXYh6gQBSeEbKfpb3UnGf3DROthNLD+FdzjZFxW0GdRLy4O6TUCN
	HBj3NjVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyvj-0003H5-JM; Fri, 24 Apr 2020 14:03:47 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyuV-0002Wg-MD
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 14:02:33 +0000
Received: by mail-wm1-x344.google.com with SMTP id r26so10880384wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 07:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GgwWsZ4vgrBdNIRZyns63cVZRVYxjzfpG44UZZ9qy6E=;
 b=YX0s7fuFCeROk9+L/v2tc9yPVKqpascgymijanpp09t/IXJcmPZJ2QYlDN5czz/cMS
 dr3TeEFVa9AYAmBnpEXym1QDalz4u/MSSCiVrE4pXZMaQip8cl58WfxEzYD+L9iMh9Ze
 f3hNHaaYlAuTvj4HmWnpz/ONiBYfWjaeABkjTLNuVSdZQReHcW/QtOXz6oTx4oo2lGIm
 mZwfkc3RtDw2Ob3vmgOz9ZuIZe+SYNgIlgcq5nOFc/IDwGkp+ybfMHpW8Pu67SdKSXgz
 LFkVhgNOLzSvWemLoYh+sgVKXwfWdoL7rm7bHmijjWDJ49OQFvLr2ORlF3PK0DLQoVmT
 dS4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GgwWsZ4vgrBdNIRZyns63cVZRVYxjzfpG44UZZ9qy6E=;
 b=U8kwnRfUPk1JYIaNVsxvO8KjwVm4JV6niKQvpY9o+DNFR4ru0Z6QJ7VM+R24iU5M1C
 jND0wjEBkz1oResPsR5H0S3LOkcGE24de75qhBuPOoLN29bP3VvLY5m4ue/8tkcAIuVi
 gYwpr9WSsiKH93khlsDmZZ323pip2KJ1Efa+wjZGnA/iFEAz5x8x7NmaH2EVftMP1jTT
 rSf2hRiEZ/nEqYcV2OlnhyV2NXXN0bwkHc0ZJQarm55+MFrMPqhNlxK0E1DLx5HT2bNR
 qVu10yM31YZKg8Xgitd7NC6tbSg+L72oBFV5q8kX6YJj9Ltx64bX5Td5nHFqeBxvxFve
 R5tA==
X-Gm-Message-State: AGi0Puarg5UUOK1wACthxKF8X4m462tmt45y+Gd9vwIjJTwdVGa0NS4w
 TkiGs1W8nbMG/RxSjFJOUIcoMQ==
X-Google-Smtp-Source: APiQypKkF+NWOiJmhHGVefUk5gxkUhwlUoi+oxIfJGzQH5xF7sni+mtz2LtfdT125vB2yLUbciEcxA==
X-Received: by 2002:a1c:2846:: with SMTP id o67mr9817667wmo.23.1587736950447; 
 Fri, 24 Apr 2020 07:02:30 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v131sm3061051wmb.19.2020.04.24.07.02.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 07:02:28 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v2 04/14] crypto: sun8i-ss: fix a trivial typo
Date: Fri, 24 Apr 2020 14:02:04 +0000
Message-Id: <1587736934-22801-5-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_070231_764871_EAD7BAF2 
X-CRM114-Status: GOOD (  12.91  )
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
