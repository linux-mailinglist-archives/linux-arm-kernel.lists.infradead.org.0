Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5492818E218
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 15:40:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u5BXZPCyyLC9gcsC6wz7bIyRJFTXY2wH2XqbreM49OA=; b=HUePSF6hI/yW8d
	bwuhVZ2YnaNx2Zcxe1XzDnPO/zdPEl7LQXmG+7njB01DZaLHepw8fQdMKJK8KJaOvMbvQnRc1arJ3
	iQYKvfFoe+rlzwfSkmbUuq1y10gdm1boqSg8xF25nlHZnll4iSOd0QUuamvSNnzQk7fgpq+Kd4HUB
	H8mmWcqnf+jhqlh0ktICTuxlXtCcs0HEAA7RLQAVGWT0WwrBMrPJb24IBZqgrg2yj7cxRd/7jF04d
	297du8OznQ77NEb9HvwK3H1zhQMOJ96Elb4qrUV4XdbsXt9cs/YMfiKdwiM7m4gp84P0ORvoCrdsU
	GBDSpiX+0aWXVe3b0+ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFfI5-0005q7-6V; Sat, 21 Mar 2020 14:39:57 +0000
Received: from mout-u-204.mailbox.org ([91.198.250.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFfHw-0005pl-4D
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 14:39:49 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 48l3FY4BMnzQkJl;
 Sat, 21 Mar 2020 15:39:45 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1584801583;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Tkpjw41OSQS6g4mnJ1HdI3U2kVush6jX6zP98pED8vo=;
 b=sAR5y0fAccgXVWrnYlH9HkSy0j/qIMg3EXITWYl9lGkPa/KR5mp/m083mpcbKwXhx/vgch
 dS+1bufCW+lKOHUIZJ3hV65QTD1avsJWu0gExWdtuCBfjE3lPVwSwYC+iXhUFITurtJy7h
 +kx1fhSA9yS9T7EsV5pCv9lEIayFNiwDXWJNiGDTmKI7x2Hcia1O5woQovtAscEk0oT84L
 w9JrJTwDre073BVtsIF+EiOqmhm3R+Rc9spSXNRpFkVrFuEIBXTjn5YMIJZwSF1IdmVkzh
 FXxuQh9dhs1Df5CLq21/vxXa3PHki1sA3VdvSLF+dwGlKpk+XAaodJh3JFk9Cw==
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id exzjPqbLDL-R; Sat, 21 Mar 2020 15:39:42 +0100 (CET)
From: Sungbo Eo <mans0n@gorani.run>
To: Neil Armstrong <narmstrong@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-oxnas@groups.io, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: oxnas: Fix clear-mask property
Date: Sat, 21 Mar 2020 23:36:53 +0900
Message-Id: <20200321143653.2412823-1-mans0n@gorani.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_073948_322578_245D088F 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.198.250.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Disable all rps-irq interrupts during driver initialization to prevent
an accidental interrupt on GIC.

Fixes: 84316f4ef141 ("ARM: boot: dts: Add Oxford Semiconductor OX810SE dtsi")
Fixes: 38d4a53733f5 ("ARM: dts: Add support for OX820 and Pogoplug V3")
Signed-off-by: Sungbo Eo <mans0n@gorani.run>
---
 arch/arm/boot/dts/ox810se.dtsi | 4 ++--
 arch/arm/boot/dts/ox820.dtsi   | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/ox810se.dtsi b/arch/arm/boot/dts/ox810se.dtsi
index 9f6c2b660ed3..0755e5864c4a 100644
--- a/arch/arm/boot/dts/ox810se.dtsi
+++ b/arch/arm/boot/dts/ox810se.dtsi
@@ -323,8 +323,8 @@ intc: interrupt-controller@0 {
 					interrupt-controller;
 					reg = <0 0x200>;
 					#interrupt-cells = <1>;
-					valid-mask = <0xFFFFFFFF>;
-					clear-mask = <0>;
+					valid-mask = <0xffffffff>;
+					clear-mask = <0xffffffff>;
 				};
 
 				timer0: timer@200 {
diff --git a/arch/arm/boot/dts/ox820.dtsi b/arch/arm/boot/dts/ox820.dtsi
index c9b327732063..90846a7655b4 100644
--- a/arch/arm/boot/dts/ox820.dtsi
+++ b/arch/arm/boot/dts/ox820.dtsi
@@ -240,8 +240,8 @@ intc: interrupt-controller@0 {
 					reg = <0 0x200>;
 					interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 					#interrupt-cells = <1>;
-					valid-mask = <0xFFFFFFFF>;
-					clear-mask = <0>;
+					valid-mask = <0xffffffff>;
+					clear-mask = <0xffffffff>;
 				};
 
 				timer0: timer@200 {
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
