Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBD31003DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:25:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWb7doDzhG7tWt/2wMTCH4sJLiSi9e2Hzmdh4v6Ut+w=; b=c2CSytcObILmD2
	nazQyR5OTKBao09W3IBQ4xHK+pYe7/SSzvx4I0ZsLjyBFgyKz4HH/aunPbPxHPBcW+5X3BZ5/PVGG
	2BQ52Q1zE7EGngbb7aeJDRdSYht+4SqQ0kF0EKbGnjWGVP4lDqFU3TiRRxRweS2rktaoNDTe6qq9Z
	yI1287uHqT2MDgEv+bgaLDVcNpOPoGiwWbQvSsn+JFK1RB0+HsEVQ1Mj/vn++K6MHY0aTIoTeI92t
	nJ8yfPHNLgom8fec7QwvoGWwv9hXK++hD7Xoga6NBfOHmG1FS6jBj9CWi9IqNgVdyrH9qqTeu9RQP
	maZRNh9HheZ8ypFJNPNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWf9h-0001wV-32; Mon, 18 Nov 2019 11:25:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf82-0000s7-Lb
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:23:36 +0000
Received: by mail-wr1-x444.google.com with SMTP id e6so19015741wrw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IwcdyWxRDO/TUjQjvqfZVlSTaDYPWlQZLs741mWfW6c=;
 b=Sz+4aR+XSGM2dxRcEf/Lg3e1F21fr0gSMF1utE9+uJ+WcwgrdO1piHtt7U8T3eCxvf
 r5gIQNG80QiL5t6F2XvYleE8csbrh3yEThvgdQl0DRkURhpxjUqL+dmgA/eRrtpXL1Xh
 ygKiD6Qbs7jiWktH6qrUK8fTXuMrpTyPJM4XE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IwcdyWxRDO/TUjQjvqfZVlSTaDYPWlQZLs741mWfW6c=;
 b=TNL+nAdD3Rs2TDk/Yu9ilVS7a2zKc+OYxQyuPjmmzpkRiUQfmKBarASGfQDEYrsElx
 aEQo9tqGqy1wTkVVGhbpgtBdE9nFrHYhOp4VogmyeHyGDF2si/s8L+mYibF/EUcO2R5R
 nW/TJ2o9++z9i1RgOLRUyC57SG9Ipr3NxOHhSpz41k9CU8DmT6iVBJtFNPF+QVm73aYj
 vYyHfnASKQIAEQxp3QjK3TL9nwIwGAzk4t1MHiJwZUMPHqvTc3++vtL1WGf5iHz31P4L
 dDjehmL6GpyGzb4G60a0/VjFfQsyng3bFLOawRjaxpCmFwZEfKDeSBb0fKdXP84TXGCM
 VSVw==
X-Gm-Message-State: APjAAAWPWJR/eX1TdOOuWhxS1pm6KpNARoHmCKZqO1xPdDmGmuVxFmnI
 pqWE1NZf+OS5Gsr5Q2TKb1Q6Nr3vdr+9Tw==
X-Google-Smtp-Source: APXvYqwGk1A/LCVtv+NubsNAg/aIVMCi2DaFT991ms12iNqJyI5WUhwTMNywFG7BT5oVuXqpu44oVA==
X-Received: by 2002:a5d:54c4:: with SMTP id x4mr29933260wrv.247.1574076212866; 
 Mon, 18 Nov 2019 03:23:32 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.23.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:23:32 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 02/48] soc: fsl: qe: drop volatile qualifier of struct
 qe_ic::regs
Date: Mon, 18 Nov 2019 12:22:38 +0100
Message-Id: <20191118112324.22725-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032334_706199_094CA045 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The actual io accessors (e.g. in_be32) implicitly add a volatile
qualifier to their address argument. Remove volatile from the struct
definition and the qe_ic_(read/write) helpers, in preparation for
switching from the ppc-specific io accessors to generic ones.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 4 ++--
 drivers/soc/fsl/qe/qe_ic.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 9bac546998d3..791adcd121d1 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -171,12 +171,12 @@ static struct qe_ic_info qe_ic_info[] = {
 		},
 };
 
-static inline u32 qe_ic_read(volatile __be32  __iomem * base, unsigned int reg)
+static inline u32 qe_ic_read(__be32  __iomem *base, unsigned int reg)
 {
 	return in_be32(base + (reg >> 2));
 }
 
-static inline void qe_ic_write(volatile __be32  __iomem * base, unsigned int reg,
+static inline void qe_ic_write(__be32  __iomem *base, unsigned int reg,
 			       u32 value)
 {
 	out_be32(base + (reg >> 2), value);
diff --git a/drivers/soc/fsl/qe/qe_ic.h b/drivers/soc/fsl/qe/qe_ic.h
index 08c695672a03..9420378d9b6b 100644
--- a/drivers/soc/fsl/qe/qe_ic.h
+++ b/drivers/soc/fsl/qe/qe_ic.h
@@ -72,7 +72,7 @@
 
 struct qe_ic {
 	/* Control registers offset */
-	volatile u32 __iomem *regs;
+	u32 __iomem *regs;
 
 	/* The remapper for this QEIC */
 	struct irq_domain *irqhost;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
