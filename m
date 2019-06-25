Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A9D554B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKdhHDdufkZpGCmyn7TNPUWghHEsaYSLuHJre8eck+w=; b=RAWLPKk0OG5o5P
	+PIb5qwf7klxCimbI0PmYAeoqSmgU11bJ8XFMgZ4vGnOeLo17JvAIm7C7dH2AzeY+yKIY8pg59SXJ
	th/Aba/SjTkW0ITR8/+vg2bI11ozLoARAF5ym+cDKIGqj6FXOdkRqzOszi/nIxIoyxw2GsU0xYV3O
	TnTd0u/EpDTBG8P8eME++Lv/VkSds29Q0CJHqZRjyKAWb7cDiFMp2sncYOkUwuKr1r0diX9wy9TXJ
	kdBOzdtJug7hIXJAuO1oIrf4ng0BlJ0uEkPF63ktVUvZNS2xv/BzHq2+e+qexyy1eqg1spGmw/Z58
	WySQ7GAbjt+8AXaj29vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoTH-0004YU-7I; Tue, 25 Jun 2019 16:39:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoPN-0001vP-0F
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:35:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so18611086wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sFDObtAhBFoq+e3uGBncXCZh94u1gqoIy533R027F8g=;
 b=G4Pw99p7XQ8OGBF3dnF0u8nsP2gzt973olZmzxwCvcharaKDy85867vLHAfEEMeOY6
 WbvGNVaQTvX6o6k0m03Dbg3bqJePqRGuhQt3WSt/PGG8Cb/oCVEqY2X6FLotNA0IXfJm
 ARyniYvJZe/t7VQyJcxGxpDqPU66WCtZIWCej1JRYrPbhTKgeT2by3xxii6Mp4ieweY4
 kcGKmEFn2Ow9kyf3HS2AOfy4WfOxqLajkqnTEHqnZVLC2+gcImOh2N06MabRO5E7+Uh0
 Rz8cDgo9FQcCj48JgPkYsVbGknrWRKT8C9/qsCP3bGmyaklMqjuX8zcNjbTiVOhmz5fy
 wOUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sFDObtAhBFoq+e3uGBncXCZh94u1gqoIy533R027F8g=;
 b=s86D2OcAzO8uqKMKHq706pZegdoDBrtmP2clUy9ZRmezQaiZvVtDLpZb60z4fkEltD
 uN4Eqz+b9Dwuy0z0WOMBtty8S8QiSiddiuFs2AnDer0WbmHYmgBZzfnVmZwLokSB/PB6
 mleW6KKOL2S2FntVsJkX5IkjgRZ+zCFaZQuclIyf+Qh8zVTfvqtGqQnQLPJkvhN5OMm7
 a+9WxV4/Y1x9esMnlJRGyBCcDwNBRCtaEmR/k10Xrlbi/oBm/m8i0UOruYKFtYRK0PJ7
 02Ee3X0qWMz2X7G83CFbWYKo8+4PSB4wPqYd+m4CaFKUEF82TTIAUDGVf1CYYdFomMga
 xfNg==
X-Gm-Message-State: APjAAAVF8crJNMcsZ9DQp0Mmq8vYkw6kCU9BWGbbWQYB8f8jnqo58uWu
 jisMq1V/Ua4A1LdS9UXrQAS9+Q==
X-Google-Smtp-Source: APXvYqw0FlaqXL9keBHWR7KbT8zOx0gQKa57yMr4s6cP5zk/w1cWEybKYPn7W1s8wCZ4fu5o6W6zoA==
X-Received: by 2002:adf:fc91:: with SMTP id g17mr25182759wrr.194.1561480498103; 
 Tue, 25 Jun 2019 09:34:58 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id g8sm2683795wme.20.2019.06.25.09.34.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:34:57 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 05/12] ARM: davinci_all_defconfig: enable GPIO backlight
Date: Tue, 25 Jun 2019 18:34:27 +0200
Message-Id: <20190625163434.13620-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625163434.13620-1-brgl@bgdev.pl>
References: <20190625163434.13620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_093501_361104_B84C8926 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Enable the GPIO backlight module in davinci_all_defconfig.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/configs/davinci_all_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/davinci_all_defconfig b/arch/arm/configs/davinci_all_defconfig
index 13d7846c613d..06855b2bce7e 100644
--- a/arch/arm/configs/davinci_all_defconfig
+++ b/arch/arm/configs/davinci_all_defconfig
@@ -158,6 +158,7 @@ CONFIG_FB=y
 CONFIG_FIRMWARE_EDID=y
 CONFIG_FB_DA8XX=y
 CONFIG_BACKLIGHT_PWM=m
+CONFIG_BACKLIGHT_GPIO=m
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_LOGO=y
 CONFIG_SOUND=m
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
