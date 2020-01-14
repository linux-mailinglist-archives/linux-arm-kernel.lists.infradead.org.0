Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F99713ABC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:01:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWUdDOvfoBIzagrP0BdezQPtZpAMoYCgYCGj+kHNqgE=; b=b9LKGV5MR8QKo9
	IJiTcvQCt9A/LcicoDi2RpFze2DJYMuYbKjz9jdhbB8lIl9zTG3ecVm3rvM4jGieJohb9ULB/9MC3
	/jBiSrGAn+cSJAoNv92emyeHcY8cybr6eYomafc0+CLFXnrW9JfP/OG/SGycfVkr/8WyBZEsFROCN
	nCaZXEjAeIVeuDKbKsENbY5aa5u1v5thZMK6BEUsYOrgQ7OeLYngYvqXoJjXgnxAQP9maTTOjaSqY
	Kog4umBxq66LivD1HmGss20F5F1F/bSSRLqZhVlfyWm0kKnGtTCKUoXc32OAigzouqtoU5kZ0v2ZH
	To/+zZD0pQdPCK//sQZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMkt-0001T5-7a; Tue, 14 Jan 2020 14:01:15 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMjd-0007Zr-Rs
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:00:03 +0000
Received: by mail-wm1-x344.google.com with SMTP id f129so13858864wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 05:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xjPV4Ha5BYE0MCX17Wl6xnLI6QAy5DnWASz8VTCVvYQ=;
 b=EUO5m76UvmdUwWtNzcIKhgu1b3wsytiLJXK+nCU8Jd+QLUFj3sjQ6tp4GDPLdz01Tk
 CqD2W85UbyrcCOMSjLf/dFpOusOr7BW9TGliVE1RP6bXsB8Sxe8ahdtC2GAFpvVWPHtu
 huctNx72GCsTAiGkF1SCKWPEXR1HgUR4pAxwdKl8372GYVvlcoKFEIjoubnexI0StKy6
 x656qiDvIBYjjnHT10RUOQDzOjyDF4tIiOjDG3EtntrJNHGhnm/SU9hhc3qJmCNhKtuH
 mUG4dI9ncJ9bO9nTWh1qxkJkNIl9HucXdHS5WgPs9si0eKsDk+9KCo/JNtoxvjSE9hva
 LINg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xjPV4Ha5BYE0MCX17Wl6xnLI6QAy5DnWASz8VTCVvYQ=;
 b=CIMGoACKwtw0+tiV/vGW98XJ7aOnM4G29skkNGHFHcuvShhlJCxPPF9inVqtfQqyqd
 OKj0mmwXyFCbziewZ5M1v5B1JXJqvztul3j9Uui2YykdGCBAHU6RCPWk2oX6k5NV5B6p
 IJDqqOxkmMnbVjBSEz1iVOvffsVHoPfCYFLVcm2hBxmFth65cdTpR89ABgsPu+DnZbjG
 suHanQdNZSL5Lg22mUrk5pQQXU1/yaj61advhSbEzwaiuT+h1S7pjN/isuu0tIMxWqh/
 gvGDClxwj63AhCJ/6ApaonUAIfQTJpDX1CuBNtVmHSvf8tx6V9Djh/nxy+Oiy30U7ogc
 f7oA==
X-Gm-Message-State: APjAAAW53o3STke1YdY+/gRMCxw/u44CxpI1nrfj7WrrRDQe56f9ekI/
 +NAjfeTxOV5PjnG/m6B4xZs=
X-Google-Smtp-Source: APXvYqzVCraPGaXbAoGqhP1ygDTY7R+QHVftrzEYOGKAwqSEbThaIsz0cQp5wFfFNd9DXBamDMmh5Q==
X-Received: by 2002:a1c:62c1:: with SMTP id
 w184mr28138545wmb.150.1579010396021; 
 Tue, 14 Jan 2020 05:59:56 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 4sm17854448wmg.22.2020.01.14.05.59.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 05:59:55 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: alexandre.torgue@st.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 mcoquelin.stm32@gmail.com, mripard@kernel.org, wens@csie.org,
 iuliana.prodan@nxp.com, horia.geanta@nxp.com, aymen.sghaier@nxp.com
Subject: [PATCH RFC 04/10] crypto: sun8i-ce: introduce the slot number
Date: Tue, 14 Jan 2020 14:59:30 +0100
Message-Id: <20200114135936.32422-5-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_055957_896701_6335719C 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the slot position, for choosing which task in the task
list should be prepared/unprepared.
The slot is for the moment is always 0 until the infrastructure will handle
non 0 value.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c | 6 ++++--
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c   | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
index 401f39f144ea..9c1f6c9eaaf9 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
@@ -96,6 +96,7 @@ static int sun8i_ce_cipher_prepare(struct crypto_engine *engine, void *async_req
 	int flow, i;
 	int nr_sgs = 0;
 	int nr_sgd = 0;
+	int slot = 0;
 	int err = 0;
 
 	algt = container_of(alg, struct sun8i_ce_alg_template, alg.skcipher);
@@ -114,7 +115,7 @@ static int sun8i_ce_cipher_prepare(struct crypto_engine *engine, void *async_req
 
 	chan = &ce->chanlist[flow];
 
-	cet = chan->tl;
+	cet = &chan->tl[slot];
 	memset(cet, 0, sizeof(struct ce_task));
 
 	cet->t_id = cpu_to_le32(flow);
@@ -301,11 +302,12 @@ static int sun8i_ce_cipher_unprepare(struct crypto_engine *engine, void *async_r
 	unsigned int ivsize, offset;
 	int nr_sgs = rctx->nr_sgs;
 	int nr_sgd = rctx->nr_sgd;
+	int slot = 0;
 	int flow;
 
 	flow = rctx->flow;
 	chan = &ce->chanlist[flow];
-	cet = chan->tl;
+	cet = &chan->tl[slot];
 	ivsize = crypto_skcipher_ivsize(tfm);
 
 	if (areq->src == areq->dst) {
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
index e8bf7bf31061..bd355f4b95f3 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -120,7 +120,7 @@ int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow, const char *name)
 	/* Be sure all data is written before enabling the task */
 	wmb();
 
-	v = 1 | (ce->chanlist[flow].tl->t_common_ctl & 0x7F) << 8;
+	v = 1 | (ce->chanlist[flow].tl[0].t_common_ctl & 0x7F) << 8;
 	writel(v, ce->base + CE_TLR);
 	mutex_unlock(&ce->mlock);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
