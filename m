Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 228FF8B11A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 09:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WJqcatAe8zH9cuslNTgOgnWvUzcX5t5HPXUDUD7uyEg=; b=qiG/teP4HIVa2M
	8CozloYfdcBZh+tpTkuAbn0dWENzKxeHUnh7y8k3YTNOpoA+5OAtdcOJo1yNROL6Ot/OdaCM4Xdxs
	XSqCaODHQ3soJNqbzAr+lXJQSIicaRw+k9DoIQl3KBtqM3QAr6yJ1iSGUWaDm9hhtJC3Q7IS2qNPA
	iqMBxvUTK+zZJznAnSzei2JeKhA1tk3Hyo1lLl4vSBV4THbVBZdbIgYqr7/KY3TJfj4cYA1psnk7k
	50N5MBrUgyOgqHoYSje7475JofI+oe4gd8oRkKZsjBwMiXj4Lm/rWVfrHonXDXcDX6PybIyZPwgXV
	el1NCPQ12Chei3hJSqiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRDj-0007u7-Lh; Tue, 13 Aug 2019 07:27:51 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRDU-0007t1-Ev
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 07:27:37 +0000
Received: by mail-lj1-x241.google.com with SMTP id t3so12069498ljj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 00:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gxw6O48J9qRmzDYXvAWMeWAUk3rGowLbkm5cB//pjK8=;
 b=Z82dKHpy5Gu4J7/N3lAkpPg8JsM19vCbBE5kstbntzk0Dfl/5x1fEMljqq5Msxk2/J
 nZcH+vOfcvml6lkbtjPiuJH1HKH013l+xCy4vm8XvxUo6OQQTIJv5is/9j9WyZ5AH30C
 BiccQwyF/pbJYLDOJ7b3Cro5RR+UM0GFiWIubSQD8VO08COAur8HqvQDXOvDCE74k0tP
 IESgy8IOLHUR7QJeNfb3U2ta6NgALwNLoy8FTll0is2n2+8cn+AE4n3exqYIx/Khj/L7
 uh7rHt7wrMicG8DUcR+8OiwubLvfjvV4MRdef3/wBJrK0RYJh6qx2JLNbMUGDZtgV8Sr
 TnWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gxw6O48J9qRmzDYXvAWMeWAUk3rGowLbkm5cB//pjK8=;
 b=Jl8u7WwB51hqE09niWb5K5NqQplIzzeGCyFP+ghD+mullOgh1xfO+Z/UmFIioMoUW3
 FW3+Qn3VAc5n06DZcUEqGu+DBYhahGOM1wW2E4nhYGYOigqCRWWKiKqFFaPAWu6Ns/UL
 u2W+pAl5cUqUUG93OOtWK46NucFhnmmCtvEDbXrIrKDQIZRCf4odPUkXvJggU0Z+LiJu
 5BqdKHE6lklLMPSoQefe9M2L1YTCSQCbv/ufSXDRI0f6BiuEOacrC5tGlqV7BkqsjLF+
 PbVRvuN9HLkiSoi9YmzxKdxBoEZNZp87LW6NX8YEiCifIq+4RVvk2gWEAQmYuIzLrqlq
 BCnw==
X-Gm-Message-State: APjAAAUlod1VeEz42fIGTe3Dt7VI1fQ3IHYeSPgqbWJacMtZA8FRh9Fr
 dIiQ7fGivQ8tjiDws4J2pdZ0kQ==
X-Google-Smtp-Source: APXvYqysE1zoOaMXVVrhPhIBzgFCPB3jNNndUZAP7c+tNqs2RgHpaFLlNgeFmS76jP1fiEV3l22XOg==
X-Received: by 2002:a05:651c:95:: with SMTP id
 21mr2819969ljq.128.1565681255104; 
 Tue, 13 Aug 2019 00:27:35 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-2ccd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.44])
 by smtp.gmail.com with ESMTPSA id r23sm737884lji.3.2019.08.13.00.27.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 00:27:34 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: dts: nomadik: Set up the CS GPIO right
Date: Tue, 13 Aug 2019 09:27:31 +0200
Message-Id: <20190813072731.4558-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_002736_500216_A0698742 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the SPI GPIO driver knows how to handle these
chip select GPIOs and we get nasty messages about the
core having to enforce active low on the GPIO, fix this
up by actually requesting the CS GPIO line as active
low.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: please apply this directly for v5.4, I do
not plan to send more Nomadik patches this merge window.
---
 arch/arm/boot/dts/ste-nomadik-nhk15.dts | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/ste-nomadik-nhk15.dts b/arch/arm/boot/dts/ste-nomadik-nhk15.dts
index 04066f9cb8a3..41ed21a4fdc1 100644
--- a/arch/arm/boot/dts/ste-nomadik-nhk15.dts
+++ b/arch/arm/boot/dts/ste-nomadik-nhk15.dts
@@ -212,13 +212,7 @@
 		 */
 		gpio-sck = <&gpio0 5 GPIO_ACTIVE_HIGH>;
 		gpio-mosi = <&gpio0 4 GPIO_ACTIVE_HIGH>;
-		/*
-		 * It's not actually active high, but the frameworks assume
-		 * the polarity of the passed-in GPIO is "normal" (active
-		 * high) then actively drives the line low to select the
-		 * chip.
-		 */
-		cs-gpios = <&gpio0 6 GPIO_ACTIVE_HIGH>;
+		cs-gpios = <&gpio0 6 GPIO_ACTIVE_LOW>;
 		num-chipselects = <1>;
 
 		/*
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
