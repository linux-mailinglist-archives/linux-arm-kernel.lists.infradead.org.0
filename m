Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC7D1B039B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 10:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ZSN2MmHCNLjhRRovEZxYtntTUsw6/73XUWX2nlq05I=; b=g71yCuBj688qfz
	xZETYFLiWsTb7Fl5GU4C4trk2hN+rTtPKFPzMgoyEyQNpazl19gDfKub38WqfVXo6IzSMdgyAhiYt
	13kt3Pquh17qqtdLBmyquf6OyXBHd1XwjgSLb6ySWRng138Q953/smE3e34m72OszLdCGOLYD8VB6
	VQx2GdaO/h4QbhR6wPhqT4kkiPDOiXpqKS0vWv3KmDC9O/MjUnsyV0Hv6Z5cCIfKlF8qKFutYWnS+
	f5BohNYmvUEA73aT0ytLBjbD7Sck6xq2HHto+RhQNqyeSHrDyjcXJcRkqK3GK+O4kRfzCW4POmjkq
	zaG+Ke4cC5WjaFOsR64Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQRM4-00088a-Q6; Mon, 20 Apr 2020 08:00:36 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQRLu-00083S-Ez
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:00:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id j2so10864465wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 01:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A+QeMSWD3PS086s3vwF3t/garbLCRMGAy7YurSuE4Kc=;
 b=hTLGia7bam5LZwHsqquFh8AymM6Ls/yjxGtl/hrZDunqN4uGsKNHdZ6O51cqaTHlUN
 BYNz1z1cbWKua9hrTYRPm3A7mut1msCAXNB703F1megHRsIopjDs2cIhcRhz6G++6Nr/
 J/IsnRBoNr7IOPpveEfTAOfIv9Qjqc12xELoq+aRps4wHEWo7AztMRlvwLdpiJOUhyA8
 XIEZS7Col4hxpVlQLXtIGF1+wOIAZRycl/EOYMVy4vzBIhb9F0mclmozxA1kwBtGGSA7
 CDj5v1n9e0Hqf/zaUlZWJsjhws2pdwplXtM5OoDvB9PD3kLZBRaPgPQB6sViOtf9toXC
 WYYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A+QeMSWD3PS086s3vwF3t/garbLCRMGAy7YurSuE4Kc=;
 b=JO1bunCqiyWlkSNk4GergfHHv9YysvmZKdoFQ69Ma6soqY0ze369pk/r1HXkAU6S4f
 AS8KFxA57wPfQ6/X54E2SbYJ2UwNUClYd5Axz31yA3Rb43587k7zmlewzQyZfIzhZovO
 7wK8bse1N6YE7ipXBzZI3qLTb81p1wlhe/CKiFd9ZT0Pt93VG4UPngwLLHm/i8zQT1eY
 hIoybQs9V4OrjgrK7aKVEeL9gQYZTFx8JeVwCX+HMmmyuViYsNB8l2ZNnoIilBW52DaP
 fSEkKZcvPOGT2pdZFRL5IsHOI0wTYArjBecrv6ePnD9qlZJrD/wN/m6IzQ3KPy9dwbvx
 b8WQ==
X-Gm-Message-State: AGi0PubG3lrwohNGLXMgh5AL4Cy4KAK549hDpTtEWN3pMPRfq2kc1IYH
 CGFvQmuJTPKFjSBsTIysNXgUbQ==
X-Google-Smtp-Source: APiQypLDTl9EnBI31IMEjpSapxs/QYgBIADfuyt1egW7mLSxjpapQG5/JpIeV52Oh+uG14VKnbAC1g==
X-Received: by 2002:a5d:4092:: with SMTP id o18mr9493720wrp.227.1587369624021; 
 Mon, 20 Apr 2020 01:00:24 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 v10sm113256wrq.45.2020.04.20.01.00.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 01:00:23 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH] arm64: dts: meson-g12: remove spurious blank line
Date: Mon, 20 Apr 2020 10:00:18 +0200
Message-Id: <20200420080018.11607-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_010026_525064_17115D84 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove spurious blank line introduced in f12a463d2f43 but was not part
of the original patch at [1].

[1] http://lore.kernel.org/r/20200313090713.15147-3-narmstrong@baylibre.com

Fixes: f12a463d2f43 ("arm64: dts: meson-g12: add the SPIFC nodes")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
index 783e5a397f86..55d39020ec72 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
@@ -1,4 +1,3 @@
-
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Copyright (c) 2019 BayLibre, SAS
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
