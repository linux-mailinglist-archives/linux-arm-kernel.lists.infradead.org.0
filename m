Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BA51C881C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RX8mN9hXL968C4aocxFAPD0KJGzvj1WBFGFrimJjpVw=; b=c9g6r0qkRXOZyU5klSPClreyjh
	5lcpAfdGiG862inCimM3xstchdD94iQYZVweeymZSsYOA5k1m6NaS3Uvs9Saxag3b7e/tMOjU8sxy
	R4aC3SKlMHaqyjO4HyQEu7awUF877B3Nhqxu/aW/BOkegnd8ZTx9wq0dl2xiA+YcjC10V4xqq3DYb
	yszzIh0N0ow6Z17lku3YlqS4gWlZKu6Ye6P52xhk/gNotXB6rurbMRxcUKuiSquY7vK4dyQ3pk31b
	gct5q3K2bYm7jGO41YylToTFuxq7aOitNkpZboM2+9s1zvbcboCDv2qgHvVL1yIlemK8E5krU5hy1
	rzExV/ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeet-0001FV-Dr; Thu, 07 May 2020 11:25:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWedy-0006im-KK
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:24:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 280B31FB;
 Thu,  7 May 2020 04:24:46 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E89E73F68F;
 Thu,  7 May 2020 04:24:44 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 02/17] dt-bindings: arm: gic: Allow combining arm,
 gic-400 compatible strings
Date: Thu,  7 May 2020 12:24:15 +0100
Message-Id: <20200507112430.183940-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507112430.183940-1-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_042446_724587_12E98FBB 
X-CRM114-Status: GOOD (  10.47  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arm,gic-400 compatible is probably the best matching string for the
GIC in most modern SoCs, but was only introduced later into the kernel.
For historic reasons and to keep compatibility, some SoC DTs were thus
using a combination of this name and one of the older strings, which
currently the binding denies.

Add a stanza to the DT binding to allow "arm,gic-400", followed by
either "arm,cortex-a15-gic" or "arm,cortex-a7-gic". This fixes binding
compliance for quite some SoC .dtsi files in the kernel tree.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/interrupt-controller/arm,gic.yaml   | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
index 9a47820ef346..3ab258c82930 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
@@ -39,6 +39,12 @@ properties:
               - qcom,msm-8660-qgic
               - qcom,msm-qgic2
 
+      - items:
+          - const: arm,gic-400
+          - enum:
+             - arm,cortex-a15-gic
+             - arm,cortex-a7-gic
+
       - items:
           - const: arm,arm1176jzf-devchip-gic
           - const: arm,arm11mp-gic
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
