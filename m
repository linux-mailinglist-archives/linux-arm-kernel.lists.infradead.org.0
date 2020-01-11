Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260BA138255
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 17:17:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y8yFrKqN9mI0o4tN9YnVC4jEakp+Uli2+mSL+/FGU2Y=; b=RCFFQXvjmicSByLIbXdtrJl1GY
	ubgGxqRE9VflYxGoo9DObT7e7Q+SoqIUL6t++5vcx7oeA1X4FzbcLf48x56Q739MDl5+OnYIzDjWB
	TleUjOEpRaoUW976We6sVMksyT96d3MbZSHLm4hGt+E0Jd3LMFviV/JiKBaJEIqGI6xFMkDWYm2fk
	Sx/mJrsKG+T0h5ol9OrKfGPabzpJ4tFdS+58An1LaUjPecziHxO8NaoNmnYXJDTSK//Wb7CiBNKPM
	9Jc80tPTKMN5SD1Vik2DVzE/XAhPQgDMO+4ZAAp5N+VVwf/tTwIEhnpLhHc8FvAiMAGZngIpcLC+Y
	786iyu2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqJRy-0003nF-Il; Sat, 11 Jan 2020 16:17:22 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqJR4-00035F-CD
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 16:16:28 +0000
Received: from localhost.localdomain ([37.4.249.154]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MlO5j-1jWldt45e9-00lm2O; Sat, 11 Jan 2020 17:15:53 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V4 4/4] ARM: configs: Build BCM2711 thermal as module
Date: Sat, 11 Jan 2020 17:15:42 +0100
Message-Id: <1578759342-4550-5-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578759342-4550-1-git-send-email-stefan.wahren@i2se.com>
References: <1578759342-4550-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:PGzIYruZHR30DesD7wJ+elb2eQS3441bmcXLTgoww362SkbKOqv
 y7l5+cOKxknUI5qQREvnPRQFO9rGVdK/fg6udRYDUhnh6l2HVbHpbVal0TisaemPqmZhYd9
 hkKTRdm5rttJmKhtKWCgonPaRep1878OxdPg5aJhFQBzNBEZOTx4v633r3p2gAoMpP60lJt
 +K5AO/aaMSTS4iYcMYffQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zIMcgdIknNE=:G0dKVNn1GloLF3qitLLuSB
 zg3m/E+0b0lWgdxg8628Ty/PZDjhlxYm4PEja1NDFOtC4y6ia8Dwt4EX4CBaw9utcqdeZIxtz
 8r5UHDDQdVuyacIOpBbGnHjCOuvxstimNhT94ji1iQEM3bpOyb8lOKKbRizkHGB6KX5aAWvPi
 GdW78ry9/fDuUeOsoyvKxKuAvwwL6pEiMqaOtPnhMeqwORtId7bJGkPZuFMyyh6QxeWVRRM14
 i6729LkdbfxD3x+Mbwg3bkWi5gkgCd/Zl5sO6gdeLhrRjXvT0b0MEx9GCv5uxfkHdBp7//QB+
 zrzCLslqKP5+dGPvdxgnsgLMZ5mn93NcYehcjUKx3Vt1mzVUlAeRK3Ym2Pw3YE/jH4r3+aIke
 l5Jo2NbRLZHa7cvO7YGTfdtfr/jWp99vwx3v8vLEQAEi8vy/L2LeVlfhRjB2eRbPHOJFMLQg3
 ocpxR74nwNS9gVY8ioJ3RiWrlbCaHKeIk2xqCIAtxByxP7brYblBsjdUa2DARzR9D7otEvHUE
 rxtWTtJfX1TdzaUCBbCoy/frTSqG5b6XUp+LE3vVBP5rDWvA+8jd+aQy38ANIyE+mJNZLNQ3A
 ZctZLrhuuGGNyWzqkc5U1rqQEydTcp0iBq1qp/2KI7ObuYUWhqYHCy3pvh9daKNB8+o/YdJwj
 IOFg4CZx0LqlaUQiBI7vJ59a+XdFCar6TIzH4dD2Y3X/Xo02ahJH+uEG14zE6vXKL1nhhukqs
 z7JvsEmSfX6M1vawD2IgfkzDyHef70gWjgiZ8wNVT16aAde6qpzU+T54P0OCKYFO5RbPK+iLS
 vFA//jHVaVxwTiem8wL/ER7q1/KP+Gj8FM/mxndW8WXkFkQ6+cfiJGRY8KAlpeJuYHL+FENuF
 dm82scAuUFUTGlMWM6M/ZJBbDeu0P0viprN25wAQI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_081626_727280_21694742 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This builds the BCM2711 thermal driver as module for the Raspberry Pi 4.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 arch/arm64/configs/defconfig        | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 3f1b96d..f5d19cc 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -496,6 +496,7 @@ CONFIG_IMX_THERMAL=y
 CONFIG_ROCKCHIP_THERMAL=y
 CONFIG_RCAR_THERMAL=y
 CONFIG_ARMADA_THERMAL=y
+CONFIG_BCM2711_THERMAL=m
 CONFIG_BCM2835_THERMAL=m
 CONFIG_BRCMSTB_THERMAL=m
 CONFIG_ST_THERMAL_MEMMAP=y
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6a83ba2..b2f6673 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -442,6 +442,7 @@ CONFIG_ROCKCHIP_THERMAL=m
 CONFIG_RCAR_THERMAL=y
 CONFIG_RCAR_GEN3_THERMAL=y
 CONFIG_ARMADA_THERMAL=y
+CONFIG_BCM2711_THERMAL=m
 CONFIG_BCM2835_THERMAL=m
 CONFIG_BRCMSTB_THERMAL=m
 CONFIG_EXYNOS_THERMAL=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
