Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD028BE54
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9eFsQbwc8JvyeoRjrt+qB4HnkdQmq74SYRSktKlSgBs=; b=iGurF1ujRhCqJtDmGCpZpAP3C4
	Dw8c6sOyGQRb8iLvjKVg0QQS7WuqC9JJHwn+EyeO7SztMYslFzffMYPUa0EWwwDIgOP5qeimFk9QC
	tnFW5HjeeOSGEdDjvuK90/bZDTZhRJ5ZdagngLs6UIqQ1wwDEvWfwrzXHSs1vw5OiQyV+yRi/DyjA
	tIacHqq3f0zl/4SdovMfA6JfKAKKvwSpkQp8DOGt94QsGebBS//vvIAdEc2o4SoodUurP3aeslr7P
	xAckLMv8SMtA+FVqoJq6NLXfHoYusnXLv0FdFfynlTN1LXGjR5o/Ove+5X3WSa7t8JvAcni3cmPl4
	lXmiaaAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZZ5-0000pL-Af; Tue, 13 Aug 2019 16:22:27 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZXn-0008N0-KA; Tue, 13 Aug 2019 16:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565713261;
 bh=N/1fGHykkkj2ii3MMCPsqwFDNryE+MvPA8vb391G4JQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Dc3iLjqjSS3CAc0DlTYVkmT1L1YWy30ZT0KPg2B9wvYsxbp4zbJOEEHIqFHm693LL
 /y+aaqOiU25z6vhQwSVRnwILCyLBYdmpuKPpj6M5BOpj98rxr8sWIxX7FJF5WtMlCZ
 y83SLpjoZOVTNTyMJ+bdhNPsXSqX44VgAQ6B5OOI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MNbp3-1hdS5v49t5-00P3kd; Tue, 13 Aug 2019 18:21:01 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V2 09/13] dt-bindings: arm: Convert BCM2835 board/soc bindings
 to json-schema
Date: Tue, 13 Aug 2019 18:20:44 +0200
Message-Id: <1565713248-4906-10-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:9aQt5XHwmKTiYEkM5aG3tX0//bI6EK19R0s2CZt4Bu5hD+lDVVk
 tc6FzSARMk3ksT9HnAARreZXAug/jQiJYjAFWosz//m8bXOnNWsleuK8SguaQjXZMoHRGCy
 FnW2OG7tgcVpl4fsgksgtmbn7sgj28pdq0Ce2qg57xV6yX2hP+W8bjjhSAIYZlx51L1Zx0G
 g+JTqxieg1rIQNXLwPEPw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FfTa5NEbgws=:y1zZ1PjuuewmfhVXv2TM3G
 Wymd2v5fnE2HCtVf09W+oBicBR1WmYk2qEoxMhtsc9IOx6EIYBhpFGXjHXdD34ZY0/kDmEmXz
 oOR5kfhT2ZLGRzMVOYKnbJDp8qVJGhyIICbA5+Tnh3sup4me1JC0C8ifLJJ5fkyqRWP93jfrA
 IP7ida6CNjEE+j1/5xr00WuH2fH27FNtVGixDpEbfKvd+1lal6Q4B6suB175BCbxq4Jj5fQC8
 QDPVwIMxlDZ1vcuatlTYlZ80Oa64PM593sCYXYONbBy3DH4dFYDZfC6Fm8lSn5VWjJDBpB2m+
 MaRZDECOod67MBcPiMhsOEl2DWGLM7vgm4DPX6gBXAs558XF6TgS/hgnRrXZNyYKnd/w6fr4x
 cXsHpHAy1qQXcHf52YNYRIlYT8N11+WB5Wr5w+HBQiguYTmn3qsYlE+h0uJqpjY9iDuOlcDDj
 mibyasOHTULMPGlpneLAOxYteVuHCNdn2ivfk/c7J//2FCBkUFl68a+D1fZ3iROk4fLi54UiQ
 yi0u+BL49gB2j4hdO2tVG73HbIXfZVy24UiJjYl/SVya/EOA0UeVOzuoD3Eo2LKCKkdpgw9iP
 UyaTu6sCAOf9+HZB6g6rRgdi3xsubkMB1TReo/ql2R+CwlxYy7S1/T2JfCSSi3+AD+lddvy8b
 3gLSh7JkRB/rspLS1/uSUL3oyY43KKPTuyrbidxlLq2Viqd1uBwYv+WhCzPNhFJ/Bu7PQQvLw
 ke/j7C+jv4hN4OQZv6wEJF5fc+CiXzvtef6Rk8aP3Fw8gNqiY0xYAvUluKgiP/SWx6++HIhwC
 Er2ULdWN397USAdMvjrtQJh9By1y/Avpc4E6kjLxvPmQDYgGCjYH5jSJj+dqsVMWtnF8D4Ea5
 SEQxtQFipIn+cy17doo7tYJfbJLR8HAZkqYzoHxGwCoidPQccaiAVpxdcKp17o2v0CrQReq7K
 RiqJIQnplWCa95dVWgfa08agkGOFxGR/mZ3cdXVW6Uf56Xuiy1vZAcDp5pnP1aGgnVJd7w/Np
 SJS2oJbTYqmCIyPH+U1zHE6xgYCXW0LyP6cQt14HJM4VylS5CjrzHT3dunKkXZtzDYxX64EZ1
 fLs97R/qzOIrwRXjhW39Z//+rhjBi1W2hdc/0McxqDA386dNcsuCagX6w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092107_955624_CF13A0B9 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the BCM2835/6/7 SoC bindings to DT schema format using json-schema.
All the other Broadcom boards are maintained by Florian Fainelli.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
---
 .../devicetree/bindings/arm/bcm/bcm2835.yaml       | 46 +++++++++++++++
 .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   | 67 ----------------------
 2 files changed, 46 insertions(+), 67 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
new file mode 100644
index 0000000..1a4be26
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -0,0 +1,46 @@
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
+
+      - description: BCM2837 based Boards
+        items:
+          - enum:
+              - raspberrypi,3-model-a-plus
+              - raspberrypi,3-model-b
+              - raspberrypi,3-model-b-plus
+              - raspberrypi,3-compute-module
+              - raspberrypi,3-compute-module-lite
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
