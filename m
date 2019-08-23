Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83ED99A89A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XgoGWrXiZqjzO0fQkRkRTrKQRm1/R2G+L+xhZ3Nwwzk=; b=Nlc8xbCVre/sA4
	j354KbVO1xaIK8k0kemtCaXVz4wjJi2I8P5qLM5/WUlIicW54Xn5DulQnpqOk3C5jwSJmFXx8lglC
	qT6Y/4iChsy6BQK3hOvRomSuGdYaIbRt9YWHekzGMkepKcncn9oGlJwu8hAH5b9yx9rLeeUmtfXQb
	YB/zxwdo7vOFoy3vnUJGG/6K2eUX/g0zO5NzmBDfwg0ZF40snShhahVMo+Pc55i+BBrRVdlVGY5gy
	JhJqGtNRaYG8bWOj4ChnQ46ibPUIYc+qJEdM7jom0z8Y8lrPImp0uIZ19CqCiucGDK3KzhA8cAKqh
	SZFxwWxPikqwnBTy+LiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13sS-0004W4-SX; Fri, 23 Aug 2019 07:20:53 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bD-00018I-Sr
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:03:10 +0000
Received: by mail-wm1-f67.google.com with SMTP id c5so7823970wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8bvFZYOOWbciidOH/I9lMYm8n7mRLKVoh4XQnIxXums=;
 b=kC/lzVfZUUGHHcb62P+i2HWLr9INMDQhZtTuS0Kq4wKm7wg7inFaRwCJpNk76Bx6So
 CYiDAlrHSUIxo6WCwRzJrEDJH3bqOiOonb17PcyiVgjIHahlQOLr8fwKe1X2PPEzrUuo
 GYxq7XLR9WGQX6zGLYZ6uMM/UiYY7iqmHlke51UUHC0z3FbZlYZTXYXgJ0BlyoTy9ERG
 mrpN+gGOem0lozxhG03hrWjtAfYvlA0kp4T6QmStAZRZEDjKajpigB+H3x8NbWbxN72C
 F4oCPfKynoeEE67PoD8GOOB9uT2FnJ3z5ju01qFhgz0zH9F/LOOzt6l6hgxAQ0fmhjUA
 n+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8bvFZYOOWbciidOH/I9lMYm8n7mRLKVoh4XQnIxXums=;
 b=s2ZNXM5dlL4xTct5rxzq0GOYss6ag+V5AAFlM5p7+r5E9DEkJzClrppyI3o7Jxm4k0
 zQtvbHiJf48OcbP82uk7ZyuB1fQ0OOGOuzxq33C0k54trllROo8Lu1c9o44XH/fcofd6
 aXI30tOBOmnwrqaAVINJ3c8J975OhArd2YmJ5qyOydVWqxjUzEdcf2MMENgfJWRcLb9T
 nJJEd4uXU4hvJ0TA5dXxzyo6O6Iv/HGiolH66abUBObmKEeceJsyEbKYygvSKxEw9tSL
 ugsN2SfNwL3UGXJ43dFt218xlFGvzflkt73jU5OgZr72g5u3Oppf9IgzxzOFGuCu0Obt
 DP7w==
X-Gm-Message-State: APjAAAURfloGL+a4oc4xQjUJaoguzA7F5/ZUpPZXjnFtQpexhHEqlHTV
 2y0LflqIjINnrquVtQX3blT62w==
X-Google-Smtp-Source: APXvYqxlo25gmqlaRYG7TGhQ/LohMFW/zSGas3jbT1AdbAPrDC365o7N9sowEhnteOW5MHE7iRgFHA==
X-Received: by 2002:a05:600c:296:: with SMTP id
 22mr3045698wmk.148.1566543781652; 
 Fri, 23 Aug 2019 00:03:01 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.03.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 00:03:01 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RESEND PATCH v2 08/14] arm64: dts: meson-gxl: fix internal phy
 compatible
Date: Fri, 23 Aug 2019 09:02:42 +0200
Message-Id: <20190823070248.25832-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_000304_215778_185BE848 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxl-s805x-libretech-ac.dt.yaml: ethernet-phy@8: compatible: ['ethernet-phy-id0181.4400', 'ethernet-phy-ieee802.3-c22'] is not valid under any of the given schemas

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 7a3b674db11f..49ff0a7d0210 100644
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
