Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8559A13ABCA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:02:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TG/4ibZVieN6/LVdv1AKfzTijoTTvMxQ8rxAiQkt00g=; b=h8CbwcBAxJLYdp
	TMnI0W0M1ajvmkO9j0BTZ9zysxe9WBlcfZJGh74VEoTW3q7hvIAK2qV1rAPPEhlhvgGSlIn71pjN8
	W50KKS+QYKwc0JZ/wiftR5QdC1Mm2ufA966YhEf+6KLchoYXnWO5207yj2ebPIdFctAPpDoJHtZTx
	cvjFNL3n/m5ingboNNpjfUsjPzSSkwD9yWnD7uvMRWSVawmgO6BeMJxS53oN09rFvU0p94jrstyga
	Plzu15FiwO3tnyxNN1/MVTPRXNuppZtrCuwNcee7ycKKr92H2hyX0b/CxwfZ7kt811kV0uh6Uorv9
	fMCkx+jKy1dN1QySCx6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMlt-0002Em-F2; Tue, 14 Jan 2020 14:02:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMjk-0007ix-Jb
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:00:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so13907575wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 06:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+qS8cmFG129sXx7XLwvT27GqZEqHpjOOs5rdHnFSHiU=;
 b=IZGzjrkKewPPH+1qPChWS+BhLPaglsstZcFbIFMqVrWlnEyYo4D//EwlO073t5dWRt
 wsEUkhhhPmT8ar86gm41TZiFZdKhJ2hH3xwEbn3ADew+ZParRG4n8k5o10jGL1LVRUU2
 BrBFsb3E1LCR5wy9kjfteNYmsmUS3a6zFMW85ywB2QE/McqEpFsR6LhS7Q4jCZc/iMUv
 PlIJAqPajK75h7F0rRdhNWoe63r2OhG9YYn/0wMxi/hX/wkIBchGVH/aHmOKmpMenkfJ
 zmjXb4+u1GtLTbLFq3gs2YUvR/hG+0pZd1Z57g5j0ZHtScUCIuDBo32GjFTElntjiR5m
 nDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+qS8cmFG129sXx7XLwvT27GqZEqHpjOOs5rdHnFSHiU=;
 b=uBsBGG5aJV6cfGntsi1E3xENFVtYRGAWsqKp1XXhiyQEemmjzL/H0larKSMdjnxBNG
 U4b4ctGN/GZVMCgjiRFHhnbc3d1OCCNeK5PObrXStqgh6PRKm7CDUarqQ0knQmgC2alZ
 8C8n42wQKeopfPMg6qTz6HWM/NY9LnNifwkgysFBQyYWZfKwoocwcizDGvXuKonnLK7z
 LSD5U3yCyhJAti5e64M2A7N1dscFelk+lYmo/E3bX765WCKaG7J4i00vNPhmmYxCMh7G
 yc5JoS17+v2yoH7RawNOa4TZh41pPIsejQTh3KITfb6VwMwl3ygg62yGb2nqrtAklY0t
 1sqw==
X-Gm-Message-State: APjAAAVhhPPbdL/8ZxZdOom9nDE6BpayvkKZc1h91seyQmix+hqBNSqJ
 gfboyJ3ks8c4NsX03R0QTjw=
X-Google-Smtp-Source: APXvYqww13Rw2lNgkQnVrqZqhVvYRprXFy6sm0G6g1K6ZSDEAxdwdk/Iiwdc3bXXKo2jLD2F6nJdKg==
X-Received: by 2002:a1c:a702:: with SMTP id q2mr27788126wme.6.1579010400417;
 Tue, 14 Jan 2020 06:00:00 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 4sm17854448wmg.22.2020.01.14.05.59.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 05:59:59 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: alexandre.torgue@st.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 mcoquelin.stm32@gmail.com, mripard@kernel.org, wens@csie.org,
 iuliana.prodan@nxp.com, horia.geanta@nxp.com, aymen.sghaier@nxp.com
Subject: [PATCH RFC 07/10] crypto: sun8i-ce: handle slot > 0
Date: Tue, 14 Jan 2020 14:59:33 +0100
Message-Id: <20200114135936.32422-8-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_060004_727983_7955693B 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

Handle the fact a slot could be different than 0.
This imply:
- linking two task via next
- set interrupt flag just before running the batch in the last task.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c | 8 +++++++-
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c   | 2 ++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
index 9c1f6c9eaaf9..d56c992fbf93 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
@@ -99,6 +99,9 @@ static int sun8i_ce_cipher_prepare(struct crypto_engine *engine, void *async_req
 	int slot = 0;
 	int err = 0;
 
+	if (slot < 0 || slot >= MAXTASK)
+		return -EINVAL;
+
 	algt = container_of(alg, struct sun8i_ce_alg_template, alg.skcipher);
 
 	dev_dbg(ce->dev, "%s %s %u %x IV(%p %u) key=%u\n", __func__,
@@ -120,8 +123,11 @@ static int sun8i_ce_cipher_prepare(struct crypto_engine *engine, void *async_req
 
 	cet->t_id = cpu_to_le32(flow);
 	common = ce->variant->alg_cipher[algt->ce_algo_id];
-	common |= rctx->op_dir | CE_COMM_INT;
+	common |= rctx->op_dir;
 	cet->t_common_ctl = cpu_to_le32(common);
+	if (slot > 0)
+		chan->tl[slot - 1].next = cpu_to_le32(chan->t_phy + 176 * slot);
+
 	/* CTS and recent CE (H6) need length in bytes, in word otherwise */
 	if (ce->variant->has_t_dlen_in_bytes)
 		cet->t_dlen = cpu_to_le32(areq->cryptlen);
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
index bd355f4b95f3..39bf684c0ff5 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -106,6 +106,8 @@ int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow, const char *name)
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
 	ce->chanlist[flow].stat_req++;
 #endif
+	/* mark last one */
+	ce->chanlist[flow].tl[ce->chanlist[flow].engine->ct - 1].t_common_ctl |= cpu_to_le32(CE_COMM_INT);
 
 	mutex_lock(&ce->mlock);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
