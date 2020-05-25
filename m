Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E111E05A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 05:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k7Fy8Fgl76aYCdH5wCmthAdoqwdK0uls1gOO0HDRadA=; b=Z1JxFgCDb39dYiwWuPLnjmQgJV
	ZRzlV0P4VsTRcID2NTlJyzYBj2bLxHV7KDBo4THN2JuaZASmJRtmSosAzHUzrGhdHH7Br3Yws9O2X
	q/9MxEnapq/YAyOWCWLFi5xy+DRSOQOthu0mAJ/kscYAotfEJjBM3k3fSgDtHNDXyvspDHcXH/RIN
	BnguLKqH9PXKbNXUnPxfXvhTQsm1Q4prXvvcRttoP5nEBACqOZ3AQSQj0amCjXf2/vMhInISjvH/b
	LpPo6L2sWSkmnfWNfJmqcvRMX6qWLPE/Rzr2BiR6UOen4gQTULaJTA4E9xWOZjTwWcqYlWTRRdmUM
	CB5SzYUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd45Q-0000Hh-8w; Mon, 25 May 2020 03:47:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd440-0007hr-2D
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 03:46:09 +0000
Received: by mail-pl1-x641.google.com with SMTP id d3so7004954pln.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 20:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MtXq2QWDOoN0CBKSeH60c2tJASyOu/uu0I8Lzq6RPtM=;
 b=t69eC63CQ3k49aGU3xG+GnDCSEwR8kciBL/7nzuvl4/Hr4BNqc0Xp/LycSexKIk+8E
 PEAfeaojlOH40hTE2AyxHJHR2M3OnFED1+0JZout9ewf5RUKoWTX/t2x53xyYrcW5mEQ
 L7hYdHMpqxAZ1wKEQu/hbdvy6yMjlHrujxhr2y0Kb++fp7OvXNYOhTDFYlglDHSWulbB
 uPRrUm5v8woAFi/QV5azhaf5iSzN/xF/CXzSucTIFbjpTxrua6a433t5smWG3+L9IlRV
 ZkNlLTvAt20pTLM7XvA+JchlbYc5lJUB0OlDcGbQKbqcKTxVjeCFHux0CTzXhxjgjF6Y
 6SLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MtXq2QWDOoN0CBKSeH60c2tJASyOu/uu0I8Lzq6RPtM=;
 b=Vl2swase0RJiYP3b1VZu+/4YynO4AdTZGfWmljCru9/duqyx+XvJ4da2LDOVZ1ctiE
 WkuxC5HXtTjc96sYnLBppb0gqph/3PJR9zJqIIv07Y0lWVsU4HSxpzqwECoIPaUax6+k
 nSn3ITtphlDC/tFXr3Vk4C65vQdHm29CIqHTNTu5UcTnPIJqvmMmp/SkuFuGa4drLCV0
 Ww9rwJwBHMRkSYh5jzrFXU9xaKAfTm11LMPoGM47R94RvH8/vzY0skI9pviRZBGojfNw
 SKb4eKIQC7m/c1VPimVGoY5k0M6xMsGaNbc2lyj9SSX0BOYZodzkI09iz+6Yl2o4qwDN
 jbGA==
X-Gm-Message-State: AOAM532FZx0x9j8kaj49NiOlFDQB5fY0u1Roi2nxVLzMiiZCPGDQ90Tr
 QI7Hj5h6DeFRYNZdTREKO32C0OBPkDI=
X-Google-Smtp-Source: ABdhPJwrhZdi0No4rbZQHie06zCoV3F1MKhumkDGsoHpu8RyD5ewUfXxcEcGR091fQ5c1lz2G7uDpA==
X-Received: by 2002:a17:902:262:: with SMTP id
 89mr24238893plc.251.1590378365956; 
 Sun, 24 May 2020 20:46:05 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id i98sm12152831pje.37.2020.05.24.20.46.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 20:46:05 -0700 (PDT)
From: dillon.minfei@gmail.com
To: linus.walleij@linaro.org,
	broonie@kernel.org
Subject: [PATCH v5 4/8] dt-bindings: display: panel: Add ilitek ili9341 panel
 bindings
Date: Mon, 25 May 2020 11:45:44 +0800
Message-Id: <1590378348-8115-5-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
References: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_204608_143212_C4957281 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Add documentation for "ilitek,ili9341" panel.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 .../bindings/display/panel/ilitek,ili9341.yaml     | 69 ++++++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
new file mode 100644
index 0000000..2172f88
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ilitek,ili9341.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ilitek-9341 Display Panel
+
+maintainers:
+  - Dillon Min <dillon.minfei@gmail.com>
+
+description: |
+  Ilitek ILI9341 TFT panel driver with SPI control bus
+  This is a driver for 320x240 TFT panels, accepting a rgb input
+  streams with 16 bits or 18 bits.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          # ili9341 240*320 Color on stm32f429-disco board
+        - st,sf-tc240t-9370-t
+      - const: ilitek,ili9341
+
+  reg: true
+
+  dc-gpios:
+    maxItems: 1
+    description: Display data/command selection (D/CX)
+
+  spi-3wire: true
+
+  spi-max-frequency:
+    const: 10000000
+
+  port: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - dc-gpios
+  - port
+
+examples:
+  - |+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel: display@0 {
+                 compatible = "st,sf-tc240t-9370-t",
+                              "ilitek,ili9341";
+                 reg = <0>;
+                 spi-3wire;
+                 spi-max-frequency = <10000000>;
+                 dc-gpios = <&gpiod 13 0>;
+                 port {
+                         panel_in: endpoint {
+                           remote-endpoint = <&display_out>;
+                      };
+                 };
+             };
+        };
+...
+
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
