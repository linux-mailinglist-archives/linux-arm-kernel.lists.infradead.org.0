Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DF032D1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Zp2SHDD033h8UPctL50C6H4NQVGEqSZJqs6hkG8+mI=; b=IHhCR1DjiiX5yI
	YAqnDCYh/YaRSrt7r3nF0zhqeeuCmbya6y7NOkhLESn4kNJLW1jTFH+jfU1ERsMQNzTVMc0bk6WbH
	tIFPm+7HtkSw7LKfVkGKEx76cHGYw82JMTlHnOxqeW6bVsKD38oKQgPUdN/qrkWBujuTR+cQliJGo
	U9JGCiU8vTst4qE+DqfJcwhlrEOnk3zufoF/vzLGl4KKfSh18PXnlJbf7ZWPWz9JKYgsZgKMBbAFm
	muHWRLFK5uJcmisXY9pM3Mh+9NKytw2utQwq5AEQ7m5nhRZecSB6J1YgGwSscMa7j6dAy3KatKFcw
	O+xZV2qhh7uXGGCk7LDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjZa-0008Aq-Sw; Mon, 03 Jun 2019 09:48:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjZF-0007xp-9M
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:47:51 +0000
Received: by mail-wm1-x343.google.com with SMTP id u16so5081426wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 02:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MoxNzpWQVj3xGf+AW7qTWtzH4kDOxsop7x8jayF4ITg=;
 b=Ut4CpPOcIzFoSm2DnrLirVaBtT//sE/onDrTVZt0GIGlHIdgULDH1oHO8vcGa6UH8M
 5H128okQ2iVCIbiFe8oHfPPSZtoffh6qcZiNiRKOkIyHvjAqbRJA4Q+Mz907K+xwB+CA
 rrmbEJxs/jT/zv5b5OmFv3s/oyz3M/C1o6yie9LaySajfCkHTt02mNB05k6EyC+nf8Q7
 P+r3ocNo56AK4ES9pVjfx84lfe5BrvbZImD7Qep7hY0XjOCfDIOop9/Q8tl8Oa9Hn2Bm
 9gRzJn+Kihhn6BXEcbk5fmUkUUbIq69Y2yNkinwyOMncL0Q6veEmufbbf7dcQnion7ia
 sWUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MoxNzpWQVj3xGf+AW7qTWtzH4kDOxsop7x8jayF4ITg=;
 b=EMRf93mp5FxISRAgC/KBXEuArskUvJPGsvkUhtndmK5mOWT4ayLQ/0ux8poC7OP7mI
 Fo03/h4WekcsH5aO1gm+1TUFR/XbrcOXXbF52br5XXAPRgSyZP/+rH+Bzkv7C/pPoH/R
 8D5LbcotqNuaIAnFZ9U00JhorSDfehN11diTsWw6Pq8T6J+lbl/ePxswQUtsIX1s/Vox
 n4lnObOzbsY84Jac3oYKVpwCZ61OVA0m22T/23I7/WK0Gfy8BF6Jjb3ipNe4K8REULrC
 Cyi0e6VbGt/BvCSV3hsSUJGGCcd95CxCzWF2zsYhq4XaJMhNqyJVdCk03zdiKnDbFLy2
 mzAQ==
X-Gm-Message-State: APjAAAVLWt95eD9LSXpkUUeq5oSDZ2kJLW4uRrJs8O8QjKSF/YPEJacy
 MGfc2qHWuMFl3sHzK39rTjZ+2Q==
X-Google-Smtp-Source: APXvYqysDwK7C0l+WDPz6vO304cArW9VR5HPMJmOZlDtDrMmMaHe/bWLKBDfTEI9DaeyyZ3xt5eHVQ==
X-Received: by 2002:a1c:e90f:: with SMTP id q15mr10003607wmc.89.1559555267708; 
 Mon, 03 Jun 2019 02:47:47 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id z14sm11235375wrh.86.2019.06.03.02.47.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Jun 2019 02:47:47 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 1/4] arm64: dts: meson-g12a-sei510: add 32k clock to bluetooth
 node
Date: Mon,  3 Jun 2019 11:47:37 +0200
Message-Id: <20190603094740.12255-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603094740.12255-1-narmstrong@baylibre.com>
References: <20190603094740.12255-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_024749_564048_0FCC47AA 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 32k low power clock is necessary for the bluetooth part of the
combo module to initialize correctly, simply add the same clock we
use for the sdio pwrseq.

Fixes: d1c023af1988 ("arm64: dts: meson-g12a-sei510: Add ADC Key and BT support")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
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
