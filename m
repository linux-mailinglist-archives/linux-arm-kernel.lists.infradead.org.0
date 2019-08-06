Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EAF83376
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q4X8eB8lcoax3TQ0u1Snq0RXLHm7PvWbvkfgQmWiJYA=; b=vBnBrF6RR3a0zo
	OjH7+Jjlvq7NiXCgAz2996ajSRR9P1UB2C+oSA0TO6PiJngqlSO7UquR15ovcpGhoAD6lXFSBHbkl
	skwTs8EfIoQs+t9KJtDeTQ0919TTxsyHIhC0GTWUlleA4Wq2tpAYnIldmbXPuOcl9qugtgv9DxaGz
	pRT6JFs7jsMjFioHvK7zmbx+LNLOL1rwg6dtfANaFjEphhB+1J8BrDcOopp2OTKsjNCRc8fGASs58
	4JbhTqqNOxppZrQvm11zZTHl7oi+g2ANcEKhsCa6+8OkSH2lgrT/MGDit7aG9Ju05Yl7dTol6QM/U
	ARGQNen5bAwLfuKl+4lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv02X-00015g-2V; Tue, 06 Aug 2019 14:02:13 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv02L-000158-0q
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:02:02 +0000
Received: by mail-pg1-x543.google.com with SMTP id z14so4421840pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 07:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NNxJ+tbDDZ39iUywHLnl+FavlBAhdreQ78JZUGcO/6Q=;
 b=KWCwElDoIR4a775pD4nGJvCXl+KCPLJjXxpEXShqN1Su3f4gpv+xYeZ8u/aELHMTgS
 l7BqdZlV1mvqrhMmxqBA2nVAq15RIAFOXRmnBLXP/QD9Wwud12ZNUeAWDCD724uE6Sns
 /ovVAP5r6WDeC+OkTMSLFkAkLVkIQ6u4uOvV845D6hQzzTmDZFSJXljitbMZB8X7DcaZ
 +YyVYyhdK+M1N5XuGjwHJrT1Rp99nqsbLnKeshYTElFPtJkPbLNPoEkXImy3V0uueUIm
 fvhQqw6dY60QUOCsCjA9HjtkbBvp4lySE7zWNNlIONbrKPGtY7RxPeWos4zkBaRD45og
 lPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NNxJ+tbDDZ39iUywHLnl+FavlBAhdreQ78JZUGcO/6Q=;
 b=dvTE994DrLdcYqEEr6xPfavtLWbP1KmiLmQ39Aaz6XoLUWSRw3WY9G4UerxZaC5ZBh
 O3/698PuhsuAI11L5eFjF5CP5M853bq2cAJJyBrwhV9HAS2P88o5ISb5vtn4Qv51eD0g
 HSZZDVY68Fs/6hl0vfjWgnmImra0BfnWPpx1sA97bZzfM9zJPnsGPueA9dQcDPV9gnU5
 dgNH+e012b5vrDyWuokVOLKYz/L4eyUkr0KW98McKOOXJ//ivYTaPOL8YkwBmYpQ4sCe
 xeYmJBAcwugRMu93/VJtx4Zi2KZtGHkFVbxFwiJNtgnTlfiurzY2/90w7HWawkOh4ddm
 HAlQ==
X-Gm-Message-State: APjAAAXY/77oDxqFDKz5k+rvLejIKEiJ0pjMXte9+6Sd/vnfeuyNUPQ6
 FSktfsFzuS+ENQLhXB39ILU=
X-Google-Smtp-Source: APXvYqyoQrNDkoTxQQ5N0TxRl+eHehKXFF3o1q2edWC+jxD4IxF/6mv3JWY1+Yy2VtTysZvjlAx6Fg==
X-Received: by 2002:aa7:9514:: with SMTP id b20mr3881643pfp.223.1565100120106; 
 Tue, 06 Aug 2019 07:02:00 -0700 (PDT)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id q8sm25669353pjq.20.2019.08.06.07.01.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 07:01:59 -0700 (PDT)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
Date: Tue,  6 Aug 2019 07:01:35 -0700
Message-Id: <20190806140135.4739-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_070201_088028_80A89DEE 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Jared D . McNeill" <jmcneill@NetBSD.org>, Harald Geyer <harald@ccbib.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks like PMU in A64 is broken, it generates no interrupts at all and
as result 'perf top' shows no events.

Tested on Pine64-LTS.

Fixes: 34a97fcc71c2 ("arm64: dts: allwinner: a64: Add PMU node")
Cc: Harald Geyer <harald@ccbib.org>
Cc: Jared D. McNeill <jmcneill@NetBSD.org>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 9cc9bdde81ac..cd92f546c483 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -142,15 +142,6 @@
 		clock-output-names = "ext-osc32k";
 	};
 
-	pmu {
-		compatible = "arm,cortex-a53-pmu";
-		interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
-	};
-
 	psci {
 		compatible = "arm,psci-0.2";
 		method = "smc";
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
