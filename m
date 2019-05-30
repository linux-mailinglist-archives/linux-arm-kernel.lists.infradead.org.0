Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D0F2FA88
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 12:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=mbh9gI2NLrGB4qV0TwSUj/hb/w6b5xtEKRW6D8AJ3C4=; b=sb
	SoEcVpGPFKzqvqUAHxuBJLsx0MhcQpOdvwi7qSttcL6b/o3TM+oh34X7w2W5QzEGCglBKBBli1Oqo
	xC7c5Cb8QOpkrrehx28aS2hUXGKy85mtB48nIIXjeY61iZZLF8DfB2ImF4iA3VrSiWaplc90fFrfj
	KqurHdznA2dv7QvTtPsuHwGidWXAXiBA9sFk9ji+sKU5O80BWAm38yAMZb3Csq6l4IxhuovNYIEAw
	nxWO7VZ5A/YMYegACb1ujOcnsKcClFTbRdWQ4gcaC/JemKMbJqFZEupeKwsASh+rCS6DUayHeZkAf
	uzBeNpHdf5FRUmhrik3f/OZLqC0Rp4zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWIeN-0001gL-S3; Thu, 30 May 2019 10:51:11 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWIeF-0001fa-Q9
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 10:51:05 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190530105100euoutp01d0a085bd091e741d1235a2d2ef96d3df~jcGGqeBH52849128491euoutp018
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 10:51:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190530105100euoutp01d0a085bd091e741d1235a2d2ef96d3df~jcGGqeBH52849128491euoutp018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559213460;
 bh=vdaZS4yfBCb1935LeDCfNjU3VfSTXBG/EFyAbIYcM8o=;
 h=From:To:Cc:Subject:Date:References:From;
 b=nRvz2Cb7/dcltK7xJZcAnGH/ZzI0UIVgK6O78CF42QfZcpDMA41XP3azVl5Em2qwl
 S+F1bYESlQox7eOf1x7PacnsSIFBL7mL5xWqHJLKQ3K24ZNUO2t8EISfhBimL1V8GB
 7COTo8KOGcLxC24GFhoxAWgyUStB05capfo4yn9g=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190530105100eucas1p113f0aa31e8140ba1803e60ee56578bea~jcGGNiEyi1817318173eucas1p1r;
 Thu, 30 May 2019 10:51:00 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id B0.E5.04377.395BFEC5; Thu, 30
 May 2019 11:50:59 +0100 (BST)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190530105059eucas1p1d9c911a5ba2ae412166cd8866deb725e~jcGFcTsbr1065610656eucas1p1y;
 Thu, 30 May 2019 10:50:59 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-39-5cefb5934d0e
Received: from eusync3.samsung.com ( [203.254.199.213]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id AF.3B.04140.395BFEC5; Thu, 30
 May 2019 11:50:59 +0100 (BST)
Received: from AMDC2765.DIGITAL.local ([106.120.51.73]) by
 eusync3.samsung.com (Oracle Communications Messaging Server 7.0.5.31.0 64bit
 (built May  5 2014)) with ESMTPA id <0PSB003AECSQ2880@eusync3.samsung.com>;
 Thu, 30 May 2019 11:50:59 +0100 (BST)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] clocksource: exynos_mct: Increase priority over ARM arch
 timer
Date: Thu, 30 May 2019 12:50:43 +0200
Message-id: <20190530105043.29965-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsWy7djP87qTt76PMdgzwcxi44z1rBbXvzxn
 tZj3Wdbi/PkN7BabHl9jtbi8aw6bxYzz+5gs1h65y26xedNUZgdOj02rOtk87lzbw+bx7tw5
 do/NS+o9+rasYvT4vEkugC2KyyYlNSezLLVI3y6BK+PD08PsBUvFK553/GJuYLwj3MXIySEh
 YCLx/8M9xi5GLg4hgRWMEqduf2eHcD4zSszetJ8Vpmr//xtsEIlljBLbb6xjhnD+M0o8uLGa
 HaSKTcBQouttFxuILSKQLfHs+00mkCJmgS4midsLD4AVCQuESOw6dY0FxGYRUJXYseY0I4jN
 K2Ar8f3bIxaIdfISqzccANsgIfCXVaL9/jWgSRxAjovEvS/BEDUyEpcnd7NA1DQzSjw8t5Yd
 wulhlLjcNIMRospa4vDxi2BPMAvwSUzaNp0ZYhCvREebEESJh8TmS5/BwkICsRKXD8VOYBRf
 wMiwilE8tbQ4Nz212CgvtVyvODG3uDQvXS85P3cTIzDWTv87/mUH464/SYcYBTgYlXh4J+S/
 ixFiTSwrrsw9xCjBwawkwvtzOVCINyWxsiq1KD++qDQntfgQozQHi5I4bzXDg2ghgfTEktTs
 1NSC1CKYLBMHp1QDI3tNJLcRw7aFt35PWPM3VPH21BdHb52vn/I0T0qp827KrP+HQnQPfA5U
 nrz/+G67VTKPuB52sNT+K4o+zG4f/j//a/Shz7PWv1j733epqbXdQo4gl8lKR/4IifXH2lSl
 Nfxg13L68X6dBKO+unW8o+/rTlvF+0dKTuxnOJDTtmOHp/X2TRMuFyqxFGckGmoxFxUnAgC9
 6d8OsQIAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLJMWRmVeSWpSXmKPExsVy+t/xq7qTt76PMXj1kdti44z1rBbXvzxn
 tZj3Wdbi/PkN7BabHl9jtbi8aw6bxYzz+5gs1h65y26xedNUZgdOj02rOtk87lzbw+bx7tw5
 do/NS+o9+rasYvT4vEkugC2KyyYlNSezLLVI3y6BK+PD08PsBUvFK553/GJuYLwj3MXIySEh
 YCKx//8Nti5GLg4hgSWMEl+3zmKBcBqZJFa/WckCUsUmYCjR9baLDcQWEciWmLz2EVgRs0AP
 k0T71d/sIAlhgRCJXaeugTWwCKhK7FhzmhHE5hWwlfj+7RELxDp5idUbDjBPYORawMiwilEk
 tbQ4Nz232EivODG3uDQvXS85P3cTIzBQth37uWUHY9e74EOMAhyMSjy8E/LfxQixJpYVV+Ye
 YpTgYFYS4f25HCjEm5JYWZValB9fVJqTWnyIUZqDRUmct0PgYIyQQHpiSWp2ampBahFMlomD
 U6qBcX/u07sturUvxT8f0GRSXWJ9++eNbu39ep+Loi709v46fSJHfL3LjfwnTGGKAeZtIZHL
 ewRvuaY+S6rjct3XVqVsIV8o52i+atfa+Tfv1S1pX6JpztRbuPvjcuMYnmcb9s7dIZvQ7L2n
 MWb6kf97kw29s0NVLll2rVy88I7AM2vXyfH7JoktVGIpzkg01GIuKk4EAGaE5QsQAgAA
X-CMS-MailID: 20190530105059eucas1p1d9c911a5ba2ae412166cd8866deb725e
CMS-TYPE: 201P
X-CMS-RootMailID: 20190530105059eucas1p1d9c911a5ba2ae412166cd8866deb725e
References: <CGME20190530105059eucas1p1d9c911a5ba2ae412166cd8866deb725e@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_035104_143626_45779687 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Exynos SoCs based on CA7/CA15 have 2 timer interfaces: custom Exynos MCT
(Multi Core Timer) and standard ARM Architected Timers.

There are use cases, where both timer interfaces are used simultanously.
One of such examples is using Exynos MCT for the main system timer and
ARM Architected Timers for the KVM and virtualized guests (KVM requires
arch timers).

Exynos Multi-Core Timer driver (exynos_mct) must be however started
before ARM Architected Timers (arch_timer), because they both share some
common hardware blocks (global system counter) and turning on MCT is
needed to get ARM Architected Timer working properly.

To ensure selecting Exynos MCT as the main system timer, increase MCT
timer rating. To ensure proper starting order of both timers during
suspend/resume cycle, increase MCT hotplug priority over ARM Archictected
Timers.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
---
v3: rephrased commit message, rebased onto v5.2-rc1

v2: https://patchwork.kernel.org/patch/10863101/
   added comments about the relation to ARM architected timer
    rebased onto v5.1-rc1

v1: https://patchwork.kernel.org/patch/10814921/
---
 drivers/clocksource/exynos_mct.c | 4 ++--
 include/linux/cpuhotplug.h       | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clocksource/exynos_mct.c b/drivers/clocksource/exynos_mct.c
index 34bd250d46c6..6aa10cbc1d59 100644
--- a/drivers/clocksource/exynos_mct.c
+++ b/drivers/clocksource/exynos_mct.c
@@ -209,7 +209,7 @@ static void exynos4_frc_resume(struct clocksource *cs)
 
 static struct clocksource mct_frc = {
 	.name		= "mct-frc",
-	.rating		= 400,
+	.rating		= 450,	/* use value higher than ARM arch timer */
 	.read		= exynos4_frc_read,
 	.mask		= CLOCKSOURCE_MASK(32),
 	.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
@@ -464,7 +464,7 @@ static int exynos4_mct_starting_cpu(unsigned int cpu)
 	evt->set_state_oneshot_stopped = set_state_shutdown;
 	evt->tick_resume = set_state_shutdown;
 	evt->features = CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT;
-	evt->rating = 450;
+	evt->rating = 500;	/* use value higher than ARM arch timer */
 
 	exynos4_mct_write(TICK_BASE_CNT, mevt->base + MCT_L_TCNTB_OFFSET);
 
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index e78281d07b70..53fb48de9589 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -115,10 +115,10 @@ enum cpuhp_state {
 	CPUHP_AP_PERF_ARM_ACPI_STARTING,
 	CPUHP_AP_PERF_ARM_STARTING,
 	CPUHP_AP_ARM_L2X0_STARTING,
+	CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING,
 	CPUHP_AP_ARM_ARCH_TIMER_STARTING,
 	CPUHP_AP_ARM_GLOBAL_TIMER_STARTING,
 	CPUHP_AP_JCORE_TIMER_STARTING,
-	CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING,
 	CPUHP_AP_ARM_TWD_STARTING,
 	CPUHP_AP_QCOM_TIMER_STARTING,
 	CPUHP_AP_TEGRA_TIMER_STARTING,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
