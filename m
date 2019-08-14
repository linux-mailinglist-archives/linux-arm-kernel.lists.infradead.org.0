Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15F18D628
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MzxS+j+3jvJKqzBjluwO4iL9AO/wFt1GcIMCJR3DPJo=; b=Cauty9RLcjcNaf
	eI/Qqe5fywzbP0Y0BKWbjQ9rGP5WJyT86dwDOTeRzhBKl/EhyPGN9LMP2hxvknEkeM2olvA+644Nr
	Uhu+7FSY1+9finaiG3Nk+9XPbtwDyQOapbpcVn1a1e+Q7SVNFeqQuZEHRNYu9O1+6fYKTvbDymSsB
	4cG0x0JBSOyYExl9OFvzLSivlvfCe4qc+gdY0E0i0+OQ9wx/1eNHK0HHKKrDyQsFFoDbSmUNnrfLC
	V9bRyBcLGyeHsGITzmZL2rS2m3hQBB5lqzTIKWCRmP2o7CrVHrRngz5o3r1dbioh/BCfjJy20+mKy
	B+ZAhip61DE+6eOOeQTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuJY-0005in-Ab; Wed, 14 Aug 2019 14:31:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuHM-0002ex-FD
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:29:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id u16so275641wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 07:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VoiyEoznGsebSQriKSg2X1Svm8xxDWhM6W5MAaVlZfM=;
 b=jVWJmx+y2kT3aUx0SBHcmJEyZLxN5wNHbfobgwLdEmu9GOF4E2zVIvj0kNud4Neakn
 r4R7ia+Bd2OZkcCwGHL65pU7hUFJMgtqCT21SoS9wIonU1OYjghZkmWIp5LG5UhnMjy4
 aphvTnLzuIjuzgZkMGHtcxjPODJxi/uVgkDuL4qTTHSM3AJQNhJDfW5eg8PDwNzLZL9H
 xf5ShTMpRmYZO5y6lcdNjn8FjLI6BmNp43rDtnu5kmKrPZecoVStxfTI/C11YJp28bwu
 wA6ZVmC4j8wJpBEpOOSTyYBEZb8STMFtzKYUHat6zc+01hNQb8bmQnOqU3xvByzrtftX
 PUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VoiyEoznGsebSQriKSg2X1Svm8xxDWhM6W5MAaVlZfM=;
 b=enUJLQ0jCupvhauH6QYQftClytFuVf7O9D17oBUKNLjooZGQxZVoG/VO6AMQExgWov
 vWBNYRGYPMsMZKl62wej8sjYEJL5BEq+QPPHj45Rxo4SMYCwSJ58y9+kMpaeFf9nedL1
 6p2luDtNHhm+0qIE5PTrYSIbwBAjrLxxr9xBsPUwjSNGFPFQlG1pvlXhVedJpEeR3Oov
 iees/Nmg+BUWRWuIYPniJ0QzhCoZeIKmk/7TVIaVu1nZViS4g1EGMopIULsxGQ8TLaZj
 o8frM9uOFSi6jFozLhbHjlPU3HRaye3ixN4S+LekjFEepCIdZq8vKpPjsvMc2N1sFd1R
 gRYw==
X-Gm-Message-State: APjAAAXGyFgEnsR+PFomNd5wy3A5KfDKk6SJM1xhShHwWp+F75UWkjGN
 JmZ5D8Ntcb5FcVVLOTluY6ZO+A==
X-Google-Smtp-Source: APXvYqzxlOMYI2lLiopD9DUTgVJHaln/oI01siPstd8Ym3P4VYWq9U2IwostDoeJEXuI843drXHC1Q==
X-Received: by 2002:adf:a2cd:: with SMTP id t13mr33117115wra.251.1565792971007; 
 Wed, 14 Aug 2019 07:29:31 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 07:29:30 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 08/14] arm64: dts: meson-gxl: fix internal phy compatible
Date: Wed, 14 Aug 2019 16:29:12 +0200
Message-Id: <20190814142918.11636-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072932_536248_4D81BF49 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxl-s805x-libretech-ac.dt.yaml: ethernet-phy@8: compatible: ['ethernet-phy-id0181.4400', 'ethernet-phy-ieee802.3-c22'] is not valid under any of the given schemas

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index ee1ecdbcc958..43eb158bee24 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -709,7 +709,7 @@
 			#size-cells = <0>;
 
 			internal_phy: ethernet-phy@8 {
-				compatible = "ethernet-phy-id0181.4400", "ethernet-phy-ieee802.3-c22";
+				compatible = "ethernet-phy-id0181.4400";
 				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <8>;
 				max-speed = <100>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
