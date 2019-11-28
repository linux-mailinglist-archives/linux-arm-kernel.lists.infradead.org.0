Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AFB10CBCA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:35:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eA+apMbqH5xMW9WACoVblnUf7geGfTA0tx97xs0If6c=; b=n9eU1+nkDShu82
	0mOoZkW18rD9hFbJDMUOf3NkNy8fO3F3TpSXAb5HxND38CUbwR2QwqRAF3DZzU3RJZUUb92nfNWsl
	KY4Or1TTXFR/H2dbnAqDfWNFUkWu6k38WDdQkfALVUIPUy0qkGFY7pX6ZDxElH0+LnGLZ04OhDqkg
	HhyqoH2JgXq65ZOZEzIRNTfZXl1haY4VS5XH/wwShUG4DrIW/uQXZ5xiLsT53V1EepnBGQd4w28mR
	iVcDID9FI6V+sYuG/nEAtlr70Py9O9rNdvgTUhJMtUj+O0N23PlljErMgpVUMEZOPUYSO5TJ5ZBc2
	IXpIznFV47d86IDHcVEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLp0-0007tO-Bl; Thu, 28 Nov 2019 15:35:10 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLn8-0006hW-GS
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=USinHcmv+ksGlMbxnbmLxuy0P66Q7HhR0AFEthjqY1w=; b=ZENO4Tk+TGIts7MRfxoJvN3DPO
 i+y2/hVbvCUH2+bRJnPufsd5gyFmN1klOibGdNMrDi/NJ6nJM469+q+E2Xtw/iW0YvkIqPN2p0nBO
 a6yr0+aMXxFhNh3vK/b60cge+vh2HrtrS7gsu2HfSP8KRpOz1f0Z5JGgctiGCy8L98+v/zQ0pPk/j
 68orVF8YBUHuxtmjuvHhXK99uVhoancgTkOf9UVn+GWF81H+2sHkcXv3lF8ARdNS4I+PkZ2x3PgBu
 H7VHPrYdwTuoVG1pUxSSQ6DtTap6/tcbgFGsqHwBgqNa67phgstCbL7AfeyzLKxzGMdaIs5Xa2ZZ+
 OYcI2YAQ==;
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEa-0002tL-S2
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:33 +0000
Received: by mail-lj1-x243.google.com with SMTP id u17so1463772lja.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=USinHcmv+ksGlMbxnbmLxuy0P66Q7HhR0AFEthjqY1w=;
 b=eSJlsgRoqTynoxnNeBVf+IkwM63Ac9ztMdfQvsjRq5txZGy2t6QSH9CnnZBD6OwU/1
 lTHMy3iujv02EGiXw6caHkTIq1GPRdwgs/vakISvyvy3Qg3GSi0krDWObXmh6NsbadOB
 8i55Z4UFd0jKdGfVl09SKBp5q/JKGOoPvK+tM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=USinHcmv+ksGlMbxnbmLxuy0P66Q7HhR0AFEthjqY1w=;
 b=uWVJYcm684oE8SlMDzL7yoJSARfV5E7JVVkBKNSaYtpGMi4CqYUkL8WSM6qn2fKoti
 kheN/oX3FNcTw07Uk7zDJsVrIhUm82fwj2tSycj8QmHsD0p3ernzfak27nYlf9zt64o5
 etslgeRE4WPW0mePMTCbT246jNSN15jgUSe4s1hmZJg590GzMBdKIoFhSuFduqS2xrnI
 lpd0bYaU8Zq5zUv4rIc4fG+jdkuiYtKSmmSnOXttBMpwuDAes5HiWmWBHLh5KRxDhkC8
 HQsNy7C5KgD4ewMYynEXC8apo4CRQuZpB26Z1+GRJOFDFOI6MWWFtR7UQGvUKFnC2Cju
 i9Rg==
X-Gm-Message-State: APjAAAWat6gTKN0nQkuhi+8YmUxwzImghZtk8+Zhufodk8m18VE7B3tI
 4I11QDhgljpykI/VmjTxi97EQw==
X-Google-Smtp-Source: APXvYqwWbKVLrkCPCqAQ45HonIHroFiKt/f5U++VVvIibHXJ05e3osalBaVmWBSGtrrlGbxRgN9fcw==
X-Received: by 2002:a2e:2a43:: with SMTP id q64mr35565201ljq.242.1574953050912; 
 Thu, 28 Nov 2019 06:57:30 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:30 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 20/49] soc: fsl: qe: simplify qe_ic_init()
Date: Thu, 28 Nov 2019 15:55:25 +0100
Message-Id: <20191128145554.1297-21-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

qe_ic_init() takes a flags parameter, but all callers (including the
sole remaining one) have always passed 0. So remove that parameter and
simplify the body accordingly. We still explicitly initialize the
Interrupt Configuration Register (CICR) to its reset value of
all-zeroes, just in case the bootloader has played funny games.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 27 ++++-----------------------
 1 file changed, 4 insertions(+), 23 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 23b457e884d8..4832884da5bb 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -356,13 +356,13 @@ static void qe_ic_cascade_muxed_mpic(struct irq_desc *desc)
 	chip->irq_eoi(&desc->irq_data);
 }
 
-static void __init qe_ic_init(struct device_node *node, unsigned int flags)
+static void __init qe_ic_init(struct device_node *node)
 {
 	void (*low_handler)(struct irq_desc *desc);
 	void (*high_handler)(struct irq_desc *desc);
 	struct qe_ic *qe_ic;
 	struct resource res;
-	u32 temp = 0, ret;
+	u32 ret;
 
 	ret = of_address_to_resource(node, 0, &res);
 	if (ret)
@@ -399,26 +399,7 @@ static void __init qe_ic_init(struct device_node *node, unsigned int flags)
 		high_handler = NULL;
 	}
 
-	/* default priority scheme is grouped. If spread mode is    */
-	/* required, configure cicr accordingly.                    */
-	if (flags & QE_IC_SPREADMODE_GRP_W)
-		temp |= CICR_GWCC;
-	if (flags & QE_IC_SPREADMODE_GRP_X)
-		temp |= CICR_GXCC;
-	if (flags & QE_IC_SPREADMODE_GRP_Y)
-		temp |= CICR_GYCC;
-	if (flags & QE_IC_SPREADMODE_GRP_Z)
-		temp |= CICR_GZCC;
-	if (flags & QE_IC_SPREADMODE_GRP_RISCA)
-		temp |= CICR_GRTA;
-	if (flags & QE_IC_SPREADMODE_GRP_RISCB)
-		temp |= CICR_GRTB;
-
-	/* choose destination signal for highest priority interrupt */
-	if (flags & QE_IC_HIGH_SIGNAL)
-		temp |= (SIGNAL_HIGH << CICR_HPIT_SHIFT);
-
-	qe_ic_write(qe_ic->regs, QEIC_CICR, temp);
+	qe_ic_write(qe_ic->regs, QEIC_CICR, 0);
 
 	irq_set_handler_data(qe_ic->virq_low, qe_ic);
 	irq_set_chained_handler(qe_ic->virq_low, low_handler);
@@ -439,7 +420,7 @@ static int __init qe_ic_of_init(void)
 		if (!np)
 			return -ENODEV;
 	}
-	qe_ic_init(np, 0);
+	qe_ic_init(np);
 	of_node_put(np);
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
