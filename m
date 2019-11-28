Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C78EE10CB19
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 15:59:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Spz85uysggeepfGzJgjijgm173e7xzaKCy8/zSvcIrA=; b=FdU39DVrvHpgwp
	ytjTkBgR2A4r57GYx94ooIkz4hWIrBC9W2RfcrmvSuAci3PQkUN4D63XcTVbOAbrlEORWv6yRx9kA
	Km+V4erJnuTq57rIoWGBxd7c4MMqHrsAs0FRYcxFbOtkSyd+Gj8d6cdo+UdsuQ2FqDQhUB2VLtxKx
	RggQiAceaFbtCbbXv56Var8FmS41XCi1iCfJ0MfJPFuOXFDkQ2erEZrs1E5on6PFTTHthTH1RN9L9
	aDRKuc8qYAwuks5DclBz2osPMD4/v2oVcUHmGfLJIIfYB1zvxqPWIBvVNewlXZsDdIOsNrodL/ZQ2
	m1yiSDBbRmbd9yyNJLxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLGf-0001q4-9S; Thu, 28 Nov 2019 14:59:41 +0000
Received: from mail-lf1-f68.google.com ([209.85.167.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEE-0000Zo-BJ
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:27 +0000
Received: by mail-lf1-f68.google.com with SMTP id y19so20245488lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xuBpN3zboz9lWIykWwJc5jpgUtQnVYVpKGpTSAHe1mY=;
 b=LBLkpB93pVGXgxOwmejvEDGNQ0wTX3sXVZAnOcyd8gmKFnbh6jMBjoDwjyb6YvDm4M
 XHCCmFN2eUGOVTINPAhI11+JlyAosCHBv2LK/vtsY+G2dWLFaEQSZ4Exo/mFOK5UMZLJ
 2LQB98mHBLqEsF/KxdOGUYnhPx8t8XlV/3yeA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xuBpN3zboz9lWIykWwJc5jpgUtQnVYVpKGpTSAHe1mY=;
 b=ThLwgcpQ2SkW3wbc+Z708cVyaPB2X/578nEV6Mezg8KPqP0xDDrF58IJaAehdLwljZ
 Q6TUxhwLSaL+AxnMbdS7ZncVO/0h5ir3PKidSfK/BzfgVtSqNw9CBxo3O8LpsTQcLO9o
 8tYvwvZwAahKJnQ8CCGEUfpdzjgSPhsgfxMD8v/nHEDfiEBwWHW9F63g+rUtnMmJlI9Y
 9wbKEwkLc4a8CIaOymzMHYKQf3AevGFX0jN1FZcje/UcjgJTQP81hv8gCCzn8/yMQU93
 A8aQIDE0i3qybVWU22uD8qiR1NtrW8GFUr2DdSkQSPFliuiXrvpo4n3+8PjUmY6plPvd
 tcwg==
X-Gm-Message-State: APjAAAX9hnscIn5IuBIjA4EHSsn+/X0isDNACyYCVUKSmc9byboNUl8V
 tZRbdxRS8Vb/dz//mMX/XnR6qQ==
X-Google-Smtp-Source: APXvYqwT0EuyApqITA3lCeK5EuUs0sPJJq6so9cNaQVKnIZ5SJX2OXNZKYrUelwYNc4RA25bHCTp7w==
X-Received: by 2002:a19:e20b:: with SMTP id z11mr32438202lfg.171.1574953026680; 
 Thu, 28 Nov 2019 06:57:06 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:06 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 02/49] soc: fsl: qe: drop volatile qualifier of struct
 qe_ic::regs
Date: Thu, 28 Nov 2019 15:55:07 +0100
Message-Id: <20191128145554.1297-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065710_425649_354CD1CB 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.68 listed in wl.mailspike.net]
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

The actual io accessors (e.g. in_be32) implicitly add a volatile
qualifier to their address argument. Remove volatile from the struct
definition and the qe_ic_(read/write) helpers, in preparation for
switching from the ppc-specific io accessors to generic ones.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 4 ++--
 drivers/soc/fsl/qe/qe_ic.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 9bac546998d3..791adcd121d1 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -171,12 +171,12 @@ static struct qe_ic_info qe_ic_info[] = {
 		},
 };
 
-static inline u32 qe_ic_read(volatile __be32  __iomem * base, unsigned int reg)
+static inline u32 qe_ic_read(__be32  __iomem *base, unsigned int reg)
 {
 	return in_be32(base + (reg >> 2));
 }
 
-static inline void qe_ic_write(volatile __be32  __iomem * base, unsigned int reg,
+static inline void qe_ic_write(__be32  __iomem *base, unsigned int reg,
 			       u32 value)
 {
 	out_be32(base + (reg >> 2), value);
diff --git a/drivers/soc/fsl/qe/qe_ic.h b/drivers/soc/fsl/qe/qe_ic.h
index 08c695672a03..9420378d9b6b 100644
--- a/drivers/soc/fsl/qe/qe_ic.h
+++ b/drivers/soc/fsl/qe/qe_ic.h
@@ -72,7 +72,7 @@
 
 struct qe_ic {
 	/* Control registers offset */
-	volatile u32 __iomem *regs;
+	u32 __iomem *regs;
 
 	/* The remapper for this QEIC */
 	struct irq_domain *irqhost;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
