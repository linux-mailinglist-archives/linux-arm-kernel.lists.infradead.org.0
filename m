Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 918A354F01
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9gfZE7ypqbiNw2zIF9Ij13QjIowV7R6oxeD6HsyRjtA=; b=l03x/5iBB9RwRs
	4kaj00jsQJxQ3pJmZ5oVxG07A4vLvyRRkOHuuuNegxLbX11NAHQrMMnRlyLbzgAlnU9Sebn6TApWP
	MyfJPM2ShXg+GvC2CnD9MZtfAZFbmySTVbPVy71JAYfT8ODToP6y7Y5y2ysGGR3sZ7Arw5DtKdep/
	j8aVM7DE6haB3kkYVnlbQyA4+LJzbxqv9F3+5xsrUy9BqvCe/gIuM6+3TQVrwTAaccOME8fJ+KO/S
	RMQM/JxK+EhOO3xkYatwjHkIgr6oDqDLchc+ZVmTn9G/nlm0h1iTue8ZBigY6GuPMDvsUnFpLhS8P
	5iYLEf0Rf2PxTLf+UCoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkhL-0005fX-9I; Tue, 25 Jun 2019 12:37:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkgv-0005RX-MF
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:36:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id 207so2658699wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9ZX4reNH1Y4oGZx//omW4y+4kXs+97gm3IKdBMyA4qA=;
 b=HpzFOXWoy+175TZnrqU8T7yGRS2B6tYI96yqoa477Sr0PvZoubHe0dGEE8qR0w9FJ7
 CG87WTWkE5tBOtH+TJYq6Z2JvVZYEi9F69fZ79Z+EGjKnngJSHH4QhxCA3u87A/nl0Fy
 dRrf+rU+uWsBAdpFvOH25TJbTFOknCo7fbfhO5fkeJOMie3CbjWCJgcNd+6rqzhGp6jz
 bjuIyDa1nNsgmc2kxyXTkMMKDr7TFy4CfcIwU3Ws3CjQ350eBLrdJPCVE5Q3Jz+1xt8Y
 43Tkf62WO0jRZW4efWk19shXgogUl/d3voY4MWwz7kVVN3LiEp0euMMXxqMSF59GECjx
 v/Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9ZX4reNH1Y4oGZx//omW4y+4kXs+97gm3IKdBMyA4qA=;
 b=KYxaGxhTcMTJ0f//Rhzu0XGFYJM4VOzIXCDwMb/5UirVqXAKnOsRJ2038q7rMKyYLJ
 Ps29BU3jd0GgVsHyzd0Khnnzbo/IMD51peIreFcsT/mYZsUHIF8+IQ9mVams4tAaK/UC
 0+UOCKKKWGeS9dK8m+MMkfnwLDJJsm3jDIouNWy/hsh8Spj5M8BdT7/D1Z1IV7HIQfbc
 Ao0S1aXqXrpFKF7Y6MeWTuAQl/6GW8T8atogckDA07m+zjMDXjNM7awXCasodopXKREC
 pD3IJM8OsHbLPV+pr8A64oQrTbZfCkRWWQOxp73HZ1cxd45V5q86exnIeiAwfhj1C4O/
 czfQ==
X-Gm-Message-State: APjAAAU/PW9XAtZ8k/6ZEGv7keIAokTs6mAiEOu1APdrEDeWM/n3SUOD
 hJIuxpf22bFy7zuRvb3iawDdoA==
X-Google-Smtp-Source: APXvYqzgY9PHUvM/ccsDS26S+XkhVdKSnIkiIIFWVo1bY8TU03TmD1YWUBru8miYVEDgfNd2A4wSag==
X-Received: by 2002:a1c:cf0b:: with SMTP id f11mr20443151wmg.138.1561466210920; 
 Tue, 25 Jun 2019 05:36:50 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id n1sm10983882wrx.39.2019.06.25.05.36.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 05:36:50 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH] arm64: dts: meson-g12a: add missing dwc2 phy-names
Date: Tue, 25 Jun 2019 14:36:47 +0200
Message-Id: <20190625123647.26117-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_053653_826812_73569A30 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The G12A USB2 OTG capable PHY uses a 8bit large UTMI bus, and the OTG
controller gets the PHY but width by probing the associated phy.

By default it will use 16bit wide settings if a phy is not specified,
in our case we specified the phy, but not the phy-names.

The dwc2 bindings specifies that if phys is present, phy-names shall be
"usb2-phy".

Adding phy-names = "usb2-phy" solves the OTG PHY bus configuration.

Fixes: 9baf7d6be730 ("arm64: dts: meson: g12a: Add G12A USB nodes")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index f8d43e3dcf20..1785552d450c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -2386,6 +2386,7 @@
 				clocks = <&clkc CLKID_USB1_DDR_BRIDGE>;
 				clock-names = "ddr";
 				phys = <&usb2_phy1>;
+				phy-names = "usb2-phy";
 				dr_mode = "peripheral";
 				g-rx-fifo-size = <192>;
 				g-np-tx-fifo-size = <128>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
