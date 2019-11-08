Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5735DF4CDB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:13:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnrnfaHpLBqIupxsFUKbU6lXccqUN78NqNjY+Kno/vY=; b=gKPXq82Jz5bwYd
	CVE5m1e7Bya2OzdrWcoaCorpiXDV/fN9oz1H2rk3T3YobXt7F/CMTuxx20PNdvQPNCVqmx73OAe2F
	eJD40TiSEUSbVNF0th8rmnhF2c8FsUNbHA5yusrHmPp4ZX/Jnxa8H0JnwYos9FiRCnhHD70TqDf3X
	Zmdv5aUEr1trcPwXTC148x5JaDrGKijE9Q+GzQj8c6Ax77BjcDUR9+lvKc4hpqG3jixOuSAh++Oym
	8ZaUwoyFDgMuIkP9jEHZECU9lVyVhiSXx5T8qgYq+o/QMjCGkIS+6nk5SDhD/Y38x8oEX8Ys2ZqmZ
	0SBwOGPd35PfcFRfx4+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT44d-0007v9-U7; Fri, 08 Nov 2019 13:13:11 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3u2-0004n5-5P
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id t5so6157656ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SSxgB5KIjK5mxonoS/fefEEoV3TflMkJtsEIHhJIAiQ=;
 b=fk496dIkjJfWH0puX1BW4RjJCK7c9+JJhG6U1/TBsTulBpHSVx/cGc7sFqAR1iTMdP
 3zAZ/TuYQluQEe1pVxIJkHHxw9OOzJCOlbYv+gbMR/iAwaLh7N8FW415kYYBe+C4WJ5A
 /Kx/gFiuFB5pPYGCEIG3XIPCX/uSVcJG6J9u4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SSxgB5KIjK5mxonoS/fefEEoV3TflMkJtsEIHhJIAiQ=;
 b=PaeMm4hiZAgSay4LGD0beuiwFHvZTdgPryBqGc3hGfyLsu36HguJ0x5el/s5btKWRu
 sn6GZZ8YoifGuZTBEX1FeC2zbtwYM5zN5kETJ8UmUklpHfKmuf2wJK7quJmSO1fcs/DO
 kM+iTuO3QW8EahoNvSIv81ajyBskz0Ar6AwfyOEIW0cIf7gG8EBrI8UDtwx7rwtyrhHN
 5z2uHtbTd81rpYXUt1vlVXOxau0nCj9UY9Ii3QELVc2aelStEkVOshR6pq5nbuvL8J3w
 gvRn8R3OmKvTPjmOqy/SrL0u9FfAEYgj00hXbr+/V69mPlpsDZEBlYl8LyWIyHaLKj7/
 mZ6w==
X-Gm-Message-State: APjAAAVAd+1HOmWcW96DDDMCTmxGou9DVyrVwifsjsEKmlovYPkBKcv4
 V7K8N7BbGHktBu8J76SDGRkNNg==
X-Google-Smtp-Source: APXvYqyN3aQ4nQtTkau8BsbSSPycHGak0w9LA6qtdzQsU05epYq+dRlpxU2naE9iUDHNYf8Cdc+Wdg==
X-Received: by 2002:a2e:98c6:: with SMTP id s6mr6115616ljj.235.1573218132535; 
 Fri, 08 Nov 2019 05:02:12 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:11 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 35/47] soc: fsl: qe: make cpm_muram_free() return void
Date: Fri,  8 Nov 2019 14:01:11 +0100
Message-Id: <20191108130123.6839-36-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050214_322073_8D83E7CB 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nobody uses the return value from cpm_muram_free, and functions that
free resources usually return void. One could imagine a use for a "how
much have I allocated" a la ksize(), but knowing how much one had
access to after the fact is useless.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_common.c | 3 +--
 include/soc/fsl/qe/qe.h        | 5 ++---
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_common.c b/drivers/soc/fsl/qe/qe_common.c
index 50be59678903..ea9bef1d2c77 100644
--- a/drivers/soc/fsl/qe/qe_common.c
+++ b/drivers/soc/fsl/qe/qe_common.c
@@ -170,7 +170,7 @@ EXPORT_SYMBOL(cpm_muram_alloc);
  * cpm_muram_free - free a chunk of multi-user ram
  * @offset: The beginning of the chunk as returned by cpm_muram_alloc().
  */
-int cpm_muram_free(s32 offset)
+void cpm_muram_free(s32 offset)
 {
 	unsigned long flags;
 	int size;
@@ -188,7 +188,6 @@ int cpm_muram_free(s32 offset)
 	}
 	gen_pool_free(muram_pool, offset + GENPOOL_OFFSET, size);
 	spin_unlock_irqrestore(&cpm_muram_lock, flags);
-	return size;
 }
 EXPORT_SYMBOL(cpm_muram_free);
 
diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
index f589ae3f1216..e282ac01ec08 100644
--- a/include/soc/fsl/qe/qe.h
+++ b/include/soc/fsl/qe/qe.h
@@ -99,7 +99,7 @@ int cpm_muram_init(void);
 
 #if defined(CONFIG_CPM) || defined(CONFIG_QUICC_ENGINE)
 s32 cpm_muram_alloc(unsigned long size, unsigned long align);
-int cpm_muram_free(s32 offset);
+void cpm_muram_free(s32 offset);
 s32 cpm_muram_alloc_fixed(unsigned long offset, unsigned long size);
 void __iomem *cpm_muram_addr(unsigned long offset);
 unsigned long cpm_muram_offset(void __iomem *addr);
@@ -111,9 +111,8 @@ static inline s32 cpm_muram_alloc(unsigned long size,
 	return -ENOSYS;
 }
 
-static inline int cpm_muram_free(s32 offset)
+static inline void cpm_muram_free(s32 offset)
 {
-	return -ENOSYS;
 }
 
 static inline s32 cpm_muram_alloc_fixed(unsigned long offset,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
