Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CE2E4B74
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svJdfeMM4xwns9Q3iTnLtSjT9a9zoMIfE9mYm0quxsg=; b=cs5lEHa2fZlXpw
	c6N1Hm3GCQcdOgHYZmixxUEYsiXtIU63l1KOJSXXsHWVxO7DckZz+/TBySybmPhls8X1q8KGOeKD3
	UsDOHLf80N12vpClz3m4schUhat85mGhS6QqkKawR+1jM1TQDD7B7lovYfLguE+JvIWKGRQu6k3vO
	bfx+hNB6kvLAeQRfRicco+gPo+6yRIK1Izxu3pvd5vyJxhD/cMpu1//tY1jMLduTOdi7VsFa7QrQv
	UaGmjCVpX9aFTrY7uzOBun+dZeS80KJMRHUoncOfyplm962YukmCZjwa26N0I5KkckeHjm80oOghN
	Ils8PtuvEO8j1kq2RG3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyyR-00021z-P4; Fri, 25 Oct 2019 12:45:47 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyu6-0006LY-6x
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:20 +0000
Received: by mail-lj1-x241.google.com with SMTP id a22so2575119ljd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JPHV3mej2fB3lfgpw6935p5PEecuoQPDNdhF76v2gl8=;
 b=bUV9btdaAbzUUTulPviXAiFJt/y5HiDckg3QQcNHdMMTPKSZXLyWUK3836LOYGb7Ea
 6GmnHFLcUm0wi8jumB9dZrLNJFjZxmWysv2eijZsaYD6IICV3GFXl+tWby9zUqTAO80f
 WoXVMlRuYnw6c0MygecBezz9FUnOgzFwnDlLA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JPHV3mej2fB3lfgpw6935p5PEecuoQPDNdhF76v2gl8=;
 b=pnKn7Vq7jOG/BcGl0C12ubNjPPdpSyVWeghk5zrupp6ZfZJQx196sgvqxQc/G9GHys
 +Sh53IWah3TkI++t807jCgicgf9nUeY27wy10c1G/ZY8pYk9QJeVV1h/gXyvg3gAqHEG
 qr+Hd4k7l3YnvKSsIneysNumQ/OAY+8leC1Y1ia8dZW+ijZtNHQ0eOftsoJL2ms2hWIN
 1fjcsmxkKZKwAYYoXu8rH3e6Cvw06s0hh/HhnF2sRADG5LFQVSAItpCOIgT+RxJTN4Yv
 4xWcLkI8YtbGYIbrQWvJEQWpspwSsVftBCSyzM479OQ8d4j1oeY9NyZXrjNUSZkjHigP
 oNNQ==
X-Gm-Message-State: APjAAAWdmnkKSFCdAWh8QN/lxNRWeFjR+LJfnO++2o9Es+5aszvB5f43
 m4B2OBNdQDefXP75xWg/sm/2hA==
X-Google-Smtp-Source: APXvYqw/oNpSoGf0HychWr3zkFhvDIDZp39aOxLLA4Y37BiJRnhMt3VbkvqipDKWR/80GLP4Dk3rpA==
X-Received: by 2002:a2e:9058:: with SMTP id n24mr2360035ljg.114.1572007276785; 
 Fri, 25 Oct 2019 05:41:16 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:16 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 11/23] soc: fsl: qe: rename qe_ic_cascade_low_mpic ->
 qe_ic_cascade_low
Date: Fri, 25 Oct 2019 14:40:46 +0200
Message-Id: <20191025124058.22580-12-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054118_825082_614AAE0C 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

The qe_ic_cascade_{low,high}_mpic functions are now used as handlers
both when the interrupt parent is mpic as well as ipic, so remove the
_mpic suffix.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 arch/powerpc/platforms/83xx/misc.c            | 2 +-
 arch/powerpc/platforms/85xx/corenet_generic.c | 4 ++--
 arch/powerpc/platforms/85xx/mpc85xx_mds.c     | 4 ++--
 arch/powerpc/platforms/85xx/mpc85xx_rdb.c     | 4 ++--
 arch/powerpc/platforms/85xx/twr_p102x.c       | 4 ++--
 drivers/soc/fsl/qe/qe_ic.c                    | 4 ++--
 include/soc/fsl/qe/qe_ic.h                    | 4 ++--
 7 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/powerpc/platforms/83xx/misc.c b/arch/powerpc/platforms/83xx/misc.c
index 779791c0570f..835d082218ae 100644
--- a/arch/powerpc/platforms/83xx/misc.c
+++ b/arch/powerpc/platforms/83xx/misc.c
@@ -100,7 +100,7 @@ void __init mpc83xx_qe_init_IRQ(void)
 		if (!np)
 			return;
 	}
-	qe_ic_init(np, 0, qe_ic_cascade_low_mpic, qe_ic_cascade_high_mpic);
+	qe_ic_init(np, 0, qe_ic_cascade_low, qe_ic_cascade_high);
 	of_node_put(np);
 }
 
diff --git a/arch/powerpc/platforms/85xx/corenet_generic.c b/arch/powerpc/platforms/85xx/corenet_generic.c
index 7ee2c6628f64..2ed9e84ca03a 100644
--- a/arch/powerpc/platforms/85xx/corenet_generic.c
+++ b/arch/powerpc/platforms/85xx/corenet_generic.c
@@ -50,8 +50,8 @@ void __init corenet_gen_pic_init(void)
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,qe-ic");
 	if (np) {
-		qe_ic_init(np, 0, qe_ic_cascade_low_mpic,
-				qe_ic_cascade_high_mpic);
+		qe_ic_init(np, 0, qe_ic_cascade_low,
+				qe_ic_cascade_high);
 		of_node_put(np);
 	}
 }
diff --git a/arch/powerpc/platforms/85xx/mpc85xx_mds.c b/arch/powerpc/platforms/85xx/mpc85xx_mds.c
index 5ca254256c47..24211a1787b2 100644
--- a/arch/powerpc/platforms/85xx/mpc85xx_mds.c
+++ b/arch/powerpc/platforms/85xx/mpc85xx_mds.c
@@ -288,8 +288,8 @@ static void __init mpc85xx_mds_qeic_init(void)
 	}
 
 	if (machine_is(p1021_mds))
-		qe_ic_init(np, 0, qe_ic_cascade_low_mpic,
-				qe_ic_cascade_high_mpic);
+		qe_ic_init(np, 0, qe_ic_cascade_low,
+				qe_ic_cascade_high);
 	else
 		qe_ic_init(np, 0, qe_ic_cascade_muxed_mpic, NULL);
 	of_node_put(np);
diff --git a/arch/powerpc/platforms/85xx/mpc85xx_rdb.c b/arch/powerpc/platforms/85xx/mpc85xx_rdb.c
index d3c540ee558f..093867879081 100644
--- a/arch/powerpc/platforms/85xx/mpc85xx_rdb.c
+++ b/arch/powerpc/platforms/85xx/mpc85xx_rdb.c
@@ -66,8 +66,8 @@ void __init mpc85xx_rdb_pic_init(void)
 #ifdef CONFIG_QUICC_ENGINE
 	np = of_find_compatible_node(NULL, NULL, "fsl,qe-ic");
 	if (np) {
-		qe_ic_init(np, 0, qe_ic_cascade_low_mpic,
-				qe_ic_cascade_high_mpic);
+		qe_ic_init(np, 0, qe_ic_cascade_low,
+				qe_ic_cascade_high);
 		of_node_put(np);
 
 	} else
diff --git a/arch/powerpc/platforms/85xx/twr_p102x.c b/arch/powerpc/platforms/85xx/twr_p102x.c
index 720b0c0f03ba..2e0fb23854c0 100644
--- a/arch/powerpc/platforms/85xx/twr_p102x.c
+++ b/arch/powerpc/platforms/85xx/twr_p102x.c
@@ -45,8 +45,8 @@ static void __init twr_p1025_pic_init(void)
 #ifdef CONFIG_QUICC_ENGINE
 	np = of_find_compatible_node(NULL, NULL, "fsl,qe-ic");
 	if (np) {
-		qe_ic_init(np, 0, qe_ic_cascade_low_mpic,
-				qe_ic_cascade_high_mpic);
+		qe_ic_init(np, 0, qe_ic_cascade_low,
+				qe_ic_cascade_high);
 		of_node_put(np);
 	} else
 		pr_err("Could not find qe-ic node\n");
diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 0ff802816c0c..f3659c312e13 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -402,7 +402,7 @@ unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 	return irq_linear_revmap(qe_ic->irqhost, irq);
 }
 
-void qe_ic_cascade_low_mpic(struct irq_desc *desc)
+void qe_ic_cascade_low(struct irq_desc *desc)
 {
 	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
 	unsigned int cascade_irq = qe_ic_get_low_irq(qe_ic);
@@ -415,7 +415,7 @@ void qe_ic_cascade_low_mpic(struct irq_desc *desc)
 		chip->irq_eoi(&desc->irq_data);
 }
 
-void qe_ic_cascade_high_mpic(struct irq_desc *desc)
+void qe_ic_cascade_high(struct irq_desc *desc)
 {
 	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
 	unsigned int cascade_irq = qe_ic_get_high_irq(qe_ic);
diff --git a/include/soc/fsl/qe/qe_ic.h b/include/soc/fsl/qe/qe_ic.h
index fb10a7606acc..3c8220cedd9a 100644
--- a/include/soc/fsl/qe/qe_ic.h
+++ b/include/soc/fsl/qe/qe_ic.h
@@ -74,8 +74,8 @@ void qe_ic_set_highest_priority(unsigned int virq, int high);
 int qe_ic_set_priority(unsigned int virq, unsigned int priority);
 int qe_ic_set_high_priority(unsigned int virq, unsigned int priority, int high);
 
-void qe_ic_cascade_low_mpic(struct irq_desc *desc);
-void qe_ic_cascade_high_mpic(struct irq_desc *desc);
+void qe_ic_cascade_low(struct irq_desc *desc);
+void qe_ic_cascade_high(struct irq_desc *desc);
 void qe_ic_cascade_muxed_mpic(struct irq_desc *desc);
 
 #endif /* _ASM_POWERPC_QE_IC_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
