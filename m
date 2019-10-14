Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60ADED5EBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 11:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SA5GGpOtJ0ZOLparaJvu9ghU8p1Da9joMjrRAglSB/8=; b=moEl9tWBOrnlnR
	bQ7q5y0p2DHUUPHRjEeE+A7c6YmCjSGdetarnuYp2M0tD1svym9HBrZToP9iMBuo3kUBd5wp6XNqh
	4zdVpALAHvfnF8ghs3VgeOE75LHi6rfrF+W1XuFUgS7F0Ty7cCyBITlMnfdhbPxT9KQookGRniY06
	VkW9/Fq+x8BgqOP56wXdF7rjEVb3Erwdrqe7gjOivKUyeZWzajnJNNRDxUcYjLmUdrb74r30q2spS
	7g/pdFUiT+It6jr2UaFT3oX1VYePJd8WFE48pYKR1t6NeexZhtvhpWHVdC3FL3z9k7COfhrTGyS5X
	1824h7NuSzlwpsSJSjYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwZx-0003Cg-PD; Mon, 14 Oct 2019 09:23:49 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwZl-0003C0-7e
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 09:23:39 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9E9Biq9022257; Mon, 14 Oct 2019 11:23:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=gEmBsIEorhGPSpDkFEP6FJmifXJuypR7WyitQNE9F3U=;
 b=IFqMGZb+TTWAv7lhNQiinPV3XsSxyxdw6e/u3hIocGh75+SUDJ52xgajrfxq2PIxOZ9T
 O/U6R+Jk1PL8X2a1Kxh476tABtb5XWgeTuzzMLOjTWKqWFgF13XVn6vSP01kvLgxkbav
 2el7XkOb22YokGc/v7MlbkVdH6c8JdVperl5hlEvgPqbGv/zUAY1P1cxdzoKUmIiwOp4
 nm+m8Z0ld5DRzlauPqP7gJ13kRXhUzZBfOcy/e8JTmNn4MvsHcm5cEDH2dFyazqlBDSn
 gquyoiW7aRZhBEmlakpzjvIYpxaF/tgEROKMNBbwAsjDy3bPYnW2iyZMZ3Kkfs/k+/Lr BA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vk3y9hshw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 14 Oct 2019 11:23:19 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B2A6510002A;
 Mon, 14 Oct 2019 11:23:18 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A2F032B189A;
 Mon, 14 Oct 2019 11:23:18 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 14 Oct
 2019 11:23:18 +0200
Received: from localhost (10.201.20.122) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 14 Oct 2019 11:23:18
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>, <robh+dt@kernel.org>,
 <alexandre.torgue@st.com>
Subject: [PATCH v3] dt-bindings: timer: Convert stm32 timer bindings to
 json-schema
Date: Mon, 14 Oct 2019 11:23:16 +0200
Message-ID: <20191014092316.24337-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-14_06:2019-10-10,2019-10-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_022337_568717_F76D7687 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 timer binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
changes in v3:
- use (GPL-2.0-only OR BSD-2-Clause) license
- fix identation
- add additionalProperties: false

 .../devicetree/bindings/timer/st,stm32-timer.txt   | 22 ----------
 .../devicetree/bindings/timer/st,stm32-timer.yaml  | 47 ++++++++++++++++++++++
 2 files changed, 47 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/st,stm32-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/st,stm32-timer.yaml

diff --git a/Documentation/devicetree/bindings/timer/st,stm32-timer.txt b/Documentation/devicetree/bindings/timer/st,stm32-timer.txt
deleted file mode 100644
index 8ef28e70d6e8..000000000000
--- a/Documentation/devicetree/bindings/timer/st,stm32-timer.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-. STMicroelectronics STM32 timer
-
-The STM32 MCUs family has several general-purpose 16 and 32 bits timers.
-
-Required properties:
-- compatible : Should be "st,stm32-timer"
-- reg : Address and length of the register set
-- clocks : Reference on the timer input clock
-- interrupts : Reference to the timer interrupt
-
-Optional properties:
-- resets: Reference to a reset controller asserting the timer
-
-Example:
-
-timer5: timer@40000c00 {
-	compatible = "st,stm32-timer";
-	reg = <0x40000c00 0x400>;
-	interrupts = <50>;
-	resets = <&rrc 259>;
-	clocks = <&clk_pmtr1>;
-};
diff --git a/Documentation/devicetree/bindings/timer/st,stm32-timer.yaml b/Documentation/devicetree/bindings/timer/st,stm32-timer.yaml
new file mode 100644
index 000000000000..176aa3c9baf8
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/st,stm32-timer.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/st,stm32-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 general-purpose 16 and 32 bits timers bindings
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@st.com>
+
+properties:
+  compatible:
+    const: st,stm32-timer
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    timer: timer@40000c00 {
+        compatible = "st,stm32-timer";
+        reg = <0x40000c00 0x400>;
+        interrupts = <50>;
+        clocks = <&clk_pmtr1>;
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
