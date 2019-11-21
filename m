Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA7A1047EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 02:19:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6ggD/IZB8v+f7MAIYRCer2jCc5Z33d9nq8OwzaPp7mE=; b=Irq
	OBN4yb2AZGlWrJByHJaoDup8m/IOcvsEWcR8P81/+rM/9/kv3E9Gaw70rHaJfFl3eOpfLN6OJ/vDX
	BWoO0zZWxTd/a1gZgIbcgzABzDz8MZJjQTBwr2kSKPX5wQkwF+g4GXlGWbzR0QuvIDpwxSo9FZmIZ
	oFCXp4QoZDdJump4ypcC+Z0sPFTYB6hTCHCMF/QvccboNB/m3VCg09VQZgYXHIVq2Im9pg2q9C9JW
	eT3xk6h5whKr0vX56L1xcf/PVtwo7YHSe9XHm1cOGiyHbb6tgB2aAP+elHq4U4uvRlrYoxDokBDtn
	xYRh3lJIImM3Kje2umhqoEz9nl+lFVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXb7c-0003iO-B2; Thu, 21 Nov 2019 01:19:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXb7T-0003gl-8B
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 01:18:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D272DA7;
 Wed, 20 Nov 2019 17:18:45 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 509933F6C4;
 Wed, 20 Nov 2019 17:18:44 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 0/3] arm/arm64: dts: allwinner: Add PMU nodes
Date: Thu, 21 Nov 2019 01:18:32 +0000
Message-Id: <20191121011835.8467-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_171851_330899_C7B912CB 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arm Cortex cores contain a Performance Monitoring Unit (PMU), that needs
to be connected to the GIC distributor to be able to trigger interrupts.
The actual interrupt IDs are an integration choice, so need to be
advertised via the DT.

This series adds the DT nodes to the H3, H5 and H6 SoC .dtsi files.
The interrupt IDs are not always as described in the manual (off by 4
for the A64 and H5), so the IRQs have been both tested in U-Boot and
verified in Linux, using "perf record" (which requires working IRQs).

Cheers,
Andre.

Andre Przywara (3):
  arm64: dts: allwinner: H6: Add PMU mode
  arm64: dts: allwinner: H5: Add PMU node
  arm: dts: allwinner: H3: Add PMU node

 arch/arm/boot/dts/sun8i-h3.dtsi              | 15 ++++++++++++---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 16 +++++++++++++---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
 3 files changed, 35 insertions(+), 6 deletions(-)

-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
