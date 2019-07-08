Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D269861FC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 15:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9QH2iNsRB+ZLaFebGextglSc1XeWtBA5SU72dHkGl4s=; b=pncOUNcoDFFxOI
	GcbC9c22PSWSlLpvwkgYwAhI6jefbeayrwYFlkecUcUAbblHZQ/ROG4OsNWZ2oc9E0kxVnZEACCXx
	IJdXrD2VbMV5zqhFx04k5T2m6csYQ7R22w2j2bTlbt1AURrZ5qEJemgxgv0XQcfRVfxjMnglMJSvy
	IyoToJ/xB6ABfgD3zO75WI6PUqY8+BuiZSiiRHo1csOPCE7qlRRakYLKPnE976hfAHh744FUa+y6P
	pupyq74CA8Ds8d301yponuCbJrLolC9zVylSz0Cpr8sGN5EUzCDYxMVvsBaT2ANvEK4AhH/jzBN/C
	drAbjYHAN0qt1B2vCduQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkTzW-0000aG-JB; Mon, 08 Jul 2019 13:47:38 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkTzL-0000Zq-Oi
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 13:47:29 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MsqIi-1idXVd2xaq-00tCtF; Mon, 08 Jul 2019 15:47:09 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Inki Dae <inki.dae@samsung.com>, Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH] drm/exynos: add CONFIG_MMU dependency
Date: Mon,  8 Jul 2019 15:46:51 +0200
Message-Id: <20190708134707.538501-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:Axu85VajvoAR0wMxnciqB+GEFg6pSh3s41QC4py5g9oaTINzJOU
 UZTGHhbajCJ3JGbZmqfhTRCufcbapkbWIlxE2O6YC/PYBuj6T1Xc+KMLQ61WIPq+oD2194n
 CwfP9Yz4bxTS7rQpc1m0RFG+9Hhz5UTlg9Rdj5gGR44o4kixJuGca+25o7R7dEIlRK13gXG
 gCAopP2RQqbNVKGh6VcHw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wnjssiFpvxA=:HTMu8pLHDd0+KCxZo8b6Wn
 e+rAuNkumRK+K4Z/GKOoxrneL/xy7278A61Y67M6KOB+P062stKVyfD7Az5cOJZHGOFBOaOEk
 Uvyx4CtA4I/aveHXSdF7iTh61rnO0iFDNbMOm1+8KjkHwoghph0jdfvwy2VbPDC0ZP/4BhJGA
 fqZMHC9n9KfwFup9F1gyw9Wnv3c87zWbYYIKPtGWh9Yb6CazHKg4hSuJJ2cjWlIqLP/ohRJQE
 4nsMQNB6aafVD8ZgDE5e5skHAfYuj41tTYzyB14BZiXY1dZ3uszoiZnQKx8Avsfc4UYNVdtvD
 A2SnOlW/1H+JnT/+zKLp+0PA0JoXKynorPVVTakM203L+fDzngNUGXsV6+rblk2MIpley2aeO
 1iz9R/V9ISTWRasK1Z0fxpvOTpA7U6W3SZJYeGmTXx2QGlQvOhs8K+mrO9fUKKpfYS8SfIi3U
 vf5SmG44kUojDZ0Czvkz0kZ4nLl+o3WBTcolcI7ypGwocJYaXZvhFCZ8rcdz0yAR/POTH9Fjb
 I4ZyYvwDJZ/y0geIgeJo0BQDd2wuaQbHrrXwggxYJn4+BV4EeBmL4q2vHh7aWq88lAMNkdyWG
 Q4RB1/9Uxzh9dyJ6IdJHuumfnzjIpMplgs9EGUtvr70w91XN7wzNyJadQYJ9Mdcn7pUowbLO2
 tNEy0886CoGThl7fHLYWDGAXaKdwRsGZIivVKOprgWBasmaF+dPV8/YMPRzTamDudypA4e6S8
 Z2OwKIM/3VIqy4OOo2Gjb837APKoRwQAd4CMBA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_064728_103495_DB016CC8 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compile-testing this driver on a NOMMU configuration shows a link failure:

drivers/gpu/drm/exynos/exynos_drm_gem.o: In function `exynos_drm_gem_fault':
exynos_drm_gem.c:(.text+0x484): undefined reference to `vmf_insert_mixed'

Add a CONFIG_MMU dependency to ensure we only enable this in configurations
that build correctly.

Many other drm drivers have the same dependency. It would be nice to
make this work in MMU-less configurations, but evidently nobody has
ever needed this so far.

Fixes: 156bdac99061 ("drm/exynos: trigger build of all modules")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/exynos/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/exynos/Kconfig b/drivers/gpu/drm/exynos/Kconfig
index 60ce4a8ad9e1..6f7d3b3b3628 100644
--- a/drivers/gpu/drm/exynos/Kconfig
+++ b/drivers/gpu/drm/exynos/Kconfig
@@ -2,6 +2,7 @@
 config DRM_EXYNOS
 	tristate "DRM Support for Samsung SoC EXYNOS Series"
 	depends on OF && DRM && (ARCH_S3C64XX || ARCH_S5PV210 || ARCH_EXYNOS || ARCH_MULTIPLATFORM || COMPILE_TEST)
+	depends on MMU
 	select DRM_KMS_HELPER
 	select VIDEOMODE_HELPERS
 	select SND_SOC_HDMI_CODEC if SND_SOC
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
