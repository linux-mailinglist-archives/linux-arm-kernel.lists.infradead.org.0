Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FE338D56
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGUfqe4Eh7918/NUoHgct3cajMst/J3U05xcX/QQXR4=; b=Aq8wOsTUoKXDJ3
	bO/Kcs/1iiHNCaUb4MciOi5hOotanKSy3aitmSIQsW7vYOgLpLeLfOnTQXNIIvqmacUUQ8+bT/dWJ
	wLaThoyNT17Ph0anYtv98vvx9BvrMwNhbhSnGXFbw60G/eOS/x3bnDU3bGLasU3EswGNrRo7mBOxB
	Z7TNZJ/WHjN99erA65gCKYv3riQgQa6dXnmQhWp3GfavPP2LyKBZ+yjZ8yq+fRb4aEMkFk1qhP2Eo
	NqsiXGm9hvXQVJeB2uW6BjBy45MUUZfx/CrRyDzYSNwHyvs6Zeiak7iinggJxh+mJPrnQXdRgg4P7
	hKXqMy6uFu7KhyXhA0kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFzK-0003Wr-AM; Fri, 07 Jun 2019 14:37:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFyi-00039F-Qu
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:36:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id m3so2435610wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yIRxpsMoY3xfY+o4Dg8OGtpln2zFz/QoSQ1BbOA5d+M=;
 b=kz7mySpc/RfdxVdkBQIYBkCWZMf8J3Og77Hoxh7p5O6+zgLmVsYzLm7DipWdAe3DuJ
 o/KJNHuFuImq4fp7mbIYnBI507eBLQf1psgW1UQa2jT17TTYteWuBqxiIO1yapVdgFje
 E8mqlAnV2O2ZeVVc2va+OxN1JLKMDAXRXaFEOVZ6yh+KiEKpuYMpwimq7MjwKQMMkf9j
 4+1nF1o8ZcycaP49aLc/rX5WPUovWcC+RvzZtD2TaYOhwcqaV6Ot9dHEp8Zj4JeNRlCG
 9xX8SHNsFnWiYHozpDV1mXIhQxoCUIld4PS2jTK/3+mamedw0YnaFUQkKzc0vh3OoBYD
 0brg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yIRxpsMoY3xfY+o4Dg8OGtpln2zFz/QoSQ1BbOA5d+M=;
 b=muLfvQEYBi+ycW8kob6g90VCekJkzuHAMW0KcGM1YuBmud6MpvSi1tXVxLoD1j+MZC
 fl2JM1L29u/L5RqCAz/MIeJJajviDlrmJHzb8paXq490qeLTlOUPNWY/uCh2Wb3fEjGq
 CWWrx7rt+WHo1mhAv+JoptGmwvEIkwBzH9kZwWYW6/aVk3rHMgJEMYOeD3x8ovpkULq7
 9kZQxBrehRuZUuB46KlUVgE13prpvI4qzzYJHrguRNqnPw1PLH0KkcKRPyv/Bnm//MZn
 MDxAm9HYavZRBTYDz3w4AFjtrKIPJSmIzDlzRldHpz6AcGGQAh41wR1ZU+iwU0AnYW6s
 //Sw==
X-Gm-Message-State: APjAAAUIYwD7cbRy/qpoo6R24MvoDfX8pGBCJoDrFO4tYs+4hoFdeCPo
 iEirMKrNpsjM6RCg8XU67lvQoQ==
X-Google-Smtp-Source: APXvYqxA6g/fwxm6qy/SKZY+pPoIKIGaOBpCG937P/3hBCQn2OsjvKVjainHghklDxT+45l3Inz2CQ==
X-Received: by 2002:adf:ee4a:: with SMTP id w10mr22558075wro.311.1559918183223; 
 Fri, 07 Jun 2019 07:36:23 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t63sm2999829wmt.6.2019.06.07.07.36.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 07 Jun 2019 07:36:22 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 1/4] arm64: dts: meson-g12a-sei510: add 32k clock to
 bluetooth node
Date: Fri,  7 Jun 2019 16:36:15 +0200
Message-Id: <20190607143618.32213-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607143618.32213-1-narmstrong@baylibre.com>
References: <20190607143618.32213-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_073624_869387_ABBFCDC2 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 32k low power clock is necessary for the bluetooth part of the
combo module to initialize correctly, simply add the same clock we
use for the sdio pwrseq.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index eac57d997e0b..3e0e119c13ce 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -530,6 +530,8 @@
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
 		vbat-supply = <&vddao_3v3>;
 		vddio-supply = <&vddio_ao1v8>;
 	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
