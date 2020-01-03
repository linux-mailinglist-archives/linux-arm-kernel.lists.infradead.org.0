Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D61E12FB96
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8UFhSQs9VHD/317GCWuGVOuIvTkubIlijGvVoWSVdOI=; b=GnU3k6rn8CBONU++nuXN+rm8eC
	02u6XAds+c9xkfpCxGPlZUlis71jkm6FQR74UWDhr1aycnD2ar+GAVJBQQpZyKACy49YAhP1LA7o+
	SXy1slDdXIz7W+r51pT3ZiTs31uFEuMtcIq8/bfIwUyRsw1g5V/8JuIaI7Ht/YohlG6ZvHEDkxxUw
	521XjqPsALPm4zoGvGEJehqSuDE1jka470XneZX/jXNaHMSxma+u/YLBbDk6yeS9TyRP74hz+q1lo
	AQ63dY8roRCgBawcJbCK51EgTRnNoGP5g1Ed6KmiTfHIoHsDbpnToZVlrv/shio850jKSBeo86BsF
	sUBIMfhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQhp-0001Rc-2E; Fri, 03 Jan 2020 17:25:49 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQgl-0007v1-Hl
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:24:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578072273;
 bh=qghX+QZQz0amY4J6exmjXYni20BbeHit7yiZbXpzCH4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=GKrQtN0uzXgE0oKJ3P2lSxrNhQ20i/QswZ0TwsdKaa5wZ+kFUVjn9nppsEc12SIut
 PHmepwD+ZpsPTjhI/WhADT4FYKbn3s+VJgTR7pMK4+5nU+mqoKu2pfiZwvbpylExlI
 z9n81bCyzYnSFupzfQvg8+sIF4Qdm4ijbf74U+tM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.154]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MYeR1-1jHHkI1YSh-00Vjmh; Fri, 03 Jan 2020 18:24:33 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V2 1/4] dt-bindings: Add Broadcom AVS RO thermal
Date: Fri,  3 Jan 2020 18:23:53 +0100
Message-Id: <1578072236-31820-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578072236-31820-1-git-send-email-wahrenst@gmx.net>
References: <1578072236-31820-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:DS97MUMU4JfP2Uj8qPbJqu6pgKli1UXiEGkkZQ6zYhvTxMTqFHl
 7G3s/jafuIr6u+H/o34IJS1rpDSikd4TjamNe2SMEM7IRZLsEOk3zK70RqhdmAqQxUdbUxA
 vYrcHp2KDuRGwLW8uraQpi/mGPTOqcL6BLkCzt/eq2UoXQWTDNOInFeCT8hAGsrFKDaM16o
 0aP5OtLHQ2offJIBlzMKw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mJjmYR9lwEM=:IphzPXGuGbTDRm1zeeTUJj
 eatyE7V06qoKafaLN3e1ml9GfzqeQicUGpa1fXlzWYy4YD+c+c2cvbmlRn5aPSTSp9teWUtaQ
 8urjoOYL4PMfxCQopopTAZyNIgWEm2inIy+PRegrrRQRE4BB1mueCkUNhVmKIezmE0UEory22
 Z6UJljlvSvNzQpZtlBwpTZxTCq+sFKF1kEbjWjxIJepxRHGmUnRMqUq32YVOGi9IhM0bsmoj7
 XymwR+vhk67VOujJ16IzU9u9hR4UPirmRcdw1eJkwi1a10m3vv7ufM13C2lUkKt8guh9ox4qd
 Mgi7+d45NjksvW9yuEQ3XilMD8cE+Bh7exor8nUUyugESzJEXn3wXaofh42LWDvQcyZbI94rX
 tpy4uWpN/ZsfH7/LRSYLw7IjXYoz9Lvj9zTSfBzwf1uQTstvpXbENOfzhTivyZCjGSJKVvayT
 OjEdLnAl2jVgqiRtaumaNPHKAnugdEYVGB7xBnEs8hyKxmQCcQDnabcAq50nqDUDUlWntScKV
 qtU1izIf4i8bcu2nH4Hioss3Q/XKmhBOavnVr54El+dGLSHukjueCly+gpXeL63vQGSMD0T8g
 vHiQElQdwQe/Kfz3MTMyYspYX+wtj6pTYKzzzxfA1diWkb01qVZVFL47vrjRpl2i2+mqmL5CA
 O5YjjQFoqJ5jh6iKjJzZFFcXiKq6Nkh0Lvuj9xR4dkRs8bPIRxYErL98BOxZ8gdXkelpJ8gtl
 Jqil4YB/pe6WtVntq7Nq7n4JuMhBbJsDI0T52q2PNzsmAPfp6Eh+C99EJ1xK9Hy2ByjratgEW
 j0MIKIrpj6zv6jRSsrtDE3L/iyNNJM7fzktSGUyZavkkeutx7kd/n4Iuk/VEIax4+9uEs0JXs
 MPcgIznD47m1mLQTSwdlPUEDiGB0pZhj7SD8Xk+7mMRBlOtE6Fnu5sILbzNgPGPiJd59DND/N
 Jc6/VSsZZTe0FMizoG1Yf1QJ6N7C/LUOEt6a0Lo6ppCwirhGe6f9WOdok/xUlahp5zhNCSXrA
 Fe4EB69FuFG3myHPXO0qi3Cn1ZKcrXx6Usu1kt5eySnBrQguKM5pk0VbXR/w99uXpEk/Usqy2
 30/b4RvZuI0YZe4e3NfjakjzNwAqBjEKkaOLeI0qjHGaucjSyD8pC1Kx6dDHSVmf438sLihUn
 t0PhzYxyVP5T9oxvYZBp/Tq285gWcXkg2CFwr9XYo/miQaeC9iTEbmcq2YGUEEGn+2kTeWSzx
 uPn/eBL0DHRVVQ64kDcaK6ZjI6Xk3MBMyCzCUJg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_092443_883121_AF8DFB37 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the BCM2711 doesn't have a AVS TMON block, the thermal information
must be retrieved from the AVS ring oscillator block. This block is part
of the AVS monitor which contains a bunch of raw sensors.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 .../bindings/thermal/brcm,avs-ro-thermal.yaml      | 45 ++++++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
new file mode 100644
index 0000000..7dce05e
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/brcm,avs-ro-thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom AVS ring oscillator thermal
+
+maintainers:
+  - Stefan Wahren <wahrenst@gmx.net>
+
+description: |+
+  The thermal node should be the child of a syscon node with the
+  required property:
+
+  - compatible: Should be one of the following:
+                "brcm,bcm2711-avs-monitor", "syscon", "simple-mfd"
+
+  Refer to the the bindings described in
+  Documentation/devicetree/bindings/mfd/syscon.txt
+
+properties:
+  compatible:
+    const: brcm,bcm2711-thermal
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+        avs-monitor@7d5d2000 {
+                compatible = "brcm,bcm2711-avs-monitor",
+                             "syscon", "simple-mfd";
+                reg = <0x7d5d2000 0xf00>;
+
+                thermal: thermal {
+                        compatible = "brcm,bcm2711-thermal";
+                        #thermal-sensor-cells = <0>;
+                };
+        };
+...
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
