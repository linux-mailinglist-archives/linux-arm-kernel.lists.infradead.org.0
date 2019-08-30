Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAA4A3529
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 12:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOq5o56cQ3Dzmad9IX7x8Ka8t/Lp25LdegDTQoYnQ58=; b=ZZQLIwB/3sauYH
	LDRjNnA2BnTgEOuB04E9wdowxub6Or7LK9DxCZbZMXlXiYy+rZBc9SzwYayIVTAilxLI1IEiE8El2
	FXDZiMuLCGOxZxyRWx2Chk63NVZfs48/3OhI45jbUtiLioOSeDOfmVcTkegucF3UILcTOLowhPFeb
	gLzSjhAnLfb/Au/Zxb8TLif43Mm7tC523z3FOguO3FM2n4/Dd32XiznOFDNeN2UhaOee3qO7mbBBk
	iqfxyRWn68wMRmW7KvHdA3TBRWS2f8NMqtlAZXIXK8A03Ae39N7c63lbzwSHvwgPi3u/byT381f4x
	r7AyWwEd53JOxAY5xrNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ePa-0002n2-9s; Fri, 30 Aug 2019 10:45:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ePJ-0002eQ-44
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 10:45:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 966FC337;
 Fri, 30 Aug 2019 03:45:24 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8AA143F718;
 Fri, 30 Aug 2019 03:45:23 -0700 (PDT)
From: Guillaume Gardet <guillaume.gardet@arm.com>
To: linux-samsung-soc@vger.kernel.org
Subject: [PATCH V3 0/4] Add GPU/Mali T604 node to arndale and snow (exynos5250)
Date: Fri, 30 Aug 2019 12:44:57 +0200
Message-Id: <20190830104502.7128-1-guillaume.gardet@arm.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190725083433.6505-1-guillaume.gardet@arm.com>
References: <20190725083433.6505-1-guillaume.gardet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_034529_205372_9EDDEEDA 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Guillaume Gardet <guillaume.gardet@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add nodes for GPU (Mali T604) to Exynos5250.
Tested with kmscube and some glmark2* tests on Chromebook snow and
arndale board.

V3 changes:
  * change clock name from 'g3d' to 'core'
  * disable node by default in exynos5250.dtsi
  * move dt-bindings before node addition in device tree
  * enable node for arndale and snow, with mali-supply, separetly
  * add patch to fix min/max values for buck4 regulator for gpu
    on arndale board

V2 changes: 
  * move mali node as /soc sub-node
  * move gpu_opp_table as mali sub-node
  * minor style updates
  * test on arndale board
  * enable by default
  * add dt bindings, in a separate patch


Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org

Guillaume Gardet (5):
  dt-bindings: gpu: mali-midgard: Add samsung exynos5250 compatible
  arm: dts: exynos: Add GPU/Mali T604 node to exynos5250
  arm: dts: exynos: snow: Enable GPU/Mali T604 node
  arm: dts: exynos: arndale: Enable GPU/Mali T604 node
  arm: dts: exynos: arndale: Fix min/max for buck4 regulator for gpu

 .../bindings/gpu/arm,mali-midgard.txt         |  1 +
 arch/arm/boot/dts/exynos5250-arndale.dts      |  9 +++-
 arch/arm/boot/dts/exynos5250-snow-common.dtsi |  5 ++
 arch/arm/boot/dts/exynos5250.dtsi             | 47 +++++++++++++++++++
 4 files changed, 60 insertions(+), 2 deletions(-)

-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
