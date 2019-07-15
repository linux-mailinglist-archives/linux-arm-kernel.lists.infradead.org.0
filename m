Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D0569D37
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 23:04:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TbrHKt3SEI/8c7xrwDe0q01Izycw5COzEzAuvhN6pjU=; b=C+m1Iebwu09iGV
	pzEebqvI6xGctQcxIuNg2aTj9IHSsQGCRty3BA5XbDz1SbIkbNkI9xCI6FBcAPq3i211hFHAaxm6S
	shO/gzov2c7xwfoSMEA8BvMoWx4tvQa6WirapAOJIprTXT33odiqkBxl0WPdErdkc04V4jeHtsKpJ
	doE/5yM29VME3pPFrVRJTSVbfYnecx6mzbNgwzaWBWgDKyP8VurOIZBd8JL6HjILeU/42C/MSM5UF
	zZGgb6BCPn/oeya3Y10HR+SsuF4E4hccSMMa5ZMn2oxoQyBd4aWtXqeYa+LbtXVJOsjY+wOU/K7wB
	8pwfCDWdAQgsmuwsTQuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn88r-0006AE-QU; Mon, 15 Jul 2019 21:04:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn88g-00069t-CD
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 21:04:03 +0000
Received: by mail-lj1-x241.google.com with SMTP id m23so17658375lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 14:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0NqwVRQoz4/avZUmh/z2xzmFgh9JEO/HdW7vuqxB1fI=;
 b=pDuL4HCd9EArviwyt9iAMvNVN80rLhrjhT8E9Zw8IQ+/Y2S2ZIKdZB44ZU8UTfBKWQ
 Ntn6r3/65o8X5gt4owFvt9khyK+xjGPcLv3ILz5cExcC2ZImk4ngCfNfLubagIksnc1e
 RjDoYP7Ycn7nnDv0SG4NiKclwSWPfLyX3uSD44UfP13egUsY9/yNOi6U3A49gvgj8gZm
 hAIzm4/qYD/Vh+GsSbR50iKYw33ex81m7obJR5Z6o1E/i4rN5rBlkfEtFDlrOGPraScz
 ffGziyn2j4u/xuSxyCWRyYnADovyDS+FMl8+17hvorGtCwZyQXtj6EGr1NbQxs7Jr4to
 sH+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0NqwVRQoz4/avZUmh/z2xzmFgh9JEO/HdW7vuqxB1fI=;
 b=Trp4hgLcVZ0RE+XHkjO/qr5j1ds4XwZw88llthZfqYXnecbxmG7vFygIqjjyD1be+z
 QSJoPSkSIOBNHEBopF/mcHza0myGnH8suMqFgLkG0QnwF3aYnJ9StyqYSVaSnAkJ4LEn
 BIO81O1XE8bPNbsa99byWaohJXPPro4RHyywGjiCvcVJr/buSN9wkAVEj0VctU4YgbeM
 Obmg92nhUw6VaGAROLfOCzNwuHxR4vfp3dJsaqsX8/WJpgfNKxrykijrcrtLVB5njsIT
 6JZRDY8QVwi7iezcNxRlF8DCHTfZwjuJejsKxdn3OI4De1HWHATt9l++jW5uvnjJC6OM
 oxcA==
X-Gm-Message-State: APjAAAWkkwOyq0hpbHns/EkrnqpVmHDdHBqJvclDzIFUdglBkvO9VAdG
 Nxe1mx+iy3FMMd+HzlElO8eHn287fdI=
X-Google-Smtp-Source: APXvYqxsWNZE24s5NS1xOqEqF9McOOOm00u+MLeBcgRh0eIPQATfmxhFa2EdwqGk5fIA0dL5cox/fg==
X-Received: by 2002:a2e:b0ea:: with SMTP id h10mr9797147ljl.50.1563224639197; 
 Mon, 15 Jul 2019 14:03:59 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id x22sm2503980lfq.20.2019.07.15.14.03.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 14:03:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: nomadik: Set up the CS GPIO right
Date: Mon, 15 Jul 2019 23:03:53 +0200
Message-Id: <20190715210353.3736-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_140402_480179_E8285150 
X-CRM114-Status: GOOD (  11.25  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>
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
