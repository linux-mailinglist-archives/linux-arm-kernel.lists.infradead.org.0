Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0071C1523DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:09:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZE7Au5i1kKzjyekUmZPAT7YazvwQrCC7Op1eMUxRUB8=; b=ex275rFoV0rqyV
	IthQWJOQpfheWEkrH14+CcDTiaQyjIO4R4j/UO/+shf9HRPueVUKCINjFlL25vbllR3Xsiidf2jFE
	l6rQIK0/ATbdkv4FTqzKz+Qn0MS0TDQZPmulzS7bRKdCqDtMxUIX7+eGf5TeGgrhIDoXskMWxKVWZ
	kyAY+PJspPnyxH9CbEIm7qGh4AH8TTI3K1yYRmmY8uaMphmIvi9uiQKmYjE/vwruMcCJIeoRm18LK
	7kF5seyont2EwCxWSawDMeaGmn+nS+hlOed1HTqfx+4bpxxsVe6fWdydHILeqd6vkXb80jg/GXbFc
	DXqVaxgbn67YTPX4Izqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8GC-0007Qj-FS; Wed, 05 Feb 2020 00:09:40 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8EI-0005cd-AD; Wed, 05 Feb 2020 00:07:45 +0000
Received: by mail-pf1-x42c.google.com with SMTP id y5so183552pfb.11;
 Tue, 04 Feb 2020 16:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CWkZ+hPOQw0CLt3DIMXNZXqIluJmIb2SwavOv+rxo54=;
 b=gW+SLLfP8z3aWyWKk+jfFvgADyBQ0AnrBjjwgje8s7KGIEgrE5fPGKZRU37oxYh+L7
 8qQ+Gy+9cTbJVQpwrvWjAi2YRCFNzeO3lULRFYyoLLuiTjjpzDbbCxWs53qhsSjgERXs
 uqyO1jRppMX1MauyHDYnyXsZxC2hzDP8zr3Pos1qw8YDFzqGxC/jA3whiTiAHlHKd0Af
 qm+oUdzthXzT/DCAOs6AGUV16p85tZQ4m2lmHP8uSRgsFlFxm/uvrAzltOy3fGa7OTWJ
 wJaIJRogqoFNWZB+VXnY3elETVaL9c6lWkokNLSzocYUXTavcxI1ez/vUG5k0OEyO3YS
 N2qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CWkZ+hPOQw0CLt3DIMXNZXqIluJmIb2SwavOv+rxo54=;
 b=RDakI+Lgc9+DpMfD1g6p76LH0UQ877RaREp+UKPmt7wJvEpaRLSZ1Ldnzjykgi2EMB
 5ZJRAiUgStsaNmtLa9OWa0a6OhabBxYhXVxc2PhsP1S4wnSy9v9F8TFDpIC0ioTMT64s
 2YwMc9RFpumvYZw20ByaD0Y9GT/xpdkrnV+TsZinZkCzC4ll+fr0zqUS9/6QjZlGzqTv
 9ACXz9fa/i0EEYirAD8EszzU2nhHrd6RdnAEapVm2y/Y8PHYNsMGR9ywReab4ciDFN1G
 hYvvNjk0Q1+5X3q7EeQSCWaxa2wILjLXxZKPaKr2scRDyy82e8YsfTVHX0e8IRgLhgsZ
 LESQ==
X-Gm-Message-State: APjAAAVhAuX2V4w2OSs3gNtFuK8T3W7pK3xzIyyrncaZoV8U0CTcoz/f
 CSHD+83J8hm2MsW/S2qH4nubEpIT
X-Google-Smtp-Source: APXvYqwzuaFZnoTtVrOKEsVT2qZTwaiz5vwrkRG1cX+LtJZGGmTzCfmaY/I6bRFaxWHqaDcaSKVEiQ==
X-Received: by 2002:a63:4525:: with SMTP id s37mr4520697pga.418.1580861260751; 
 Tue, 04 Feb 2020 16:07:40 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:40 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 09/12] dt-bindings: arm: bcm: Convert BCM11351 to YAML
Date: Tue,  4 Feb 2020 15:55:49 -0800
Message-Id: <20200204235552.7466-10-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160742_667943_23753D7F 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42c listed in]
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

Update the Broadcom BCM11351 SoC family binding document for boards/SoCs
to use YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,bcm11351.txt        | 10 ---------
 .../bindings/arm/bcm/brcm,bcm11351.yaml       | 21 +++++++++++++++++++
 2 files changed, 21 insertions(+), 10 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.txt
deleted file mode 100644
index 0ff6560e6094..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.txt
+++ /dev/null
@@ -1,10 +0,0 @@
-Broadcom BCM11351 device tree bindings
--------------------------------------------
-
-Boards with the bcm281xx SoC family (which includes bcm11130, bcm11140,
-bcm11351, bcm28145, bcm28155 SoCs) shall have the following properties:
-
-Required root node property:
-
-compatible = "brcm,bcm11351";
-DEPRECATED: compatible = "bcm,bcm11351";
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml
new file mode 100644
index 000000000000..b5ef2666e6b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml
@@ -0,0 +1,21 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm11351.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM11351 device tree bindings
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    items:
+      - enum:
+        - brcm,bcm28155-ap
+      - const: brcm,bcm11351
+
+...
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
