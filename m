Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110ED4F7EA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 21:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LHMZJRDKQxpaw1qrcaqrirwY9XbLIikOkWNXn7LH+zw=; b=FPqlT2RRlBAfRyonISyXVg/Pf4
	kWusu5+ggUf+BTICH1Bv2LKW28RigKvc2qvQQvhVUVRQq8zL0XlpEUWnwIo/14Hv4r2YEA2uWmjyG
	qMKyV0efTrsPfIAQGsOh2qR+Rpa/Wck7YRETzaNczWnqP11qz5bZffCxKIXu4O6NNylbE2R7mzxLf
	Lc2ifXdkPz9cTIKVwTGV3wuLhvp3mbe2WCv7770qumryV0cuN58q/4pTci7UqXwiFg7cTc5RKWVh1
	IUexD4Nn7XsMCP9tbMREiVeBHzpq+FEhk01WxioKyjO696CH6osuSVmKtX0YWTC6H09yYazr1RYM2
	+u+Jitnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1helXm-00010q-Cf; Sat, 22 Jun 2019 19:19:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1helXd-00010I-24
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 19:19:14 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02ACD206B7;
 Sat, 22 Jun 2019 19:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561231150;
 bh=bQV8QrWO6dxnGr7QlKGtsMX1k98htmmmCH69v0k+zmI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nVPXuPuOxymKodf9KSrozYvY7ndqFJIdi4WXf81r1bDSyYAXOPz9X/pGWUj1bH7qb
 KxQENpY6NFmUVHMHKCJV5ptdRwmWYpgv2xr7CXcaYTlqvmgcrNu9FpfeKLwIcpOngY
 NW215jnPbV8/CPSS3uvSA5kkG5Kt/F3Gg+6q6sao=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Olof Johansson <olof@lixom.net>, Jagan Teki <jagan@amarulasolutions.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: defconfig: Enable Panfrost and Lima drivers
Date: Sat, 22 Jun 2019 21:18:38 +0200
Message-Id: <20190622191838.29850-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190621180208.25361-7-krzk@kernel.org>
References: <20190621180208.25361-7-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_121913_324657_8EA2E1D8 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Chanwoo Choi <cw00.choi@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable support for Mali GPU with Panfrost and Lima drivers for:
1. Samsung Exynos5433 and Exynos7 (having Mali T760),
2. Allwiner A64 and H5 (Mali 400/450).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Enable Lima driver
---
 arch/arm64/configs/defconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index fbbc065415d4..3d31611368af 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -518,6 +518,8 @@ CONFIG_DRM_HISI_HIBMC=m
 CONFIG_DRM_HISI_KIRIN=m
 CONFIG_DRM_MESON=m
 CONFIG_DRM_PL111=m
+CONFIG_DRM_LIMA=m
+CONFIG_DRM_PANFROST=m
 CONFIG_FB=y
 CONFIG_FB_MODE_HELPERS=y
 CONFIG_BACKLIGHT_GENERIC=m
@@ -718,7 +720,6 @@ CONFIG_ARCH_TEGRA_194_SOC=y
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
