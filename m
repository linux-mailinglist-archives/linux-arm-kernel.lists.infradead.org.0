Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02B710CB48
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSPrLLFa7HCSoEOmfF4T/hgvw3dTqUVLg3CIKWcciig=; b=AyJp5wCsLFA++h
	NFp5ht1fzoXzQNOos+wzibJ1g1cyA7b4tCc785iO5MqXvKnGaMhrN/g8xeHedg+P24W4azSNG9KbA
	V1vMXDMHuYn+Em+vwCgOHgbJWgbX4BwJNNrJsIZakDPrMVm6LgaPOh+8nazUL/0Af+dthHhqJWCBS
	dZQSTsqpOelRdwJva3DnIspuUOqXEwg7p4iTNMO+R7WWdNf7hR400rW0RoEXj79fDV6SFT9KchZEw
	2QtCVc2znLaX9epBuA7U+aLHZazbd6m84cKqJCouJdDQ40JfC0c+RDWFyIUspkDdUvm7ZMQTXbdlN
	gr8m4S3BTuuiHLtJDshw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLMV-00006e-H0; Thu, 28 Nov 2019 15:05:43 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEw-00011s-Ji
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:07 +0000
Received: by mail-lj1-x241.google.com with SMTP id e10so19659215ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L4hA4zEJWHs66Lwy24heYdX9pI+8KbPTU8eYDZ/QqTY=;
 b=da4NAHVb4/ZNRDjdsIzpZ6eBC190ajJKLA6grEN7ZG5F7RsAa84POPBq4Y87Q7auQm
 xRGGWr7p+8MbKeInnDDiu3EQ3GpQftYCTE4bdeQYkVNsMzUes1Xtm6O1Ec6zmFv7bnSN
 0yOz/L6VHetbifeISQ2w0sf4c+jZoGTDGlfoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L4hA4zEJWHs66Lwy24heYdX9pI+8KbPTU8eYDZ/QqTY=;
 b=e0oNo1wB2C4lm+4Grz90qQzbWNg+AXmNz8tFflUxLI2VF42ei23Bp8r8yDakIIyMOU
 GlxOW+SznghZCWFp/g4WOsvjEJoxtdZ9c2QTtL/UG+w9O8VlBPhUz+ThFJho3Jj49C6j
 9qPvsfhYYJsNcRT2PtZRK4zLEsbamND1Y0WujrQNKVskCTqs3ybc5VvzGSvlfPKvws0S
 E61LjVBdE9Lva1g6y4Wr3EjzWPUvNx6iYP3QasF4Nw0QbsxnSaWUj9Lqut7ENiQJ+ugz
 h/oZs9agDP6JlHEK0oKfwIYTSlR/Q1AxSt6OzHB4c/qCnF2ux/7OAt2cnb54RwU0v7CA
 Fymg==
X-Gm-Message-State: APjAAAXVj2ZKrjgYaImTbIwSXTwFrY1OftLl36IFTTqIObAVkIo2aSGu
 fVBqU9mz+6hDjnwYrkIsw3Rk+A==
X-Google-Smtp-Source: APXvYqwfABDko30317bMIKZ2QbVVstLAKjVquLP+ohBUzZYK0IJWt98nEGubG91JvI6olW9Wy2yv3g==
X-Received: by 2002:a05:651c:32a:: with SMTP id
 b10mr7947026ljp.132.1574953073001; 
 Thu, 28 Nov 2019 06:57:53 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:52 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 36/49] soc: fsl: qe: make cpm_muram_free() return void
Date: Thu, 28 Nov 2019 15:55:41 +0100
Message-Id: <20191128145554.1297-37-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065754_722172_304401A4 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nobody uses the return value from cpm_muram_free, and functions that
free resources usually return void. One could imagine a use for a "how
much have I allocated" a la ksize(), but knowing how much one had
access to after the fact is useless.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_common.c | 3 +--
 include/soc/fsl/qe/qe.h        | 5 ++---
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_common.c b/drivers/soc/fsl/qe/qe_common.c
index 84c90105e588..962835488f66 100644
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
