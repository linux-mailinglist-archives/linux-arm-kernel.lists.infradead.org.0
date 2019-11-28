Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C0910CB77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:14:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=So0QbYKjW1yI1ekGki8yi+JpCSKg4q7k6LdYmcatxIg=; b=kh9X/X/1KxgLiO
	yg//s5xs4HIvDMOmd4DKGTsTIOjQz4A7a2gzAc2A8VocUYqrNF/Z9xYCaC9OPL97c/Fo3Sydf2BKt
	DW2+oagWV3oW4RDE9j+BcbhhAjU7hTdEfkXjUHlXRz6MNzari2Ity3lPyQfpppZ77qsPSbKikZl8l
	b3GsaiHjEk67/FtLyF4ACS562w4vng+ros/VyKlZWlTZ1YuPaG5EyOqF8SCnDmOtM2OY7cfwjtbG8
	SfUcdxq9LF7HX20WeGDV7d1vWlDnRe0S8HeCXNikwxWjF5qDVFKrOKmWUXj/JzxR48PwjjEabkBmT
	Zsg6+18x9wCUghnffnzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLV2-00076l-JD; Thu, 28 Nov 2019 15:14:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLTT-0005rc-Tx
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:12:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vf2Fz+jj9lIDscUS3A8RQ3uOyXTjQEG0ba9IOOikoBs=; b=qG2W8F2Mh6xziwIYZHgf7w96Se
 vWYjKDRRCGdN+UCvWArIEy80oSzdNcf/G9Fmpp3JyThvemN3vWwfOxl3Zbtww9F++fvfBIPWdqxnX
 GcvgQuXnIP7C3bk6WYGLOyGf/eTc3CJOAVPBOIX3N5cm5hDZ1B0umtmgvOwJ1M1v9tZkzl0gY0DVS
 AEq2649gjug9JqBZhXMnpT+kuHeqzaihwbQzYwWUIFJMYQqTWrVTMno7yJx0Rw0qECkKPOwH3Y7cE
 hXhksJPIFK/oCodeTmsGcNGThyWh11lO2gnc9Iu5gbY6Prxscp+rivt+OO+6zNCh7TS67y0qAj09K
 6jiHlm7Q==;
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEr-0005to-UK
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:51 +0000
Received: by mail-lj1-x242.google.com with SMTP id m4so28803758ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vf2Fz+jj9lIDscUS3A8RQ3uOyXTjQEG0ba9IOOikoBs=;
 b=f7ELNEHL3fudjaC9Is+gx4un2R7u3IQVwsuaM0hPXmik/iv0R/U+N8/DsXKAxHzE7F
 wU5L5PXvtHQrsrOCSpKiFkyxiU7KI6s9/dEg1DzoSWlHRS01JYdvN9QzEDQcu3m/rfeh
 g5XVdp+hoGqlaFksIMZ8c9vnaz5jW/z5ASgCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vf2Fz+jj9lIDscUS3A8RQ3uOyXTjQEG0ba9IOOikoBs=;
 b=YsUMp0yNDPkaqBRPFbrC+ldDNusDJnxLyvKp8KqK+lv+1HZTldb7nmkRW18muiC1iU
 cXm84rMCkQ9PI1BVkiwIB0Ehw3wY5PKY7mDuOemzRqEzJGpJaWrUfV3MeI1h+SaYTnav
 m2uc+XVLAElSmEccIj2Y1ooVKwX/dGDOevje34EKxi8LN+MyLcMGXX9Ic4xpQVxkQpNI
 1FV5hQXxeX27QxV01NxptzCwESHxKaZAT8oAbE5qZsqOp3W7oFbyXq4kBg2buA6S2P15
 VKdUu0U2AW861Lj5ymKzq1zFasVhZer7Kly3J4GyKfq1RfuxL52X6X2beO8emMCFlE/2
 JaPg==
X-Gm-Message-State: APjAAAVav/eEekb7pb2+bOFGj2VpfWy0NrFzCZJB06lprNcesULwtp78
 46IDUvf65DVvbSy5J5ynR4jmEw==
X-Google-Smtp-Source: APXvYqxXd79lDtjCrRoNuvF4Qp9y2Rk63R+FMcFQzuUK6zJh8aMrNu5UNhh51q3RvAg4iprPycUgTA==
X-Received: by 2002:a05:651c:305:: with SMTP id
 a5mr35412802ljp.144.1574953039041; 
 Thu, 28 Nov 2019 06:57:19 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:18 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 11/49] soc: fsl: qe: use qe_ic_cascade_{low,
 high}_mpic also on 83xx
Date: Thu, 28 Nov 2019 15:55:16 +0100
Message-Id: <20191128145554.1297-12-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_145749_987826_CAD31712 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

The *_ipic and *_mpic handlers are almost identical - the only
difference is that the latter end with an unconditional
chip->irq_eoi() call. Since IPIC does not have ->irq_eoi, we can
reduce some code duplication by calling irq_eoi conditionally.

This is similar to what is already done in mpc8xxx_gpio_irq_cascade().

This leaves the functions slightly misnamed, but that will be fixed in
a subsequent patch.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 arch/powerpc/platforms/83xx/misc.c |  2 +-
 include/soc/fsl/qe/qe_ic.h         | 24 ++++--------------------
 2 files changed, 5 insertions(+), 21 deletions(-)

diff --git a/arch/powerpc/platforms/83xx/misc.c b/arch/powerpc/platforms/83xx/misc.c
index f46d7bf3b140..779791c0570f 100644
--- a/arch/powerpc/platforms/83xx/misc.c
+++ b/arch/powerpc/platforms/83xx/misc.c
@@ -100,7 +100,7 @@ void __init mpc83xx_qe_init_IRQ(void)
 		if (!np)
 			return;
 	}
-	qe_ic_init(np, 0, qe_ic_cascade_low_ipic, qe_ic_cascade_high_ipic);
+	qe_ic_init(np, 0, qe_ic_cascade_low_mpic, qe_ic_cascade_high_mpic);
 	of_node_put(np);
 }
 
diff --git a/include/soc/fsl/qe/qe_ic.h b/include/soc/fsl/qe/qe_ic.h
index 714a9b890d8d..bfaa233d8328 100644
--- a/include/soc/fsl/qe/qe_ic.h
+++ b/include/soc/fsl/qe/qe_ic.h
@@ -74,24 +74,6 @@ void qe_ic_set_highest_priority(unsigned int virq, int high);
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
 static inline void qe_ic_cascade_low_mpic(struct irq_desc *desc)
 {
 	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
@@ -101,7 +83,8 @@ static inline void qe_ic_cascade_low_mpic(struct irq_desc *desc)
 	if (cascade_irq != NO_IRQ)
 		generic_handle_irq(cascade_irq);
 
-	chip->irq_eoi(&desc->irq_data);
+	if (chip->irq_eoi)
+		chip->irq_eoi(&desc->irq_data);
 }
 
 static inline void qe_ic_cascade_high_mpic(struct irq_desc *desc)
@@ -113,7 +96,8 @@ static inline void qe_ic_cascade_high_mpic(struct irq_desc *desc)
 	if (cascade_irq != NO_IRQ)
 		generic_handle_irq(cascade_irq);
 
-	chip->irq_eoi(&desc->irq_data);
+	if (chip->irq_eoi)
+		chip->irq_eoi(&desc->irq_data);
 }
 
 static inline void qe_ic_cascade_muxed_mpic(struct irq_desc *desc)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
