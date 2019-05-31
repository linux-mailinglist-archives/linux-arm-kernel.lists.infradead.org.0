Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A929308C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 08:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IKdIRwOobwcVwOZTHGu5E1ZcAR7VkXBiAp7ShKyL4NI=; b=uU7AqhkD4p6PahpWX0G6/jB+MH
	BhVM0q31gSd3TCG5CRm0DFDpQ3FiFvGjNCFP4aOGYIIozHlxMgbc8I6eYplZypqu4ogeqzflvSFx7
	ocAFJ6j/WOWl+p4SuLahU5Leq4JS//iQCOAinOLSKIMJhOaozCVfMNJ6tQShFIl8/Yi0vEedNqPeW
	74cMezqlfe9sV1p4U4gZ1exl3Ie+NqSEyMjWiB71HC/Y2Ps+TM5HxJARUp5t6UGN2jVeQ2WxwNeRN
	AXMA+mrIQqP1gaYm1rhiPZ8XGOGzrq9IQrhKvX3G6m4rY5olH14IssGkx58SDJAWcs5Oa0HopZsOM
	C4zfXfbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWbD4-0003r9-Bh; Fri, 31 May 2019 06:40:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWbCO-0003Gz-7n
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 06:39:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id s24so3458252plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 23:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8Zaxe7WowXS+tN6OY6tghQ3pLhHizFEDpbSLAZpdnRg=;
 b=N4TnIUkxiVbXVBUuLUyXc77DqUW0yRp/CDgiP4Z3u4EhJO7EcOHsLbxtQjS+sBGPYk
 P5m9ONZByW3aWJc1Pd4cPu4Yt4x+jaHMS1NOf/T5sH/XAm4BtSPCPu2B2mKUFbGtHUuP
 kCzDxGG8ixvoBg1pp5neHY4V3l3CIOmNL/sKSU8MsH8HmAgI1+KsCmNrrfhdFTl+4V9d
 MjinZVMfc+KC7xWv5zaXrdPI5kuBCANojdGvZOF9E2LqzGPwmp2mT9+OwgCgEFoaqSV1
 +I+PDnJcuTWe+vKFct/t7hqJmjkvY9vb3Af9xihu+v5G2nHP7GOUPd7mLK5l0J0DfveY
 ac/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8Zaxe7WowXS+tN6OY6tghQ3pLhHizFEDpbSLAZpdnRg=;
 b=sjtsMpx0p7njGBtR2U+E42uXYMMdoN15ejJwUy/iDD2SW17EyCoqYMBCNlohrO7LJM
 FWyYed+nQ7Nd5D/vkbuvWTQoCYaOsbLchYQmGl5hEofwoBd6RK69c0BZuQLmPTrJSuTE
 0j/NYkbp+a/P9No1+rg7+/r6vg0bDO0GZ52jA/FI9sw0Lvd9mdvxuvCiaQwrlsViUSAM
 1N/Ax2VCQbfwzLEn9mb1jt2mdQTS8RoP2gpuDfLP9fdlcPRanreanDcw57FdxJ2ms2ZV
 L3R4hjTPLo0mdkoIyX3D0uDN6qiAC6rSSKGhNDu3r4h/FRn6qWunpSXxj/T/xWsKRs+5
 fsMg==
X-Gm-Message-State: APjAAAUvQ7QP5f55wo/CbtVfxLAs9cqVeIhqs3XQwCzmVvHmCGKZjQ0x
 rNXPtaYxVOh16YXW5LI+t01F
X-Google-Smtp-Source: APXvYqxYW8y1jCKVZRirPI/B5luN9o425I5N7LJBpsnHfKuxOaZcxylkOO38lbFHQEddlwRGmLlemQ==
X-Received: by 2002:a17:902:2869:: with SMTP id
 e96mr7152214plb.203.1559284764503; 
 Thu, 30 May 2019 23:39:24 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:72cb:ebf2:a51d:3877:feab:5634])
 by smtp.gmail.com with ESMTPSA id y12sm4644158pgp.63.2019.05.30.23.39.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 23:39:23 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH v3 2/4] dt-bindings: arm: stm32: Convert STM32 SoC bindings to
 DT schema
Date: Fri, 31 May 2019 12:08:47 +0530
Message-Id: <20190531063849.26142-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
References: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_233932_548674_F980AF65 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit converts STM32 SoC bindings to DT schema using jsonschema.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/arm/stm32/stm32.yaml  | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/stm32/stm32.yaml

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
new file mode 100644
index 000000000000..f53dc0f2d7b3
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -0,0 +1,29 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/stm32/stm32.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Platforms Device Tree Bindings
+
+maintainers:
+  - Alexandre Torgue <alexandre.torgue@st.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: st,stm32f429
+
+      - items:
+          - const: st,stm32f469
+
+      - items:
+          - const: st,stm32f746
+
+      - items:
+          - const: st,stm32h743
+
+      - items:
+          - const: st,stm32mp157
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
