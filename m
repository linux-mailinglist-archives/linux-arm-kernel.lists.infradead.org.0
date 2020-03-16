Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0C51871BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 18:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=35G4qQupOMD9NyampckAWZa6BiGERFz0Ly5WxQuQTws=; b=WxZlDVT1wSTo28xoHtnKbn9145
	Dp/gO9JZb0yHIZ95CzVfOVe6O+91Xk84qnh+G3pknQueyJUL2vA27it0zChyO2jDP2AAtydmAencT
	65Rcyc6ORIUgkb9LFZgVmgts3ogY7F9O1j8QpY5NhdAfnus6MK6hZki5enFekHuPpS0VUzKIr8pP+
	wXlYaVABRMc8fLUgw5OTZJgbhBNhODFYnl8ah1zwEjUpMd0ZGPZiSJOIFQ9bP//Br9IxwjXVXgaTz
	JXqajmVqETNS86deMH3fSZfHvsl1MBjemk7AhHfqkQQvcYZWawyRM6L+A+xXS6QK4b7/TQ0zDsk+b
	YvezQxZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDtzs-0001jJ-NL; Mon, 16 Mar 2020 17:57:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDtzN-0001Pe-VJ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 17:57:23 +0000
Received: from localhost.localdomain (unknown [194.230.155.125])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3A4D20658;
 Mon, 16 Mar 2020 17:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584381441;
 bh=W0Z8znSqJZoVcBqzFXOxUXDyetQLAHLVzSncnITJ0fc=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pTmVpY7fwCc9WQ72w1gc1VN5YXh8bjwlxWJGUdDgRL2Q7eS85x5QnOEXRAMI5v/GA
 QGIrBG112z9Rw1ENxMH2ilAuqJeRAN06vZyA07fV6710Q/kJMPXIFsqjyY0dcFMtJZ
 LmOCsZseYOn6k0AU4Rlc7X90z1pTqRT3ZuMKxUC0=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [PATCH PULL 3/3] soc: samsung: chipid: Fix return value on non-Exynos
 platforms
Date: Mon, 16 Mar 2020 18:56:52 +0100
Message-Id: <20200316175652.5604-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200316175652.5604-1-krzk@kernel.org>
References: <20200316175652.5604-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_105722_055552_303842F4 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Szyprowski <m.szyprowski@samsung.com>

Correct the probe return value to -ENODEV on non-Exynos platforms.

Fixes: 02fb29882d5c ("soc: samsung: chipid: Drop "syscon" compatible requirement")
Cc: <stable@vger.kernel.org>
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/soc/samsung/exynos-chipid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index 2dad4961a80b..8d4d05086906 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -59,7 +59,7 @@ static int __init exynos_chipid_early_init(void)
 	syscon = of_find_compatible_node(NULL, NULL,
 					 "samsung,exynos4210-chipid");
 	if (!syscon)
-		return ENODEV;
+		return -ENODEV;
 
 	regmap = device_node_to_regmap(syscon);
 	of_node_put(syscon);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
