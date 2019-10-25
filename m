Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5961AE4B7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/QDWqc+AdK5aJ5VR7xHH/NHtDp8dqE7uxSFDj/cDoc=; b=l3sk3qPNXFH+lM
	ewulNoO9WjHwjAOrolGBglqp+Iiy343GsWw6ZfXQ8XsGYPraQk/Ac5tK+dF17L/VSg3SZJmrkfw2u
	Zx4qO4dGrDLgP9a1/9WXpCte8ETKdiaZuBypQbNZWeMgXa3mIPlCPeb1SAvZBrZTh990JkUXnFG6w
	8Vr7JFU7ApZvhrEH+hdB48VRHVNm/I/Dr1XnIk4pyzz8FezUsevjfW4KfXvxQ7bnmVxjS2Os5EBCF
	TXZNNlcwljG+Lf8mm7r/FALUsJ82NLtdA7Znj7jJbudCjZT1+TnsUMXI2cDXFENRYEsaqzU7zBx0A
	8OGV06y1WC46QICu/saQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNz07-0003UI-Ta; Fri, 25 Oct 2019 12:47:31 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyuE-0006Sm-5c
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:29 +0000
Received: by mail-lj1-x242.google.com with SMTP id y3so2550234ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R3SaCctQ33G0LqzlxkoZQqgVXIOLmGcZ9QAc4BskcDk=;
 b=J6UXGh2wqwAc/+LZXDTKvF+WwOwD8qwr2FNWm47poYQ8yc8qW2mTPT0FRMZguXjutf
 c8DuE0S0rSMO8D8ykEDKzSp+ZeTtkwJJx2JS6QDezvAfV+MvPc4M3VUtiDWMtzXvxVFn
 +oi5/ChWZGObNUyC4Kq+YiDjBVfDbrRcmEavk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R3SaCctQ33G0LqzlxkoZQqgVXIOLmGcZ9QAc4BskcDk=;
 b=LCDVQSbuNVkejSdvE4Y9aU2K/o07oUvwKXKnXNNzufhmfLAAkHsuJw8P8QNU4gNVp0
 vsBeI3uoMiqY/Foz/5YiIpuBRzqOkjdzVlgTcEbcdEYr09V+8in4NhMIoBmr2YreHMBp
 pgnhXJzbTemYqYgTrpiRn1vhDk2TrVbECB23JCMXvNWDvFdVxmdIuJp+ObJmstkzUL1J
 mb5l3Nx5z9vBTwW6UlTqIU8tp1XVcA0Pat2geWC5fzDKtl7fWuZn5gLtYRpE/haB+gT5
 FLAlY5CR8RjXvv2SC0e8LHnJl4jVgq0aqIiRsHIKwqxtCjfrGYOfyLq6NoEyp4zLdNNK
 eIKA==
X-Gm-Message-State: APjAAAUAoHTIVE3Un+jJ9jCpfk6uIlL5ot5aEtKqSBC6RewNDiR+Wp4T
 61kNyVw1nuNbGEYknsEGb5yx7Q==
X-Google-Smtp-Source: APXvYqxP7naa1DeBshE45tVgmMrsPdv0NnSq2X2IndFsFfhsb895JAiwuYIede4Uh4vXem9QRAO5EQ==
X-Received: by 2002:a2e:9117:: with SMTP id m23mr2391175ljg.82.1572007284671; 
 Fri, 25 Oct 2019 05:41:24 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:24 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 17/23] soc: fsl: qe: make qe_ic_cascade_* static
Date: Fri, 25 Oct 2019 14:40:52 +0200
Message-Id: <20191025124058.22580-18-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054126_261885_FFDB3F49 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

Now that the references from arch/powerpc/ are gone, these are only
referenced from inside qe_ic.c, so make them static.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 6 +++---
 include/soc/fsl/qe/qe_ic.h | 4 ----
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 545eb67094d1..e20f1205c0df 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -402,7 +402,7 @@ unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 	return irq_linear_revmap(qe_ic->irqhost, irq);
 }
 
-void qe_ic_cascade_low(struct irq_desc *desc)
+static void qe_ic_cascade_low(struct irq_desc *desc)
 {
 	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
 	unsigned int cascade_irq = qe_ic_get_low_irq(qe_ic);
@@ -415,7 +415,7 @@ void qe_ic_cascade_low(struct irq_desc *desc)
 		chip->irq_eoi(&desc->irq_data);
 }
 
-void qe_ic_cascade_high(struct irq_desc *desc)
+static void qe_ic_cascade_high(struct irq_desc *desc)
 {
 	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
 	unsigned int cascade_irq = qe_ic_get_high_irq(qe_ic);
@@ -428,7 +428,7 @@ void qe_ic_cascade_high(struct irq_desc *desc)
 		chip->irq_eoi(&desc->irq_data);
 }
 
-void qe_ic_cascade_muxed_mpic(struct irq_desc *desc)
+static void qe_ic_cascade_muxed_mpic(struct irq_desc *desc)
 {
 	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
 	unsigned int cascade_irq;
diff --git a/include/soc/fsl/qe/qe_ic.h b/include/soc/fsl/qe/qe_ic.h
index 8ec21a3bd859..43e4ce95c6a0 100644
--- a/include/soc/fsl/qe/qe_ic.h
+++ b/include/soc/fsl/qe/qe_ic.h
@@ -67,8 +67,4 @@ void qe_ic_set_highest_priority(unsigned int virq, int high);
 int qe_ic_set_priority(unsigned int virq, unsigned int priority);
 int qe_ic_set_high_priority(unsigned int virq, unsigned int priority, int high);
 
-void qe_ic_cascade_low(struct irq_desc *desc);
-void qe_ic_cascade_high(struct irq_desc *desc);
-void qe_ic_cascade_muxed_mpic(struct irq_desc *desc);
-
 #endif /* _ASM_POWERPC_QE_IC_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
