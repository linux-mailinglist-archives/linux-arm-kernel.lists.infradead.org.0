Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19B3EC323
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HEnV5S6kkq1BESv3GKwm8mfveUS2oQGmktHqdroMTI=; b=vAgxLJXe87Ptgw
	/QuOeM6+dJYZjSr4otVtB92RBQo9NAe7hkm7Yzi7ask6koBMWkmtgKwqUnBJuVd3e6SJ/BkHWv91b
	eVHM/rhml5bA5IBezJKi6EH1xcOKdsRxOpFNlYCLOLqaPWK+3cnZ+yRrhkylAKkhd1A5T0ELP1X5C
	cc+wlyNH5mCoQdGSoD2YONR+vV5Whz15qCJIlVaPnspUVM1QVTAX/75G3ghtP5iY5Bvd9MuWKf4k+
	KD6KmHOiCkbTQ8D5SnLr/4sE5WkcQImBf3Y8I/3q1nvGB+8wMdKreLK16FgQUBvZ6O7cN+Tke395+
	y0SCT4TqBDJqmiT0P3Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWLD-000589-PE; Fri, 01 Nov 2019 12:47:47 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWGF-00089F-7h
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:40 +0000
Received: by mail-lf1-x141.google.com with SMTP id z12so7135073lfj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z2c319/rjPUXp8iRV62XAcjKgiOjRbx515GvierWVkM=;
 b=emxjxGI5mzMUlIacGEHrL8HHfoh+f+nWa9gO07GOW4QyExZHgcvn5bvZdXqLZSNRzH
 T6KiKkaCIX+2BDTbqSKNnteERU86ltuF8fgmVWLPrjkyvEDzacT6ouPkXoVf+JByyKB+
 avErQjWjwN1a4qGfUl42EYAJpsK/C9Gfr08Z8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z2c319/rjPUXp8iRV62XAcjKgiOjRbx515GvierWVkM=;
 b=CCy2Phx5BMQ8Rcr2dxCvg3J8ASnPi0XisUOdE6hjBXzl7iQHOVIf87A3VOmThYQrfs
 jftYP+l7MOvsbEHb18F4I7doMDm+i7/A/110+lFUG1aBczbqW24eX9Yzf1qCqCkvkft7
 h4ulrxO10BxypEuelo5DdkD0tPfj4o+ohqQWNelwrQcRkPibqubQN6gFgP2+3doxtJ6z
 z4CHGSmknXOnjFqNS/XAPyXqcUreK5VLrvsOWBTjpB6SbFZX01oC6YqkfexJaCEH9ieV
 X/kAN78L/4zQ2BxTNNcQWprMKsmLj1p9gLauseEWdNY6XVV7QlrSLgMK0hqT/6zXU+NG
 qbmg==
X-Gm-Message-State: APjAAAUA6K6wST7uasahiGAXwzaRgY0m4LEbOHk/d+F+72o5qH/Xc9eX
 mWzNYV8MmW+/0x/5SWMClpxxmw==
X-Google-Smtp-Source: APXvYqyUED22wOC6qXGZRgb0XFAyo80agg4tRT/Xg6HOogBbRuVaLKjlgEcwhH7XuCsmAGV+O0vQqQ==
X-Received: by 2002:a19:4c02:: with SMTP id z2mr6812332lfa.45.1572612157070;
 Fri, 01 Nov 2019 05:42:37 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:36 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 17/36] soc: fsl: qe: remove unused qe_ic_set_* functions
Date: Fri,  1 Nov 2019 13:41:51 +0100
Message-Id: <20191101124210.14510-18-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054239_335619_DC1EE2B7 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are no current callers of these functions, and they use the
ppc-specific virq_to_hw(). So removing them gets us one step closer to
building QE support for ARM.

If the functionality is ever actually needed, the code can be dug out
of git and then adapted to work on all architectures, but for future
reference please note that I believe qe_ic_set_priority is buggy: The
"priority < 4" should be "priority <= 4", and in the else branch 24
should be replaced by 28, at least if I'm reading the data sheet right.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 94 --------------------------------------
 include/soc/fsl/qe/qe_ic.h |  4 --
 2 files changed, 98 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index de2ca2e3a648..4839dcd5c5d3 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -445,97 +445,3 @@ static int __init qe_ic_of_init(void)
 	return 0;
 }
 subsys_initcall(qe_ic_of_init);
-
-void qe_ic_set_highest_priority(unsigned int virq, int high)
-{
-	struct qe_ic *qe_ic = qe_ic_from_irq(virq);
-	unsigned int src = virq_to_hw(virq);
-	u32 temp = 0;
-
-	temp = qe_ic_read(qe_ic->regs, QEIC_CICR);
-
-	temp &= ~CICR_HP_MASK;
-	temp |= src << CICR_HP_SHIFT;
-
-	temp &= ~CICR_HPIT_MASK;
-	temp |= (high ? SIGNAL_HIGH : SIGNAL_LOW) << CICR_HPIT_SHIFT;
-
-	qe_ic_write(qe_ic->regs, QEIC_CICR, temp);
-}
-
-/* Set Priority level within its group, from 1 to 8 */
-int qe_ic_set_priority(unsigned int virq, unsigned int priority)
-{
-	struct qe_ic *qe_ic = qe_ic_from_irq(virq);
-	unsigned int src = virq_to_hw(virq);
-	u32 temp;
-
-	if (priority > 8 || priority == 0)
-		return -EINVAL;
-	if (WARN_ONCE(src >= ARRAY_SIZE(qe_ic_info),
-		      "%s: Invalid hw irq number for QEIC\n", __func__))
-		return -EINVAL;
-	if (qe_ic_info[src].pri_reg == 0)
-		return -EINVAL;
-
-	temp = qe_ic_read(qe_ic->regs, qe_ic_info[src].pri_reg);
-
-	if (priority < 4) {
-		temp &= ~(0x7 << (32 - priority * 3));
-		temp |= qe_ic_info[src].pri_code << (32 - priority * 3);
-	} else {
-		temp &= ~(0x7 << (24 - priority * 3));
-		temp |= qe_ic_info[src].pri_code << (24 - priority * 3);
-	}
-
-	qe_ic_write(qe_ic->regs, qe_ic_info[src].pri_reg, temp);
-
-	return 0;
-}
-
-/* Set a QE priority to use high irq, only priority 1~2 can use high irq */
-int qe_ic_set_high_priority(unsigned int virq, unsigned int priority, int high)
-{
-	struct qe_ic *qe_ic = qe_ic_from_irq(virq);
-	unsigned int src = virq_to_hw(virq);
-	u32 temp, control_reg = QEIC_CICNR, shift = 0;
-
-	if (priority > 2 || priority == 0)
-		return -EINVAL;
-	if (WARN_ONCE(src >= ARRAY_SIZE(qe_ic_info),
-		      "%s: Invalid hw irq number for QEIC\n", __func__))
-		return -EINVAL;
-
-	switch (qe_ic_info[src].pri_reg) {
-	case QEIC_CIPZCC:
-		shift = CICNR_ZCC1T_SHIFT;
-		break;
-	case QEIC_CIPWCC:
-		shift = CICNR_WCC1T_SHIFT;
-		break;
-	case QEIC_CIPYCC:
-		shift = CICNR_YCC1T_SHIFT;
-		break;
-	case QEIC_CIPXCC:
-		shift = CICNR_XCC1T_SHIFT;
-		break;
-	case QEIC_CIPRTA:
-		shift = CRICR_RTA1T_SHIFT;
-		control_reg = QEIC_CRICR;
-		break;
-	case QEIC_CIPRTB:
-		shift = CRICR_RTB1T_SHIFT;
-		control_reg = QEIC_CRICR;
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	shift += (2 - priority) * 2;
-	temp = qe_ic_read(qe_ic->regs, control_reg);
-	temp &= ~(SIGNAL_MASK << shift);
-	temp |= (high ? SIGNAL_HIGH : SIGNAL_LOW) << shift;
-	qe_ic_write(qe_ic->regs, control_reg, temp);
-
-	return 0;
-}
diff --git a/include/soc/fsl/qe/qe_ic.h b/include/soc/fsl/qe/qe_ic.h
index 43e4ce95c6a0..d47eb231519e 100644
--- a/include/soc/fsl/qe/qe_ic.h
+++ b/include/soc/fsl/qe/qe_ic.h
@@ -63,8 +63,4 @@ static inline unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 { return 0; }
 #endif /* CONFIG_QUICC_ENGINE */
 
-void qe_ic_set_highest_priority(unsigned int virq, int high);
-int qe_ic_set_priority(unsigned int virq, unsigned int priority);
-int qe_ic_set_high_priority(unsigned int virq, unsigned int priority, int high);
-
 #endif /* _ASM_POWERPC_QE_IC_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
