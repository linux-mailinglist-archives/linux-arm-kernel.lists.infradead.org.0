Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5011A503C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HWWEsF69ccZhllZ7DLDuH61LBwsH8RWNbO8nkDOe7I=; b=jWOlwczLst6m3A
	XGdlZiO6pniT1zkVNWl7BQsBmtixvo/c5sBZbTrEFnyR+DIJOoZ1Il/+iub9d3MQ0bxHrkNtuKRv+
	BqcULF+0fVVKfUlnQC0m3a6wt/Kpuoh6wZlxUJxDxBGL91WietfLMVU/paHe+tg8slUO0RmO1Fkwk
	uFVxvhoghqhqwOVAtRDxd0miyYrMtUboFGLBd11sSH0TRQnN/ITwRzxyxUR086LhYUzL2cnQ5BUDN
	9T5BRLPBszdWRCSpzSbd4xo605FdoFZBrG7dkbnmVLUA4PNNlBZ4uVcU8fISswqdx0XwcmKbdM2Lb
	tlnzzu8hKcQ7NO5GQoZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJa1-0008CB-CO; Mon, 24 Jun 2019 07:39:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJYf-0007Ev-Je
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:38:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id a15so11714835wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5OEzIzFiMPRV9S0K58N+POdMr4xGLcUFsxWOdk6NnnA=;
 b=JbFH8Ho1Xh+3eJVIL3O+9G/GjV6avDk5EN1nC/D6Yddr2ODKBk8LYB8If1dVcCabO6
 4EPFLzpLy/BEaB+YdzCD6Q5ooGapt/8xL2NsmEMV8SVxqqeWKlrnBUTKCNK9yM0SynIS
 +7l4AtjnkeodLGEORYVqv7yemIWAq/J+2wU4GtyD5PKzC103nVnL/13n8kaEQypBG0ql
 CMGcBlyELTKIvt/rYd+sjHlkJutOgO75xTcrCL9ldmFsqVHGzY9xDNSik5X/1Xg64zhO
 OW3k439WmWi9NhfATrDDosUq7sUzmn99MhQLP1/M7WvfA9UkvPbbL0LsVVO4V4KwTVi9
 oA1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5OEzIzFiMPRV9S0K58N+POdMr4xGLcUFsxWOdk6NnnA=;
 b=FlClkyXqs6G9u3lzodGTGvnog1mSO8U7tjffq5YPPz4PtiyRw4N4wzefI7ndmZoWgB
 zRbvPd9tf07WyQsu5Nwv7tL1FR3zraWnMWAAGijjcJvKY0MfoziT3SVym2pgWyOrERPV
 8TW2snyd0PLXIGZ1edM+jFm0M4bXK2+Va7UF+WlYtZvGeL5CbBO56epqjFStfMNQ0jyG
 p7FzT8i4f0bF6hp/qnf3s4E5Paxy/BRvOsA5vLq5/VXID/+ANbe3nueilV+ML51ktkxF
 1TrpgSwi2zVXpAT0UUh5HC7PPWSjIjtjRiSwwV7HaNg1SGMVQs80waZxVwXdD4zDFhkR
 dbYw==
X-Gm-Message-State: APjAAAX6lRxeBy46qesJr8sor/nNeBQG7bZzrc2C7BXjrHPZ5c9tnNq1
 9I2T42cvWRLmZp4uxk729u3T6A==
X-Google-Smtp-Source: APXvYqyWlASfuGG5PFotiQ4hV9ePUb36FLzyGCScJmzQBe02DVBroVPPAdLZZh2kB6zr0Khaw6Ni1g==
X-Received: by 2002:a1c:5a56:: with SMTP id o83mr14098674wmb.103.1561361912283; 
 Mon, 24 Jun 2019 00:38:32 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:4866:7cdc:a930:8455])
 by smtp.gmail.com with ESMTPSA id 203sm7419280wmc.30.2019.06.24.00.38.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 00:38:31 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 3/6] crypto: aegis - avoid prerotated AES tables
Date: Mon, 24 Jun 2019 09:38:15 +0200
Message-Id: <20190624073818.29296-4-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_003833_829649_1B6438BC 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Steve Capper <steve.capper@arm.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The generic AES code provides four sets of lookup tables, where each
set consists of four tables containing the same 32-bit values, but
rotated by 0, 8, 16 and 24 bits, respectively. This makes sense for
CISC architectures such as x86 which support memory operands, but
for other architectures, the rotates are quite cheap, and using all
four tables needlessly thrashes the D-cache, and actually hurts rather
than helps performance.

Since x86 already has its own implementation of AEGIS based on AES-NI
instructions, let's tweak the generic implementation towards other
architectures, and avoid the prerotated tables, and perform the
rotations inline. On ARM Cortex-A53, this results in a ~8% speedup.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/aegis.h | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/crypto/aegis.h b/crypto/aegis.h
index 41a3090cda8e..3308066ddde0 100644
--- a/crypto/aegis.h
+++ b/crypto/aegis.h
@@ -10,6 +10,7 @@
 #define _CRYPTO_AEGIS_H
 
 #include <crypto/aes.h>
+#include <linux/bitops.h>
 #include <linux/types.h>
 
 #define AEGIS_BLOCK_SIZE 16
@@ -53,16 +54,13 @@ static void crypto_aegis_aesenc(union aegis_block *dst,
 				const union aegis_block *key)
 {
 	const u8  *s  = src->bytes;
-	const u32 *t0 = crypto_ft_tab[0];
-	const u32 *t1 = crypto_ft_tab[1];
-	const u32 *t2 = crypto_ft_tab[2];
-	const u32 *t3 = crypto_ft_tab[3];
+	const u32 *t = crypto_ft_tab[0];
 	u32 d0, d1, d2, d3;
 
-	d0 = t0[s[ 0]] ^ t1[s[ 5]] ^ t2[s[10]] ^ t3[s[15]];
-	d1 = t0[s[ 4]] ^ t1[s[ 9]] ^ t2[s[14]] ^ t3[s[ 3]];
-	d2 = t0[s[ 8]] ^ t1[s[13]] ^ t2[s[ 2]] ^ t3[s[ 7]];
-	d3 = t0[s[12]] ^ t1[s[ 1]] ^ t2[s[ 6]] ^ t3[s[11]];
+	d0 = t[s[ 0]] ^ rol32(t[s[ 5]], 8) ^ rol32(t[s[10]], 16) ^ rol32(t[s[15]], 24);
+	d1 = t[s[ 4]] ^ rol32(t[s[ 9]], 8) ^ rol32(t[s[14]], 16) ^ rol32(t[s[ 3]], 24);
+	d2 = t[s[ 8]] ^ rol32(t[s[13]], 8) ^ rol32(t[s[ 2]], 16) ^ rol32(t[s[ 7]], 24);
+	d3 = t[s[12]] ^ rol32(t[s[ 1]], 8) ^ rol32(t[s[ 6]], 16) ^ rol32(t[s[11]], 24);
 
 	dst->words32[0] = cpu_to_le32(d0) ^ key->words32[0];
 	dst->words32[1] = cpu_to_le32(d1) ^ key->words32[1];
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
