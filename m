Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237C0132E31
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:16:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YkqzhAYhCTWbi2xiP7xxu+Dn8Q8DmCRb4IJ4Bu0zhz8=; b=SQ2gKFhNqib/g5IS6Ax5bJ6+91
	NnToAV0XRtMvD+Mv//d/rvzEQuagdTXc7G1qFGgWXJVH3dbQAnlgt/iNOwtDxAT/4PcAn4h5HFAag
	66kkhMcZAbA7JExXlnqfMil9fKX3gFJPxRophEP+3IPQkJpQyaYcSgCT7q1qWI0ea7WoySKITupFB
	/zqJdAB1FovALLqUMblrq+3yz5V5mtmXHbZ9XlaH2vZivUkozyl7y2lTwVupfEMEOX3tMsZKKw7kO
	3zP1295r9jZD5AxI56MIxKUhe09ZgdaStZfRckzxKLVvphRbmbdj/a5lDLwebJ01BvFOZMnhxpSiD
	oPP03MfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotPF-00044e-15; Tue, 07 Jan 2020 18:16:41 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotOo-0003u6-Ni
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:16:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578420965;
 bh=u7twVNjh2D9zy5OC10Di3QMaWd8qSsrGW9KSWjAYn3g=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=BJDhWiM+5P9ZadhIRk4bTNFKVwW+JTvjQQxBte6Z9/lEi/hUMLjX6X6wI0UsdG/9q
 F4Cwa0tCAECdod5u4KiSRbsYOd1o4Z/dYru23Wk+v5LX/L1GSxqimU6Rt6Y750q8m7
 H8qhNz2GpltKbfQYfiCht8+4Noq2Ir1n+/dUhyGU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.154]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1M6llE-1im9Zy3f6U-008MHP; Tue, 07 Jan 2020 19:16:05 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V3 1/4] dt-bindings: Add Broadcom AVS RO thermal
Date: Tue,  7 Jan 2020 19:15:54 +0100
Message-Id: <1578420957-32229-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578420957-32229-1-git-send-email-wahrenst@gmx.net>
References: <1578420957-32229-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:JNoVLD/m7l4v/En9GYWWvMF90Sn/VtIIReEvqeT1ahKtoJ1LkyQ
 iAtYBYTb+NwFUEidrSbyieU8GW35aLLzyYQnuJTNqPmnSbG2PnoXvhwHuDsxvWSwUy6mkwH
 8ZEA1Til7h0N3jLmIx+k620EBhcirK4sOEO1dRoCyQ0YuU8w1s6WymV1wzmIWI654AscZ9o
 J8IrwX+k75qsiQ2SovoOg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1m7ABTNKeYs=:dwivK5EisaHNhkVyhbAPYp
 kvAhhRRErs0LcQc8ZbpEAx/yq5NZ5xne4VViuO86ljYW/FoCw48Pz8APxSxRAFasQ5XgUJLP5
 TwCvRfPRrdfLO3tE5KvLJTW7FJPetXyuRGB9vpPgp8f7UmdUL542Li3JvUZ33oouVIjMEPek6
 eJ7EymgiCWO2bamuE79cyu30HsDd1LGBBQrzvFwQleMU8BbbLmaiQtIfSxdPKqyjHm+bvLtDP
 uK/ei0MTgAsXPpgIdHoGsb71RQ0HY5PtjoLmMsNb3Nvcu9FNWgu+ybES1IfFGXvrkd1C8fgCB
 Q5VlqL1b7kUD0EHnh7rjg8rGKBiaqdQCE0rsj3GJDHLnhxpSblechYL1CIMYh0+YmL8VtDREe
 qzbJ3wdWDTKF1F8njEuuvjb05/C/4X6IzbpEWS5uxJ9wVdqWX2b6MpQQ7x7H4B88IHb0/IU+D
 vdYY8z+R3R5MkQzZJngkBLWIif2N/omDDhmHv+9TJcHmvbZJaDpHIfZ0rdtGe50zbA3DaQjjs
 bDwDylhHw0I+Hc8nBJUH7PN84Fiiime6VMByUd9PFiy9cpm2bP6AwEi1Mwefb1URWcmgwnYEe
 JmxWZoJ8JfGcW8ITKWyEuka8Ux5E2Ci1R82cWYUo5brxrZvFcYg2pUnUwpOysMZzLKCUWy2FL
 QwuEZfTk676yMpqbF1y0Xsuf+c9Q9pOvwzC3N+VKiDm3UOdnS5kmkaDAtRFJVCderrdeMv11a
 S2iZm2wNIvmHXsogK8savP05nVqWUbyf8h2vR0jlTRBz2kAyQmtZrJyPLBjww/6Vrx7SeElxk
 alcdmtEi3tdo6eMkRsFebFaCUPqItnfbJbHbXJ4udFSh4fsjduS3UppT4JbCCzqm+XNGVrUqR
 BT9vCmRbySk5wIT3D0Eg76wFeIZv4OSRzQguvVF9jkBp1Rpg++L8ryT16Wlox17PM5Er2T8Hn
 DvtQYG2N0H4cY1aJW/zPeQBWHH1uSqJfAew37CAL+skNaSTa0vFcZ767XBCfg6RLfXyKh85qm
 Gt8gRY7Js2eGw9uR74OlrgJ4TIun187UAelKzqsGADORGyoHo1fMJuk0Mdiowqu+iX5qn3+cE
 hCcZPwE2VuH0H9J8fUNRrotICpKdurbLvl40ubrd7Ke2b80dNLZfLbLnOKHSQyYy7TFJ8FgZ0
 eSlGh0KXP7kZU1n2gIGKqpYdthjTXDHyHw9QqRUStYpd/WtcY5d4gxnomwYCghPPhaIzjeHkD
 ifQLPwagP2YYxjG2ZH8f8ZQSh3kEP4r9bbTGpIw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_101615_067475_AF11981B 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bindings/thermal/brcm,avs-ro-thermal.yaml      | 45 ++++++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
new file mode 100644
index 0000000..98e7b57
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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
