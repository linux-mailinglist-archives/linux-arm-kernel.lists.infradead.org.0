Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D902C14BCF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 16:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyGMPH8k3AWb1iIg5GAX3cDI9iTM3pf83n3vrG5WwJE=; b=NWarn8ch/G/lZr
	oQNq31gl9i0RLSEG9mQR4CaE1tmaB5QilRujSCsRL03Bth6J2ut0T6vIA2P7Hir+TuwPCroJrAO1f
	D97lpHWdRlDHdvj3gCtRj3qzU60vHNftB2XwHW1QJR5nNmLKLE3LlJgXXvO7v6xcBWdTViMlo+g3i
	zhmInEcv32DhOzUzNi6iSyOs1xWx/D+o95Q74qCNKL6cwb+UMR+dGyI56OtyGbCwHiIClYxZIoKtF
	KPZ+TgW/2fqs9bUl5p/Vr9nCn8dwK0alCglXisJ91gMIdqqG6wdzKUniQjFop7Ln6MiFu/B/323yW
	IuIc9CP+PwTqAUAkVgJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwSwv-0003pb-OJ; Tue, 28 Jan 2020 15:38:45 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSwe-0003nw-SV
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 15:38:30 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00SFYHYD022173; Tue, 28 Jan 2020 16:38:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=yJR2C+EpBSzUw5sIIGNWwjdePietfS+B5xT/JfDleho=;
 b=YNTmuUYaa7lugZ+4sHsqXuUP8CPLAlxE23q2v2eGmLTxkcFVkUKugBH5tD5UrcVL7WXJ
 IcF1H47hp2rPZzXQpTr9JlNpvW6fHsjcLdJABgEHJYF+TXa+z5TGuPRoLLbu0lV+4nLD
 juKvw9VxdN/yji5FFE0KMvzMrNEuJsLxBDQWiWxw6ldyRku/gkMVp7oNHYZcOH9Od+vi
 tCR7FNg9S4bMKDw0zhwlyYyLv5gG7jjr9vYHq/xtaqJMiswYM5BeWgM8XzbKg1Jdh48w
 AVmx6U3k5rXeWHvjnZthCFdCiPDXfuoqg5lwKTcdAQqPZRHh+FX9RKTDhKL1I1s9wjAJ 5g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrc136p58-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 16:38:23 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0321510002A;
 Tue, 28 Jan 2020 16:38:23 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E42052BF9D0;
 Tue, 28 Jan 2020 16:38:22 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Jan 2020 16:38:22
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <broonie@kernel.org>, <robh@kernel.org>, <arnd@arndb.de>,
 <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <fabio.estevam@nxp.com>, <sudeep.holla@arm.com>, <lkml@metux.net>
Subject: [PATCH v2 4/7] dt-bindings: bus: Add STM32 ETZPC firewall controller
Date: Tue, 28 Jan 2020 16:38:03 +0100
Message-ID: <20200128153806.7780-5-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200128153806.7780-1-benjamin.gaignard@st.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_05:2020-01-28,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_073829_381879_503EB2FB 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 loic.pallardy@st.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, stefano.stabellini@xilinx.com,
 system-dt@lists.openampproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document STM32 ETZPC firewall controller bindings

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
version 2:
- use ymal file to describe the bindings
 .../bindings/bus/firewall/st,stm32-etzpc.yaml      | 41 ++++++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/firewall/st,stm32-etzpc.yaml

diff --git a/Documentation/devicetree/bindings/bus/firewall/st,stm32-etzpc.yaml b/Documentation/devicetree/bindings/bus/firewall/st,stm32-etzpc.yaml
new file mode 100644
index 000000000000..a162e31e4529
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/firewall/st,stm32-etzpc.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/firewall/st,stm32-etzpc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STM32 Extended TrustZone Protection controller
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@st.com>
+
+description: STMicroelectronics's STM32 firewall controller implementation
+
+allOf:
+  - $ref: "firewall-provider.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - st,stm32-etzpc
+
+  reg:
+   maxItems: 1
+
+  '#firewall-cells':
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - '#firewall-cells'
+
+examples:
+  - |
+    etzpc@5c007000 {
+      compatible = "st,stm32-etzpc";
+      reg = <0x5c007000 0x400>;
+      #firewall-cells = <2>;
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
