Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD6ADC57B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4iKlfTcupFWXaXP8WhCPPJgTxcfbQ5OQg7m5G515gQ=; b=ANAKuYLcvsR3D5
	g1ecPtHAbpYjpG5jB7dXDqYKzhVGc+XsgX/tu4yuLtWLV6rx0i5nYh1necAMz+jhgkblSJHRoPjuY
	tMD025nPG66qll+b7X6bAvt8FnJAMAuYb211S7U14tKLRfEOlh4UjSYBidgdsbQBOwp12sJYFDKvh
	QiNcle7NaB7lPY+cSX7BfRe+rTjPs0tOtXrwj2AUutw2Dd4UOKlgiXgMX77piZk1T9EafE10un4k7
	sTagdzdvFr1kkLUk3kUn0DCXrh6srYBqx0SEwCiiOERaEN9B6LM2C6Cz7Pe6t4PgyZmB094SYQQ7J
	tr0COdZ0jXm2PiDrnPNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRl2-0005VT-0w; Fri, 18 Oct 2019 12:53:28 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRkL-00052S-L4
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:52:47 +0000
Received: by mail-lf1-x143.google.com with SMTP id u16so4644872lfq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 05:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b/kYsXKDEeEBcA1fCE+mpoBIaUoXu8b4ge6C0aEmGGA=;
 b=KFyP8ivfbpHtepeGzrcdL51yIH0E0bUb8X+4a2KH0HGN4QWsIwbhQQBDFzpw8B4QAS
 RbUd93jPl4MuGJetIgGZbsZyOKrmZfbazbh3U8W4NiWpzrx9at5H+K/9lL3NoBdPWnbx
 iTRZaQAOW1xXsH1h45p9Y3RpNKZaeJif7ZIvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b/kYsXKDEeEBcA1fCE+mpoBIaUoXu8b4ge6C0aEmGGA=;
 b=LUPBBS+57+v4ysWBpLOjZDI2hcywmIyyYXq2wjMWV3QhRap6cjESN3aE2XWTMmR+du
 sBzlx0mOIIzy9nEa2LTfrBFMToHcodMwant4zgs36/Mj3n9PMpCy/8/tT8ERTHEv5rT+
 XOSkTxbDLIe+8EIA74o29+nBn7JhL8zF3z8UNpsPly+Fx+Jn6FBq6UYDBlMGkiCe1Pp6
 dq+TPCH9BerdhyeTV70x8m4z0eHNaVHoFgo2MtcSPxCvWaw0xvlAASiX5AgVqAAEtBLR
 +KCQtAJMAZa3OWfRV9AKZ3ZyqiQzbwsbTi/tcK3AXHlWn9FoKWDuKpjvOc4oyeDu4OUY
 RaXg==
X-Gm-Message-State: APjAAAVblKSgyrt3jODBCtCMjc92v9DucD4K+ccjs8gSNaUDN4YXJmBH
 bxgTKBPOYb3AOkNwVfeg+MpXFA==
X-Google-Smtp-Source: APXvYqwfp2OR81F0L53trJi7RZb+gW5SZ6EFdq5/LmCgN8KPrYOURZTPP/LvsMtj32ugvHQiRs800Q==
X-Received: by 2002:a05:6512:71:: with SMTP id
 i17mr5903293lfo.68.1571403163737; 
 Fri, 18 Oct 2019 05:52:43 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id m17sm7454792lje.0.2019.10.18.05.52.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 05:52:42 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>,
	Li Yang <leoyang.li@nxp.com>
Subject: [PATCH 2/7] soc: fsl: qe: drop volatile qualifier of struct
 qe_ic::regs
Date: Fri, 18 Oct 2019 14:52:29 +0200
Message-Id: <20191018125234.21825-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_055245_687485_E61CF726 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linuxppc-dev@lists.ozlabs.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The actual io accessors (e.g. in_be32) implicitly add a volatile
qualifier to their address argument. Remove volatile from the struct
definition and the qe_ic_(read/write) helpers, in preparation for
switching from the ppc-specific io accessors to generic ones.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 4 ++--
 drivers/soc/fsl/qe/qe_ic.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 9bac546998d3..9694569dcc76 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -171,12 +171,12 @@ static struct qe_ic_info qe_ic_info[] = {
 		},
 };
 
-static inline u32 qe_ic_read(volatile __be32  __iomem * base, unsigned int reg)
+static inline u32 qe_ic_read(__be32  __iomem * base, unsigned int reg)
 {
 	return in_be32(base + (reg >> 2));
 }
 
-static inline void qe_ic_write(volatile __be32  __iomem * base, unsigned int reg,
+static inline void qe_ic_write(__be32  __iomem * base, unsigned int reg,
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
