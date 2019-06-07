Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9570338D67
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+kOp3W3nc7kzjaiKzkCmsXe9B5JUrEX8jgAOYkjcQnk=; b=NWthBlOM3Xx5ro
	OWVSzrLVMIXqHRDGi6y1h90lMlTJk4KGPRpm4OL8LpYikWzvvwwfFE/mSYHJrmV6oXghEeviCn6ba
	DKs4rQxo+gHuu37BVskIQmIDmjZJp5Exm4ZmC2LruJsvE9eT5L/yIdyO4pCiu5bU9OtKK+/YhD3Gi
	dn6grXtybiwMb62zJsDmodo+5cYy0sbi8dDZeqklJtS9TjSCe8XiGMpBAKijQeAISZLXVJ5svOE3w
	roNb2hUgR/t+i5mqR0bt/IqJIkZ0orJWwH3X1RmF/HrHONlokAq5JcIoZxYutBpUzlAMFVnQDVuAu
	46JqDwxY7HR7hOGw1DTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFzo-00046c-KU; Fri, 07 Jun 2019 14:37:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFyj-0003A4-V7
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:36:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id f9so2395436wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g2wkRe5K1IXma8bNYhCvI+fQ4IJioh9uPMWZ6j+ulzE=;
 b=i8HkI+1m1F1SjP6xDeqTAfAYetKgkZ/Em+zIBfQQh3kynYXqEcMfz160AgDZA8iDaA
 06lkdIC79LRvXhW047p7ZoqLc/2Sh+dA10/I0kdaSJYHmD8JA5BR5L3oNe2iqU18U06d
 cKVM5iIk8pnUu+/Ed/f3+2jUTyYt4yRhet84OBGS+q9S8l8RNbqT+dZpF8ZL57vKEz/P
 rNvQZdDAU3IGhYD5NaXjYoa7fyW4v9jTxrV3zXgE8RlOAeYl2QkASxQ6KOsPCae0rMJ8
 RNum6oZ+ITgyLp0dfZMIfrRedOXm8aP7m36HllmlQcJaQJAOE6HgCjHdVshVfa5SspJO
 JghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g2wkRe5K1IXma8bNYhCvI+fQ4IJioh9uPMWZ6j+ulzE=;
 b=pek4NIvI7fNBwQLrxq53c0pn9AhHhLuSC2VYb/gHSr/lWA/CeZN2nIYEjHUmBYXth2
 iOf5J2z0CO6sou/+uGldgPKkwBcOxbOqLTSbRJmpfUx1DzLdQL/X9vGY0XYS8zGlNx4J
 VKLFrntCPRKMW8ejFjXTG782YpyYPTDOyMJe0OJ026pIWokxBDQKgC1gME8aJqb0+hse
 YvDdVMaaYF3nkHRW2c9YNTmIxmHV4w2ucPeAYx9IzMKWS43Hk8AeHVRd4RRGiS+Jp4eb
 0YCheEJCjEaOBV2LwOiUZ+Pcj84Il7vgwK299IsKdfsmxlRILN7cvtEJXMsabAPsHK65
 dWYQ==
X-Gm-Message-State: APjAAAXVb5Ivf21TppV2+SXtkdORF9KI565Rp4q/UTGPO4CdoU39PH7/
 M3jFZbNod8H0RaNGF5wpVOVzHw==
X-Google-Smtp-Source: APXvYqyUsOBv907VjCYDLz/AiagnuEkdBp024RTB1LRi5oXy9F1Zcoly0Zy5U2l1bvTxAA3qupE9Aw==
X-Received: by 2002:adf:f04d:: with SMTP id t13mr13846456wro.36.1559918184659; 
 Fri, 07 Jun 2019 07:36:24 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t63sm2999829wmt.6.2019.06.07.07.36.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 07 Jun 2019 07:36:23 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 2/4] arm64: dts: meson-g12a-x96-max: add 32k clock to
 bluetooth node
Date: Fri,  7 Jun 2019 16:36:16 +0200
Message-Id: <20190607143618.32213-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607143618.32213-1-narmstrong@baylibre.com>
References: <20190607143618.32213-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_073626_020990_8E1337C5 
X-CRM114-Status: GOOD (  11.55  )
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
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 2c10ebfd9e7c..aa9da5de5c2d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -206,6 +206,8 @@
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
 	};
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
