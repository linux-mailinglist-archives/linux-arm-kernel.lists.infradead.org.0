Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9787FCD2DE
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4wZq0t8LevbnBlcvwtUeKJP3YyCdd8HTW5qWY31H5k0=; b=D4uFNEB3rFavn4dMYcjENpGpGL
	iqc0ZLCB+6NEaTygLclDT1GPkkb4Hp47vkzfitEJJKEyFBO9shBL8UiyyWxzs2592pFRlYww8SnBf
	Oox3P0gXLQ+gNxOxUMJhnv2f2ELqJKSd5aM+Ee9J8SurJgqEYYPwRwsuLuBD8A9yjr1sDkAQbVlK8
	O4ZWGV0o/rKv3mBmgXrqT5oth264BhhheorFoAB2a1SizmMBR6IC/uiz0WAIQV6G1pTCQPU0w8uen
	k0vKwVeU9ZakugFhOtOYKElR9WOTB38KtBVkM4XyVCqIOGCyoZSkdHApudExrFPTPmDlRwdT+dgwi
	S/jy8Nvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8To-0008Hq-Td; Sun, 06 Oct 2019 15:29:52 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8T6-0007r0-0h
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:29:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570375739;
 bh=+Ntvzuy36h2lYmk3C1RzynnKi0efDfFW+hXy3gSJNSU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=V5Apv0ZnVeB+Z0U62pHHjUH0/QBc8NjkVjwqXAA3oP7rk/6xcZSFgNqrj1vedMT4x
 tjuGaUuVxED1ELO8a3X5eg3rX5Q/TtmLPrCqTKAYNEDrV6hfbFTdJHW4D5ZPo7Ees1
 U+M0SEr6uN+Bj/JlGEGvKh8pKbPUKvzs0g6d67+0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.116]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MqJqN-1hmFsf41aN-00nSlR; Sun, 06 Oct 2019 17:28:59 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V4 05/10] dt-bindings: arm: Convert BCM2835 board/soc bindings
 to json-schema
Date: Sun,  6 Oct 2019 17:28:23 +0200
Message-Id: <1570375708-26965-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:YtuTyqhExdNFIyIWtVu7QQoaNm/leC/Kp3ybCICd0REnOs2Fdq4
 Sth3OQYqsSySzS0lhEiuIDbiCS2hm4Avy2AqfyTeIB4GZdS5AaHD9LLfwnyKbMfwUjjkQ5n
 OsTShr9FlhbLyzRPMAYvCX/ZqT8n7HJeC6nd3wcugImFENoko90NBzTN1hEE12o4uBfS3vV
 jaYO+FG4aWx3ye7AM/vKQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YzL94UnfrVs=:9XH3OE9kOQvnndYTT1NWxV
 9PVv6VqPNc7cbAvi/qXtKMIUQ5G6X9+L5aNY51myG6b20osLy66zaN0z5j67qZZgfhYZGSp+A
 rDaVBzqSsYSn5coGfEuWq11GJqXnsGneDAlUaKBQj4k5UxAV8/jGYStExPAXdr3M225lIBU45
 VPCJnSvOLPhyD5+a9YLuJBLoUGSxDG4VgmlFkwHIRtcQ1sJEfBRzGWBYsCCDc08+IWV/0D9u1
 fRxQDWS8/WQ09wU14N/6i807estmgnTrpGOL0Z2fNU1HC37xE9vinQtrMCCWCGwjdKPJCwscm
 +lBeGezAO7TZkMHZj+67abB6vpB+Z8Ra/j0f2KyqpxSRJoLhA0+sOEJQhELOPZL8Js3ujgMkn
 JXSbJuAhGrKQODzW3WoaUsLXnORbWGJQzazuQd6o7JTtySnnd9uhR1Wkq/SBuKQ1wXOL34VvM
 ReP5tcv4Zdtah2QrNI4yjpHNNTQGkMOVBwXovf7igrxQ6M9w38LabdLUW/B+9dfxisXKdiOFM
 fJg2P3jMMlo7SHo9fXeIGA6PW3VLuJYPbIg/gQIam0He3GJx6taNCXwOcv0djcIx8/szl4XSv
 BUa39+umcw2W0MerzCtIv8l1G0pVBQIUn/JbIb0rkxklcddcBYxzQTjRaE8jymwL8xUroyMHm
 mNlURIN1rZm3m4wfRt8OubSiKlDEByprr/gjuA/nJAxiljpu1VOLERF1TNRo1FLkAXrgOD1SF
 4e7urSErBJOwvdeD9C3ytSmmUeN6gaKxmkR9+Xj7IkVdsjnah3zLgPX2MuPkIB3N6fTdp/CP3
 0qIpxMDxiAe3ZFgIYIdaj7kd3CeskAdhF6YgMBM1EajCB8kVroUhNwA6fPEgY40VgU+mApRgQ
 q7kdFyBhMyvuoJA96QEKa7TJVbP4TrreE9xmBi77dozgZfSOP+be46s1xu+xDzjcKEsbUhDwX
 TfXqLOtHjsCN6CudGSpEHWTZCvFqA/+2iXKF55VeXWaG7fF2xmD5HBxK/eHmsT/82X4FL3GQD
 CnMOFxz3p4PlkVqK7ExdtETfr9RIpzEPcJC65uZEdMIIv75W1dVZvLcLF3hoSVXaubwzjnw/y
 Iep1hHQAONCfKCj9UZmFWVai4yTRHI0IDJh/ae3I+4ibRVquT9yA/Qnl0mxbV6QbemKbiP0hy
 4q2iNQV2+bd6MGMI35ZqCHOR1R6PTFgAl4ve41nCRR/nQVpTQWjXiK3siTuenL42Nthfc436h
 Su8Dqg3Hhaoshus3GmV9gOpmf6iYtXytcfADqFg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_082908_396366_11586523 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.22 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-bluetooth@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the BCM2835/6/7 SoC bindings to DT schema format using json-schema.
All the other Broadcom boards are maintained by Florian Fainelli.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/bcm/bcm2835.yaml       | 48 ++++++++++++++++
 .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   | 67 ----------------------
 2 files changed, 48 insertions(+), 67 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
new file mode 100644
index 0000000..67bf9e2
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/bcm2835.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM2711/BCM2835 Platforms Device Tree Bindings
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+  - Stefan Wahren <wahrenst@gmx.net>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: BCM2835 based Boards
+        items:
+          - enum:
+              - raspberrypi,model-a
+              - raspberrypi,model-a-plus
+              - raspberrypi,model-b
+              - raspberrypi,model-b-i2c0  # Raspberry Pi Model B (no P5)
+              - raspberrypi,model-b-rev2
+              - raspberrypi,model-b-plus
+              - raspberrypi,compute-module
+              - raspberrypi,model-zero
+              - raspberrypi,model-zero-w
+          - const: brcm,bcm2835
+
+      - description: BCM2836 based Boards
+        items:
+          - enum:
+              - raspberrypi,2-model-b
+          - const: brcm,bcm2836
+
+      - description: BCM2837 based Boards
+        items:
+          - enum:
+              - raspberrypi,3-model-a-plus
+              - raspberrypi,3-model-b
+              - raspberrypi,3-model-b-plus
+              - raspberrypi,3-compute-module
+              - raspberrypi,3-compute-module-lite
+          - const: brcm,bcm2837
+
+...
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
deleted file mode 100644
index 245328f..0000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
+++ /dev/null
@@ -1,67 +0,0 @@
-Broadcom BCM2835 device tree bindings
--------------------------------------------
-
-Raspberry Pi Model A
-Required root node properties:
-compatible = "raspberrypi,model-a", "brcm,bcm2835";
-
-Raspberry Pi Model A+
-Required root node properties:
-compatible = "raspberrypi,model-a-plus", "brcm,bcm2835";
-
-Raspberry Pi Model B
-Required root node properties:
-compatible = "raspberrypi,model-b", "brcm,bcm2835";
-
-Raspberry Pi Model B (no P5)
-early model B with I2C0 rather than I2C1 routed to the expansion header
-Required root node properties:
-compatible = "raspberrypi,model-b-i2c0", "brcm,bcm2835";
-
-Raspberry Pi Model B rev2
-Required root node properties:
-compatible = "raspberrypi,model-b-rev2", "brcm,bcm2835";
-
-Raspberry Pi Model B+
-Required root node properties:
-compatible = "raspberrypi,model-b-plus", "brcm,bcm2835";
-
-Raspberry Pi 2 Model B
-Required root node properties:
-compatible = "raspberrypi,2-model-b", "brcm,bcm2836";
-
-Raspberry Pi 3 Model A+
-Required root node properties:
-compatible = "raspberrypi,3-model-a-plus", "brcm,bcm2837";
-
-Raspberry Pi 3 Model B
-Required root node properties:
-compatible = "raspberrypi,3-model-b", "brcm,bcm2837";
-
-Raspberry Pi 3 Model B+
-Required root node properties:
-compatible = "raspberrypi,3-model-b-plus", "brcm,bcm2837";
-
-Raspberry Pi Compute Module
-Required root node properties:
-compatible = "raspberrypi,compute-module", "brcm,bcm2835";
-
-Raspberry Pi Compute Module 3
-Required root node properties:
-compatible = "raspberrypi,3-compute-module", "brcm,bcm2837";
-
-Raspberry Pi Compute Module 3 Lite
-Required root node properties:
-compatible = "raspberrypi,3-compute-module-lite", "brcm,bcm2837";
-
-Raspberry Pi Zero
-Required root node properties:
-compatible = "raspberrypi,model-zero", "brcm,bcm2835";
-
-Raspberry Pi Zero W
-Required root node properties:
-compatible = "raspberrypi,model-zero-w", "brcm,bcm2835";
-
-Generic BCM2835 board
-Required root node properties:
-compatible = "brcm,bcm2835";
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
