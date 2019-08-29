Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDC2A1780
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 12:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2dKeIRMSDCYBvRErLkxAB3zQK1CzOEw+bJULvpOI9UA=; b=IgyAfQ9bu0OM6V
	+WffGYlXch7Lr7FaWJUeGOvuaqqbhqs9/SEipMNzMxZD8KvaxFDcQSvZEsuTsh9pEdbTfKwVkbfsH
	lMOaXl3ldvi6RlBg85R/PguR2gsZEQdP4HA0zq8MRUlyatYlNoCu/NG3J3ivEOIiCN8rDhSr8PA1V
	c9CL4TJ9UzVy9nMcLmQTla4CDv0lN3Sce6IQyzJrsEhK/QTuF9qt6I7Lie/TILQ/X/jLG/XhvJKNU
	L4jkboGJ5vOteg3VAOFYGWDdSJEHQ06A7k8jyZAPh5p/JCntpAQem3ZapCTNCR/FUz3EH7OpkitvD
	l6WCszEaJW9gzYdW2afQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3I6y-0002Sz-C2; Thu, 29 Aug 2019 10:57:04 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3I6l-0002SZ-Gh
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 10:56:52 +0000
Received: by mail-ed1-x542.google.com with SMTP id t50so3600575edd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 03:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gSZBaKB3oMwwjSK37zhZj4ARDRbprCvK1TtdCv+zEls=;
 b=QAp1ZFX4EsN+PAu2oLbX+zJ3qE5D6oivYUEWgQ4xHkNOXKa960tEkn4JWlVdklPdpc
 MT7iydZzSe8D2H4r93LLwiUyMyXFAYsFxx2y5sEGxyRCMk3LLyeZtNlvNfiYO4ENMxZ5
 B8TRDirBGqBbwotVHVtlV14oR4hX412KkTjIQ9zfDkP/A3qFVwhf7+Wqs9WWj7CA7jIW
 4EM01I93u2+7+rk690Ox/LKqhIrhE/CyeLpyJzMljAB5n2zK+E239SxTeUVdwrnlaJei
 Snx1sTwzFGDQnQ+w95wUlIqJEZJGXgf+ItO/GL53KC5UPtUSiZ7P54BUghOQ/VRzMm+e
 gxQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gSZBaKB3oMwwjSK37zhZj4ARDRbprCvK1TtdCv+zEls=;
 b=HGJ6O8U3z/1Cjc5NdwwjhvOpm3MJRNOkj6F2g/PaZ65oS9hUQlFGVrxPaFcVH8L3Wb
 7ORTs3g5Htc6ibAA2xGt0USunGA9lvleesA7HxLQck9dQkQe5sFpqUTgXu7gB8kIAEa7
 ofCGsZ1SzoL4/UqOnCt4MICbcL+ts9NrgNZH/hGTb2j7ZdnL/pcNu6SZ+LetCqAFPTx4
 mDsvLoLEUhenCXWsftySCg/s67wCZEAlXG8CGfjZtWDGC9Daf2peYYDypf2eyQR6nSkT
 UF1ZDQnJzxqPETyAbs8kmtuRTeozOkyk3cpxkwN25koS5U+XoZJV8HkW8tB9M+IyAhZi
 7PXw==
X-Gm-Message-State: APjAAAU6VM2L6lxbbvabpc8ccGsmieFlW9l+p4CA3XXnpO8N/SocD54M
 +Gzp/WfB7jtvfejoXQrm4bw=
X-Google-Smtp-Source: APXvYqyyJ0DJqixgafoJvXx6ACihdAkR5aY/oy/QNbRLKTgAocQei2KWIu1xe2zwS2yxfo1kMk9HHg==
X-Received: by 2002:a17:907:2134:: with SMTP id
 qo20mr7592543ejb.295.1567076209866; 
 Thu, 29 Aug 2019 03:56:49 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id b18sm374854eds.68.2019.08.29.03.56.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 03:56:48 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] arm64: tegra: Hook up edp interrupt on Tegra210 SOCTHERM
Date: Thu, 29 Aug 2019 12:56:47 +0200
Message-Id: <20190829105647.15212-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_035651_557132_3C491429 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

For some reason this was never hooked up. Do it now so that over-current
interrupts can be logged.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 2db208f20191..a20cd368a772 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -1458,7 +1458,9 @@
 		reg = <0x0 0x700e2000 0x0 0x600 /* SOC_THERM reg_base */
 			0x0 0x60006000 0x0 0x400>; /* CAR reg_base */
 		reg-names = "soctherm-reg", "car-reg";
-		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
+		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "thermal", "edp";
 		clocks = <&tegra_car TEGRA210_CLK_TSENSOR>,
 			<&tegra_car TEGRA210_CLK_SOC_THERM>;
 		clock-names = "tsensor", "soctherm";
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
