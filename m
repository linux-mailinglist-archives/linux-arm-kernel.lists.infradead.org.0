Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F04CC1CFF7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 22:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aoZLbnLni6GsYQ7JsluwHrVPjA0aEvIIBiD5Y/zFhN4=; b=bVTwRtwaApEMXy
	VzbNaYpdN5FSiIwqQyjY+6UN8NoSpGr2WTu0UuyHzOCtWWpK+h1usL6uZZtrkQ4sS3K3HmMteaU67
	t8oHplFeuWtp50rpcHzaTGuY35R5qB4hApR5Q6rGbpXenvhPEDyMf4ZnyX6dhJmDchEcNXmfHQLnK
	jd7mIuAkhj7u7p5rZVLxFJsv6hPRehfh/Ta1iVsBAS/81r80uz2wDd1ANJc9bRPyVP4dihE7k0Q0t
	WFzOz7NgvlvJGKPEtRgKxQSB9/mZCHMZtNKp4jFVcMdKjMRcz3K4a40i6B8FIIwjiBz3uqEEQ4OUr
	PurKsNtYO5XZSj4WqV1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYbgY-0007Hq-Hg; Tue, 12 May 2020 20:39:30 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYbg6-00076b-Vy
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 20:39:04 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 5A5C8812F;
 Tue, 12 May 2020 20:39:50 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 1/6] dt-bindings: omap: Update PRM binding for genpd
Date: Tue, 12 May 2020 13:38:47 -0700
Message-Id: <20200512203852.29499-2-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512203852.29499-1-tony@atomide.com>
References: <20200512203852.29499-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_133903_067877_DD995A7B 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PRM (Power and Reset Module) has registers to enable and disable
power domains, so let's update the binding for that.

Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 Documentation/devicetree/bindings/arm/omap/prm-inst.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
--- a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
+++ b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
@@ -18,12 +18,16 @@ Required properties:
 		(base address and length)
 
 Optional properties:
+- #power-domain-cells:	Should be 0 if the PRM instance is a power domain.
 - #reset-cells:	Should be 1 if the PRM instance in question supports resets.
+- clocks: Functional and interface clocks managed by the power domain
+- clock-names: Names for the clocks using "fck" and "ick" naming
 
 Example:
 
 prm_dsp2: prm@1b00 {
 	compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
 	reg = <0x1b00 0x40>;
+	#power-domain-cells = <0>;
 	#reset-cells = <1>;
 };
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
