Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5719A89C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlLYM+tW7d5fn9KvexeIJa6mrqDZm/DrBfSmIn6RTCg=; b=GyBxr84r9XDXhS
	mNqdKLMWWI23sbbAQeKih8FeovclH8RL/J5Lde90lkWKoDfSB2FhsjKRTQ2VnIz+cMp/5glrlo358
	uFV4B6zkNpSej3ae9JN4/hh0IMyocGIgfI4ToFhrRh/2zt7pwBNp6DVCzzWsRMUFUeAVsEHujSaK/
	RNjsOfqBieH3efiP9iYmHYaDFPcLz6R5ah/5+5mFvLYOdZAywNevpnW3TOSgwlVKQrbtrhQCM55fr
	LOXCX26e7sXG5Ar341F6vG7b0XPD2mtdh5NUBmj7DzEgoAAyv1iSJZFqDw7xUSjOlEiXmhBapW9na
	/7Dr1OH8//uVWueQ0j3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13t0-0004wZ-7Z; Fri, 23 Aug 2019 07:21:26 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bG-00019s-0v
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:03:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id v15so7874091wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y6OlL/eR9h1Ghc3Dkq2YBZdnDsKxiiGiMpQwldNFWsU=;
 b=2BMhpGV4rttepJcUT2dvXB1b06ryYYyen4bJHkUiI5sHw3e49HDqSL3QaWqKk6BSoL
 HOBVmHBBbNTqVMQQyQxkDtCyqXxTjgmyJpsziONpWxz9pjtbbeuR1oeMGaamdsWw8ixU
 j7U5hyLej/ao83Mhm+S4vaGsTqPSK4ZRFL1JJbX4P4C8PrQ8B15ebcV4bpDlt1ZhREx8
 sfxd15gWro4lsT3pMjDrh4Vl4VLHHv1Kdz3sNhqJ+AcRXZcH4AWZnDapyzZjEuqrBRiB
 0gOR0HSheZa6D0C8ZZHELom0N/K7XWnUtnPDIklurgcwHf/V8QHqphX90dAQo1JOzVRm
 mYww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y6OlL/eR9h1Ghc3Dkq2YBZdnDsKxiiGiMpQwldNFWsU=;
 b=lH6Ad4cHMIeR3a9iiA/vYCkPUtQcFRmcXK904Ut8B5yKeLWHozT+5tLU8u/NWw6bof
 hAKluBRqZecFTYnjSjRtwOGnLH9rzfF3sQwaS2Jm/jqSCuWWYbzcvflpwgldyynJmbQW
 d0XsFLMySoLW1g8f90JgLGgiPHLVbQVJFv+0Pyyf/DKEVFalr0vOmgXGNYLVJcqTE0EV
 4M4KWZ4S2NUGlIggCtTNQxUdD6dTAm1NrSUCmknZpDul7IwmLEKZ3oQMm6pYyYxzYbNT
 WqMJLWIGQC7pHc/de7sQAdIgkPtcSN9HUDkKwmrHkk+3lg7oJ87mHtApvkPgdTT0rOlG
 mSGA==
X-Gm-Message-State: APjAAAVfoX5vi/6nhktmwCkGJP4GXIn28UEfBjDz2hmxpZz5QV74eYQI
 hux8Aj0PhS5AyGCtSAXja1GpnQ==
X-Google-Smtp-Source: APXvYqxtN07laBxLSGSpNPngo3T29VHr60UhoGb5uhAhV6UuO0Ye5M829fLDQKUyMxekNg94cOFQNQ==
X-Received: by 2002:a1c:541e:: with SMTP id i30mr3210905wmb.54.1566543784635; 
 Fri, 23 Aug 2019 00:03:04 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.03.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 00:03:04 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RESEND PATCH v2 11/14] arm64: dts: meson-g12a-x96-max: fix compatible
Date: Fri, 23 Aug 2019 09:02:45 +0200
Message-Id: <20190823070248.25832-12-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_000307_300509_543CEDCF 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-g12a-x96-max.dt.yaml: /: compatible: ['amediatech,x96-max', 'amlogic,u200', 'amlogic,g12a'] is not valid under any of the given schemas

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index c1e58a69d434..4770ecac3d85 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -11,7 +11,7 @@
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
-	compatible = "amediatech,x96-max", "amlogic,u200", "amlogic,g12a";
+	compatible = "amediatech,x96-max", "amlogic,g12a";
 	model = "Shenzhen Amediatech Technology Co., Ltd X96 Max";
 
 	aliases {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
