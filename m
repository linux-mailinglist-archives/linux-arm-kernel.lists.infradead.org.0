Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04177139971
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y8yFrKqN9mI0o4tN9YnVC4jEakp+Uli2+mSL+/FGU2Y=; b=FkTxBcEAkCpxCJ3Vznyd/YGG08
	Vb+Y4G11WqGFvpFoy6WIwsNsZRMQ7XEGfeErrTtkJcic3zjM/4EDbhNb38fqGzfSYWs007l7sJ78Z
	1P3uuOFmLT2LLMdGexcK4yksKXjIImwIc7xOqvRwGhDMUVgbh63AN/9duLh3v9K2F/ughQFvd+alP
	cb7y+Pas7eQuOUYPzgqpNnX+TNB/Fg3pbB/6bF/aj2CZ1zgoPBNHKKqAz74I4urHt4iaaWNsNLRz0
	hU8myAzO5xQYGJDaWMdwNZ9AcIEfjr+9vPQKgc8vB5vWvgf/NsUEHhHwbvBP9b74/dnUuqhGn/A2G
	fekcnUdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4u6-0000Eo-14; Mon, 13 Jan 2020 18:57:34 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4tR-0008EP-Kp
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:56:55 +0000
Received: from localhost.localdomain ([37.4.249.154]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M1YtP-1iphB20GaJ-0032W1; Mon, 13 Jan 2020 19:56:43 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V5 4/4] ARM: configs: Build BCM2711 thermal as module
Date: Mon, 13 Jan 2020 19:56:18 +0100
Message-Id: <1578941778-23321-5-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578941778-23321-1-git-send-email-stefan.wahren@i2se.com>
References: <1578941778-23321-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:O+u6pr4dhxrOSuuoknJ0DKNWGQ3vtlKGMbnvZc7/pEHB71+lP+5
 GOE3qd05FrcJ8FBdCfOzxwdLICo+DAZoBiHFL/n+IQJKXnOiIJL7YGMZ20AzSjIq1ukoC1k
 elTVjDTE9+1ElflUv3hqX3kqVI8HCckwLZJlI+51Jn/I85rOFSrPc4g8HLA2f9tFtpFbgQ3
 H3qP+9vGpB34IcID6KaKw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Gyygl/ACfQE=:ygkkfD/TXRtXjs1fyw13d2
 LemAh7UlXhneJPcb07l0sfrl7GzRJh/ZPAL16wRuc41qmzH5OQl8n5WB3qmNrVihu9rXn/SYx
 tyxY8fhIOfIO50B1fHtKyqsidXwaY+3dROUCan/WHRqmQHEfTpSJCrjR2EwVO5RtmJAjgOGyU
 HdFY6KvdqoTBtkOdfWFIok2dwV8n7B5QhTPJShug6GIzAE9t7ZbPk/vGtQudnCtYrNjRgEi3A
 LisEhG9GRYvYXSUYEuSfhjAchrzpGbgphwLSrNI54kEI42m3xOsaSmEl5MIssagEhz5BmEUDX
 v9qXfc0Y0iJTSPPVuhHn1HPwb0De+TcZblaYLPVqaMFTeSn7kKQqDPyUy9R0Y7FIFacIT2UoV
 yS7LLW7E4hvecp6tnJOzb0rAtF1FHocjspL5Iyo2V7LGSeSKGNjBFtz8B25qr3ce3wh3cHhr+
 FC8ZWFxW5pNG4AXxRxgutVAKwT7PdEXXqbC3MWVitACsC9yw7e52ac0NcjO7WwSZ/sCvl9f+I
 7q+mon0DP0fLEGVlHXkvLIslsrC34MBQPIroSCnBd3gf/TPd756a75uYRRNAjYrnBEP5K1A6O
 yH7hHnia+mEhijrqKPSIvQ7Pl9iIdaTfA70otgD+BDaUDDU5Syq+G0zoZzZTB7MN7jSaPcs05
 SxaU4FjP+9ZLo0fJSoxqlXMWV2iMaVPuIxlO+Xrk0R8kbJ67Iu0mR/4sfFqAmSIgJXaSpL8FW
 vhwLxYtKvCeW7h8+jOZ7VUfWf0AEkyTYzaeITvznreg5BV8rJ26VmFm3EVgjGdRWcIcf599k2
 HaulVm5OR6GEEfjuGUQLziZSl1UtnpxZIvTngLsUdAKNiKqt3b1ms/BVl0bJEhyc9RVv6rjHl
 +SMoH/iES+i0u8k/7sL4B9Xba9duNZ4+zQrhI0ldo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_105653_992878_56C4BE5C 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
