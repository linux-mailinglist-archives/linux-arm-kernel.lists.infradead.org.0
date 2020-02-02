Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6CF14FF59
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:20:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UOds3UXd7cUlCdTyTyWjuTatN1KXWU88bnZDSPZgR+A=; b=GGmCGqaS4T1rOavgiCZknpuy5C
	Hm8Ptr8+hWW0cUomlfYgpVf/KQyPkpYAOw1IJiK4afCYqr+lCyvk2FUmnRW6uofomrZwpmixC24+L
	a6b2C9MTw9yBj62b4yKttHUAZ2bHxwDPjMwV4dHCU/wi5WN28Fqcb5d7zaSqqBixjkC+EaSneIvBt
	SUmc5di63hZWFsc++yry5zy5y8rjv7jt5DqO9QRKRuEpqfmzOkeo7HsssnCQ+zInSPAZxP0yEG7ef
	1HWzh71e4HDdC4c4IgudhdgTMwoClS+a0vT0GA6KGsb9SX/SEndsUk5ku6oEHKR1C3XyNFMtnhfWU
	IbdfxunA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMfk-000566-9o; Sun, 02 Feb 2020 21:20:52 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMe7-000277-M5; Sun, 02 Feb 2020 21:19:13 +0000
Received: by mail-pj1-x1033.google.com with SMTP id q39so5480637pjc.0;
 Sun, 02 Feb 2020 13:19:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lzwVHc1k/dY+x845Gy9RdQHoQfS2nfs3A+KYo1foc+0=;
 b=H2qx4E2Nhhp/BK97BF1fSINkDJ/idHIamceUiP6CjL6p57LV7ch1P3F1LBIno+/V7C
 JCGivnzqrNKP8ZuMgrYAwPZ+g656v7GkQb1aTxvaeN7Q3paP1QYJDximmditdTZlBGg6
 O+ysRhTLoLXbRm72LcVzhRpCJb1E/XxDI6jfePpFplSwJnqD2AWxXanuNWFGWkCSCFjX
 7gh6iUcIEutC9wVbOuZZwV3DtyZVkLVBAP+RphWo9XibaOjKaBhnatufScJOlmHto115
 d6g4IUOfrz7sgJDN9L6/nanBoqYiGEz8ofAzQfyfDikuAnIJK8l9J9pW8wYLGArisZCq
 Muog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lzwVHc1k/dY+x845Gy9RdQHoQfS2nfs3A+KYo1foc+0=;
 b=XcJdHPm2cG3gJwTnapTjsY//RbZBwqKNMzYfW2lxtKqAbuMx5+NDPVu0IQ+j+gF+V0
 Eu4pbXYN+o5mv6KRzOdyXQvdSX2mhV0RC/wOQRpBRKDXP7BHYnKc+/zm5US7uBX7OQnJ
 ysR2C47GE18fJrJnBEAIo7bzojqdV271U0BHgqKrdgCbbkdrI87N/s1j+RZX0lwGQNEu
 RBXL+9iwD5sA4tDw/MKBeSCM/HPZ0drsNGW2pP/Vkbdoxlnxfpn9i+Ceq92W9zbQAqtr
 7U7ppi8MVfTQ7PpgUnqKOLL2cCAkNF1sR/phdkT+J3PkgWLRUsI+LAzI/BmEiLsZNr2g
 DM0Q==
X-Gm-Message-State: APjAAAULD5GYm1gHrOt8nKDglD3bChzTho+wYdpFADcFn4tStZyiSyV0
 GKyLcFR+44aaiyiNergiNbw=
X-Google-Smtp-Source: APXvYqwpg4xdPeG2V0xlCQCQTflLB4Gel0Sq5vaGv2Q+wOl7EIu98sLT2K4/HtfyYhyrZVMx7mAlUA==
X-Received: by 2002:a17:90a:2545:: with SMTP id
 j63mr26212455pje.128.1580678350712; 
 Sun, 02 Feb 2020 13:19:10 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.19.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:19:10 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 08/12] dt-bindings: arm: bcm: Convert BCM4708 to YAML
Date: Sun,  2 Feb 2020 13:18:23 -0800
Message-Id: <20200202211827.27682-9-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202211827.27682-1-f.fainelli@gmail.com>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131911_736950_E5241460 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Sugaya Taichi <sugaya.taichi@socionext.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
