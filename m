Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AB61CF55B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 15:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Lnkf5/dL211jJgiij0UWUQmLUxNtgTEteW3VELZSbBY=; b=nay
	8MjwuNGuKhsJxuIB4TXi7OMkxH3446YTWDZJUbm2tBL/W4YzM2uDhys28k88CxO5QgIRVHuzGUfPN
	B1bfAvvQr5PdOJKFjQZjfjzk9Y+BuXQwO1r+ZnrU2ROQG3nlMneDog4wkIIaORYMsedABhQBW5Wqe
	6gL+v/XC4fFPHxlG9kTLIsAVThZmH1BbZ5owk9DfjJsFns1ZXssDS6DEcjWkZtn6Wn6LVqEFUSSGL
	jq7KbMpnFl9zzg22XGwVGsk3YtNIQXhCZ2ML9z0E+TwuOSBSVXSJ58frRAgU/BK226yqIdZTBmnY3
	xwW2oGBMglG/zJ/7PIlNEMzVMHZlB7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUk5-0000hY-9P; Tue, 12 May 2020 13:14:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUjx-0000gH-Aq
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 13:14:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so21691817wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 06:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ucIamOxWoiikiTT7OyOk1rVSeBavTDD4mVIWBfGQ0Tg=;
 b=HhvGzsjgUcWS4ZqZpMHWKZ6oPMKgpOt/PCYx6PHdLARn1pl00Negjb8wMAe4LiENqa
 cvvCgPgIgXvxRAOJUDj7etyWlGa4OaRWWDV3azcbY99r6J2ubJUpENBOJpwniqb2C8wv
 0T6b/pFIazBufnzGCG7SFiHa4hg9iyktA2jRg/eSZ6txf1VRN9UDdShnlx9ifd7nqnYc
 ymhZ7gkbtUU4kI8m2cZ0ZfpW7dwvxgFxrXVHMd5aUz2s/IVMQAJpMtz3YeYYGrY3sCFh
 nAhUHWwBFUJaNOLcLRK1kHGfPj8bp2NROzB3CUiGno1WahODSUDWnWKNz2QwOKGnLnaF
 I1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ucIamOxWoiikiTT7OyOk1rVSeBavTDD4mVIWBfGQ0Tg=;
 b=W3RFTRfyTCAXnPFMS60MnPiajKf+93XSlIU4Hr59a9KlomOOzSwa1PzzqDW7oBXN9z
 rlRDIgK6I+gh/GHh5sHU+wDIUDyHuWSrOrDK7j5/t6zATlwRr9Jo54+cfcO/M/cbQ9yB
 6VJgcFNXxeQYbO733HlXCQ5UER31avGO4FUpxZQ4qAsXQ6Qr02r3E/gHuzJ0MNlrrUQs
 bCIZPj7JX/Nh8kha453sF7LMTLLoekmGdRkZNFC8tX+rfpOTCdUQbW+6qyPzmbEQWbk8
 0J3Ii67CZNAzMdAJLsb5hT0F1K/bmcXXkkwHKxr6MHm9GpnYaUrF9XbEBGrfRtEvMnGx
 g8fA==
X-Gm-Message-State: AGi0Pubs2ynRuDuKO0CutXZ7tAc2yqza1Jw2nUIBrDBamXa+CFySan5X
 4ioDmQVTm+2jhnD/xL6vaL2ruw==
X-Google-Smtp-Source: APiQypJLgHGkWpi4Lcz/tiolMUMUWnpODhX3I8i/kPzrgclwoULRyPhWPJAIGGotuugAy+3zWXhlQQ==
X-Received: by 2002:a1c:9e51:: with SMTP id h78mr39840046wme.177.1589289271434; 
 Tue, 12 May 2020 06:14:31 -0700 (PDT)
Received: from lmecxl0524.home
 (2a01cb058702ff00bc4b798f4f30d41e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:bc4b:798f:4f30:d41e])
 by smtp.gmail.com with ESMTPSA id p9sm16480524wrj.29.2020.05.12.06.14.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 06:14:30 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: nvmem: stm32: new property for data access
Date: Tue, 12 May 2020 15:13:34 +0200
Message-Id: <20200512131334.1750-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_061433_374651_FE4992C0 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Etienne Carriere <etienne.carriere@st.com>, devicetree@vger.kernel.org,
 alexandre.torgue@st.com, robh+dt@kernel.org, srinivas.kandagatla@linaro.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Etienne Carriere <etienne.carriere@st.com>

Introduce boolean property st,non-secure-otp for OTP data located
in a factory programmed area that only secure firmware can access
by default and that shall be reachable from the non-secure world.

This change also allows additional properties for NVMEM nodes that
were forbidden prior this change.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
---
Changes since v1:
  Change nvmem.yaml to allow additional properties in NVMEM nodes.

Link to v1:
  https://lore.kernel.org/patchwork/patch/1239028/

 .../devicetree/bindings/nvmem/nvmem.yaml        |  2 --
 .../bindings/nvmem/st,stm32-romem.yaml          | 17 +++++++++++++++++
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
index 65980224d550..b459f9dba6c9 100644
--- a/Documentation/devicetree/bindings/nvmem/nvmem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
@@ -67,8 +67,6 @@ patternProperties:
     required:
       - reg
 
-    additionalProperties: false
-
 examples:
   - |
       #include <dt-bindings/gpio/gpio.h>
diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
index d84deb4774a4..c11c99f085d7 100644
--- a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
@@ -24,6 +24,18 @@ properties:
       - st,stm32f4-otp
       - st,stm32mp15-bsec
 
+patternProperties:
+  "^.*@[0-9a-f]+$":
+    type: object
+
+    properties:
+      st,non-secure-otp:
+        description: |
+          This property explicits a factory programmed area that both secure
+          and non-secure worlds can access. It is needed when, by default, the
+          related area can only be reached by the secure world.
+        type: boolean
+
 required:
   - "#address-cells"
   - "#size-cells"
@@ -41,6 +53,11 @@ examples:
       calib@22c {
         reg = <0x22c 0x2>;
       };
+
+      mac_addr@e4 {
+        reg = <0xe4 0x8>;
+        st,non-secure-otp;
+      };
     };
 
 ...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
