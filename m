Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E957F4C97
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:05:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1zMJ6yUhzGk0cpG1nXeI72L5WiZ5fM8YRbrGAVwiOk=; b=qZNrpET+TLsGv0
	tmw1u6iFmo2tmgEwWb9iooP66ZrYh9Uhm6C3cwg+54TlaF9qa10Ju+Pd8ahVvh4ep9wPVbM6s4sGD
	TY2FD1pILLMH52sZGQqtzZNtYQE8eWkZ629OEOluopViME45WLcvhebMQ/1P3usAcwxz7HEO15ZkM
	EhYDZ+fmxjNqM072hXO04TGIkrJIVWlgsdRRNR4PPH+ShbSVNqAx9qqMTaDaBmv2YlRzjqwskkE5w
	VsX1oj/f3iqdovDFGxs0MWMoGBZb4/4UclUPHT+e1BYgP9/pX0XUhQXLsOfu1o/mwyVQjEP59cq6B
	JfijOw5KHcXRY5Ge5/oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3wy-00072K-JI; Fri, 08 Nov 2019 13:05:16 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tR-0004G2-Rb
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:01:44 +0000
Received: by mail-lf1-x144.google.com with SMTP id f24so1391362lfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9tOABT8Py4DEmejfsYkpbe8Y4MrdN9utZ1d8Z7Y4oFk=;
 b=ZLrdoZllzlmKWNxePUr2w2zELkj6EHNNcwfPM7ULBvrOl+1LXh8+1x3CgnatpT+ez0
 99vPuqpxGLPEW2ACbdubpWxlezsAlPlmF1tcJ1xTVO7YeZyYfWgc7HzLdobfquTZEkVx
 awQVPV8vVQPU4cnjzUXcMFpflhxqXnujpetC8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9tOABT8Py4DEmejfsYkpbe8Y4MrdN9utZ1d8Z7Y4oFk=;
 b=UBzedUmKZO9ee5rU8GktmnHIoZnjTdn182Y0mF5763XMkGuWD538m0fu0c44kKnXGV
 ua3CpRgHmn2vncXmbGhnXAgUvdoLQpMvXFaFLkJxB8e+9XGyBHu9mum5yI+TPiX6XqI5
 IFa9MtFQxY5wbl1sLCMhnlgIr6HHAUMDBBArWI8gZY8fiubyG9wKKQiAQkKVGJT1F3Ln
 7ceMkE2FEwjWMdqSN0gjTjT6Dod6+A9I8ZpGGa8nQSwvwpzs/q8TBHPpMRsN70BWmI28
 jXS76RRhOhZrvoIbHAJAemklsBbDa0JdZUoMFVhh0lzLXAmxypw6atYDGa9y+pMsVCUH
 K1XA==
X-Gm-Message-State: APjAAAXjRHab7Jb4zAymhw+11ErSj1lB+xQX1DAslTc40avnqpCV7PyW
 vAEdMwh8Ortw2jCXwLdF0T93rw==
X-Google-Smtp-Source: APXvYqylTzkr4IPJiFrmC5GN0MZu+6lZ0HTBWClbfAuYvAjBSym0/ERt6lGLbzvPdel+Gv+ccjuzMQ==
X-Received: by 2002:a19:7607:: with SMTP id c7mr6747990lff.62.1573218094453;
 Fri, 08 Nov 2019 05:01:34 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:33 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 05/47] soc: fsl: qe: avoid ppc-specific io accessors
Date: Fri,  8 Nov 2019 14:00:41 +0100
Message-Id: <20191108130123.6839-6-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050137_961775_1E1CCD5A 
X-CRM114-Status: GOOD (  17.02  )
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

In preparation for allowing to build QE support for architectures
other than PPC, replace the ppc-specific io accessors by the qe_io*
macros. Done via

$ spatch --sp-file io.cocci --in-place drivers/soc/fsl/qe/

where io.cocci is

@@
expression addr, val;
@@
- out_be32(addr, val)
+ qe_iowrite32be(val, addr)

@@
expression addr;
@@
- in_be32(addr)
+ qe_ioread32be(addr)

@@
expression addr, val;
@@
- out_be16(addr, val)
+ qe_iowrite16be(val, addr)

@@
expression addr;
@@
- in_be16(addr)
+ qe_ioread16be(addr)

@@
expression addr, val;
@@
- out_8(addr, val)
+ qe_iowrite8(val, addr)

@@
expression addr;
@@
- in_8(addr)
+ qe_ioread8(addr)

@@
expression addr, clr, set;
@@
- clrsetbits_be32(addr, clr, set)
+ qe_clrsetbits_be32(addr, clr, set)

@@
expression addr, clr, set;
@@
- clrsetbits_be16(addr, clr, set)
+ qe_clrsetbits_be16(addr, clr, set)

@@
expression addr, clr, set;
@@
- clrsetbits_8(addr, clr, set)
+ qe_clrsetbits_8(addr, clr, set)

@@
expression addr, set;
@@
- setbits32(addr, set)
+ qe_setbits_be32(addr, set)

@@
expression addr, set;
@@
- setbits16(addr, set)
+ qe_setbits_be16(addr, set)

@@
expression addr, set;
@@
- setbits8(addr, set)
+ qe_setbits_8(addr, set)

@@
expression addr, clr;
@@
- clrbits32(addr, clr)
+ qe_clrbits_be32(addr, clr)

@@
expression addr, clr;
@@
- clrbits16(addr, clr)
+ qe_clrbits_be16(addr, clr)

@@
expression addr, clr;
@@
- clrbits8(addr, clr)
+ qe_clrbits_8(addr, clr)

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/gpio.c     | 34 +++++++++--------
 drivers/soc/fsl/qe/qe.c       | 38 ++++++++++---------
 drivers/soc/fsl/qe/qe_ic.c    |  5 ++-
 drivers/soc/fsl/qe/qe_io.c    | 40 +++++++++-----------
 drivers/soc/fsl/qe/qe_tdm.c   |  8 ++--
 drivers/soc/fsl/qe/ucc.c      | 16 ++++----
 drivers/soc/fsl/qe/ucc_fast.c | 71 ++++++++++++++++++-----------------
 drivers/soc/fsl/qe/ucc_slow.c | 38 +++++++++----------
 drivers/soc/fsl/qe/usb.c      |  2 +-
 9 files changed, 129 insertions(+), 123 deletions(-)

diff --git a/drivers/soc/fsl/qe/gpio.c b/drivers/soc/fsl/qe/gpio.c
index f0c29ed8f0ff..12bdfd9cbe7c 100644
--- a/drivers/soc/fsl/qe/gpio.c
+++ b/drivers/soc/fsl/qe/gpio.c
@@ -41,13 +41,13 @@ static void qe_gpio_save_regs(struct of_mm_gpio_chip *mm_gc)
 		container_of(mm_gc, struct qe_gpio_chip, mm_gc);
 	struct qe_pio_regs __iomem *regs = mm_gc->regs;
 
-	qe_gc->cpdata = in_be32(&regs->cpdata);
+	qe_gc->cpdata = qe_ioread32be(&regs->cpdata);
 	qe_gc->saved_regs.cpdata = qe_gc->cpdata;
-	qe_gc->saved_regs.cpdir1 = in_be32(&regs->cpdir1);
-	qe_gc->saved_regs.cpdir2 = in_be32(&regs->cpdir2);
-	qe_gc->saved_regs.cppar1 = in_be32(&regs->cppar1);
-	qe_gc->saved_regs.cppar2 = in_be32(&regs->cppar2);
-	qe_gc->saved_regs.cpodr = in_be32(&regs->cpodr);
+	qe_gc->saved_regs.cpdir1 = qe_ioread32be(&regs->cpdir1);
+	qe_gc->saved_regs.cpdir2 = qe_ioread32be(&regs->cpdir2);
+	qe_gc->saved_regs.cppar1 = qe_ioread32be(&regs->cppar1);
+	qe_gc->saved_regs.cppar2 = qe_ioread32be(&regs->cppar2);
+	qe_gc->saved_regs.cpodr = qe_ioread32be(&regs->cpodr);
 }
 
 static int qe_gpio_get(struct gpio_chip *gc, unsigned int gpio)
@@ -56,7 +56,7 @@ static int qe_gpio_get(struct gpio_chip *gc, unsigned int gpio)
 	struct qe_pio_regs __iomem *regs = mm_gc->regs;
 	u32 pin_mask = 1 << (QE_PIO_PINS - 1 - gpio);
 
-	return !!(in_be32(&regs->cpdata) & pin_mask);
+	return !!(qe_ioread32be(&regs->cpdata) & pin_mask);
 }
 
 static void qe_gpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
@@ -74,7 +74,7 @@ static void qe_gpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
 	else
 		qe_gc->cpdata &= ~pin_mask;
 
-	out_be32(&regs->cpdata, qe_gc->cpdata);
+	qe_iowrite32be(qe_gc->cpdata, &regs->cpdata);
 
 	spin_unlock_irqrestore(&qe_gc->lock, flags);
 }
@@ -101,7 +101,7 @@ static void qe_gpio_set_multiple(struct gpio_chip *gc,
 		}
 	}
 
-	out_be32(&regs->cpdata, qe_gc->cpdata);
+	qe_iowrite32be(qe_gc->cpdata, &regs->cpdata);
 
 	spin_unlock_irqrestore(&qe_gc->lock, flags);
 }
@@ -255,11 +255,15 @@ void qe_pin_set_dedicated(struct qe_pin *qe_pin)
 	spin_lock_irqsave(&qe_gc->lock, flags);
 
 	if (second_reg) {
-		clrsetbits_be32(&regs->cpdir2, mask2, sregs->cpdir2 & mask2);
-		clrsetbits_be32(&regs->cppar2, mask2, sregs->cppar2 & mask2);
+		qe_clrsetbits_be32(&regs->cpdir2, mask2,
+				   sregs->cpdir2 & mask2);
+		qe_clrsetbits_be32(&regs->cppar2, mask2,
+				   sregs->cppar2 & mask2);
 	} else {
-		clrsetbits_be32(&regs->cpdir1, mask2, sregs->cpdir1 & mask2);
-		clrsetbits_be32(&regs->cppar1, mask2, sregs->cppar1 & mask2);
+		qe_clrsetbits_be32(&regs->cpdir1, mask2,
+				   sregs->cpdir1 & mask2);
+		qe_clrsetbits_be32(&regs->cppar1, mask2,
+				   sregs->cppar1 & mask2);
 	}
 
 	if (sregs->cpdata & mask1)
@@ -267,8 +271,8 @@ void qe_pin_set_dedicated(struct qe_pin *qe_pin)
 	else
 		qe_gc->cpdata &= ~mask1;
 
-	out_be32(&regs->cpdata, qe_gc->cpdata);
-	clrsetbits_be32(&regs->cpodr, mask1, sregs->cpodr & mask1);
+	qe_iowrite32be(qe_gc->cpdata, &regs->cpdata);
+	qe_clrsetbits_be32(&regs->cpodr, mask1, sregs->cpodr & mask1);
 
 	spin_unlock_irqrestore(&qe_gc->lock, flags);
 }
diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 2a0e6e642776..456bd7416876 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -112,7 +112,7 @@ int qe_issue_cmd(u32 cmd, u32 device, u8 mcn_protocol, u32 cmd_input)
 
 	spin_lock_irqsave(&qe_lock, flags);
 	if (cmd == QE_RESET) {
-		out_be32(&qe_immr->cp.cecr, (u32) (cmd | QE_CR_FLG));
+		qe_iowrite32be((u32)(cmd | QE_CR_FLG), &qe_immr->cp.cecr);
 	} else {
 		if (cmd == QE_ASSIGN_PAGE) {
 			/* Here device is the SNUM, not sub-block */
@@ -129,15 +129,14 @@ int qe_issue_cmd(u32 cmd, u32 device, u8 mcn_protocol, u32 cmd_input)
 				mcn_shift = QE_CR_MCN_NORMAL_SHIFT;
 		}
 
-		out_be32(&qe_immr->cp.cecdr, cmd_input);
-		out_be32(&qe_immr->cp.cecr,
-			 (cmd | QE_CR_FLG | ((u32) device << dev_shift) | (u32)
-			  mcn_protocol << mcn_shift));
+		qe_iowrite32be(cmd_input, &qe_immr->cp.cecdr);
+		qe_iowrite32be((cmd | QE_CR_FLG | ((u32)device << dev_shift) | (u32)mcn_protocol << mcn_shift),
+			       &qe_immr->cp.cecr);
 	}
 
 	/* wait for the QE_CR_FLG to clear */
-	ret = spin_event_timeout((in_be32(&qe_immr->cp.cecr) & QE_CR_FLG) == 0,
-			   100, 0);
+	ret = spin_event_timeout((qe_ioread32be(&qe_immr->cp.cecr) & QE_CR_FLG) == 0,
+				 100, 0);
 	/* On timeout (e.g. failure), the expression will be false (ret == 0),
 	   otherwise it will be true (ret == 1). */
 	spin_unlock_irqrestore(&qe_lock, flags);
@@ -230,7 +229,7 @@ int qe_setbrg(enum qe_clock brg, unsigned int rate, unsigned int multiplier)
 	tempval = ((divisor - 1) << QE_BRGC_DIVISOR_SHIFT) |
 		QE_BRGC_ENABLE | div16;
 
-	out_be32(&qe_immr->brg.brgc[brg - QE_BRG1], tempval);
+	qe_iowrite32be(tempval, &qe_immr->brg.brgc[brg - QE_BRG1]);
 
 	return 0;
 }
@@ -377,9 +376,10 @@ static int qe_sdma_init(void)
 			return -ENOMEM;
 	}
 
-	out_be32(&sdma->sdebcr, (u32) sdma_buf_offset & QE_SDEBCR_BA_MASK);
-	out_be32(&sdma->sdmr, (QE_SDMR_GLB_1_MSK |
-		 (0x1 << QE_SDMR_CEN_SHIFT)));
+	qe_iowrite32be((u32)sdma_buf_offset & QE_SDEBCR_BA_MASK,
+		       &sdma->sdebcr);
+	qe_iowrite32be((QE_SDMR_GLB_1_MSK | (0x1 << QE_SDMR_CEN_SHIFT)),
+		       &sdma->sdmr);
 
 	return 0;
 }
@@ -417,14 +417,14 @@ static void qe_upload_microcode(const void *base,
 			"uploading microcode '%s'\n", ucode->id);
 
 	/* Use auto-increment */
-	out_be32(&qe_immr->iram.iadd, be32_to_cpu(ucode->iram_offset) |
-		QE_IRAM_IADD_AIE | QE_IRAM_IADD_BADDR);
+	qe_iowrite32be(be32_to_cpu(ucode->iram_offset) | QE_IRAM_IADD_AIE | QE_IRAM_IADD_BADDR,
+		       &qe_immr->iram.iadd);
 
 	for (i = 0; i < be32_to_cpu(ucode->count); i++)
-		out_be32(&qe_immr->iram.idata, be32_to_cpu(code[i]));
+		qe_iowrite32be(be32_to_cpu(code[i]), &qe_immr->iram.idata);
 	
 	/* Set I-RAM Ready Register */
-	out_be32(&qe_immr->iram.iready, be32_to_cpu(QE_IRAM_READY));
+	qe_iowrite32be(be32_to_cpu(QE_IRAM_READY), &qe_immr->iram.iready);
 }
 
 /*
@@ -509,7 +509,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
 	 * If the microcode calls for it, split the I-RAM.
 	 */
 	if (!firmware->split)
-		setbits16(&qe_immr->cp.cercr, QE_CP_CERCR_CIR);
+		qe_setbits_be16(&qe_immr->cp.cercr, QE_CP_CERCR_CIR);
 
 	if (firmware->soc.model)
 		printk(KERN_INFO
@@ -543,11 +543,13 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
 			u32 trap = be32_to_cpu(ucode->traps[j]);
 
 			if (trap)
-				out_be32(&qe_immr->rsp[i].tibcr[j], trap);
+				qe_iowrite32be(trap,
+					       &qe_immr->rsp[i].tibcr[j]);
 		}
 
 		/* Enable traps */
-		out_be32(&qe_immr->rsp[i].eccr, be32_to_cpu(ucode->eccr));
+		qe_iowrite32be(be32_to_cpu(ucode->eccr),
+			       &qe_immr->rsp[i].eccr);
 	}
 
 	qe_firmware_uploaded = 1;
diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 791adcd121d1..8c874372416b 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -24,6 +24,7 @@
 #include <linux/spinlock.h>
 #include <asm/irq.h>
 #include <asm/io.h>
+#include <soc/fsl/qe/qe.h>
 #include <soc/fsl/qe/qe_ic.h>
 
 #include "qe_ic.h"
@@ -173,13 +174,13 @@ static struct qe_ic_info qe_ic_info[] = {
 
 static inline u32 qe_ic_read(__be32  __iomem *base, unsigned int reg)
 {
-	return in_be32(base + (reg >> 2));
+	return qe_ioread32be(base + (reg >> 2));
 }
 
 static inline void qe_ic_write(__be32  __iomem *base, unsigned int reg,
 			       u32 value)
 {
-	out_be32(base + (reg >> 2), value);
+	qe_iowrite32be(value, base + (reg >> 2));
 }
 
 static inline struct qe_ic *qe_ic_from_irq(unsigned int virq)
diff --git a/drivers/soc/fsl/qe/qe_io.c b/drivers/soc/fsl/qe/qe_io.c
index 3657e296a8a2..5e3471ac09dd 100644
--- a/drivers/soc/fsl/qe/qe_io.c
+++ b/drivers/soc/fsl/qe/qe_io.c
@@ -57,16 +57,16 @@ void __par_io_config_pin(struct qe_pio_regs __iomem *par_io, u8 pin, int dir,
 	pin_mask1bit = (u32) (1 << (QE_PIO_PINS - (pin + 1)));
 
 	/* Set open drain, if required */
-	tmp_val = in_be32(&par_io->cpodr);
+	tmp_val = qe_ioread32be(&par_io->cpodr);
 	if (open_drain)
-		out_be32(&par_io->cpodr, pin_mask1bit | tmp_val);
+		qe_iowrite32be(pin_mask1bit | tmp_val, &par_io->cpodr);
 	else
-		out_be32(&par_io->cpodr, ~pin_mask1bit & tmp_val);
+		qe_iowrite32be(~pin_mask1bit & tmp_val, &par_io->cpodr);
 
 	/* define direction */
 	tmp_val = (pin > (QE_PIO_PINS / 2) - 1) ?
-		in_be32(&par_io->cpdir2) :
-		in_be32(&par_io->cpdir1);
+		qe_ioread32be(&par_io->cpdir2) :
+		qe_ioread32be(&par_io->cpdir1);
 
 	/* get all bits mask for 2 bit per port */
 	pin_mask2bits = (u32) (0x3 << (QE_PIO_PINS -
@@ -78,34 +78,30 @@ void __par_io_config_pin(struct qe_pio_regs __iomem *par_io, u8 pin, int dir,
 
 	/* clear and set 2 bits mask */
 	if (pin > (QE_PIO_PINS / 2) - 1) {
-		out_be32(&par_io->cpdir2,
-			 ~pin_mask2bits & tmp_val);
+		qe_iowrite32be(~pin_mask2bits & tmp_val, &par_io->cpdir2);
 		tmp_val &= ~pin_mask2bits;
-		out_be32(&par_io->cpdir2, new_mask2bits | tmp_val);
+		qe_iowrite32be(new_mask2bits | tmp_val, &par_io->cpdir2);
 	} else {
-		out_be32(&par_io->cpdir1,
-			 ~pin_mask2bits & tmp_val);
+		qe_iowrite32be(~pin_mask2bits & tmp_val, &par_io->cpdir1);
 		tmp_val &= ~pin_mask2bits;
-		out_be32(&par_io->cpdir1, new_mask2bits | tmp_val);
+		qe_iowrite32be(new_mask2bits | tmp_val, &par_io->cpdir1);
 	}
 	/* define pin assignment */
 	tmp_val = (pin > (QE_PIO_PINS / 2) - 1) ?
-		in_be32(&par_io->cppar2) :
-		in_be32(&par_io->cppar1);
+		qe_ioread32be(&par_io->cppar2) :
+		qe_ioread32be(&par_io->cppar1);
 
 	new_mask2bits = (u32) (assignment << (QE_PIO_PINS -
 			(pin % (QE_PIO_PINS / 2) + 1) * 2));
 	/* clear and set 2 bits mask */
 	if (pin > (QE_PIO_PINS / 2) - 1) {
-		out_be32(&par_io->cppar2,
-			 ~pin_mask2bits & tmp_val);
+		qe_iowrite32be(~pin_mask2bits & tmp_val, &par_io->cppar2);
 		tmp_val &= ~pin_mask2bits;
-		out_be32(&par_io->cppar2, new_mask2bits | tmp_val);
+		qe_iowrite32be(new_mask2bits | tmp_val, &par_io->cppar2);
 	} else {
-		out_be32(&par_io->cppar1,
-			 ~pin_mask2bits & tmp_val);
+		qe_iowrite32be(~pin_mask2bits & tmp_val, &par_io->cppar1);
 		tmp_val &= ~pin_mask2bits;
-		out_be32(&par_io->cppar1, new_mask2bits | tmp_val);
+		qe_iowrite32be(new_mask2bits | tmp_val, &par_io->cppar1);
 	}
 }
 EXPORT_SYMBOL(__par_io_config_pin);
@@ -133,12 +129,12 @@ int par_io_data_set(u8 port, u8 pin, u8 val)
 	/* calculate pin location */
 	pin_mask = (u32) (1 << (QE_PIO_PINS - 1 - pin));
 
-	tmp_val = in_be32(&par_io[port].cpdata);
+	tmp_val = qe_ioread32be(&par_io[port].cpdata);
 
 	if (val == 0)		/* clear */
-		out_be32(&par_io[port].cpdata, ~pin_mask & tmp_val);
+		qe_iowrite32be(~pin_mask & tmp_val, &par_io[port].cpdata);
 	else			/* set */
-		out_be32(&par_io[port].cpdata, pin_mask | tmp_val);
+		qe_iowrite32be(pin_mask | tmp_val, &par_io[port].cpdata);
 
 	return 0;
 }
diff --git a/drivers/soc/fsl/qe/qe_tdm.c b/drivers/soc/fsl/qe/qe_tdm.c
index e37ebc3be661..7d7d78d3ee50 100644
--- a/drivers/soc/fsl/qe/qe_tdm.c
+++ b/drivers/soc/fsl/qe/qe_tdm.c
@@ -169,10 +169,10 @@ void ucc_tdm_init(struct ucc_tdm *utdm, struct ucc_tdm_info *ut_info)
 				    &siram[siram_entry_id * 32 + 0x200 +  i]);
 	}
 
-	setbits16(&siram[(siram_entry_id * 32) + (utdm->num_of_ts - 1)],
-		  SIR_LAST);
-	setbits16(&siram[(siram_entry_id * 32) + 0x200 + (utdm->num_of_ts - 1)],
-		  SIR_LAST);
+	qe_setbits_be16(&siram[(siram_entry_id * 32) + (utdm->num_of_ts - 1)],
+			SIR_LAST);
+	qe_setbits_be16(&siram[(siram_entry_id * 32) + 0x200 + (utdm->num_of_ts - 1)],
+			SIR_LAST);
 
 	/* Set SIxMR register */
 	sixmr = SIMR_SAD(siram_entry_id);
diff --git a/drivers/soc/fsl/qe/ucc.c b/drivers/soc/fsl/qe/ucc.c
index ae9f2cf560cb..da3d7e2dd837 100644
--- a/drivers/soc/fsl/qe/ucc.c
+++ b/drivers/soc/fsl/qe/ucc.c
@@ -35,8 +35,8 @@ int ucc_set_qe_mux_mii_mng(unsigned int ucc_num)
 		return -EINVAL;
 
 	spin_lock_irqsave(&cmxgcr_lock, flags);
-	clrsetbits_be32(&qe_immr->qmx.cmxgcr, QE_CMXGCR_MII_ENET_MNG,
-		ucc_num << QE_CMXGCR_MII_ENET_MNG_SHIFT);
+	qe_clrsetbits_be32(&qe_immr->qmx.cmxgcr, QE_CMXGCR_MII_ENET_MNG,
+			   ucc_num << QE_CMXGCR_MII_ENET_MNG_SHIFT);
 	spin_unlock_irqrestore(&cmxgcr_lock, flags);
 
 	return 0;
@@ -80,8 +80,8 @@ int ucc_set_type(unsigned int ucc_num, enum ucc_speed_type speed)
 		return -EINVAL;
 	}
 
-	clrsetbits_8(guemr, UCC_GUEMR_MODE_MASK,
-		UCC_GUEMR_SET_RESERVED3 | speed);
+	qe_clrsetbits_8(guemr, UCC_GUEMR_MODE_MASK,
+			UCC_GUEMR_SET_RESERVED3 | speed);
 
 	return 0;
 }
@@ -109,9 +109,9 @@ int ucc_mux_set_grant_tsa_bkpt(unsigned int ucc_num, int set, u32 mask)
 	get_cmxucr_reg(ucc_num, &cmxucr, &reg_num, &shift);
 
 	if (set)
-		setbits32(cmxucr, mask << shift);
+		qe_setbits_be32(cmxucr, mask << shift);
 	else
-		clrbits32(cmxucr, mask << shift);
+		qe_clrbits_be32(cmxucr, mask << shift);
 
 	return 0;
 }
@@ -207,8 +207,8 @@ int ucc_set_qe_mux_rxtx(unsigned int ucc_num, enum qe_clock clock,
 	if (mode == COMM_DIR_RX)
 		shift += 4;
 
-	clrsetbits_be32(cmxucr, QE_CMXUCR_TX_CLK_SRC_MASK << shift,
-		clock_bits << shift);
+	qe_clrsetbits_be32(cmxucr, QE_CMXUCR_TX_CLK_SRC_MASK << shift,
+			   clock_bits << shift);
 
 	return 0;
 }
diff --git a/drivers/soc/fsl/qe/ucc_fast.c b/drivers/soc/fsl/qe/ucc_fast.c
index af4d80e38521..ca0452497a20 100644
--- a/drivers/soc/fsl/qe/ucc_fast.c
+++ b/drivers/soc/fsl/qe/ucc_fast.c
@@ -29,41 +29,42 @@ void ucc_fast_dump_regs(struct ucc_fast_private * uccf)
 	printk(KERN_INFO "Base address: 0x%p\n", uccf->uf_regs);
 
 	printk(KERN_INFO "gumr  : addr=0x%p, val=0x%08x\n",
-		  &uccf->uf_regs->gumr, in_be32(&uccf->uf_regs->gumr));
+		  &uccf->uf_regs->gumr, qe_ioread32be(&uccf->uf_regs->gumr));
 	printk(KERN_INFO "upsmr : addr=0x%p, val=0x%08x\n",
-		  &uccf->uf_regs->upsmr, in_be32(&uccf->uf_regs->upsmr));
+		  &uccf->uf_regs->upsmr, qe_ioread32be(&uccf->uf_regs->upsmr));
 	printk(KERN_INFO "utodr : addr=0x%p, val=0x%04x\n",
-		  &uccf->uf_regs->utodr, in_be16(&uccf->uf_regs->utodr));
+		  &uccf->uf_regs->utodr, qe_ioread16be(&uccf->uf_regs->utodr));
 	printk(KERN_INFO "udsr  : addr=0x%p, val=0x%04x\n",
-		  &uccf->uf_regs->udsr, in_be16(&uccf->uf_regs->udsr));
+		  &uccf->uf_regs->udsr, qe_ioread16be(&uccf->uf_regs->udsr));
 	printk(KERN_INFO "ucce  : addr=0x%p, val=0x%08x\n",
-		  &uccf->uf_regs->ucce, in_be32(&uccf->uf_regs->ucce));
+		  &uccf->uf_regs->ucce, qe_ioread32be(&uccf->uf_regs->ucce));
 	printk(KERN_INFO "uccm  : addr=0x%p, val=0x%08x\n",
-		  &uccf->uf_regs->uccm, in_be32(&uccf->uf_regs->uccm));
+		  &uccf->uf_regs->uccm, qe_ioread32be(&uccf->uf_regs->uccm));
 	printk(KERN_INFO "uccs  : addr=0x%p, val=0x%02x\n",
-		  &uccf->uf_regs->uccs, in_8(&uccf->uf_regs->uccs));
+		  &uccf->uf_regs->uccs, qe_ioread8(&uccf->uf_regs->uccs));
 	printk(KERN_INFO "urfb  : addr=0x%p, val=0x%08x\n",
-		  &uccf->uf_regs->urfb, in_be32(&uccf->uf_regs->urfb));
+		  &uccf->uf_regs->urfb, qe_ioread32be(&uccf->uf_regs->urfb));
 	printk(KERN_INFO "urfs  : addr=0x%p, val=0x%04x\n",
-		  &uccf->uf_regs->urfs, in_be16(&uccf->uf_regs->urfs));
+		  &uccf->uf_regs->urfs, qe_ioread16be(&uccf->uf_regs->urfs));
 	printk(KERN_INFO "urfet : addr=0x%p, val=0x%04x\n",
-		  &uccf->uf_regs->urfet, in_be16(&uccf->uf_regs->urfet));
+		  &uccf->uf_regs->urfet, qe_ioread16be(&uccf->uf_regs->urfet));
 	printk(KERN_INFO "urfset: addr=0x%p, val=0x%04x\n",
-		  &uccf->uf_regs->urfset, in_be16(&uccf->uf_regs->urfset));
+		  &uccf->uf_regs->urfset,
+		  qe_ioread16be(&uccf->uf_regs->urfset));
 	printk(KERN_INFO "utfb  : addr=0x%p, val=0x%08x\n",
-		  &uccf->uf_regs->utfb, in_be32(&uccf->uf_regs->utfb));
+		  &uccf->uf_regs->utfb, qe_ioread32be(&uccf->uf_regs->utfb));
 	printk(KERN_INFO "utfs  : addr=0x%p, val=0x%04x\n",
-		  &uccf->uf_regs->utfs, in_be16(&uccf->uf_regs->utfs));
+		  &uccf->uf_regs->utfs, qe_ioread16be(&uccf->uf_regs->utfs));
 	printk(KERN_INFO "utfet : addr=0x%p, val=0x%04x\n",
-		  &uccf->uf_regs->utfet, in_be16(&uccf->uf_regs->utfet));
+		  &uccf->uf_regs->utfet, qe_ioread16be(&uccf->uf_regs->utfet));
 	printk(KERN_INFO "utftt : addr=0x%p, val=0x%04x\n",
-		  &uccf->uf_regs->utftt, in_be16(&uccf->uf_regs->utftt));
+		  &uccf->uf_regs->utftt, qe_ioread16be(&uccf->uf_regs->utftt));
 	printk(KERN_INFO "utpt  : addr=0x%p, val=0x%04x\n",
-		  &uccf->uf_regs->utpt, in_be16(&uccf->uf_regs->utpt));
+		  &uccf->uf_regs->utpt, qe_ioread16be(&uccf->uf_regs->utpt));
 	printk(KERN_INFO "urtry : addr=0x%p, val=0x%08x\n",
-		  &uccf->uf_regs->urtry, in_be32(&uccf->uf_regs->urtry));
+		  &uccf->uf_regs->urtry, qe_ioread32be(&uccf->uf_regs->urtry));
 	printk(KERN_INFO "guemr : addr=0x%p, val=0x%02x\n",
-		  &uccf->uf_regs->guemr, in_8(&uccf->uf_regs->guemr));
+		  &uccf->uf_regs->guemr, qe_ioread8(&uccf->uf_regs->guemr));
 }
 EXPORT_SYMBOL(ucc_fast_dump_regs);
 
@@ -85,7 +86,7 @@ EXPORT_SYMBOL(ucc_fast_get_qe_cr_subblock);
 
 void ucc_fast_transmit_on_demand(struct ucc_fast_private * uccf)
 {
-	out_be16(&uccf->uf_regs->utodr, UCC_FAST_TOD);
+	qe_iowrite16be(UCC_FAST_TOD, &uccf->uf_regs->utodr);
 }
 EXPORT_SYMBOL(ucc_fast_transmit_on_demand);
 
@@ -97,7 +98,7 @@ void ucc_fast_enable(struct ucc_fast_private * uccf, enum comm_dir mode)
 	uf_regs = uccf->uf_regs;
 
 	/* Enable reception and/or transmission on this UCC. */
-	gumr = in_be32(&uf_regs->gumr);
+	gumr = qe_ioread32be(&uf_regs->gumr);
 	if (mode & COMM_DIR_TX) {
 		gumr |= UCC_FAST_GUMR_ENT;
 		uccf->enabled_tx = 1;
@@ -106,7 +107,7 @@ void ucc_fast_enable(struct ucc_fast_private * uccf, enum comm_dir mode)
 		gumr |= UCC_FAST_GUMR_ENR;
 		uccf->enabled_rx = 1;
 	}
-	out_be32(&uf_regs->gumr, gumr);
+	qe_iowrite32be(gumr, &uf_regs->gumr);
 }
 EXPORT_SYMBOL(ucc_fast_enable);
 
@@ -118,7 +119,7 @@ void ucc_fast_disable(struct ucc_fast_private * uccf, enum comm_dir mode)
 	uf_regs = uccf->uf_regs;
 
 	/* Disable reception and/or transmission on this UCC. */
-	gumr = in_be32(&uf_regs->gumr);
+	gumr = qe_ioread32be(&uf_regs->gumr);
 	if (mode & COMM_DIR_TX) {
 		gumr &= ~UCC_FAST_GUMR_ENT;
 		uccf->enabled_tx = 0;
@@ -127,7 +128,7 @@ void ucc_fast_disable(struct ucc_fast_private * uccf, enum comm_dir mode)
 		gumr &= ~UCC_FAST_GUMR_ENR;
 		uccf->enabled_rx = 0;
 	}
-	out_be32(&uf_regs->gumr, gumr);
+	qe_iowrite32be(gumr, &uf_regs->gumr);
 }
 EXPORT_SYMBOL(ucc_fast_disable);
 
@@ -259,7 +260,7 @@ int ucc_fast_init(struct ucc_fast_info * uf_info, struct ucc_fast_private ** ucc
 	gumr |= uf_info->tenc;
 	gumr |= uf_info->tcrc;
 	gumr |= uf_info->mode;
-	out_be32(&uf_regs->gumr, gumr);
+	qe_iowrite32be(gumr, &uf_regs->gumr);
 
 	/* Allocate memory for Tx Virtual Fifo */
 	uccf->ucc_fast_tx_virtual_fifo_base_offset =
@@ -286,15 +287,17 @@ int ucc_fast_init(struct ucc_fast_info * uf_info, struct ucc_fast_private ** ucc
 	}
 
 	/* Set Virtual Fifo registers */
-	out_be16(&uf_regs->urfs, uf_info->urfs);
-	out_be16(&uf_regs->urfet, uf_info->urfet);
-	out_be16(&uf_regs->urfset, uf_info->urfset);
-	out_be16(&uf_regs->utfs, uf_info->utfs);
-	out_be16(&uf_regs->utfet, uf_info->utfet);
-	out_be16(&uf_regs->utftt, uf_info->utftt);
+	qe_iowrite16be(uf_info->urfs, &uf_regs->urfs);
+	qe_iowrite16be(uf_info->urfet, &uf_regs->urfet);
+	qe_iowrite16be(uf_info->urfset, &uf_regs->urfset);
+	qe_iowrite16be(uf_info->utfs, &uf_regs->utfs);
+	qe_iowrite16be(uf_info->utfet, &uf_regs->utfet);
+	qe_iowrite16be(uf_info->utftt, &uf_regs->utftt);
 	/* utfb, urfb are offsets from MURAM base */
-	out_be32(&uf_regs->utfb, uccf->ucc_fast_tx_virtual_fifo_base_offset);
-	out_be32(&uf_regs->urfb, uccf->ucc_fast_rx_virtual_fifo_base_offset);
+	qe_iowrite32be(uccf->ucc_fast_tx_virtual_fifo_base_offset,
+		       &uf_regs->utfb);
+	qe_iowrite32be(uccf->ucc_fast_rx_virtual_fifo_base_offset,
+		       &uf_regs->urfb);
 
 	/* Mux clocking */
 	/* Grant Support */
@@ -362,14 +365,14 @@ int ucc_fast_init(struct ucc_fast_info * uf_info, struct ucc_fast_private ** ucc
 	}
 
 	/* Set interrupt mask register at UCC level. */
-	out_be32(&uf_regs->uccm, uf_info->uccm_mask);
+	qe_iowrite32be(uf_info->uccm_mask, &uf_regs->uccm);
 
 	/* First, clear anything pending at UCC level,
 	 * otherwise, old garbage may come through
 	 * as soon as the dam is opened. */
 
 	/* Writing '1' clears */
-	out_be32(&uf_regs->ucce, 0xffffffff);
+	qe_iowrite32be(0xffffffff, &uf_regs->ucce);
 
 	*uccf_ret = uccf;
 	return 0;
diff --git a/drivers/soc/fsl/qe/ucc_slow.c b/drivers/soc/fsl/qe/ucc_slow.c
index 34f0ec3a63b5..9b55fd0f50c6 100644
--- a/drivers/soc/fsl/qe/ucc_slow.c
+++ b/drivers/soc/fsl/qe/ucc_slow.c
@@ -78,7 +78,7 @@ void ucc_slow_enable(struct ucc_slow_private * uccs, enum comm_dir mode)
 	us_regs = uccs->us_regs;
 
 	/* Enable reception and/or transmission on this UCC. */
-	gumr_l = in_be32(&us_regs->gumr_l);
+	gumr_l = qe_ioread32be(&us_regs->gumr_l);
 	if (mode & COMM_DIR_TX) {
 		gumr_l |= UCC_SLOW_GUMR_L_ENT;
 		uccs->enabled_tx = 1;
@@ -87,7 +87,7 @@ void ucc_slow_enable(struct ucc_slow_private * uccs, enum comm_dir mode)
 		gumr_l |= UCC_SLOW_GUMR_L_ENR;
 		uccs->enabled_rx = 1;
 	}
-	out_be32(&us_regs->gumr_l, gumr_l);
+	qe_iowrite32be(gumr_l, &us_regs->gumr_l);
 }
 EXPORT_SYMBOL(ucc_slow_enable);
 
@@ -99,7 +99,7 @@ void ucc_slow_disable(struct ucc_slow_private * uccs, enum comm_dir mode)
 	us_regs = uccs->us_regs;
 
 	/* Disable reception and/or transmission on this UCC. */
-	gumr_l = in_be32(&us_regs->gumr_l);
+	gumr_l = qe_ioread32be(&us_regs->gumr_l);
 	if (mode & COMM_DIR_TX) {
 		gumr_l &= ~UCC_SLOW_GUMR_L_ENT;
 		uccs->enabled_tx = 0;
@@ -108,7 +108,7 @@ void ucc_slow_disable(struct ucc_slow_private * uccs, enum comm_dir mode)
 		gumr_l &= ~UCC_SLOW_GUMR_L_ENR;
 		uccs->enabled_rx = 0;
 	}
-	out_be32(&us_regs->gumr_l, gumr_l);
+	qe_iowrite32be(gumr_l, &us_regs->gumr_l);
 }
 EXPORT_SYMBOL(ucc_slow_disable);
 
@@ -198,7 +198,7 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
 		return ret;
 	}
 
-	out_be16(&uccs->us_pram->mrblr, us_info->max_rx_buf_length);
+	qe_iowrite16be(us_info->max_rx_buf_length, &uccs->us_pram->mrblr);
 
 	INIT_LIST_HEAD(&uccs->confQ);
 
@@ -228,27 +228,27 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
 	bd = uccs->confBd = uccs->tx_bd = qe_muram_addr(uccs->tx_base_offset);
 	for (i = 0; i < us_info->tx_bd_ring_len - 1; i++) {
 		/* clear bd buffer */
-		out_be32(&bd->buf, 0);
+		qe_iowrite32be(0, &bd->buf);
 		/* set bd status and length */
-		out_be32((u32 *) bd, 0);
+		qe_iowrite32be(0, (u32 *)bd);
 		bd++;
 	}
 	/* for last BD set Wrap bit */
-	out_be32(&bd->buf, 0);
-	out_be32((u32 *) bd, cpu_to_be32(T_W));
+	qe_iowrite32be(0, &bd->buf);
+	qe_iowrite32be(cpu_to_be32(T_W), (u32 *)bd);
 
 	/* Init Rx bds */
 	bd = uccs->rx_bd = qe_muram_addr(uccs->rx_base_offset);
 	for (i = 0; i < us_info->rx_bd_ring_len - 1; i++) {
 		/* set bd status and length */
-		out_be32((u32*)bd, 0);
+		qe_iowrite32be(0, (u32 *)bd);
 		/* clear bd buffer */
-		out_be32(&bd->buf, 0);
+		qe_iowrite32be(0, &bd->buf);
 		bd++;
 	}
 	/* for last BD set Wrap bit */
-	out_be32((u32*)bd, cpu_to_be32(R_W));
-	out_be32(&bd->buf, 0);
+	qe_iowrite32be(cpu_to_be32(R_W), (u32 *)bd);
+	qe_iowrite32be(0, &bd->buf);
 
 	/* Set GUMR (For more details see the hardware spec.). */
 	/* gumr_h */
@@ -269,7 +269,7 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
 		gumr |= UCC_SLOW_GUMR_H_TXSY;
 	if (us_info->rtsm)
 		gumr |= UCC_SLOW_GUMR_H_RTSM;
-	out_be32(&us_regs->gumr_h, gumr);
+	qe_iowrite32be(gumr, &us_regs->gumr_h);
 
 	/* gumr_l */
 	gumr = us_info->tdcr | us_info->rdcr | us_info->tenc | us_info->renc |
@@ -282,7 +282,7 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
 		gumr |= UCC_SLOW_GUMR_L_TINV;
 	if (us_info->tend)
 		gumr |= UCC_SLOW_GUMR_L_TEND;
-	out_be32(&us_regs->gumr_l, gumr);
+	qe_iowrite32be(gumr, &us_regs->gumr_l);
 
 	/* Function code registers */
 
@@ -292,8 +292,8 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
 	uccs->us_pram->rbmr = UCC_BMR_BO_BE;
 
 	/* rbase, tbase are offsets from MURAM base */
-	out_be16(&uccs->us_pram->rbase, uccs->rx_base_offset);
-	out_be16(&uccs->us_pram->tbase, uccs->tx_base_offset);
+	qe_iowrite16be(uccs->rx_base_offset, &uccs->us_pram->rbase);
+	qe_iowrite16be(uccs->tx_base_offset, &uccs->us_pram->tbase);
 
 	/* Mux clocking */
 	/* Grant Support */
@@ -323,14 +323,14 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
 	}
 
 	/* Set interrupt mask register at UCC level. */
-	out_be16(&us_regs->uccm, us_info->uccm_mask);
+	qe_iowrite16be(us_info->uccm_mask, &us_regs->uccm);
 
 	/* First, clear anything pending at UCC level,
 	 * otherwise, old garbage may come through
 	 * as soon as the dam is opened. */
 
 	/* Writing '1' clears */
-	out_be16(&us_regs->ucce, 0xffff);
+	qe_iowrite16be(0xffff, &us_regs->ucce);
 
 	/* Issue QE Init command */
 	if (us_info->init_tx && us_info->init_rx)
diff --git a/drivers/soc/fsl/qe/usb.c b/drivers/soc/fsl/qe/usb.c
index 32d8269fa692..890f236ea697 100644
--- a/drivers/soc/fsl/qe/usb.c
+++ b/drivers/soc/fsl/qe/usb.c
@@ -43,7 +43,7 @@ int qe_usb_clock_set(enum qe_clock clk, int rate)
 
 	spin_lock_irqsave(&cmxgcr_lock, flags);
 
-	clrsetbits_be32(&mux->cmxgcr, QE_CMXGCR_USBCS, val);
+	qe_clrsetbits_be32(&mux->cmxgcr, QE_CMXGCR_USBCS, val);
 
 	spin_unlock_irqrestore(&cmxgcr_lock, flags);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
