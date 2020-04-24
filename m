Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57E91B72C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 13:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EoQLGe3X50MfkObdjo3V0sbawi23PHozHgwZ/Qh6BcQ=; b=UGcO0AI33/n7Y3TAAcLd7yX1nq
	Jt67btLByASK8HNT39Te9OhqgSaFumEl5IAIJDE/CcUCd9lNOXo10CPH7ORQoa0bQ6FKbfSX4DKLQ
	rNenexbcfMuKvm23ZmTFNcbMzG8DHDjN8pN9BFX/LFITDU5csbvxcgBsYLa0RzYrCdOPQ7pVvYzwy
	H7iL4PXqE3fbAgx2hBEvzqZyjbonCbR8d3gm/jbkOsRTYv8PjZQzBgII6fcvbqax65D+Q/elrDjjd
	quYb4mRghLWboOorbBMLGVBUsoKMGdXYOc/KAXjwxLL8h+tzJBpUq27bd1rFCnafaKGNW/F0LawV8
	05Wp8tAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRwFa-0004vp-E8; Fri, 24 Apr 2020 11:12:06 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRwFB-0004nh-3a
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 11:11:43 +0000
Received: by mail-pl1-x644.google.com with SMTP id t4so3599705plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 04:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iZlX3qI3DOrQp2dXg0tXmAB1b4Jn5t/S/MWmmmiRunE=;
 b=CVZnPFr9kE70O15FetLKinvjuz8SOPjO0QhwdMblhDxZ9Id5IeVNj7VVnd8hElz/sF
 AG1K68EzIIT1QBeciWSUX1tRXiBkRLrXW+yqqrS88Q6sUEI1yNOwrf9jdHlMJL8sehBB
 6w9hYV3EcVhFehuZslXH5yMUZpmA/rSNol6qhUtkJSqbWu7QnuGBnVXFNX8oq3vjXiqq
 kd8MHcAy6KgjwqLgbODiJn8IQ2GpMsYoXiQZu4MRPvC4xvN+hyEKyzG3SEazdUlxP9T6
 PC1SmBNgKCeGjDh+kQg7pNH9UeOwkWlYzVnNfmIxCFhb0BlVf4mAIGSwg7RU9spXUljF
 wDEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iZlX3qI3DOrQp2dXg0tXmAB1b4Jn5t/S/MWmmmiRunE=;
 b=HPuj4BI/q7ligA6kQ7Lxk6TPyN2ZPLmjilvV96eAS7gKLP8bt1gWoHjlzzUb+Al51Z
 RVa38glZg0aIgLPw1wPs0lVOCQp1iCjfvcwxwKYEhxf63f/foSLZf/0EcG7w8DOzVQan
 wpbo+d83gaRgQfPueljfWi6FEOZUI/28wqdBQGP/anBfp9u1h3LS2PJdSdcGxXJl0PNm
 yfuwzkaS12Ndx+TnbqIESbA/ejk4q+ex6ALlUXiBUMIv+8lkufUDv9tNND/OJTFKnFwW
 fLvr2YnNE3srvdL7QMWxjPNM14jquB8TS5NkxHFWlNQJfMBCuBx5oRMMDWgl5tlOLHSC
 2t5A==
X-Gm-Message-State: AGi0PuacRLuwubGKPYTgCNhVW5Z+YHZ/zLHB0+D4JAHpHt5jAqgkPJak
 CTboD28OZ6EdtzN4qd8Lfz33rFsMgjcaKQ==
X-Google-Smtp-Source: APiQypIPAwj21VAG16p5qy62FUaJZAsNJzTP5WGLYMy0GUrRu2nsXVPQnqKsEw1+588tI2FpCpc0Hg==
X-Received: by 2002:a17:90a:d101:: with SMTP id l1mr5614004pju.1.1587726699499; 
 Fri, 24 Apr 2020 04:11:39 -0700 (PDT)
Received: from localhost.localdomain ([117.252.71.186])
 by smtp.gmail.com with ESMTPSA id o11sm4637628pgd.58.2020.04.24.04.11.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 04:11:38 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC Patch v1 2/4] irqchip/gic-v3: Add support to handle SGI as
 pseudo NMI
Date: Fri, 24 Apr 2020 16:39:12 +0530
Message-Id: <1587726554-32018-3-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_041141_246513_23EF3352 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, daniel.thompson@linaro.org,
 jason@lakedaemon.net, catalin.marinas@arm.com, jason.wessel@windriver.com,
 dianders@chromium.org, linux-kernel@vger.kernel.org, maz@kernel.org,
 kgdb-bugreport@lists.sourceforge.net, tglx@linutronix.de, will@kernel.org,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With pseudo NMIs enabled, interrupt controller can be configured to
deliver SGI as a pseudo NMI. So add corresponding handling for SGIs.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 drivers/irqchip/irq-gic-v3.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index d7006ef..be361bf 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -609,17 +609,29 @@ static inline void gic_handle_nmi(u32 irqnr, struct pt_regs *regs)
 	if (irqs_enabled)
 		nmi_enter();
 
-	if (static_branch_likely(&supports_deactivate_key))
-		gic_write_eoir(irqnr);
 	/*
 	 * Leave the PSR.I bit set to prevent other NMIs to be
 	 * received while handling this one.
 	 * PSR.I will be restored when we ERET to the
 	 * interrupted context.
 	 */
-	err = handle_domain_nmi(gic_data.domain, irqnr, regs);
-	if (err)
-		gic_deactivate_unhandled(irqnr);
+	if (likely(irqnr > 15)) {
+		if (static_branch_likely(&supports_deactivate_key))
+			gic_write_eoir(irqnr);
+
+		err = handle_domain_nmi(gic_data.domain, irqnr, regs);
+		if (err)
+			gic_deactivate_unhandled(irqnr);
+	} else {
+		gic_write_eoir(irqnr);
+		if (static_branch_likely(&supports_deactivate_key))
+			gic_write_dir(irqnr);
+#ifdef CONFIG_SMP
+		handle_IPI(irqnr, regs);
+#else
+		WARN_ONCE(true, "Unexpected SGI received!\n");
+#endif
+	}
 
 	if (irqs_enabled)
 		nmi_exit();
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
