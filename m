Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A441318CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 20:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iEb747/1LWrADDHf48bsauSlqYEciROxSKrF0l99hZE=; b=FwaMQw4ayRjsnI
	Oaz0mgusOr+kPu3kse3MUAHeMsrOsKyu1q3kIRw9g6YTNsZvauSe25m9FmJHzQMmfe3uZeGY3QdtF
	Xdz5VDIvn3a6WpCFfm2HanpFVO+DP4Vke9lTTxwyMsTwUTifhvLqWanKJF4cHfd/ahcYLr5KpZWHq
	m+p1DRPZQYw24NrXXcrjxZTnC5eiZk4HulfsjYsVcOAw8vFF/MWGN6zENbZC2lAopFJMBO1mRlb6K
	eUTC4acBo+M2YwoCon1DwMYH0uhUlK/Wd6X6qvG78gzoaRtXLwwVHOTO3tcInyArytwTK6a6gxVjL
	nTgUmVs49h/JxITj4brQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioY6w-0001Ht-69; Mon, 06 Jan 2020 19:32:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioY6m-0001HI-NF
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 19:32:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id d16so51023354wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 11:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8o2sKD5F6r3n9vP99rpxAg/yvqUr2DBBH2v8mEkde6I=;
 b=cgK48k3VEm1ZZSOwvZZXnLvzdte4R7HCAi9cjvE1hg14+B4gbzHfe5gKggshw0KRgG
 zWRQa/KGy1uOzgO4qrQyEwRJdoZhn/cDL9yd3jwKvnumeeMhqNmRXCe+HEcsvgkDkQhT
 YT8NqKFKPzKPXLZbTRDVZVasjCsDY6gKYyiy70xHW0yDnxM6OHEkfyySsZKkFGUEQH6+
 BBMo54zdnX++k0D4Qc8eE4W9LaeXfU/sJdisHCVRABjux0Z3jzK3Z5kJzQWmygRn+49Q
 3kAU17KywWRH8kNtb58EyGbM8rguEYFW8kpyzqsVGf6Ns24mXKpcFAxgW2+QhEWdAhSw
 muJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8o2sKD5F6r3n9vP99rpxAg/yvqUr2DBBH2v8mEkde6I=;
 b=TTMQSrBe1y2SRpeNNP1jWRvVsUGR0TSAXZilPjgNslE6wEQ9mlLYijQpEK9xbksLJj
 Kk+HUwPWXEEJZHbTrCB7FMnBj3OXitNWUcmtVbcLBZQslOoDQuw2wdm5Y4zJ+Tp4krRz
 Kk0nQ+JghqmCieptwhcVPYF/UcxZtYQZsIfo9MYtu7KkyqgxGbuXGXVQ8KDHRO7ulz5f
 WEQxIw+bpPoO7tSnIW/8qjqvjblS910VnX6S6u7TQIRrsLTnrJUGMvCpCypr3aZPxhNH
 Veyyt/CW914AM888By9fQFl0uBCuxOO2BBm+s8wlDQrKjt51xB4eQDNTMW11qZVGNNTU
 zG4A==
X-Gm-Message-State: APjAAAVOtZPumeWou6pfSg6Ea+qu7+MLPWbjU9W5viom8x/mSRVjE9T5
 S6VpzIlvDl3LSe72Oe1xzWo=
X-Google-Smtp-Source: APXvYqxtiAnjS9xP3tqTG2THQF5l24EjHH58DXeaAWMYglXCec6eS/XofGQ04SMvGbMB+eteCGA/iw==
X-Received: by 2002:adf:c145:: with SMTP id w5mr104778252wre.205.1578339131597; 
 Mon, 06 Jan 2020 11:32:11 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id r68sm22143312wmr.43.2020.01.06.11.32.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 11:32:11 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH] crypto: sun8i-ce: remove dead code
Date: Mon,  6 Jan 2020 20:32:08 +0100
Message-Id: <20200106193208.4367-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_113212_756796_93683833 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some code were left in the final driver but without any use.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c | 5 -----
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h        | 8 --------
 2 files changed, 13 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
index 37d0b6c386a0..75e2bef2b363 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
@@ -144,11 +144,6 @@ static int sun8i_ce_cipher(struct skcipher_request *areq)
 	cet->t_sym_ctl = cpu_to_le32(sym);
 	cet->t_asym_ctl = 0;
 
-	chan->op_mode = ce->variant->op_mode[algt->ce_blockmode];
-	chan->op_dir = rctx->op_dir;
-	chan->method = ce->variant->alg_cipher[algt->ce_algo_id];
-	chan->keylen = op->keylen;
-
 	addr_key = dma_map_single(ce->dev, op->key, op->keylen, DMA_TO_DEVICE);
 	cet->t_key = cpu_to_le32(addr_key);
 	if (dma_mapping_error(ce->dev, addr_key)) {
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
index 43db49ceafe4..8f8404c84a4d 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
@@ -131,12 +131,8 @@ struct ce_task {
  * @engine:	ptr to the crypto_engine for this flow
  * @bounce_iv:	buffer which contain the IV
  * @ivlen:	size of bounce_iv
- * @keylen:	keylen for this flow operation
  * @complete:	completion for the current task on this flow
  * @status:	set to 1 by interrupt if task is done
- * @method:	current method for flow
- * @op_dir:	direction (encrypt vs decrypt) of this flow
- * @op_mode:	op_mode for this flow
  * @t_phy:	Physical address of task
  * @tl:		pointer to the current ce_task for this flow
  * @stat_req:	number of request done by this flow
@@ -145,12 +141,8 @@ struct sun8i_ce_flow {
 	struct crypto_engine *engine;
 	void *bounce_iv;
 	unsigned int ivlen;
-	unsigned int keylen;
 	struct completion complete;
 	int status;
-	u32 method;
-	u32 op_dir;
-	u32 op_mode;
 	dma_addr_t t_phy;
 	int timeout;
 	struct ce_task *tl;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
