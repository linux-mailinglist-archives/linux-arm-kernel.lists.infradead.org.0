Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4484F4CB0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zbr+m00gCWAD2pIOdnS3lC+/KG9aQnQUAGM2jR0RuII=; b=rfhUhSI2g8X/hQ
	bxmCVp+2sNVH+zYA2KkkGDcDwsHYrQiM0NH+I1IXKVIL/7RnKmENsvezsYNyygznqx3TY9ZZP9err
	zx2bx7UV8U4wRQTUCR8HhYAcnzvJbd09VY7qbpuXdgp0sasL6F85X6saz33UK451seWFtksXb/XEz
	SHt+M0N21slL4/OGb0QbEFMlQO20tf7mElRNjvTn7olxPj/B5v7BT7wRawnASFs6evfYWdnPiRjJs
	6ylEtSWBZqcTLsTQJItrTPE/uVrl0tJsxeXjMnQf7E8sZfNfCgJABOthtjE+cJW1Rr2x2INsXaDCF
	44ZnYEKlKcrguOCn6DHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT40w-0003Lb-6A; Fri, 08 Nov 2019 13:09:22 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tn-0004ZR-Dl
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:01 +0000
Received: by mail-lj1-x244.google.com with SMTP id g3so6103961ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1C8bi+Glp22eU2mPHcIIhRfHNSQMvhbk1zxbdzRB++Q=;
 b=ZJaCGSD/arZGUVVsA5xq44Wxb64fr04WyEwSqeiMjW/L1bVDA+aRYM5sWnLo9sepTk
 TEYKJVX4TsUvrSj/LBfKdVrHXqqZUd2PojOxysRopWU2rsgOWmwVffTPBZ9VIs+RV9VH
 MU/RAqLHFpt23mFgSHXKebqI6NeVbe7jcxiAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1C8bi+Glp22eU2mPHcIIhRfHNSQMvhbk1zxbdzRB++Q=;
 b=H+QZD1e/fIhR3fA5PVjVM5kRdBKr5nuWK7+ViM3oSyLqF86ja7StbdXyUrXXDL34Bk
 nDFk3GLT9RP+jQYiOeJU3tU4mHIaTxPFKEF3TLZ7rQZHgXmP5FkYaTXTjtAKB6T0Jphv
 GeUSV2lF1yhuHOcDjukf+pX4BppeGpwfAOgsYSdi4kggoymvSHmbvcIh8BJ33KfcbEQT
 ZkZr/u6J9T2zMSzaQsgdQmKwNFYG8Iloiw2Zs0Am8giGWfbmw6hVuZZcn++O7v9qg+OK
 7VhxH4Al4F/JhGAaYU9qQhtRGWO+VY/F2TthteNdfRmJToZNJx2vePvkBVt2G0M44NkB
 qe7Q==
X-Gm-Message-State: APjAAAWY/BChenFsgzntnAZLC2lZVS9LpFpA70rg5WfBZen3+EI9gft5
 0gNWLADvGWDjTLZOkc7e7bem+g==
X-Google-Smtp-Source: APXvYqwWLpxibry98XoXovz1dothFdNyuvaZNGn+39NnRK53Lft+7SISDG4Rx9pkkMNEWGx3k3O/UQ==
X-Received: by 2002:a2e:884c:: with SMTP id z12mr6614926ljj.41.1573218117142; 
 Fri, 08 Nov 2019 05:01:57 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:56 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 23/47] soc: fsl: qe: qe_io.c: don't open-code
 of_parse_phandle()
Date: Fri,  8 Nov 2019 14:00:59 +0100
Message-Id: <20191108130123.6839-24-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050159_618480_8B65A3DF 
X-CRM114-Status: GOOD (  10.29  )
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

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_io.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_io.c b/drivers/soc/fsl/qe/qe_io.c
index f6b10f38b2f4..99aeb01586bd 100644
--- a/drivers/soc/fsl/qe/qe_io.c
+++ b/drivers/soc/fsl/qe/qe_io.c
@@ -141,7 +141,6 @@ EXPORT_SYMBOL(par_io_data_set);
 int par_io_of_config(struct device_node *np)
 {
 	struct device_node *pio;
-	const phandle *ph;
 	int pio_map_len;
 	const unsigned int *pio_map;
 
@@ -150,14 +149,12 @@ int par_io_of_config(struct device_node *np)
 		return -1;
 	}
 
-	ph = of_get_property(np, "pio-handle", NULL);
-	if (ph == NULL) {
+	pio = of_parse_phandle(np, "pio-handle", 0);
+	if (pio == NULL) {
 		printk(KERN_ERR "pio-handle not available\n");
 		return -1;
 	}
 
-	pio = of_find_node_by_phandle(*ph);
-
 	pio_map = of_get_property(pio, "pio-map", &pio_map_len);
 	if (pio_map == NULL) {
 		printk(KERN_ERR "pio-map is not set!\n");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
