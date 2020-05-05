Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C869C1C5DF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=L4Qpenvq5SivOPgEkUKjMiEr/HLch0VgP+pM2U0FqTg=; b=holMe33s2e9kifAwDcuEA/q/dA
	lJSxC3PQeNSNIYwdrGeouMyO5GGg5TPtwSsMT+ZtqQN/r9gNA0CxdEZ/oRUYoUjBSHrnbqAsrNMXV
	H5WwmBSGg3YLDUOJcFrAc8WbBfA9mTvUOCl4QryNVnEky0eL2VRaq4oZ6x7bYN28qXx0fKXYvSu3e
	BL51nvK+WGpIWxl2TUbPLhCEHVqH9uwB2TRV8Nn8FOVi9dyPy+d0mZlwQpOFxFdyjScfMbitjvjJT
	PSsYTezQ6TXmZL3CA5qySAdILx5svCigvUxTYSLQKbE+EOzQ9DvsJuYvYyQ5We9C9ZcusbgopayIw
	LsvyCtfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0ox-0001zr-AC; Tue, 05 May 2020 16:53:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0o2-0001GW-To
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 16:52:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14D8531B;
 Tue,  5 May 2020 09:52:30 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BA8E83F305;
 Tue,  5 May 2020 09:52:28 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 00/16] dts/dt-bindings: Fix Arm Ltd. ARMv8 "boards"
Date: Tue,  5 May 2020 17:51:59 +0100
Message-Id: <20200505165212.76466-4-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505165212.76466-1-andre.przywara@arm.com>
References: <20200505165212.76466-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_095231_017627_4CE8149C 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Date: Mon, 4 May 2020 12:43:18 +0100
Subject: [PATCH 03/16] dt-bindings: ehci/ohci: Allow iommus property

A OHCI/EHCI controller could be behind an IOMMU, in which case an iommus
property assigns the stream ID for this device.

Allow that property in the DT bindings to fix a complaint about the Arm Juno
board's DTS file.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/usb/generic-ehci.yaml | 3 +++
 Documentation/devicetree/bindings/usb/generic-ohci.yaml | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
index 10edd05872ea..20664c28bfb2 100644
--- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
@@ -74,6 +74,9 @@ properties:
   phy-names:
     const: usb
 
+  iommus:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
index bcffec1f1341..ff6c04cde695 100644
--- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
@@ -73,6 +73,9 @@ properties:
   phy-names:
     const: usb
 
+  iommus:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
