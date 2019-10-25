Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41893E4B6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5W8/0FV9PXlE/A8pqCBXf/gGIG7/geyEDoQ5L9H/8II=; b=WMAQtYTthVWAn+
	rKM7mapkfNEZ4Bv5eQzurX+pdPJvLXP2cgBsH9gysr+DfH7gPxvNYbUADWU8BKGC85odul0qSC91C
	c6zEp1FQtoBInNe4H5SRNXT4n7J4GHGC6tDsOuCcOWv7cGgPx9GxYT7mXaWq4gciIwMlj3dbMWYMB
	hTQhk5axk/sigQsw8EPnPe/Obv84bDov6qQSIvVNl4VHO9lic/+rVanefda5ZbYQlOB6li25ZQxTh
	jt708Um7hCZq+oKsfSFxCe1zShQ7wLdlnK/UMMaHm0tQ8liE+lblTYUfovpQrHJvEYRdib7KjaN2P
	VvpvPLqjNEjUaUPGZg9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyxg-0000Ih-4E; Fri, 25 Oct 2019 12:45:00 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyu4-0006Iy-6z
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id q64so2500379ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1cMUUEEaqLgFID6Rj+SOVy/wiDu2Od0ETCBosPApTXM=;
 b=RkT8iPQGc64p6Dti5IejG1G8J3GY7xJjHLBh9m/iqrMosaYO0iEp2O2kheCemPguID
 Yj8DB2aRS/LT/vf2lao7eSjn2FQcUy+SP5Y+bwJI5sf0f//E/YWFUujVzRv7VwkH3r8X
 WdFSP6vBfURbbrKxiSSmo+C0sAWmb2EBgF6oU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1cMUUEEaqLgFID6Rj+SOVy/wiDu2Od0ETCBosPApTXM=;
 b=s/S0uZuAksq6S+KBrb/Nxkx2NchXIB4Mb7o6PW4BiKkt3hrsFayPslPLwJuV56i23W
 NT0EnwKT/LPIpLmEhpO4yb5Wpq6tXuBAtzhK1QIOhXFpBTviERVlNC0cOkt6EfWBZJDa
 TGrGevWWxmEqqkStDaH9t5SrSJoh6KLH5PkZAxsj4ht4s3K35PuJ29Zu3u6mu1YA7egR
 o/AM1B7OTF4+tkGUViLmFtrwUbbHpvjgVoWMUtb9mr0YvxOgvtN3vHe0amRY6pMVuQSz
 A8DCImz3huoy+sNEU6FvbyjJTDZigmR9CVpl3gfiJaoDvC0PusWWoFlvXutr5QugDeK6
 fgDQ==
X-Gm-Message-State: APjAAAVJ3bwoTyfKlTaMme7eBJkf8VKgldAJ8QvOfwEpHetHTx7hVxDW
 OISsE3I2qV48sjJgBKfjzPtJfA==
X-Google-Smtp-Source: APXvYqwZKDa09TpRzvgnaDL2KQpgsamPI5WzmMdwjrYiCBoRb24b5RkaOwqC9NeA4wCbQ+UZAxCzKA==
X-Received: by 2002:a2e:8793:: with SMTP id n19mr2255901lji.139.1572007274261; 
 Fri, 25 Oct 2019 05:41:14 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:13 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 09/23] soc: fsl: qe: move qe_ic_cascade_* functions to
 qe_ic.c
Date: Fri, 25 Oct 2019 14:40:44 +0200
Message-Id: <20191025124058.22580-10-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054116_258274_D8144CF4 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These functions are only ever called through a function pointer, and
therefore it makes no sense for them to be "static inline" - gcc has
no choice but to emit a copy in each translation unit that takes the
address of one of these (currently various platform code under
arch/powerpc/). So move them into qe_ic.c and leave ordinary extern
declarations in the header file.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 58 +++++++++++++++++++++++++++++++++++
 include/soc/fsl/qe/qe_ic.h | 62 +++-----------------------------------
 2 files changed, 63 insertions(+), 57 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 7b1870d2866a..a847b2672e90 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -402,6 +402,64 @@ unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 	return irq_linear_revmap(qe_ic->irqhost, irq);
 }
 
+void qe_ic_cascade_low_ipic(struct irq_desc *desc)
+{
+	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
+	unsigned int cascade_irq = qe_ic_get_low_irq(qe_ic);
+
+	if (cascade_irq != NO_IRQ)
+		generic_handle_irq(cascade_irq);
+}
+
+void qe_ic_cascade_high_ipic(struct irq_desc *desc)
+{
+	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
+	unsigned int cascade_irq = qe_ic_get_high_irq(qe_ic);
+
+	if (cascade_irq != NO_IRQ)
+		generic_handle_irq(cascade_irq);
+}
+
+void qe_ic_cascade_low_mpic(struct irq_desc *desc)
+{
+	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
+	unsigned int cascade_irq = qe_ic_get_low_irq(qe_ic);
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+
+	if (cascade_irq != NO_IRQ)
+		generic_handle_irq(cascade_irq);
+
+	chip->irq_eoi(&desc->irq_data);
+}
+
+void qe_ic_cascade_high_mpic(struct irq_desc *desc)
+{
+	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
+	unsigned int cascade_irq = qe_ic_get_high_irq(qe_ic);
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+
+	if (cascade_irq != NO_IRQ)
+		generic_handle_irq(cascade_irq);
+
+	chip->irq_eoi(&desc->irq_data);
+}
+
+void qe_ic_cascade_muxed_mpic(struct irq_desc *desc)
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
 void __init qe_ic_init(struct device_node *node, unsigned int flags,
 		       void (*low_handler)(struct irq_desc *desc),
 		       void (*high_handler)(struct irq_desc *desc))
diff --git a/include/soc/fsl/qe/qe_ic.h b/include/soc/fsl/qe/qe_ic.h
index 714a9b890d8d..f3492eb13052 100644
--- a/include/soc/fsl/qe/qe_ic.h
+++ b/include/soc/fsl/qe/qe_ic.h
@@ -74,62 +74,10 @@ void qe_ic_set_highest_priority(unsigned int virq, int high);
 int qe_ic_set_priority(unsigned int virq, unsigned int priority);
 int qe_ic_set_high_priority(unsigned int virq, unsigned int priority, int high);
 
-static inline void qe_ic_cascade_low_ipic(struct irq_desc *desc)
-{
-	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
-	unsigned int cascade_irq = qe_ic_get_low_irq(qe_ic);
-
-	if (cascade_irq != NO_IRQ)
-		generic_handle_irq(cascade_irq);
-}
-
-static inline void qe_ic_cascade_high_ipic(struct irq_desc *desc)
-{
-	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
-	unsigned int cascade_irq = qe_ic_get_high_irq(qe_ic);
-
-	if (cascade_irq != NO_IRQ)
-		generic_handle_irq(cascade_irq);
-}
-
-static inline void qe_ic_cascade_low_mpic(struct irq_desc *desc)
-{
-	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
-	unsigned int cascade_irq = qe_ic_get_low_irq(qe_ic);
-	struct irq_chip *chip = irq_desc_get_chip(desc);
-
-	if (cascade_irq != NO_IRQ)
-		generic_handle_irq(cascade_irq);
-
-	chip->irq_eoi(&desc->irq_data);
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
-	chip->irq_eoi(&desc->irq_data);
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
+void qe_ic_cascade_low_ipic(struct irq_desc *desc);
+void qe_ic_cascade_high_ipic(struct irq_desc *desc);
+void qe_ic_cascade_low_mpic(struct irq_desc *desc);
+void qe_ic_cascade_high_mpic(struct irq_desc *desc);
+void qe_ic_cascade_muxed_mpic(struct irq_desc *desc);
 
 #endif /* _ASM_POWERPC_QE_IC_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
