Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FDB10CB35
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:02:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=om+XMfSHB4lUh3e/EGw2y8zL3LHJvHc9Xkc57VwdBjQ=; b=Nd9Jyb0CXbJhNX
	DNOtB8arB3cAf1JfEZBXbeFbR229EfnOrSsINS1m/skqEtGoxu/eGUc4u+h56pMc74NvwbMtV61lW
	9AFPY+vuLk+bDp9dNW/s/seLVJc9P/O6sof4Wxiz32SBP5luzCqT22uOghFJ9v6LkjQRTwS/4rLeh
	IDPDrVEWX55d/5rV/bIreYu7GfStQdHq+P/h/2UL6btlHRc3wB9di6azDFuH72cKWDBCZ+Y9WVfuA
	kKknyBfuxiipmjj1BXKL2RVfao3cO5b9bk5X1sL6rod462pC4Y+pc7+wYOCxY8w8y2Q+Jgd7fHwvd
	IeNCKPMJD+JpoVDbrIUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLJL-0004l8-Qb; Thu, 28 Nov 2019 15:02:27 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEa-0000p4-LT
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:46 +0000
Received: by mail-lj1-x243.google.com with SMTP id e28so4647547ljo.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6RPbfdv0hDBEMr5jRu0991VlpKTzzf1sC9/XAmy4sgs=;
 b=G3K0t1nlzwA3d3jHn4yj1bqgPjSU7rkRn5xHQvlnCYStcAfU2EOLNyPlf58l/kRURv
 oxPucVu+N8o4zYJ1N5TlrwsqpubhOOPQAQvU5PVBJ6o8v2W27PBswbMNL7ah8jpFm1VU
 Tb/0CmRp1Xf8vt82JUTxMYMrxMphmZqJV9kew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6RPbfdv0hDBEMr5jRu0991VlpKTzzf1sC9/XAmy4sgs=;
 b=mDHhsrbhreTJRz30xhaDsstvi5jLZt+r46cpF2mvpG771uP98f6Qp7TzMe76qr/ppn
 r32obaaVtt2hhyAVrWXrmFMwdOQyd0WPs7gaGyNzL8HsCN/hBQqa1WmLzVjnXI78Scbo
 ga3Rt4/ZeamPBixWriCGziSotAXIOacITbTODJATHKkQxJDEkLhOwhEYHiu1Cs5LAUXb
 3MqF04Vzur9aSq7P5X20PAYsNO+CQCSYlf6n47qyeW8nx8hMaxejqr36PDuWbhsAQClt
 UFeDDHy7IKrFIDUJzMvqQ23Ho6rFpH8QjvFJ9h7chZIQ95lm7m3YqcOIX4WtSEEDmJrL
 +nAw==
X-Gm-Message-State: APjAAAU3WdWFS5qYBMOh1Hxr0WHU23NR+1hjqKkIROU5t483BOZQG+br
 MGt1W+M2j318mbLMLUk4hkM2BoxZmEluLah/
X-Google-Smtp-Source: APXvYqyaNUn/imdGbgT/de4umQQV6PAgT8adP8yacv3I5sC9GoOzbCwUDIiv5Pz0lPz4XRI0PSVjcA==
X-Received: by 2002:a2e:8855:: with SMTP id z21mr36009830ljj.212.1574953049771; 
 Thu, 28 Nov 2019 06:57:29 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:29 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 19/49] soc: fsl: qe: make qe_ic_get_{low,high}_irq static
Date: Thu, 28 Nov 2019 15:55:24 +0100
Message-Id: <20191128145554.1297-20-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065732_743716_34AD5E00 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

These are only called from within qe_ic.c, so make them static.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c |  4 ++--
 include/soc/fsl/qe/qe_ic.h | 10 ----------
 2 files changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 8f74bc6efd5c..23b457e884d8 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -283,7 +283,7 @@ static const struct irq_domain_ops qe_ic_host_ops = {
 };
 
 /* Return an interrupt vector or 0 if no interrupt is pending. */
-unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic)
+static unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic)
 {
 	int irq;
 
@@ -299,7 +299,7 @@ unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic)
 }
 
 /* Return an interrupt vector or 0 if no interrupt is pending. */
-unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
+static unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 {
 	int irq;
 
diff --git a/include/soc/fsl/qe/qe_ic.h b/include/soc/fsl/qe/qe_ic.h
index d47eb231519e..70bb5a0f6535 100644
--- a/include/soc/fsl/qe/qe_ic.h
+++ b/include/soc/fsl/qe/qe_ic.h
@@ -53,14 +53,4 @@ enum qe_ic_grp_id {
 	QE_IC_GRP_RISCB		/* QE interrupt controller RISC group B */
 };
 
-#ifdef CONFIG_QUICC_ENGINE
-unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic);
-unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic);
-#else
-static inline unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic)
-{ return 0; }
-static inline unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
-{ return 0; }
-#endif /* CONFIG_QUICC_ENGINE */
-
 #endif /* _ASM_POWERPC_QE_IC_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
