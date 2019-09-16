Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A60B3DF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m/JsRx8UzsF7kATvgNyMZgFC1oWX7CNZF59qagSjzN0=; b=nuKxfhtmOidIthNIRd8CFDyjtf
	TRQrq0NI1MxCztfDjk9wflmdjHlStkhNE51SvqZSGifEWJTatOh78wGkfyslWK5jXT168f11jlzvs
	wvTGReM76GQ0VnzN7bIF+ItnhnxfozlNE4jxQoamKp02ORz9rcRJYSJ97imoKNOevsQAwRt61gm2K
	IXrI3BcyMOrwb2ZU/eKzKSr/FEJb9EDfXN2KJ8yXqYv4SS7KGW1jn/byX/81xtOWNpY0X4T0kOFSy
	2BySCU2xwWgAAWM5XHAyUyRkG7hmFlXb0Kkj+NAyRtPOQk9ByfmQmYwFLMjmo5IjvzAc8XGT05dGL
	/6edW0xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tDn-0007Go-TF; Mon, 16 Sep 2019 15:47:24 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tCu-0006iJ-AE
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 15:46:30 +0000
Received: by mail-pl1-x641.google.com with SMTP id d3so75377plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 08:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vkOxPRaPbuf2u6O5EgSQilbhBs4SLuHStjl2F1LwBbA=;
 b=fDPJlRmmgIKRQu7QCJ3d1Kb5Fym9YQrGLxIh/dIN3cAXauC78bXRhNcXqn74YNPDuF
 XGwPyevw1I44l8G1G37uXqHnV6+psOCpszvbIq2UeEVsX23BNHJ9Fus9TKIhU76evWgz
 XP8gfq+FKoamM07ZDJqK9wWNFXBOJEcOCX1x0R7JFHB7y3F4T5/yhQ3mRGYwmAlMrdVi
 noZlQdjE4nwMbPTPLk2X87xZrzL76qnuLvJiAMyIu61ONdAHJOpEIyyqQWL+nN6MT1p3
 KgKxiWYVbZUQegIR/bddVubqiIRIK3d7wzXWi69Eq50qsquOpeE8sBlo29BHxQp/Jqhr
 nzzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vkOxPRaPbuf2u6O5EgSQilbhBs4SLuHStjl2F1LwBbA=;
 b=EbAhsKKX0HQmoWbHPacApOtmD+kLY+uLB/jL+GAy/sb36cFObnEkBBDaP8lOL2XdGZ
 GQBvoY0gGKlkgofj2G/Ve1/jYmHtV8oUmx6rtZr1EBLIpf48g8s558+/omykTdTIlpjO
 gKvmpj3jOsaksj3UEAez7RqF+P74wHJcIIF5emd7E8gdhSAPgl2e9dqKBuegrV5M24SB
 VWFwRZK77DGT6g/uWwJW/cDAkM6Kw0V5CyWdN9CMye9v+FWSsE+ImBSXeuLCg20UT0MK
 VWcHHWZBzi7Ni8Mw5ozaMFDXuKcRVrDlO0sXomVYbNF978GnCbh7RBW1DrbQvvv/iAc9
 5y5A==
X-Gm-Message-State: APjAAAWGLGKXnZ1LZ8CZmvSiDY0TrQqW6pqMbB+Cd/0f0brySaUJDJm1
 rZisw77QLKPxGz9/hvuZO6QW
X-Google-Smtp-Source: APXvYqwG8QYB0xH19JOO6JX58tqc6H/Nw8aRpTCGSdpSDatwlC/PKSBX6+O66kwvZzS1XRP3joG+Ug==
X-Received: by 2002:a17:902:690c:: with SMTP id
 j12mr487701plk.132.1568648787774; 
 Mon, 16 Sep 2019 08:46:27 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 s5sm36227670pfe.52.2019.09.16.08.46.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 08:46:27 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v4 2/7] dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO
 controller binding
Date: Mon, 16 Sep 2019 21:15:41 +0530
Message-Id: <20190916154546.24982-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_084628_603720_9DE25C5D 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree YAML binding for Actions Semi Owl SoC's SD/MMC/SDIO
controller.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/mmc/owl-mmc.yaml      | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/owl-mmc.yaml b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
new file mode 100644
index 000000000000..12b40213426d
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/owl-mmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Actions Semi Owl SoCs SD/MMC/SDIO controller
+
+allOf:
+  - $ref: "mmc-controller.yaml"
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+properties:
+  compatible:
+    const: actions,owl-mmc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+
+  resets:
+    maxItems: 1
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    const: mmc
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+  - dmas
+  - dma-names
+
+examples:
+  - |
+    mmc0: mmc@e0330000 {
+        compatible = "actions,owl-mmc";
+        reg = <0x0 0xe0330000 0x0 0x4000>;
+        interrupts = <0 42 4>;
+        clocks = <&cmu 56>;
+        resets = <&cmu 23>;
+        dmas = <&dma 2>;
+        dma-names = "mmc";
+        bus-width = <4>;
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
