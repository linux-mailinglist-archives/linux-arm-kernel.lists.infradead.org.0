Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 676C5F4CE1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:14:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcUnh6dcycj+XAorCasyuErNqVsOqBdss3ycmDlaM18=; b=KeKk6fTR7+KLYw
	jisXWw+yX6wcExfWNPnqOBHP+8EutrwXNRVS8GYSPBAvult+xRWJek0LwFDZLX7RHorBc8t/vwcSY
	8GWwXlL093PqZjhLvdh1LJbbf6SlSb8Jj+7LmDm+j4m1TNzfZu+jDE0iU4zRrdPpxqJOHGw7JG8j2
	C22EYr7ldyMeYQbYAMzWRttuuXKYjuFAi6kCFJL31Rbkg+so044x9zElK4LKiTuEyjnZlz52cOTX0
	O5VLzFlQlTa+sGtwK+OCCyEAG0tR/y3YZrt7zkdE0EmIbu97fCAS/rwL7rTBIP2DfJ93zESfYGVqS
	UDyIKBqHUZ0fBONkEtFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT45G-0008RP-3U; Fri, 08 Nov 2019 13:13:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3u5-0004pQ-Ou
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:20 +0000
Received: by mail-lj1-x244.google.com with SMTP id 139so6138396ljf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VA9GbHfmKtODbCm0QoKaPVG8lLjwOAvz4Dj0Clq1FXQ=;
 b=ghv2Fitdi+5CpOHryA/uKu7tvP1mIrcR7EQ6Boj2/RIU2+jYku8qiRim9NlU1bMI9t
 jibRIInuK9ovNCl4B0NJGdUU3ySNR4YSeno58I0x0vbag1VAvxIje3y/7NhG3ERCFGnp
 ox4wBxv0EYbYTQMQ1MAeNcI4UNMBZJ7Jq/bJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VA9GbHfmKtODbCm0QoKaPVG8lLjwOAvz4Dj0Clq1FXQ=;
 b=OsFPFRqhgy5dwSuGH71ApmkvVzNyQdTsnJM2pPk7PYwwznkK19PHSCO/108upQ1J1M
 hb8pX5K5dYOjpOppMhigk9p2s7rel3pMNv8RWMyZgRO1oh4ciuoidMvJ+Kh7L6tmVuqL
 3tjWThIV9Wooexsb31jVSjApKUqJDhIyRQrJrEpq7k7nY3hVw07n5OGWGiGPFsfN150L
 wm5hwUrUeoToXrezow32OpRaztRBWKz7t4r/5p5jm4k/nBHaVnUjJaOE79kGpClI2rP1
 L3t0pY4tPdiJkdxXa5QVOLGb+G6x2a8yaPU20Fu7r3TolITSO5AhVrejGjAZlgi+8sYY
 QnGg==
X-Gm-Message-State: APjAAAVtq8+Ay8YqppHulxOYESnAxr2Ya1xn1CwLGask+qVdTG84czz7
 cT5tUYc73UsCFC65Qnm+K5coe5n8JGesGf3d
X-Google-Smtp-Source: APXvYqyoMqCjl5BXnYcK2ml6PASxOb4ksaKGHBnk0QjLBR1ADRWrjlHrHrSVaMf4Baj7cALCi+3dFg==
X-Received: by 2002:a2e:9119:: with SMTP id m25mr6927156ljg.24.1573218135990; 
 Fri, 08 Nov 2019 05:02:15 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:15 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 38/47] soc: fsl: qe: refactor cpm_muram_alloc_common to
 prevent BUG on error path
Date: Fri,  8 Nov 2019 14:01:14 +0100
Message-Id: <20191108130123.6839-39-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050218_481780_A38D0840 
X-CRM114-Status: GOOD (  12.62  )
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

If the kmalloc() fails, we try to undo the gen_pool allocation we've
just done. Unfortunately, start has already been modified to subtract
the GENPOOL_OFFSET bias, so we're freeing something that very likely
doesn't exist in the gen_pool, meaning we hit the

 kernel BUG at lib/genalloc.c:399!
 Internal error: Oops - BUG: 0 [#1] PREEMPT SMP ARM
 ...
 [<803fd0e8>] (gen_pool_free) from [<80426bc8>] (cpm_muram_alloc_common+0xb0/0xc8)
 [<80426bc8>] (cpm_muram_alloc_common) from [<80426c28>] (cpm_muram_alloc+0x48/0x80)
 [<80426c28>] (cpm_muram_alloc) from [<80428214>] (ucc_slow_init+0x110/0x4f0)
 [<80428214>] (ucc_slow_init) from [<8044a718>] (qe_uart_request_port+0x3c/0x1d8)

(this was tested by just injecting a random failure by adding
"|| (get_random_int()&7) == 0" to the "if (!entry)" condition).

Refactor the code so we do the kmalloc() first, meaning that's the
thing that needs undoing in case gen_pool_alloc_algo() then
fails. This allows a later cleanup to move the locking from the
callers into the _common function, keeping the kmalloc() out of the
critical region and then, hopefully (if all the muram_alloc callers
allow) change it to a GFP_KERNEL allocation.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_common.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_common.c b/drivers/soc/fsl/qe/qe_common.c
index feb33ec1c3d6..bc9b436684df 100644
--- a/drivers/soc/fsl/qe/qe_common.c
+++ b/drivers/soc/fsl/qe/qe_common.c
@@ -119,23 +119,21 @@ static s32 cpm_muram_alloc_common(unsigned long size,
 	struct muram_block *entry;
 	s32 start;
 
+	entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
+	if (!entry)
+		return -ENOMEM;
 	start = gen_pool_alloc_algo(muram_pool, size, algo, data);
-	if (!start)
-		goto out2;
+	if (!start) {
+		kfree(entry);
+		return -ENOMEM;
+	}
 	start = start - GENPOOL_OFFSET;
 	memset_io(cpm_muram_addr(start), 0, size);
-	entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
-	if (!entry)
-		goto out1;
 	entry->start = start;
 	entry->size = size;
 	list_add(&entry->head, &muram_block_list);
 
 	return start;
-out1:
-	gen_pool_free(muram_pool, start, size);
-out2:
-	return -ENOMEM;
 }
 
 /*
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
