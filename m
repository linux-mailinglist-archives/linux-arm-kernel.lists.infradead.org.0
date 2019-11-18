Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE2A100429
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:31:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e76PdjrZD5X16Y1rWTFX4ZFPrt8LdJ4M5zcvgCmElMQ=; b=aUnuaG/wDWI7/n
	XPJELG7ENVnZlzJmRr7z9n28faEDYDyfQ0jHF0xhIzqTQ0g9Ew9Y+YjnAQI33B8la5djQ3vvfi9qr
	qLpvoMETzqMhgg6riwFbw8eqpuw5hXA+hBAaTzpVcQ8oXzN/Pe9gWhygg1z0eUwaGSapcq9j5xO3O
	H7AqO3EdZpuIGs5mRKDo8ieNUYUHmZoM1jjWgM68/fBSXVmwLxKpOPR4BvEhv8MvVQKBadUbMw0VT
	4jewwoLXjixXbaknvBrNZkIvBafKN8baXQw+NBd4P5HA8PLYYIwbtYpDct+B20ceYjZgAk8oWS8f5
	g7mjAMkPLTx2AHFoHOOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfFH-0000Re-8N; Mon, 18 Nov 2019 11:31:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8O-0001D0-VL
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id a15so18981032wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6fFt1ZLVVia10843rsyK8F6LgIm9rFapqPGOb1a1zZs=;
 b=UVTics3lL4qvxi3oisNP7w0QJ8T5szNsG1ROc5MisQWYc3ObAFu0rpCi1aJlci2gds
 3ltOHohbpQ1GBb+AkEOB/xMhLUt61gmR9I8uzbGKEHcBuFOAWSMIXaFnCUiygT8FuHJh
 mbBye4MDO/U9RS1YNe8F/V6sJn39y6c3lUahM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6fFt1ZLVVia10843rsyK8F6LgIm9rFapqPGOb1a1zZs=;
 b=oSDfMxObTNThKYmdhhQPmmH87YrVO+UK0g/2taMTjN7znnNM3jxw0IAk10Jdbb0Fv/
 j9WDygCxyj66ZiY4V5hTRCedwSZmVtXiggD7gfX7xSj9a34tSodZAWhhxZpHDmWhRzo8
 /UHnzKabe2LyXNTW4AidfC14P8kVxqx/64PmzrMvsnqifZH8D6grDhqrUhP0Chk+7hYT
 AJYLrjeNUEXcHn0Hhxa8Chqj3V6ybDeIesWPDtobG1X7F6vTIwCR6WDUuiql5wnnWskF
 rbYBnoAUjfXr/vAxwwEFaezXuu0/vnmm8BqET+f7Zr62k+50Valt8pN0ruVZi+JhhRpZ
 NYkw==
X-Gm-Message-State: APjAAAXqj8RFFKWqPzdIm74yDaW/iySv5mpahXYGwoN4mJ1a+mmTisda
 hEiQXG2iQFiL7IgG5AVlBVKBtA==
X-Google-Smtp-Source: APXvYqwu9bkesrQ20K07+PxU2ELWKQJv+iHHK665aXHnshdru6I4+DvpjJQitC+c3pUvnpjk1+MopA==
X-Received: by 2002:a5d:4585:: with SMTP id p5mr11457061wrq.134.1574076235447; 
 Mon, 18 Nov 2019 03:23:55 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.23.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:23:54 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 19/48] soc: fsl: qe: make qe_ic_get_{low,high}_irq static
Date: Mon, 18 Nov 2019 12:22:55 +0100
Message-Id: <20191118112324.22725-20-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032357_208056_82ECA3B2 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

These are only called from within qe_ic.c, so make them static.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c |  4 ++--
 include/soc/fsl/qe/qe_ic.h | 10 ----------
 2 files changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 8f74bc6efd5c..23b457e884d8 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -283,7 +283,7 @@ static const struct irq_domain_ops qe_ic_host_ops = {
 };
 
 /* Return an interrupt vector or 0 if no interrupt is pending. */
-unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic)
+static unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic)
 {
 	int irq;
 
@@ -299,7 +299,7 @@ unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic)
 }
 
 /* Return an interrupt vector or 0 if no interrupt is pending. */
-unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
+static unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 {
 	int irq;
 
diff --git a/include/soc/fsl/qe/qe_ic.h b/include/soc/fsl/qe/qe_ic.h
index d47eb231519e..70bb5a0f6535 100644
--- a/include/soc/fsl/qe/qe_ic.h
+++ b/include/soc/fsl/qe/qe_ic.h
@@ -53,14 +53,4 @@ enum qe_ic_grp_id {
 	QE_IC_GRP_RISCB		/* QE interrupt controller RISC group B */
 };
 
-#ifdef CONFIG_QUICC_ENGINE
-unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic);
-unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic);
-#else
-static inline unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic)
-{ return 0; }
-static inline unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
-{ return 0; }
-#endif /* CONFIG_QUICC_ENGINE */
-
 #endif /* _ASM_POWERPC_QE_IC_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
