Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAFB38D72
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qE7/C1zVOQLIg3ZInTgHURDBhFCooy8dPQLhcqIOkGI=; b=TrkKLKal3Vsy7f
	+liUTnFcQOd+DEMTIvcraZnzt0E67cgXGPb1HNCGYUGNSw3uYrGY6GFUtnQChLwoeQ1aohMkG5gx8
	5Z4JkWok+GvnwnN/1re7T3vaU58Qt5NlORab9KEAoHbvtjmbqtyyOFLEcwKMmhzT74zhi7BBwsYIb
	8XWe0TgB7n4RjhLRFxgyT5aOZLKtyxna4dV7hu2vkfH2QxEvPTv/3v8j5pthNRMXCcpylJUaKMzWF
	ZRblfmmeoeo1t6LNAxibgf8DwYCoMj7diPZCfJAg+AdhzvVjqZqD1KYe/OrVcLxhPZaQnZ73Pv81n
	YGSLO0HRS6JnkOZ9M2PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZG0I-0004jA-GL; Fri, 07 Jun 2019 14:38:02 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFym-0003Ca-PL
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:36:30 +0000
Received: by mail-wr1-x444.google.com with SMTP id n4so2380765wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uNmSu3t0eQ+1oavLsnh0wBIiE+Ac7ZRJiZuct8dB414=;
 b=JuZ09n+jR8uN91ascpcUjzRt195iDXq3u5wnE0G5pRr7FuE1MqdCje2rZXrN+pGu8V
 UWkFmq+G0gAbJ3Yjp0Ft9CVrBrWuVNepyVkJHPB3ddsr6ulWnAXdedFXCDDcPWVXr60c
 WIV2PpI3Nav38CwvWH25XsDBlZyScH6jX7cZP8qxezS+YpPy+XjHfPkrox7QoaXRJQ+h
 VcphiFcErQhJxhrHtCY2OjLW60x1rrgw6lw8lBIv/AUj9YKhK2e9D19U7DJ3dYM/6FVS
 VRuRGrIE8RHndI3FprkBT3gzIoizI2XR61+QBqp2AQHON7aA4homOZqfqN/iTe7OVTwi
 6xKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uNmSu3t0eQ+1oavLsnh0wBIiE+Ac7ZRJiZuct8dB414=;
 b=F6BDqwETXvWViPrR1Ux/vNlpEVM90BFKVsOZvfLgWhW8i09/uB9HpeaOw+NZSeeVT5
 1AUYTFAA6PuysqejPpG5KairIzzCsM3YmFHLDo452gTchP9K7+tT6oqw9/AlTKchw27D
 6gqvdH1stCh+6B7APW5vLsETQfM/bkXTFmahqGWHBfZrS7cBEN2gvn7B01nOibHGkXR0
 7DC/MVaScrfVWLJM9lwQE4CdpXAPMmh50rSpuvW4noD8Pdr8oH3Ckk6Ql4LyqR70UePg
 oqN8GMOlQgoyEoLI9mLMCS+aZ5zzjX8TBpaz/36PF/+Ge0jkWRryX94iu0jM8fZgZ0c0
 5ChQ==
X-Gm-Message-State: APjAAAUs53UmD8dk4fbY/59XEMr1l/uNBhLOT4cEDOq73AkbLKlSi6O3
 b0CQNWb/adyRwwJcU+391yPqXA==
X-Google-Smtp-Source: APXvYqyRTjuKUejtw/CpnhndB3HutsB4At+jy75Klf1cYI3Vro7bHQ3+grYE6mGUBYnEaB3ReWo20w==
X-Received: by 2002:adf:b64b:: with SMTP id i11mr33953671wre.205.1559918187019; 
 Fri, 07 Jun 2019 07:36:27 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t63sm2999829wmt.6.2019.06.07.07.36.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 07 Jun 2019 07:36:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 4/4] arm64: dts: meson-g12a-x96-max: bump bluetooth bus
 speed to 2Mbaud/s
Date: Fri,  7 Jun 2019 16:36:18 +0200
Message-Id: <20190607143618.32213-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607143618.32213-1-narmstrong@baylibre.com>
References: <20190607143618.32213-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_073628_872364_969F462A 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Setting to 2Mbaud/s is the nominal bus speed for common usages.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index aa9da5de5c2d..300c29dad49f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -206,6 +206,7 @@
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
 		clocks = <&wifi32k>;
 		clock-names = "lpo";
 	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
