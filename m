Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E3210CB75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:14:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CR9ZJwF/qbNgq+OlP9BGH5kyQ4RV3HiCUzNk2IgHrP4=; b=CbnNNLhTVTwgOZ
	I8v9N7ejQpalZ3puoiAaKyuyzUavCd4QYFbwq2bMs+eGhzYbF8Bw6NzLCmRFkzAH2PbVpfhU+CKAW
	QS0JmGhXUwdp0YM0KdVyRbBRgJDR20yW558LzXEJ9C6Bc8xOR9aN3vCT9s6R3Lh8bVAL6IKtip9eu
	XkpDr6AjUuS4k/J59OANOFhr0CssTJnbxztU++BaqWNZVtJ6ZbUWyG2eeAQUExWl7ib7MxKXyNwuM
	CFNQ7kFnKpYcIuPd9NTlUcJAyGquh61kq5C1LuOmdbBkNPjrTfoNKVoiUT2R0G++VexWcU/qpcpeA
	UxBJvrTrEdG5s15IjeLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLUa-0006cF-A9; Thu, 28 Nov 2019 15:14:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLTP-0005ML-R3
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:12:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mtd6KOe5C+lXXzTDTBlFpDdo3Tux736e7umhIFFeQrE=; b=slCRgbDbDFqQ9IfPuihxCkNrTB
 1PrXRkPFyhn3EF4wG10gkhD5i6Nk2OL5KNOuf2Kp55yo4nSdYRllhhYseZZYfO/uLmAs23q/ldBr/
 B1/N//0kB6FrLQXN7v/eHqBqMzMhmm4zZOhKmviUjQovHTvbEdHPbbUdaPDgTzxVuOcynYijCDLZY
 I32L+mNTXFzCi4mlvnWw70NYGfJH/NcjzpZyGfiskzB3S98UiWAjCT4aJ0Y3wQwjsaJyO7Olt+lya
 QZQ9YR66SLsoLzT2A3+ZbU+p1mQAwiMDW3k4vtJJij1OZjP01YA/TuSIxzZ6DL2p7u7hGj7FQITKj
 AAbbKU+g==;
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLF1-0005vJ-C9
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:01 +0000
Received: by mail-lf1-x143.google.com with SMTP id m30so18409279lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Mtd6KOe5C+lXXzTDTBlFpDdo3Tux736e7umhIFFeQrE=;
 b=bh/RnMHAteQn3+TRW38L+F8X+ONzQFjPIEG2JvTYv+9jVRbxGvJJGWX3sxEeU25TGQ
 1PkR2s4jhvRALRiQl9WgbtjhkyrjTSS4F5Tl9wXQau8QxtF6Nnjv57oPrnzcO0NyPV94
 Xjkyrg5UdwonuCitU/qx8RgfbT/w/e2N7LjzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mtd6KOe5C+lXXzTDTBlFpDdo3Tux736e7umhIFFeQrE=;
 b=YeeKf47+4FfrH8MIqauCGjqbVMIEzbi9fFCigPAZlOJDl6bOFza7ieeusdmQnhUOD2
 1/em5/1QEFhfrcWQLj2zzgbyoJGw3Hxv2n4pJ4mLY382wa82xSt+5Dx4pvx737kyuIHz
 bEIwMEHP2twrI1brsuoxQ6O0xE51hG6t32LKNdCJdozOCDTXVGqqZG0/crW32wojLmYI
 3E2y37kk2NG9SgdnYgY18XtW7Yo7NjeY25mLansGASepmaIvt1Xi572T2z9lnRqRgPlm
 UUZDvc//O1OqKzHhJaDoIKSGd6jgLg1YikH5MXQoG4qebNhLd1rgtvI2+VfuijaaD1v7
 zPHw==
X-Gm-Message-State: APjAAAVJSPol6zgW6UhDGz9MSRQT9R1CZKIP1xYiYwU2SO0vw7auzTzY
 uXRT8spjq99V9KyqHhef/+LTvA==
X-Google-Smtp-Source: APXvYqz+SIY9fBmS3jz8AY6qikYhF0SQQ5DgO7TBXzhZmVQDpqzy7pePWrJSAz4gUhxvUh+pfTC3qg==
X-Received: by 2002:a19:cc08:: with SMTP id c8mr32133620lfg.124.1574953048402; 
 Thu, 28 Nov 2019 06:57:28 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:27 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 18/49] soc: fsl: qe: don't use NO_IRQ in qe_ic.c
Date: Thu, 28 Nov 2019 15:55:23 +0100
Message-Id: <20191128145554.1297-19-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_145759_418185_6B6B1F18 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

This driver is currently PPC-only, and on powerpc, NO_IRQ is 0, so
this doesn't change functionality. However, not every architecture
defines NO_IRQ, and some define it as -1, so the detection of a failed
irq_of_parse_and_map() (which returns 0 on failure) would be wrong on
those. So to prepare for allowing this driver to build on other
architectures, drop all references to NO_IRQ.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 4839dcd5c5d3..8f74bc6efd5c 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -282,7 +282,7 @@ static const struct irq_domain_ops qe_ic_host_ops = {
 	.xlate = irq_domain_xlate_onetwocell,
 };
 
-/* Return an interrupt vector or NO_IRQ if no interrupt is pending. */
+/* Return an interrupt vector or 0 if no interrupt is pending. */
 unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic)
 {
 	int irq;
@@ -293,12 +293,12 @@ unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic)
 	irq = qe_ic_read(qe_ic->regs, QEIC_CIVEC) >> 26;
 
 	if (irq == 0)
-		return NO_IRQ;
+		return 0;
 
 	return irq_linear_revmap(qe_ic->irqhost, irq);
 }
 
-/* Return an interrupt vector or NO_IRQ if no interrupt is pending. */
+/* Return an interrupt vector or 0 if no interrupt is pending. */
 unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 {
 	int irq;
@@ -309,7 +309,7 @@ unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 	irq = qe_ic_read(qe_ic->regs, QEIC_CHIVEC) >> 26;
 
 	if (irq == 0)
-		return NO_IRQ;
+		return 0;
 
 	return irq_linear_revmap(qe_ic->irqhost, irq);
 }
@@ -320,7 +320,7 @@ static void qe_ic_cascade_low(struct irq_desc *desc)
 	unsigned int cascade_irq = qe_ic_get_low_irq(qe_ic);
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 
-	if (cascade_irq != NO_IRQ)
+	if (cascade_irq != 0)
 		generic_handle_irq(cascade_irq);
 
 	if (chip->irq_eoi)
@@ -333,7 +333,7 @@ static void qe_ic_cascade_high(struct irq_desc *desc)
 	unsigned int cascade_irq = qe_ic_get_high_irq(qe_ic);
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 
-	if (cascade_irq != NO_IRQ)
+	if (cascade_irq != 0)
 		generic_handle_irq(cascade_irq);
 
 	if (chip->irq_eoi)
@@ -347,10 +347,10 @@ static void qe_ic_cascade_muxed_mpic(struct irq_desc *desc)
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 
 	cascade_irq = qe_ic_get_high_irq(qe_ic);
-	if (cascade_irq == NO_IRQ)
+	if (cascade_irq == 0)
 		cascade_irq = qe_ic_get_low_irq(qe_ic);
 
-	if (cascade_irq != NO_IRQ)
+	if (cascade_irq != 0)
 		generic_handle_irq(cascade_irq);
 
 	chip->irq_eoi(&desc->irq_data);
@@ -386,7 +386,7 @@ static void __init qe_ic_init(struct device_node *node, unsigned int flags)
 	qe_ic->virq_high = irq_of_parse_and_map(node, 0);
 	qe_ic->virq_low = irq_of_parse_and_map(node, 1);
 
-	if (qe_ic->virq_low == NO_IRQ) {
+	if (!qe_ic->virq_low) {
 		printk(KERN_ERR "Failed to map QE_IC low IRQ\n");
 		kfree(qe_ic);
 		return;
@@ -423,8 +423,7 @@ static void __init qe_ic_init(struct device_node *node, unsigned int flags)
 	irq_set_handler_data(qe_ic->virq_low, qe_ic);
 	irq_set_chained_handler(qe_ic->virq_low, low_handler);
 
-	if (qe_ic->virq_high != NO_IRQ &&
-			qe_ic->virq_high != qe_ic->virq_low) {
+	if (qe_ic->virq_high && qe_ic->virq_high != qe_ic->virq_low) {
 		irq_set_handler_data(qe_ic->virq_high, qe_ic);
 		irq_set_chained_handler(qe_ic->virq_high, high_handler);
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
