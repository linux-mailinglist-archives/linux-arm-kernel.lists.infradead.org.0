Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5BE4EE6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 20:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xTfKNk1rRDLiOOxW0AwJ0Np2S8EO5JdZH4b8+jL/Xns=; b=hyAMobTNu2rXQq+RnQgLdV58e7
	BmAShH08iShRp/bmeouauqLdV41xiSlp+fT1nQ4zzneecl0YqdIV/AuhQ9cBGcQh7X8riTLMgVu24
	sTzLRsjvpuYHbwya0AfrNoHQYwkEubObdmZnBXHMbpxaO1f4aKFr7vd0IuYyw45K+LG8VMQBNPEFk
	uu9lx3d/2vm08oi34gp0efvld8As7y+SSo+k4rDGtMYWpopt9sKjJPNkTDfIybaVeu5AA5pZnZ0vx
	5405Hy3th8EoU+ihpBWmTsChTtOBEK7o5nRwv487Yrm2Eg9I1dDXLutdVC1tAvCydpY4f6w4BSoqS
	BCnqv70A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNtq-0006RH-53; Fri, 21 Jun 2019 18:04:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNs8-00056c-6i
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 18:02:49 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D7A621537;
 Fri, 21 Jun 2019 18:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561140167;
 bh=8Pg1RVM5aZ3oBKkDdus18bslAtYlcoTCIBdsEfOp1J8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FNVCYK7RZMSf89hV6z/UeNdxh2K3Cqk15pqkxzvvEvIo32PqpwQwzEE1l0lfgyZku
 wygNGO5WBbnkP7qJbKT+wU+1g9JR3pRcv+Kfcm7b+FM/jxgf6SLPAFjaUAhG4g4rsL
 PMrx9zNWdwkftMT90xgVH/KnTeFMT1ty3OSoNYbA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/7] arm64: defconfig: Enable Panfrost driver
Date: Fri, 21 Jun 2019 20:02:08 +0200
Message-Id: <20190621180208.25361-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190621180208.25361-1-krzk@kernel.org>
References: <20190621180208.25361-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_110248_359289_B78A5E07 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Joseph Kogut <joseph.kogut@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable support for Mali GPU with Panfrost driver, e.g. for Exynos5433
and Exynos7 (having Mali T760).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6b4f5cf23324..972b17239f13 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -517,6 +517,7 @@ CONFIG_DRM_HISI_HIBMC=m
 CONFIG_DRM_HISI_KIRIN=m
 CONFIG_DRM_MESON=m
 CONFIG_DRM_PL111=m
+CONFIG_DRM_PANFROST=m
 CONFIG_FB=y
 CONFIG_FB_MODE_HELPERS=y
 CONFIG_BACKLIGHT_GENERIC=m
@@ -717,7 +718,6 @@ CONFIG_ARCH_TEGRA_194_SOC=y
 CONFIG_ARCH_K3_AM6_SOC=y
 CONFIG_SOC_TI=y
 CONFIG_TI_SCI_PM_DOMAINS=y
-CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND=y
 CONFIG_EXTCON_USB_GPIO=y
 CONFIG_EXTCON_USBC_CROS_EC=y
 CONFIG_MEMORY=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
