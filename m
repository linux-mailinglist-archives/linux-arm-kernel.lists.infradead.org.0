Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7961A41E51
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dof2JBRIkQ5h9BEm9awKghDitkMEUJluUi3/6DYuAc4=; b=VSxmQH/dAL05hamsU3yRl8/hVS
	FUQePxWOxxV6+KhlmnUBBTjJPW/F9h6rbkWj6RDt79jrHcvocZKAOKoK7Qaweiw8XTAgQrFgZPDJ+
	FQUt5cW8paMTKSV23QeysIssGcDes9p3Z9L8YOnt7NeCqopbk4GjUug9uHFFSbWUtEsNPXnxmzMV2
	a41jPOigYNurwWEBIyrJW5vCI4DSFEj+CHJLUA0kYnaU98HpH/3d4kYp9DDlVba6lLbbyAmsUG+Bh
	3g7tlN0yZbe5KFBX47m/0uhMhcHFiuGypjjPYLYB1QVWVxHfla/g5IG4zGU7tzNZy/Km5u35VYWmN
	EmPNwIRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hay6z-0006S7-44; Wed, 12 Jun 2019 07:56:01 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hay6F-00064L-Rm
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:55:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id b7so1247461pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 00:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ddmyf9yTEwlfHCzubut1+DzdJc/PcrZsJL5uTZc4yfE=;
 b=naECvcLA5b+ikhmyDk1YLXvhPLPCup9xIr0OEPfNZq/YqaOQKD1US6XtcnKca3PyrX
 bS4UZiBYiQmNmGgQ0PHd0Pc5zsJFZJte92oiMsouZ/6hZL5caUyz5JVsLCSMfcMwekA5
 W8GFIeuttEZGufRFlCDfOWDY6meAbjQfHmhtnqmKMl97G8fpOsIGpMdAr2Sx2or9umrH
 HGKJLY2DI7pkC2v9OSawkWU+Q8oq9CyE39MCKWWLqQEW17vncFA7PjIeEAyeF5vORafF
 +eTbVWyCkWrnw7G2YeduVn3IGEasK2w9lxkHgo8d5n/wtLwv0f3frqGhWVK86HxSmRZ0
 UgzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ddmyf9yTEwlfHCzubut1+DzdJc/PcrZsJL5uTZc4yfE=;
 b=ufmUcJq2MEB0NfqufX3RsqQ1s0L25lkmMaN0QD5ZOEZCV+YCP3wxQgPuqeuk9+a/xR
 ypSvO095rcOVfCfkkLLtXUTsjEmcuT6JMTC1E+BhR3edbX5rMa8ZWO85Lfmpbjh67qLP
 tZtDKn5zu6G9TtJvYyZkpvzreuubkyy5LSEKAbPGT6QbPe8qv/peWykS6r6xoH3sg8HV
 wO/nkU2+eJ1jJFSEgqDsWXIpvlhgGZasNyF/+kVlEaRHos9mBukitwa1rQXfjgeM90Op
 8d6wdgwfybCmzSzl1KMQJ19IMeMGMUxzPj2T/XxinS+PrCAkWXY8FV9CIM168WJLKDE3
 aVoA==
X-Gm-Message-State: APjAAAVvGvPOf5aKZtxeq5XyYWCoPvrZMFswPgrjAkNxDQm8h4Zkr0/s
 5pwwMvAKG5Yz1accWKmTpHFw
X-Google-Smtp-Source: APXvYqx7tmatLIV5lw0AoibaBm7aPYmU16s1G88Rxa+htlmSOMrfzpqbjFDCivcdIqj+XjXUxs362Q==
X-Received: by 2002:a17:902:b905:: with SMTP id
 bf5mr80896870plb.155.1560326114920; 
 Wed, 12 Jun 2019 00:55:14 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:894:d456:15b5:9ca9:e3ec:c06a])
 by smtp.gmail.com with ESMTPSA id b15sm16846399pfi.141.2019.06.12.00.55.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 00:55:14 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH v4 2/4] dt-bindings: arm: stm32: Convert STM32 SoC bindings to
 DT schema
Date: Wed, 12 Jun 2019 13:24:49 +0530
Message-Id: <20190612075451.8643-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
References: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_005516_031590_C58227F8 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 .../devicetree/bindings/arm/stm32/stm32.txt   | 10 -------
 .../devicetree/bindings/arm/stm32/stm32.yaml  | 29 +++++++++++++++++++
 2 files changed, 29 insertions(+), 10 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/stm32/stm32.txt
 create mode 100644 Documentation/devicetree/bindings/arm/stm32/stm32.yaml

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.txt b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
deleted file mode 100644
index 6808ed9ddfd5..000000000000
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.txt
+++ /dev/null
@@ -1,10 +0,0 @@
-STMicroelectronics STM32 Platforms Device Tree Bindings
-
-Each device tree must specify which STM32 SoC it uses,
-using one of the following compatible strings:
-
-  st,stm32f429
-  st,stm32f469
-  st,stm32f746
-  st,stm32h743
-  st,stm32mp157
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
