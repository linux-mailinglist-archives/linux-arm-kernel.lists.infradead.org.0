Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C11715DE55
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:04:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1brkD4Snbe40th6Fcdx16+MiajxeSOvXqSJ2hkFM6g=; b=JrFmSkLmwt80cC
	BAGutknORvQSV0bPRlUotHL/4/ODBkaPPNmTgN859iXi/aRL9ra46TznZJeVBQ9KrACfpYamGiTlg
	oYkpLtt3K/WOGf5Pr29nTOg8tt9J9+P/BLHjgthR2Wj+jhZNx9o/nG5QYjBFSSoIQkgr7tHR0KGJU
	nuAYLBCvde6521rcEx16BxvbdxqpU2WDr1w6ZDA04SLi3jakhuymzjOAUkfVK1NbgeiKzY8EaSMpn
	6+GuAS7xC/jeiBQ2jBxN3e/dBK46EI8r+5NnrY4hqv/4rhGp2BY3N1acsOO0ufKaxKjV356CSUiHD
	SaeyBXgH/x1GL/lse/8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dRx-0002T5-An; Fri, 14 Feb 2020 16:04:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dJN-0000uD-IO; Fri, 14 Feb 2020 15:55:28 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5834324649;
 Fri, 14 Feb 2020 15:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695725;
 bh=881Yyyw2fSkV4kx7RDvxnSQOK+0PXzO6EwfTy9I53jY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o8WjgH8aQMr7pqM92CZ0et0/HLIjD1Ldsqj770iGQZ2amNreXCJBWHmlDzpQIqYZp
 9eATfLB3GyKjHVGzvdInWIndnQi0WSy1RC4jKFeHBNUe4XCamOxphBUCjJHkkl62tZ
 xsaaqrbASCTSCgIU5wSahq1yaj0tslyf98XyeFaM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 301/542] ARM: dts: meson8b: use the actual
 frequency for the GPU's 364MHz OPP
Date: Fri, 14 Feb 2020 10:44:53 -0500
Message-Id: <20200214154854.6746-301-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075525_650468_4C1FC20C 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[ Upstream commit c3dd3315ab58b2cfa1916df55b0d0f9fbd94266f ]

The clock setup on Meson8 cannot achieve a Mali frequency of exactly
182.15MHz. The vendor driver uses "FCLK_DIV7 / 1" for this frequency,
which translates to 2550MHz / 7 / 1 = 364285714Hz.
Update the GPU operating point to that specific frequency to not confuse
myself when comparing the frequency from the .dts with the actual clock
rate on the system.

Fixes: c3ea80b6138cae ("ARM: dts: meson8b: add the Mali-450 MP2 GPU")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/meson8b.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index 099bf8e711c94..1e8c5d7bc824a 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -125,8 +125,8 @@
 			opp-hz = /bits/ 64 <255000000>;
 			opp-microvolt = <1100000>;
 		};
-		opp-364300000 {
-			opp-hz = /bits/ 64 <364300000>;
+		opp-364285714 {
+			opp-hz = /bits/ 64 <364285714>;
 			opp-microvolt = <1100000>;
 		};
 		opp-425000000 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
