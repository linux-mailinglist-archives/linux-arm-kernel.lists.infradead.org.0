Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0764A352F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 12:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LK2OAEO1/j4hoo6TNySN1DEKiFBmsRTBHLWRsi8yJLk=; b=KeFHzdHiDgLEG2
	k9a6s3ALs2gREEnDwTFOZQ3IMDTMrRs87hTh0h9c9vYmILQUc3qN8JBmLk5LvpbbgcSVRX0ucej2w
	IpBmgFf4GsLj+9hUtcTx+BnKcP6CT1MwRKfowS+U87Uo0I7RF01EmsnKlCaW7CtHG5I1CKo+ePhdr
	ivxU5QiYmEa3jsiq/QTEYbGw5WTC4LbiTyxk9JBbl8J3/6P4LXbW8C5TjXTTHt245MR6xhELGUk6s
	6XOQ2RhFFBnbASgDhCR8QdWUsr15DcLQqY23mgwz4XSlMMLXAF39EOeFQrJcmIt0ZHCUYGPIAn1FG
	IdNwkdpAwdD70BwB1smQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3eQE-0003gm-9E; Fri, 30 Aug 2019 10:46:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ePL-0002fz-Vd
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 10:45:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 24C5D337;
 Fri, 30 Aug 2019 03:45:31 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 14BFD3F718;
 Fri, 30 Aug 2019 03:45:29 -0700 (PDT)
From: Guillaume Gardet <guillaume.gardet@arm.com>
To: linux-samsung-soc@vger.kernel.org
Subject: [PATCH V3 5/5] arm: dts: exynos: arndale: Fix min/max for buck4
 regulator for gpu
Date: Fri, 30 Aug 2019 12:45:02 +0200
Message-Id: <20190830104502.7128-6-guillaume.gardet@arm.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190830104502.7128-1-guillaume.gardet@arm.com>
References: <20190725083433.6505-1-guillaume.gardet@arm.com>
 <20190830104502.7128-1-guillaume.gardet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_034532_059591_B7E3259E 
X-CRM114-Status: UNSURE (   9.88  )
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

Required to have gpu opp working properly.

Signed-off-by: Guillaume Gardet <guillaume.gardet@arm.com>

Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org
---
V3 changes:
  * new file

 arch/arm/boot/dts/exynos5250-arndale.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5250-arndale.dts b/arch/arm/boot/dts/exynos5250-arndale.dts
index cf5a758f1927..6fcb78a354fe 100644
--- a/arch/arm/boot/dts/exynos5250-arndale.dts
+++ b/arch/arm/boot/dts/exynos5250-arndale.dts
@@ -461,8 +461,8 @@
 
 			buck4_reg: BUCK4 {
 				regulator-name = "vdd_g3d";
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <1000000>;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <1300000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>;
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
