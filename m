Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B78110CB76
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJHEQr1PpWk4b/O4CLoK6tq52SC5P+ihVD1VGhTH+0A=; b=ikm24+HeXBE224
	PLKLSgYSSKt8kmJzSqGtUzbAhNEu76E4kLe5RbLk2BZPSIjNLkcmXn0gDRyyBB4N6AcWocO9rqyPm
	tczd4xBvmQ9hfjbL7iSPpJAD7S5sosljh+rzw4kcB5ooWUwa8Vq7sMrwxZu5a+YKnwXYS+2U5XbOe
	h9RwLTOBZCIGdfBD5H6o/MBT9TKD8D5gjVlbYZallTPSvvhCLtBeoleAG2lkiQeFmTtix+zlQPAB7
	lJ8lVz8qcMFYdzvg2nyHoSdSBeGsh76ZSdxjio3dCIPR+NqrNleVCJ4gy8plsJ8Gz+Fibcx9zp0Bq
	Cs4NA3Ka0ejPDmW2qF3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLUq-0006qV-8k; Thu, 28 Nov 2019 15:14:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLTQ-0005ML-Tl
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qKdvwcnizpIkFI9t57inNaEi/biZWbwu3x6mukvDQNQ=; b=J8zggVW1tJTXjlpNHXlcZyO+RC
 H1jNv8nGEMgIzqbIyoLDrLFxkXPVhockcvOlehR89QEGDoboZPDAcgQo18Yccn2sEr+ekbKmpek2t
 uF/18TVGzIxBw04vUQRYoNLqla7KRdo/LCR4EGDH5MHFD/zImGAVq8xnRzyOVdjc/08Wwej48ueUJ
 ZVxTLmwTbz4UQDkhfR1D0Q31xvWCY5iTIQHyJmaE79GFSph/l/F+s0CHFCr5PsCB/IxaHmxSwwrFE
 +ZeKaM+SYhcyQ+vG2zQdvOr67RznKHJbq7z4no6np9INIaQnsqx0Kl0NLp6djeTfrbyLXQd9PISH8
 udSiu9BQ==;
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEx-0005ud-Ul
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:57 +0000
Received: by mail-lj1-x241.google.com with SMTP id m4so28804097ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qKdvwcnizpIkFI9t57inNaEi/biZWbwu3x6mukvDQNQ=;
 b=GXR7h189KWmMuCEgAsfesMkaS7/yLULcQ3ermBBqiLoePUOb3iFLzhcdcp6t2wVZgq
 sfJPgK7lRcAJ2VXBnfko0WUQ115Crvh+6j74wNi82eYi/gqtd2ffzNJSUgIpN69VAuKw
 M7R+MvAUcM078M4y/tyK7GbHanw3DvlHtiVeU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qKdvwcnizpIkFI9t57inNaEi/biZWbwu3x6mukvDQNQ=;
 b=b4oyQeEHhj/K2TQovxzRS30kcR2+J7vCJlazopUGvyFtJpvriudCG5rKlfC8wa+oEi
 +TWPABYavuF7ICANPRgqZ6p8hSicyA/aI7gNHkp33al3pRZC/WuLnNnwGajWdkIF4bf4
 mj96hfEg27XPEP0etH89wafW03mX+pO0EkWkGu0fF3VsHwUeBc8hRjhY93xXAB6cmtoz
 itdI6DpkC5QnJp/iO56ZPo/xyv+Vw275v1uMCaOJckLxtVhWodfRHWXNynUqIQa/XY57
 OKvMk/YDgG4mD0t0p3NQZHQ25XABsoBhY4f8N28yfFjeai9N88wXT16882UvnPBJVBsC
 QT5Q==
X-Gm-Message-State: APjAAAV90m0VT1R1JNs88BD0KQ3ZtNLNZAupv+iUP7QC1ZmZu+sXe7er
 J6AUE28Jezx0PQGtXZnrdpAS5A==
X-Google-Smtp-Source: APXvYqw9VJw3afZhEl8LGGYaK7zsqCCH1elcoXHtq7+JnNOVsx7Jf90jLMpZjWzAcSNxwfCwbbQDgw==
X-Received: by 2002:a2e:998f:: with SMTP id w15mr5203320lji.169.1574953044783; 
 Thu, 28 Nov 2019 06:57:24 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:24 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 15/49] soc: fsl: qe: move qe_ic_cascade_* functions to
 qe_ic.c
Date: Thu, 28 Nov 2019 15:55:20 +0100
Message-Id: <20191128145554.1297-16-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_145755_998168_60A464AB 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

These functions are only ever called through a function pointer, and
therefore it makes no sense for them to be "static inline" - gcc has
no choice but to emit a copy in each translation unit that takes the
address of one of these. Since they are now only referenced from
qe_ic.c, just make them local to that file.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 42 ++++++++++++++++++++++++++++++++++++++
 include/soc/fsl/qe/qe_ic.h | 42 --------------------------------------
 2 files changed, 42 insertions(+), 42 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index a062efac398b..94ccbeeb1ad1 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -314,6 +314,48 @@ unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 	return irq_linear_revmap(qe_ic->irqhost, irq);
 }
 
+static void qe_ic_cascade_low_mpic(struct irq_desc *desc)
+{
+	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
+	unsigned int cascade_irq = qe_ic_get_low_irq(qe_ic);
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+
+	if (cascade_irq != NO_IRQ)
+		generic_handle_irq(cascade_irq);
+
+	if (chip->irq_eoi)
+		chip->irq_eoi(&desc->irq_data);
+}
+
+static void qe_ic_cascade_high_mpic(struct irq_desc *desc)
+{
+	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
+	unsigned int cascade_irq = qe_ic_get_high_irq(qe_ic);
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+
+	if (cascade_irq != NO_IRQ)
+		generic_handle_irq(cascade_irq);
+
+	if (chip->irq_eoi)
+		chip->irq_eoi(&desc->irq_data);
+}
+
+static void qe_ic_cascade_muxed_mpic(struct irq_desc *desc)
+{
+	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
+	unsigned int cascade_irq;
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+
+	cascade_irq = qe_ic_get_high_irq(qe_ic);
+	if (cascade_irq == NO_IRQ)
+		cascade_irq = qe_ic_get_low_irq(qe_ic);
+
+	if (cascade_irq != NO_IRQ)
+		generic_handle_irq(cascade_irq);
+
+	chip->irq_eoi(&desc->irq_data);
+}
+
 static void __init qe_ic_init(struct device_node *node, unsigned int flags)
 {
 	void (*low_handler)(struct irq_desc *desc);
diff --git a/include/soc/fsl/qe/qe_ic.h b/include/soc/fsl/qe/qe_ic.h
index a47a0d26acbd..43e4ce95c6a0 100644
--- a/include/soc/fsl/qe/qe_ic.h
+++ b/include/soc/fsl/qe/qe_ic.h
@@ -67,46 +67,4 @@ void qe_ic_set_highest_priority(unsigned int virq, int high);
 int qe_ic_set_priority(unsigned int virq, unsigned int priority);
 int qe_ic_set_high_priority(unsigned int virq, unsigned int priority, int high);
 
-static inline void qe_ic_cascade_low_mpic(struct irq_desc *desc)
-{
-	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
-	unsigned int cascade_irq = qe_ic_get_low_irq(qe_ic);
-	struct irq_chip *chip = irq_desc_get_chip(desc);
-
-	if (cascade_irq != NO_IRQ)
-		generic_handle_irq(cascade_irq);
-
-	if (chip->irq_eoi)
-		chip->irq_eoi(&desc->irq_data);
-}
-
-static inline void qe_ic_cascade_high_mpic(struct irq_desc *desc)
-{
-	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
-	unsigned int cascade_irq = qe_ic_get_high_irq(qe_ic);
-	struct irq_chip *chip = irq_desc_get_chip(desc);
-
-	if (cascade_irq != NO_IRQ)
-		generic_handle_irq(cascade_irq);
-
-	if (chip->irq_eoi)
-		chip->irq_eoi(&desc->irq_data);
-}
-
-static inline void qe_ic_cascade_muxed_mpic(struct irq_desc *desc)
-{
-	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
-	unsigned int cascade_irq;
-	struct irq_chip *chip = irq_desc_get_chip(desc);
-
-	cascade_irq = qe_ic_get_high_irq(qe_ic);
-	if (cascade_irq == NO_IRQ)
-		cascade_irq = qe_ic_get_low_irq(qe_ic);
-
-	if (cascade_irq != NO_IRQ)
-		generic_handle_irq(cascade_irq);
-
-	chip->irq_eoi(&desc->irq_data);
-}
-
 #endif /* _ASM_POWERPC_QE_IC_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
