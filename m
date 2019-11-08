Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD723F4C49
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:02:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWb7doDzhG7tWt/2wMTCH4sJLiSi9e2Hzmdh4v6Ut+w=; b=qZfQ5G3gocoh8x
	FnFqeFw5az57KQVKfOs7eJ4hkeWWjMKU2vSgbCOZpptS+lY4FL/5pGOCSw1nSFgW2UwjeIZbZYuop
	YH5XGHUb5wqjwV5+LjPZ4gYVC4eiRBXiGFELpMlPZ0rjl7q6LRNs/BWyVNElh8GENW+bBaesL74UN
	hAG4paGqqNnZCseo/c/I0riRCx43gQ97ZU/6RwwrSrRGqGuVj0Xn9VuyOzQaPkifRye3BfKXrdxLm
	oPmsJRwLgVDDs2Igd7k+47JwESfqDOg8WYN4Rf/OcsapgUk9Ydcj64gINLS8F57ugNIPtYUNaE+7S
	jbZ8F11XOuHsoPsiu2yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3uJ-0004Y2-9u; Fri, 08 Nov 2019 13:02:31 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tN-0004Eh-Dv
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:01:34 +0000
Received: by mail-lj1-x244.google.com with SMTP id v8so6130399ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IwcdyWxRDO/TUjQjvqfZVlSTaDYPWlQZLs741mWfW6c=;
 b=Il3DCL7vnUfDWk2t/dT7/uKy401t+E+TEtTumQV7aGFBMSqoz6kukNHfbvmCHSIxMK
 /rjkT3HHQ6iR29tHP+WnfsMgbjiel7Xdx3fOgzUS6UsDe/1qYDJMkQYd0Q/dL26XEB28
 /roXQK+QbBY6A5W42j+SwAhdORazO7kdTzDWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IwcdyWxRDO/TUjQjvqfZVlSTaDYPWlQZLs741mWfW6c=;
 b=jKlSIwpkCsXB0eVvNl+/HyfhwL4hXBHo/6+YHEAqUAMxnpdspn13RsPIS95EEbp6S/
 mksBYPwQ1bRQ/QFNA/fEHShYxVPimo+JbVnMZYx5/lXnzf0eNadAHzHZs4wAhI1RF2ns
 estAbMFBMDkcjweO2MU8mFXHWxQNtU6aZvj1uYykAdBGOXb40qslVh8Uf/jMES8nXMVQ
 HLmakt7hY/67H3Bnt0tUTDzrmPy/+zmRXVn87gX8ybLxzK4dfWlLA16k1+oOSgBPQ+TE
 kplhAdJ3UXMgwLJpKPmAUCHQJ7OTawnLGKxWgLK0sGVW/GKxpmqvnRI2cqDy7BG4yKX0
 uINg==
X-Gm-Message-State: APjAAAWUD2xlZT+PBaduA3JN5CdgKF/0EaGUU+2Nk/IEFtNMQkZ0W/F3
 v+1p87zQMkjQttGxw9pWxdQUkw==
X-Google-Smtp-Source: APXvYqwQjL+XRBKvPBVlIVCDZcxIlePYwv4P23TGc8rNS3Ec1QKm2jAO9MNSrExrOF8chImjosB07Q==
X-Received: by 2002:a2e:8601:: with SMTP id a1mr6905527lji.159.1573218090373; 
 Fri, 08 Nov 2019 05:01:30 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:29 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 02/47] soc: fsl: qe: drop volatile qualifier of struct
 qe_ic::regs
Date: Fri,  8 Nov 2019 14:00:38 +0100
Message-Id: <20191108130123.6839-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050133_482179_B816FAAF 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
