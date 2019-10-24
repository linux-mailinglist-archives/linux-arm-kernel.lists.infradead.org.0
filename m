Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6E6E3448
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8eHYAG19m7Zs7k4DObJTI/eZuLeBqMK8EfzJ0i7QJo=; b=G2pn1ETqCgk5rh
	jsUD669jF6Zw5fji4mpFrOLnlPExRJ4N9dKbcarIoHPgaEcQ8dBmveyav58copLBVv+oLaN/dX+r8
	gvYtw5A3W2eocef4geXWchV2VUy9efPMua8q+6ShLi9nufqqmiNhLlFqIRPrLqW3nfv1GzpFhLN2D
	M0qiRXdXYqOrLZsJDGKsgW6S7l3qnZTUKmVIHOIe6ABsPfMShvg7XapPd6aeqGNhw/neR650AJQSa
	PgBxaEcVSOHxQ9sszAuv4noyche7nFgXFJoleCKJGaL90wD6WhPwspHpoobwHeVLPsOh0HbYXEMJi
	2Ki1iUwAeBlJQL0hRCaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNdF7-0001bX-RO; Thu, 24 Oct 2019 13:33:33 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNd6O-0000rw-Nc
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:24:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id g24so2828367wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gafT1c0FgkNr2xD+zkDSgemAEsZK/gkAa/8lkYnPPKw=;
 b=CHB38qnmiIoWY26c3wRxuzk+ZOSa7lwUYBKbyXFt+GT9s2qCB78UmvViVvoiQM7QTY
 rW2Rcd6SGJIGgGVFNX0SJQXjO+WQVjD4QkIgV0+UI5iEFxbOyFlyTAx0uxmVAn/COzNa
 ZzY0Bz17VitJ6ppDTaokb69HwslnO20Mo6PNP4LQbUHsHC/kX1f+Al6G3aWrHGy7jvdv
 30OisuNk6PgBOI27Znki2YEYKb2BtGep5t8l/NUS1bxAoMb29C03ETB/wv32800J7BBz
 KwB8Gti8rHMxcu+7DWapIuAph1mtDeASezoAay2t19YtwNGS+qginVZDnBYSm5G+v2XW
 O0ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gafT1c0FgkNr2xD+zkDSgemAEsZK/gkAa/8lkYnPPKw=;
 b=i8VnM8B9sWBSzd7o2Eb8ZTSIEzbL/ihKsk+ILC12Grx8Knk8DdnFLg8Z69bxMKGY0U
 lYKcrZzD1sWrEx2nLJeBCd8iVcOxJQGR9wE9Ygmt1oG2XdTZ55AR69/zSZHKpuP5Koz9
 wDeeXkx6XEcV8QpiHp+MMGdZA2Ku6kGp5AtbMVrq1uTC/SVpbdSUuVO/XcPTJUD/tIyX
 Hmf+7yCckpGj2mqm5+z2GoBUowspUa1OSOFYo23KC/trmBbJeDN6Oz4R/MApeY1NI3PR
 JGTYOsDokjFptokOY7BP2qDksQQm5ygrOoqrWlbJgLCKSakjcVoqxnlaEUJ8YixbBCzW
 LDsw==
X-Gm-Message-State: APjAAAU/Qz/yvo79DuW7Ja10HQEeojuU9JtUClmDPhjfYczWNrSMuqFQ
 6XhrSxBMjr5fwVEmUhj+vljlSQ==
X-Google-Smtp-Source: APXvYqylavvVBkkME63FbqEWNpFeVOHYol92i8elmCht1vf/qMPHxvNflkj3oX9akZNufJ8WOdgm6A==
X-Received: by 2002:a1c:49c2:: with SMTP id w185mr4782947wma.16.1571923471290; 
 Thu, 24 Oct 2019 06:24:31 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id e3sm2346310wme.36.2019.10.24.06.24.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 06:24:30 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 27/27] crypto: nx - remove stale comment referring to the
 blkcipher walk API
Date: Thu, 24 Oct 2019 15:23:45 +0200
Message-Id: <20191024132345.5236-28-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_062432_801390_F6ED31BE 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "David S. Miller" <davem@davemloft.net>, Eric Biggers <ebiggers@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These drivers do not use either the deprecated blkcipher or the current
skcipher walk API, so this comment must refer to a previous state of the
driver that no longer exists. So drop the comments.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/nx/nx-aes-ccm.c | 5 -----
 drivers/crypto/nx/nx-aes-gcm.c | 5 -----
 2 files changed, 10 deletions(-)

diff --git a/drivers/crypto/nx/nx-aes-ccm.c b/drivers/crypto/nx/nx-aes-ccm.c
index 84fed736ed2e..4c9362eebefd 100644
--- a/drivers/crypto/nx/nx-aes-ccm.c
+++ b/drivers/crypto/nx/nx-aes-ccm.c
@@ -525,11 +525,6 @@ static int ccm_aes_nx_decrypt(struct aead_request *req)
 	return ccm_nx_decrypt(req, req->iv, req->assoclen);
 }
 
-/* tell the block cipher walk routines that this is a stream cipher by
- * setting cra_blocksize to 1. Even using blkcipher_walk_virt_block
- * during encrypt/decrypt doesn't solve this problem, because it calls
- * blkcipher_walk_done under the covers, which doesn't use walk->blocksize,
- * but instead uses this tfm->blocksize. */
 struct aead_alg nx_ccm_aes_alg = {
 	.base = {
 		.cra_name        = "ccm(aes)",
diff --git a/drivers/crypto/nx/nx-aes-gcm.c b/drivers/crypto/nx/nx-aes-gcm.c
index 898220e159d3..19c6ed5baea4 100644
--- a/drivers/crypto/nx/nx-aes-gcm.c
+++ b/drivers/crypto/nx/nx-aes-gcm.c
@@ -467,11 +467,6 @@ static int gcm4106_aes_nx_decrypt(struct aead_request *req)
 	return gcm_aes_nx_crypt(req, 0, req->assoclen - 8);
 }
 
-/* tell the block cipher walk routines that this is a stream cipher by
- * setting cra_blocksize to 1. Even using blkcipher_walk_virt_block
- * during encrypt/decrypt doesn't solve this problem, because it calls
- * blkcipher_walk_done under the covers, which doesn't use walk->blocksize,
- * but instead uses this tfm->blocksize. */
 struct aead_alg nx_gcm_aes_alg = {
 	.base = {
 		.cra_name        = "gcm(aes)",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
