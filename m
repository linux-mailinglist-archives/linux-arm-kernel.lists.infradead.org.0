Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BA6134E20
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:55:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JfoBENmmEkctZhnMhNCDynWs3i//NVBrDTU3J/SF7j4=; b=nFfolut+M0CDRiHtcfKpb9cG7n
	RFVxa0O2zvm8hLxJ5o8qD2lVuG1FmA561zK1ZqvJTWY0jjZVw6k2az1MEc5KqsOSBozaJHgPHf6Df
	u+L/uNdtf/CvTcnRErCmAb9tL3imvngvDs7cN1IxG2jOt9JxjdQZTPZDfn/ps42gx4459fqOA2TPw
	EFcoXgNTnTiab53LUoZtgATcjYrAcntZB5d8LP/XtOSltN2GEHLjgjM0+enj1aKloFvjf6MbAkClT
	JwCjUYEeUBVf2i5Z1WHn1gnmxveWmLWwzuqYwwiXCVKWS9lwU0wgb+hKuSF8SFpZRiyM60iy5ZzpC
	T3KDmNDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipILy-0007Ap-Vt; Wed, 08 Jan 2020 20:54:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIKq-0006LM-ET; Wed, 08 Jan 2020 20:53:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id c9so4902444wrw.8;
 Wed, 08 Jan 2020 12:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HAVtrrvP7lMDn+z4yW5t1+0ZMAlAWmibvRDN72JzVdg=;
 b=fvW80tsxmitYEBvGtuh21m8wnBrE83VykidXd3KTI0rxQr60hgtOGRLWtAgjGRdeSO
 ZsRWTtQ02MuMnIsoiUmBaJpGUxV1cStx+zM1VnKo62bXNajzo4DGa5tyqaWhJlvyunGn
 PPcjQo11qmTC+Jjg8VnDzQpYw240eF2tRX7QhBqxq2X77Bvevr0h3cnpGnSLucGwGqu4
 NeZ8g8I5QTPHgNTGPznEcq4Vs++QwEPJ6yCN3ke8la8QHoifR+iUp+vPBM0TSQofpGIO
 +tf2wJ9uuEfsKuTLtLkXDn/e3Tl03vRVdSzJufN+Nhd+ctQwX2QSzffJWD8WE5rgcqhr
 U50A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HAVtrrvP7lMDn+z4yW5t1+0ZMAlAWmibvRDN72JzVdg=;
 b=XzFAXuvCjRFo+iGspDzAW5jHEB6z6pZmYjzHqx2P1qcE/7/4L5KAkgJ5eIshB35XNm
 Xx3JY6rxw24fO17+2EL49uYRdfkDjl2cQ98sYpZsNtBCggR776XBZNyZyRLSPlGJfydQ
 PmBCJrJg+wMJquAPfoS9eZntKrQsM1Nyp26rEIPGDwedSalGiZaBgi7I8AnCKRJ1Tq4D
 HaSIR1JiyjAlRbpNLEYJc1rqFSeUFaPbQCafRoz9ALIaWL2wBq5o4dRcLoOOxpnMInMP
 vUxIS8gCi3aulEqc4S4vEnc6vCVqxJWp3PlwRSBDdxI/T4oz5CRXP1e3ybjhvqJSwfJB
 yz+A==
X-Gm-Message-State: APjAAAVTef6k+Cgvc7wETAnnfrKHE5TkSVARznPB7Nwy5Tsy2Kc20eoG
 oo1a3NW03/e1Rl3vQbjvcNc=
X-Google-Smtp-Source: APXvYqxULPp2fA/trb8q4KJWfPyDdsD0Vv2qlG337KA4yMv9O2EsWOqRDwrpvkD0urJEQL8otamhMQ==
X-Received: by 2002:a5d:6b47:: with SMTP id x7mr1025519wrw.277.1578516827246; 
 Wed, 08 Jan 2020 12:53:47 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c5sm311835wmd.42.2020.01.08.12.53.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jan 2020 12:53:46 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v1 01/10] dt-bindings: mtd: add rockchip nand controller
 bindings
Date: Wed,  8 Jan 2020 21:53:29 +0100
Message-Id: <20200108205338.11369-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108205338.11369-1-jbx6244@gmail.com>
References: <20200108205338.11369-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_125348_498315_6C791571 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Rockchip NAND controller bindings.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/mtd/rockchip,nandc.yaml    | 78 ++++++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nandc.yaml

diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nandc.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nandc.yaml
new file mode 100644
index 000000000..573d1a580
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/rockchip,nandc.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/rockchip,nandc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip NAND Controller Device Tree Bindings
+
+allOf:
+  - $ref: "nand-controller.yaml"
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,nandc-v6
+      - rockchip,nandc-v9
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    oneOf:
+      - items:
+        - const: hclk_nandc
+      - items:
+        - const: clk_nandc
+        - const: hclk_nandc
+
+patternProperties:
+  "^nand@[a-f0-9]+$":
+    type: object
+    properties:
+      reg:
+        minimum: 0
+        maximum: 3
+
+      nand-is-boot-medium: true
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3188-cru-common.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    nandc: nand-controller@10500000 {
+      compatible = "rockchip,nandc-v6";
+      reg = <0x10500000 0x4000>;
+      interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru HCLK_NANDC0>;
+      clock-names = "hclk_nandc";
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      nand@0 {
+        reg = <0>;
+        nand-is-boot-medium;
+      };
+    };
+
+...
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
