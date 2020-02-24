Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 916F316A779
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 14:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bES/u9zKzdpCWoNgY7YDakyshgQW21qbPrmr8iUBTo=; b=n/da/CEwxsj4W3
	3FISF9AGODSljJOknbsUU6b2OwcWvu0DwAUiZQjzoQNLt8iwXuQLqjVceLinx7JrjUUR/XHi451Cs
	WUjog7qIvMIK1b4cDVxQ5Qw3JHY0qHAXVFZQyTFwq3S4qLnGsMlg/posnYwewUuV1CjOabn4Ltd1n
	XwDY/yfHzD+Hhedkqu+Kbrb1Gt4sme2xb9TrXnGMOBsszPbe9AkyYnSKVOT8jPgJ0JMQhX93PUrDm
	bcaKTW6OXe9Fb0HI3LyioM0mCgu8gOC05QiUd15X6W89TFOKNTEehD5ULkWLMfmMa8AE87sMtBIIl
	XRGVtsdQLMxPcYCAFD+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6E0a-0001ki-Ou; Mon, 24 Feb 2020 13:42:52 +0000
Received: from smtp-fw-6002.amazon.com ([52.95.49.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6E0D-0001aT-Vl
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 13:42:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1582551750; x=1614087750;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=my/Ok6JPA42HLxZspCT15M0BUA+/ezeccCHn6qhmTlM=;
 b=CFMbstWx6UmvCEPHYt+C9jWhlxGUfkGPcZvpcgqXbXPuFcZ6UigVqZGT
 cvQ2NIRtSfPi9P9emw3t5ELya8bbqr9Ww28JVP5mSPq2UnEEZEpYUy7wJ
 YIzmRcvY20P0W/m/S3wGsUjgg6Pe/mEI1viZEENS+qhZzkE7B4PM3AR9/ 0=;
IronPort-SDR: 92By6bVHUuyFbMYjsjp3guiM2f9wJzCpSQCIiWb35ygw2NxszMLBYZYvmEnYNwv3StgEXzfo+T
 6tHEuDQmmwpA==
X-IronPort-AV: E=Sophos;i="5.70,480,1574121600"; d="scan'208";a="17903947"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2a-c5104f52.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 24 Feb 2020 13:42:13 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2a-c5104f52.us-west-2.amazon.com (Postfix) with ESMTPS
 id F0C87A1954; Mon, 24 Feb 2020 13:42:11 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1236.3; Mon, 24 Feb 2020 13:42:11 +0000
Received: from uf25486d27d2d5b.ant.amazon.com (10.43.161.8) by
 EX13D01EUB001.ant.amazon.com (10.43.166.194) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 24 Feb 2020 13:42:01 +0000
From: Talel Shenhar <talel@amazon.com>
To: <bp@alien8.de>, <mchehab@kernel.org>, <james.morse@arm.com>,
 <talel@amazon.com>, <davem@davemloft.net>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <catalin.marinas@arm.com>, <will@kernel.org>, <linux-edac@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v6 1/2] dt-bindings: edac: al-mc-edac: Amazon's Annapurna Labs
 Memory Controller EDAC
Date: Mon, 24 Feb 2020 15:41:31 +0200
Message-ID: <20200224134132.23924-2-talel@amazon.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200224134132.23924-1-talel@amazon.com>
References: <20200224134132.23924-1-talel@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.161.8]
X-ClientProxiedBy: EX13D35UWC002.ant.amazon.com (10.43.162.218) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_054230_201060_6CAED45D 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.49.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: hhhawa@amazon.com, benh@kernel.crashing.org, jonnyc@amazon.com,
 ronenk@amazon.com, eitan@amazon.com, hanochu@amazon.com, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document Amazon's Annapurna Labs Memory Controller EDAC SoC binding.

Signed-off-by: Talel Shenhar <talel@amazon.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/edac/amazon,al-mc-edac.yaml      | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml

diff --git a/Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml b/Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml
new file mode 100644
index 000000000000..20505f37c9f8
--- /dev/null
+++ b/Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/edac/amazon,al-mc-edac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amazon's Annapurna Labs Memory Controller EDAC
+
+maintainers:
+  - Talel Shenhar <talel@amazon.com>
+  - Talel Shenhar <talelshenhar@gmail.com>
+
+description: |
+  EDAC node is defined to describe on-chip error detection and correction for
+  Amazon's Annapurna Labs Memory Controller.
+
+properties:
+
+  compatible:
+    const: amazon,al-mc-edac
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+    items:
+      - description: uncorrectable error interrupt
+      - description: correctable error interrupt
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      - const: ue
+      - const: ce
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    edac@f0080000 {
+      compatible = "amazon,al-mc-edac";
+      reg = <0x0 0xf0080000 0x0 0x00010000>;
+      interrupt-parent = <&amazon_al_system_fabric>;
+      interrupt-names = "ue";
+      interrupts = <20 IRQ_TYPE_LEVEL_HIGH>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
