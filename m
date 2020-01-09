Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87EF135BD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:54:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mw7NzJsf07fsz0S2vsTrA9CkO/QpSCymHyNXKKICvsA=; b=O8TcGqSxJPIaS9
	ogWNXPzz5k5Y+Yexk9kmEGwJGakRH/GMPTAHV3SVcGGhMZudV0lActZeuQiYMTIqtTGAaxpWl9FLa
	yQpGZuxjDtJtUt6ND+MQHAE6ED0VUnvFVPYddYzZVFrXpZz4qtuIQM7F2rdTD5IE/YjRfWeBG0j0u
	NucFCkVFcke+gLnohQL8Gipf2ifZcjs5SmGcYXsnCgeYm22TBfzClPQFwlxD+Tf624FZRkYKS5S0K
	VMIQLhjXNIDHXvVssyaxIlxRnB+sh2ULx5IWA/ks9D4sK/dQe1nNS6Hv+wXywv2Ia86eMuRI5oCqa
	2+vDtI4tyl7svCan7PBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZCf-0004Li-98; Thu, 09 Jan 2020 14:54:29 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZCE-0004B3-9C
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:54:04 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 009Em4wF008813; Thu, 9 Jan 2020 15:53:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=629dOksb5/iI4KLG7sR2j5/emK+nODelYGOR4Y5vU2c=;
 b=s+TJlgJ0xxrnedkiN2b7qG3TnX7yscz5rDC1Ng9b59gh7yr8vGc2gO6f0pO8weUhgjcX
 4J/Nks8Q0eSW5Cz2DUtibfgYYTdtak7UaNhhDhWZtzLgX9XPTU/N4W3HnRZNfAgMvFn0
 55+JhoKnGPY4htgpxZnWRsmoUxzRgxR/BnX/A+6hv3rMvWUgQNe1fVmM/3h6mrN9fDtJ
 xQE3WywOZW21t2Ixn7Y9pHn1ZMVYsIEv3uYZR0js+9/tuSvza4oy2klUFX5dZbI3LATA
 VqCJMaRLlx9Zje4V/8DLYLLPdXr7xPFjIV5CZFV/jpvTJUaj4kNb4gPT0KgN95+idd6t YA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2xakkb2gwt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2020 15:53:44 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BFF85100038;
 Thu,  9 Jan 2020 15:53:39 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id ABABD2BD416;
 Thu,  9 Jan 2020 15:53:39 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 Jan 2020 15:53:39
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <linux@armlinux.org.uk>, <p.paillet@st.com>
Subject: [PATCH 1/3] dt-bindings: timer: Add STM32 Low Power Timer bindings
Date: Thu, 9 Jan 2020 15:53:31 +0100
Message-ID: <20200109145333.12260-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200109145333.12260-1-benjamin.gaignard@st.com>
References: <20200109145333.12260-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-09_02:2020-01-09,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_065402_691702_C573BBDD 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document STM32 Low Power bindings.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../bindings/timer/st,stm32-lp-timer.yaml          | 44 ++++++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/st,stm32-lp-timer.yaml

diff --git a/Documentation/devicetree/bindings/timer/st,stm32-lp-timer.yaml b/Documentation/devicetree/bindings/timer/st,stm32-lp-timer.yaml
new file mode 100644
index 000000000000..ca040b96dc47
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/st,stm32-lp-timer.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/st,stm32-lp-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Low Power 16 bits timers bindings
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@st.com>
+
+properties:
+  compatible:
+    const: st,stm32-lptimer-clkevent
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
+    clkevent: clkevent@40009000 {
+      compatible = "st,stm32-lptimer-clkevent";
+      reg = <0x40009000 0x400>;
+      clocks = <&rcc LPTIM1_K>;
+      interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
