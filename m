Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5A11EA127
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 11:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i4fjxSPE6MJu1u6CHQLbisMVGZDVEvSlsOh8/fjCaI8=; b=S399pd3RtWrl/7ns7YNOp4Ivrh
	5WPA44oZSGlmK80RnYVIttwcWivPrCpjTB5qhtpwVeq0SR12wYxcL47j5z0QoXKTxn8lZIGR6wGa6
	1IeW2rTFx6Qu9fJI/iOS+eAUuzN4l2RJfLV+DFCabAuv1fss1ItaCisO41+uirkgTPzmceE1kWbu6
	exQp6h3hGhl28St6JgQpD8oZzunxgWboyjHKpjU5mqiqI0kdIzAjn0HuWGqFCaVfD+sEvorSH+fKq
	ZEJRR8/0VwstF6J01+OXhTcnr0kySkaysIXOst98IjZr6MtuGB3ZFAFHoAc5qT4TBKlAsuCobD8pj
	E0GKnySw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfh10-00033o-Kq; Mon, 01 Jun 2020 09:45:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfh0V-0002kP-KL
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 09:45:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99CE9101E;
 Mon,  1 Jun 2020 02:45:20 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9CF803F305;
 Mon,  1 Jun 2020 02:45:19 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Will Deacon <will@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 1/3] dt-bindings: Add ARM PSA FF binding for non-secure VM
 partitions
Date: Mon,  1 Jun 2020 10:45:10 +0100
Message-Id: <20200601094512.50509-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200601094512.50509-1-sudeep.holla@arm.com>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_024523_720724_05E741D2 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree bindings for a Arm PSA FF-A compliant non-secure partition
at virtual interface(VMs).

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/arm,psa-ffa.txt   | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,psa-ffa.txt

diff --git a/Documentation/devicetree/bindings/arm/arm,psa-ffa.txt b/Documentation/devicetree/bindings/arm/arm,psa-ffa.txt
new file mode 100644
index 000000000000..ee543fb5b397
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,psa-ffa.txt
@@ -0,0 +1,47 @@
+Arm Platform Security Architecture(PSA) Firmware Framework(FF) for Armv8-A
+--------------------------------------------------------------------------
+
+This binding is intended to define the interface the firmware framework
+implementing the Non-secure partitions/endpoints(mostly VMs) as described
+in ARM document ARM DEN 0077A ("Arm Platform Security Architecture
+Firmware Framework for Arm v8-A") [0]
+
+In the case of a Non-secure virtual FF-A instance, the hypervisor
+(e.g. Linux KVM) can use this binding to create and launch VM partitions.
+
+The SMCCC conduit available in the VM partition itself is used and hence
+there is no explicit binding to specify the conduit used for PSA FFA
+interface.
+
+Required properties:
+
+- compatible : Should be one of:
+	       "arm,psa-ffa"
+
+- One or more child nodes, each describing an PSA FFA partition using the
+  following required properties:
+
+  - compatible: Should be one of:
+		"arm,psa-ffa-partition"
+
+  - uuid : The 128-bit UUID [2] of the service implemented by this partition,
+	   represented as a string.
+
+[0] https://developer.arm.com/docs/den0077/latest
+[1] https://tools.ietf.org/html/rfc4122
+
+Example:
+
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	firmware {
+		psa-ffa {
+			compatible = "arm,psa-ffa";
+
+			partition0: psa_ffa_partition {
+				compatible = "arm,psa-ffa-partition";
+				uuid = "12345678-9abc-def0-1234-56789abcdef0";
+			};
+		};
+	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
