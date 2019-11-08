Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B08BF4CDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:13:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMlXgstFR3o9hx6RJ+dlk4tE4IMbS4iIJEMRuvDkE48=; b=C2aC/M0NBHWGRU
	jKRVPZqvxaJgo+6WrxGZoZNEM+3ohkWChEG5YTLebQVyUVCZeNPHkuGhBgh1QFEQcXg6+LKQbaPCO
	S8qjEGPGCO2yrbf+kvKuLNsyo5MrbNQ1R6PWDwFGGSCSonUM6CZlwwUMK/6fZiQXnifrnapzjxbYx
	S4gva03EI7dSD+Jt0K5C4zJEq3/6GbEtxaMRwwzs/IXS7OKfmnrxbLWrHQr7+QSRRku7WgKfZhEz9
	U6Ir6SliqDOx1MHWcaq0LRx4uB7vJD31z2jVwLux11o06xz315u49dSV5Wc5eLLvcK94P+bdUCMOL
	+XUfEIR1c+wcGoiuhy+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT44x-00089v-7G; Fri, 08 Nov 2019 13:13:31 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3u4-0004oV-8B
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id g3so6104958ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nGAR/RezFR3p4yZ/WuemAtPhyGpYuWvNUP10WcDqxdQ=;
 b=E2itMeYzpcpcvPiEYcR7QgT0vf86pgTt+txJLe4ypE1iKN4ygJjlMfIdTBHaIbca7l
 8TpMr7BlmS1pHXW8Lc8yrYYMbrYpZ6OWxpbB6h/El0hJa3CJ4u+D0CSxshybjUOT8noF
 QvazWxYu0noVka+ujfegXunMpmQNGUILv+4L4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nGAR/RezFR3p4yZ/WuemAtPhyGpYuWvNUP10WcDqxdQ=;
 b=ghl+jmYUU9RIqTI2JCrt1r6HmVdaHSPLvKSQO1n514MCw/YzK02PzE7Shu9mybiZDH
 ErUdH0qDzrMOm9vRCQ8D16gUmJuw0iPlhs69Z0PdXGmtXO0UbEsXCPNc1cuMfsth6Oc9
 42UHoHmbfkwXJZyzlNbLsXYSNePI85ct3zBeMo3wqJkLhRTsyFyTU0DXUYaP/NGAYNtk
 iYdsUTKIzz1j/oI1kQfBdL5FMxAdrrAP8kafR2AqO88kO4wn1wetL1nK9InO+iOATEB8
 Y+eP72aLfiFgTRnyf+L5oXT5ACcLLwZLb7b+Gy6B+9pN9Z4AGl66LhGyngcIKoineb9/
 BWJg==
X-Gm-Message-State: APjAAAXEp4bmGaO04XYN57JnJ3Zi/a40YPOfq/d2mJenIibFAOlRCNax
 l31BiBqdlMtHQs8qaHUhWj99kA==
X-Google-Smtp-Source: APXvYqxRVlzGHosXYr2fWpCL9TuHFktXGiL0j9+nCag9bKeXu8pwMfcJUWqBOjQJYoqb1ThzLR2FBQ==
X-Received: by 2002:a2e:9b4b:: with SMTP id o11mr6798538ljj.252.1573218134744; 
 Fri, 08 Nov 2019 05:02:14 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:14 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 37/47] soc: fsl: qe: drop broken lazy call of
 cpm_muram_init()
Date: Fri,  8 Nov 2019 14:01:13 +0100
Message-Id: <20191108130123.6839-38-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050216_348603_93D70CF7 
X-CRM114-Status: GOOD (  10.48  )
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

cpm_muram_alloc_common() tries to support a kind of lazy
initialization - if the muram_pool has not been created yet, it calls
cpm_muram_init(). Now, cpm_muram_alloc_common() is always called under

	spin_lock_irqsave(&cpm_muram_lock, flags);

and cpm_muram_init() does gen_pool_create() (which implies a
GFP_KERNEL allocation) and ioremap(), not to mention the fun that
ensues from cpm_muram_init() doing

	spin_lock_init(&cpm_muram_lock);

In other words, this has never worked, so nobody can have been relying
on it.

cpm_muram_init() is called from a subsys_initcall (either from
cpm_init() in arch/powerpc/sysdev/cpm_common.c or, via qe_reset(),
from qe_init() in drivers/soc/fsl/qe/qe.c).

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_common.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_common.c b/drivers/soc/fsl/qe/qe_common.c
index 4437f4e14d2c..feb33ec1c3d6 100644
--- a/drivers/soc/fsl/qe/qe_common.c
+++ b/drivers/soc/fsl/qe/qe_common.c
@@ -119,9 +119,6 @@ static s32 cpm_muram_alloc_common(unsigned long size,
 	struct muram_block *entry;
 	s32 start;
 
-	if (!muram_pool && cpm_muram_init())
-		goto out2;
-
 	start = gen_pool_alloc_algo(muram_pool, size, algo, data);
 	if (!start)
 		goto out2;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
