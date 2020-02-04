Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4651D1523DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:10:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3JRAUD8hZelxhfYGxE3DLGnApYlaVmNNj1N1Wx0ECY=; b=kGnxZDTE8fGfeX
	Lb5gaivcI6nW2Y1zJxmCb/WlfPU1hYTNmapkfUkxheKU5uzMhZXIJxvAiVyiA/15tfMJJsVVo3LIF
	Khqsu45dPNXPUDHWhsR5xrCIou37Xz3Tn/Ph4kje92ljSxgxVH5OEefM16gFNqQqaVaNolYbSy32z
	trvQdAn3PnV342ZqGJwmLTcU57G3NV9hbBVnlDhTHu53VOlZSePhDVMvxP34/Z0UaLGRm+VcnU+uP
	ZyI/Fr+Tjobsll9uvT4F1EUGc2jvwSXXtnlOPsYVlRAlE6FmDlP1vjAygI2zNog7NzL+wjRNuqnjd
	hsINF5LOEc76pIxKoYRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8GQ-0007fW-8O; Wed, 05 Feb 2020 00:09:54 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8EI-0005bN-97; Wed, 05 Feb 2020 00:07:45 +0000
Received: by mail-pf1-x42e.google.com with SMTP id y73so207848pfg.2;
 Tue, 04 Feb 2020 16:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UTWq2v1G39LXXPwE1U1K2JI+unOCnwpw+JLQGuxBSMU=;
 b=sCoNrYW07Awn3/SPOzVkj+hqGwmaXPgkwJiTOIH5c1SmR6LLnqiA7KuLWvcvjL5hKR
 DNG3AypwxWaPBeNtt+0VIQuEsTuKGbSR2SBDappo1y33L92kCqOwWrSMtTAnARCrbKT9
 lxvPqnzLxn3Dzwpv3ttaMU1Y2/EHm+wb3ynvqbHhT/Gfa/dTyPO0MfmtrCKsS+FDPqWN
 02w7BMHVIdcPD5htPgcK8rXQfYz23/CwUaVERAwJIpN5Z1XZY65+mUMz1t3h8FOY1idR
 DpShW4MeWkZkn+DYAIMq8RbOUG8LF6tzk8Ui8KV2XPR1pLGWgB8JsIqmZgejMP0YKblU
 zQ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UTWq2v1G39LXXPwE1U1K2JI+unOCnwpw+JLQGuxBSMU=;
 b=EOy5n8WLTJe4aIjGhRH47KmbPDeGp/6kO6TaKlNAKNkXx3ATcjceJzCLn2UVS1aRZD
 4KDFNe9MrhVQBaE2LEMk5w+KfMtVy3JVwDQWCd8cV0qqufsMxMhJqeSGmvtTjzQcS5Xr
 +sWQnfftVWPufiBwzbkyRHbKq27xwyrwsDd2qU6MXLEf1y0TWoRYRSvtmpvL5PTkSALw
 u/g15amtW3tOpBiqIbjNwaWBsTfqR5ikT0PHBoVJfRtN+BUxf0RGpwDcilOWFl70x071
 6aUcjQgVN4p8QorVZlv3FPHzS4v/G9JFb4I3iCfbSXuvPx2DM/quddTbaBJm5P7Y/+PP
 yznw==
X-Gm-Message-State: APjAAAVxew95gfryHtZL5Ihhj7C+jIrgmhYFi9UxiJ8Dt6WPN8twswZ4
 0b7pUd5cXYpUJ4pZW+o9CHaNFmbm
X-Google-Smtp-Source: APXvYqytGfneOYdyHzaQkzp4Cs3b4hu262Ic3w2t1TgODeStByOKL1tZCTBqMHa6nfShubjhaW5iag==
X-Received: by 2002:a63:2cc9:: with SMTP id
 s192mr33075792pgs.441.1580861258950; 
 Tue, 04 Feb 2020 16:07:38 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:38 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 08/12] dt-bindings: arm: bcm: Convert BCM4708 to YAML
Date: Tue,  4 Feb 2020 15:55:48 -0800
Message-Id: <20200204235552.7466-9-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160742_580640_B64443B8 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 "james.tai" <james.tai@realtek.com>, Arnd Bergmann <arnd@arndb.de>,
 Scott Branden <sbranden@broadcom.com>,
 Sugaya Taichi <sugaya.taichi@socionext.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Joel Stanley <joel@jms.id.au>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the Broadcom BCM4708 SoC family binding document for boards/SoCs
to use YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,bcm4708.txt         | 15 ----
 .../bindings/arm/bcm/brcm,bcm4708.yaml        | 88 +++++++++++++++++++
 2 files changed, 88 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.txt
deleted file mode 100644
index 8608a776caa7..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-Broadcom BCM4708 device tree bindings
--------------------------------------------
-
-Boards with the BCM4708 SoC shall have the following properties:
-
-Required root node property:
-
-bcm4708
-compatible = "brcm,bcm4708";
-
-bcm4709
-compatible = "brcm,bcm4709";
-
-bcm53012
-compatible = "brcm,bcm53012";
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
new file mode 100644
index 000000000000..d48313c7ae45
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm4708.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM4708 device tree bindings
+
+description:
+  Broadcom BCM4708/47081/4709/47094/53012 Wi-Fi/network SoCs based
+  on the iProc architecture (Northstar).
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+  - Hauke Mehrtens <hauke@hauke-m.de>
+  - Rafal Milecki <zajec5@gmail.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: BCM4708 based boards
+        items:
+          - enum:
+              - asus,rt-ac56u
+              - asus,rt-ac68u
+              - buffalo,wzr-1750dhp
+              - linksys,ea6300-v1
+              - linksys,ea6500-v2
+              - luxul,xap-1510v1
+              - luxul,xwc-1000
+              - netgear,r6250v1
+              - netgear,r6300v2
+              - smartrg,sr400ac
+              - brcm,bcm94708
+          - const: brcm,bcm4708
+
+      - description: BCM47081 based boards
+        items:
+          - enum:
+              - asus,rt-n18u
+              - buffalo,wzr-600dhp2
+              - buffalo,wzr-900dhp
+              - luxul,xap-1410v1
+              - luxul,xwr-1200v1
+              - tplink,archer-c5-v2
+          - const: brcm,bcm47081
+          - const: brcm,bcm4708
+
+      - description: BCM4709 based boards
+        items:
+          - enum:
+              - asus,rt-ac87u
+              - buffalo,wxr-1900dhp
+              - linksys,ea9200
+              - netgear,r7000
+              - netgear,r8000
+              - tplink,archer-c9-v1
+              - brcm,bcm94709
+          - const: brcm,bcm4709
+          - const: brcm,bcm4708
+
+      - description: BCM47094 based boards
+        items:
+          - enum:
+              - dlink,dir-885l
+              - linksys,panamera
+              - luxul,abr-4500-v1
+              - luxul,xap-1610-v1
+              - luxul,xbr-4500-v1
+              - luxul,xwc-2000-v1
+              - luxul,xwr-3100v1
+              - luxul,xwr-3150-v1
+              - netgear,r8500
+              - phicomm,k3
+          - const: brcm,bcm47094
+          - const: brcm,bcm4708
+
+      - description: BCM53012 based boards
+        items:
+          - enum:
+              - brcm,bcm953012er
+              - brcm,bcm953012hr
+              - brcm,bcm953012k
+          - const: brcm,brcm53012
+          - const: brcm,bcm4708
+...
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
