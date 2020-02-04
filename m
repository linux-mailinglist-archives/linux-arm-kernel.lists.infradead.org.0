Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDB61523CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:08:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0PsWHpIZH85z2cmj4RBUMHTXIGmgM74Be0RWNA1LiYQ=; b=iCqRxubQtRE/n9
	xC7k3ncLHWDXOQbF0xNVsJXaL9ygVz2E7Gm9ykUrt+Ko4KwxpRA3Vnb1FQXKc8j4mXBLSx6Ypkiep
	m+IqWaP0pFA5MWOU2POOElziMZ5UoXNbrELM/mFn8ymUaRJcRU2441u4UEZBpxmptyh6DFKOSVUHx
	PCAjNtmjvA3PEaTZAof9HJ12Q9BlpPuuCLwhP1E6s/Om5wMgOpmTljmglz+6iUE0AuooIcwKw1lP2
	GZx6dBtVMZTTkSr1CLgiYwRVswUUER/kzNuwh8j/nLOT1oOY+u6w7HV2ovnzf58Zpo8SZVSirKK3S
	xu54zN+MtKQYXoPbY0rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8Eo-0005vk-FS; Wed, 05 Feb 2020 00:08:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8E5-0005M6-0f; Wed, 05 Feb 2020 00:07:30 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay11so96437plb.0;
 Tue, 04 Feb 2020 16:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j/Ku8B9Qr+kQIDeYMGdjbQdZuNDZp/3dsOQZapgb5l0=;
 b=puIBDqJg+eXqX8nYBtw/bkm2+Z7h/fw+YJFBNnP6/hdde8A+TsEnMhjJtXMdE0j4Uh
 nMyFsWmqIEFYkKcRd+2ymE4OQCuuONUoD+xixXU+fhKKI30bwwXh0dkvPsQl7y+Vw0Wv
 b5zd+IqWqGI9AEpgPUXj1F4LKV3b+HPQzAzJH8fkn4NUcIxHS6Tx5FYnKPIKoeZc6mmX
 1Im+xJNFAp8ArvN/E2LXcyX6DpedyPPuImJ+bGUUU2QlHKvze7oRV/YCjvC+j+Kd3c4Y
 gIragZeNvm+5SsxBdDWuft3sj3aajxhHE+yxy+7I+z7VXOGkknBoZN9MAmVyCR+e3yLA
 6uBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j/Ku8B9Qr+kQIDeYMGdjbQdZuNDZp/3dsOQZapgb5l0=;
 b=L4UGMcCC5p/drmbT+XXTApmY78+cAS4UPfzn910TiKC6/1Xk2/qxYJeJCJrIzmjNah
 0J0K/IaraGZdAc/1pRfPByNBjBn7i18efI7RQ/u9QgTdFqMUuG+QmSQZkZarrkJlZi4n
 2K6yJ1N9KU4FAUASmi69EnbP7sF+ULBDUwSJMPqQ3PJott+9wj0lj82J4a/Y0DRnAPDG
 l1qmiZq4tMVDIRL7opaLBRc8iGFpJUIQ2BeCSN5pQSjhil0DCOo2f55WXiuIHWG4LLWu
 Rxivwe0pVuma4fwQiIjlH56zFkVeFuFbUxA6zP7m6P9WHBO3Tjk/ljxhYivhjNxKI5aN
 /WEw==
X-Gm-Message-State: APjAAAVREWluaVV2BKYZI8pIsGVVhRNXz3V+Tg2MwJMVeObGyyE8fYFM
 bhwVwnWeIAmnJ2UHURfxzgLRDuWD
X-Google-Smtp-Source: APXvYqwQcg6bMiHxRctNlJLi7ARBxfRZwq7QNImw2mutKJl+gsQUxTccPJQXv487JwMRS0XOEDbe0w==
X-Received: by 2002:a17:902:8bc7:: with SMTP id
 r7mr29014884plo.12.1580861248342; 
 Tue, 04 Feb 2020 16:07:28 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:27 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 02/12] dt-bindings: arm: bcm: Convert Hurricane 2 to YAML
Date: Tue,  4 Feb 2020 15:55:42 -0800
Message-Id: <20200204235552.7466-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160729_075913_357C7743 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Update the Broadcom Hurricane 2 SoC binding document for boards/SoCs to use
YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../devicetree/bindings/arm/bcm/brcm,hr2.txt  | 14 ----------
 .../devicetree/bindings/arm/bcm/brcm,hr2.yaml | 28 +++++++++++++++++++
 2 files changed, 28 insertions(+), 14 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,hr2.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,hr2.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,hr2.txt
deleted file mode 100644
index a124c7fc4dcd..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,hr2.txt
+++ /dev/null
@@ -1,14 +0,0 @@
-Broadcom Hurricane 2 device tree bindings
----------------------------------------
-
-Broadcom Hurricane 2 family of SoCs are used for switching control. These SoCs
-are based on Broadcom's iProc SoC architecture and feature a single core Cortex
-A9 ARM CPUs, DDR2/DDR3 memory, PCIe GEN-2, USB 2.0 and USB 3.0, serial and NAND
-flash and a PCIe attached integrated switching engine.
-
-Boards with Hurricane SoCs shall have the following properties:
-
-Required root node property:
-
-BCM53342
-compatible = "brcm,bcm53342", "brcm,hr2";
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml
new file mode 100644
index 000000000000..1158f49b0b83
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,hr2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Hurricane 2 device tree bindings
+
+description:
+  Broadcom Hurricane 2 family of SoCs are used for switching control. These SoCs
+  are based on Broadcom's iProc SoC architecture and feature a single core Cortex
+  A9 ARM CPUs, DDR2/DDR3 memory, PCIe GEN-2, USB 2.0 and USB 3.0, serial and NAND
+  flash and a PCIe attached integrated switching engine.
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
+        - ubnt,unifi-switch8
+      - const: brcm,bcm53342
+      - const: brcm,hr2
+
+...
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
