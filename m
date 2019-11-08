Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F916F4CA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:07:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDSpCN1iRbknPvg6I5Babtk8XtYuQJR83X41L7t6KbM=; b=CGOdWmzu71nEhY
	ALwzM40ziT4+3byb+eGXbg8uZ+AuCwb/amd5hoEN4nZReoUJcO/BJbEVKX2lzQxBcwiDfeGX1+/bJ
	hYD5MuYZKUelvswXqAICDY6mG/zN/fTYHvaBCiaG1VQU9dt3YNwh43tu06Gv78hrZXDLWH4ZH6B1g
	itR1QxX4epxG0obilY4wbSzVeRD3na9409+MEoTbKBI68kjs2rlQjALMCXT/0yvJQHIrnYEGhIIpU
	mZnWyNKZBAdy1hXBck/W8wls/DeFsD1nLQlzq+b+XEPMGXnmvn7qRyBkhfTS2fIwQO/dyc0qh/M4X
	/uZtYjhW33dbrYUF2zJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3yr-0001Tc-2n; Fri, 08 Nov 2019 13:07:13 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3td-0004PX-AU
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:01:51 +0000
Received: by mail-lf1-x144.google.com with SMTP id j14so4393862lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I90vJMFtkMg4SHfbJTMtwkyg7nT+nson2WyIsvh49PY=;
 b=PbhKDYM0OBT3xksAul3h1OM/o3gXPaDY1kEE4xazagRV/L8j/vBTOJsN/q/lCeLrIQ
 +Ce/u3WfXWThHBB36VZhxR/l13x2XffGQ66TkA+Jr+prYmzkAZaoBC3DW3y8j/4RPrBt
 Hf82PAq3Fui3TzL3AVvkgWkK0lDssi+UB5SG8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I90vJMFtkMg4SHfbJTMtwkyg7nT+nson2WyIsvh49PY=;
 b=nBc8QoWQbMhkSF9ktzQoK1apa+u0SoPVlZx3Soo/f1NTTJJdaCTti/MiAfuAUmBWDa
 2jU+Z77axai8IscpcMS6uWaa6il5TiJTbWkdiVXEgfjsGE+7nRhjcPRhW9/7QgK/cz/5
 x+C8aSBeXAB6fYj9PoJrsrxJtjG/G6MT9LLddFU66CYMoTc1hDwV51XnxGYHx3+u1zTy
 stIxaek6EAclay+JlzsjjhO/trOV6TnXfYrlMyYeDERZgP/nhuUGAavlv+qBYfi+CEQf
 Ki1ePYk2A/yeLumKfQkw0/T5S0RpmTfW4x+0yj7oDGrHhQp31XZAZJrfWRqODfd5p3gV
 37Dw==
X-Gm-Message-State: APjAAAUGvqhOaEXqkCbU51Ba8o9w6JfiOAd4RWAwKVNObxNLkwU9s5Y1
 x3at9ZVq8shKE5dCsyq7Iw+hhg==
X-Google-Smtp-Source: APXvYqy5XxK2Kh+3zn+wtnSMU7+2TFP71J3bOdA5BPAOGLsWx/rNli/FFbBzsOPZd9lzqA9TnU67gw==
X-Received: by 2002:a19:4f4c:: with SMTP id a12mr6597151lfk.18.1573218107886; 
 Fri, 08 Nov 2019 05:01:47 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:47 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 15/47] soc: fsl: qe: move qe_ic_cascade_* functions to
 qe_ic.c
Date: Fri,  8 Nov 2019 14:00:51 +0100
Message-Id: <20191108130123.6839-16-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050149_456285_B9FD7677 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

These functions are only ever called through a function pointer, and
therefore it makes no sense for them to be "static inline" - gcc has
no choice but to emit a copy in each translation unit that takes the
address of one of these. Since they are now only referenced from
qe_ic.c, just make them local to that file.

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
