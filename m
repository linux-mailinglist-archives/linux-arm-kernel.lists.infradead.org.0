Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 926101C4F31
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 09:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UgZXkAVCvf3chz/0DTrW/hGYHjy9MacucynrwF+UU8=; b=g+8r1UiHAMhasd
	HWnnv6OBCNif6tKz/vL+KpDGAAqboG726MT9P5s35c6wecZTf4iBvY9V6fbmWuKV+dy4zWM0p4xao
	xxkvxEnktRWLGAFnrVI8WKZBT1p7JHXvNCDqIcd6pkeEGoYEJ6TmGR/VHJrCJ7HMUAOJZOAM8XxKG
	E0A4qoJ8ZarvTjva+QFXHmaI2gfKq+NhGYGE8GzlXrkTA1zz/LjwIvHBB+GYdpitOgg9vok5lmfsz
	aoHGGgc8vPwMS62gSzksTzWIkd2ny1WMHUn76NiyVEk9RmUlpQFOPs0WB7MnsXVgpoIlzsiZljaEj
	t++jiy1dw6xyOtp1RWUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVs67-0004Rq-Mg; Tue, 05 May 2020 07:34:35 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVs5B-0003gK-Bp
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 07:33:40 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0457RaST021748; Tue, 5 May 2020 09:33:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=95ku3/6d1RqLRL3+9BXCw/qoEPmvHEydQikv3nokkHE=;
 b=wq54FGb2PUTIfZ0Z4HWOhJtYsxNX08QLoHAcCvalnRvHeOwIkMrGccNgOT5kIC7rpGdW
 7R20/3opU85slWnUWzV9CcVaryFNqiNQyPU4nOfznM5dmRkJvTMxsXLGqxsKKo58MFO1
 DYKOXEfDQeCMx6J9oX8CpMHedKRokE8ZCBoNDUqzf8rwl5Sut/CaDYpHjd2WwCJHoaEU
 mcL9aUEizkntHgg/ldYqosPhOVgLvwXBCYCodWa0ULgrxL58W+WxtbJN3fPKOamuaNim
 rVrAio9RVpA8NxQAw0bdW73n6EH3dnulJG1bLvldrmhSAyK9eYR0xE963eYNdiHmgAN5 Vg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30ryrj6f49-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 09:33:26 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0B30F10002A;
 Tue,  5 May 2020 09:33:26 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EEE642A4927;
 Tue,  5 May 2020 09:33:25 +0200 (CEST)
Received: from localhost (10.75.127.48) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 5 May 2020 09:33:25
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <gregkh@linuxfoundation.org>,
 <loic.pallardy@st.com>, <linus.walleij@linaro.org>
Subject: [PATCH v3 1/5] dt-bindings: bus: Add firewall bindings
Date: Tue, 5 May 2020 09:33:04 +0200
Message-ID: <20200505073308.22914-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200505073308.22914-1-benjamin.gaignard@st.com>
References: <20200505073308.22914-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_04:2020-05-04,
 2020-05-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_003337_725637_DF505551 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add schemas for firewall consumer and provider.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
version 3:
- add description in firewall consumer bindings
- add Linus reviewed-by tag

 .../bindings/bus/stm32/firewall-consumer.yaml      | 36 ++++++++++++++++++++++
 .../bindings/bus/stm32/firewall-provider.yaml      | 18 +++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/stm32/firewall-consumer.yaml
 create mode 100644 Documentation/devicetree/bindings/bus/stm32/firewall-provider.yaml

diff --git a/Documentation/devicetree/bindings/bus/stm32/firewall-consumer.yaml b/Documentation/devicetree/bindings/bus/stm32/firewall-consumer.yaml
new file mode 100644
index 000000000000..d3d76f99b38d
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/stm32/firewall-consumer.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/stm32/firewall-consumer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Bus Firewall consumer binding
+
+description: |
+  Firewall properties provide the possible firewall bus controller
+  configurations for a device.
+  Bus firewall controllers are typically used to control if a hardware
+  block can perform read or write operations on bus.
+  The contents of the firewall bus configuration properties are defined by
+  the binding for the individual firewall controller device.
+
+  The first configuration 'firewall-0' or the one named 'default' is
+  applied before probing the device itself.
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@st.com>
+
+# always select the core schema
+select: true
+
+properties:
+  firewall-0: true
+
+  firewall-names: true
+
+patternProperties:
+  "firewall-[0-9]":
+    $ref: "/schemas/types.yaml#/definitions/phandle-array"
+
+dependencies:
+  firewall-names: [ firewall-0 ]
diff --git a/Documentation/devicetree/bindings/bus/stm32/firewall-provider.yaml b/Documentation/devicetree/bindings/bus/stm32/firewall-provider.yaml
new file mode 100644
index 000000000000..299824c620ea
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/stm32/firewall-provider.yaml
@@ -0,0 +1,18 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/stm32/firewall-provider.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Bus Firewall provider binding
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@st.com>
+
+properties:
+  '#firewall-cells':
+     $ref: /schemas/types.yaml#/definitions/uint32
+     description: Number of cells in a bus firewall specifier
+
+required:
+  - '#firewall-cells'
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
