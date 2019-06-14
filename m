Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC85B456A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 09:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d86vKuAj1RinAIMhvugB81ktlYA7lkm5dKVQ89tbvM8=; b=KHTOYSg2lQSYp9
	L/6fvQG/4+yAQhRZq0vhydj/jjYvOSP99L+B1bdJEMInq0UcfUMO0K/cDv+13OBeruthFBAyyp42N
	eDBTQckMUTRw5d0pHA4Q6DsrgNsowKZKkSDM53o0iITTE3kKrZuNe+oYVycdaS90NM7/t15TUHWS8
	iGMe0bRNeEO+Tbdv/2qMRlnRA5j2QMzcGQB2vcicUzvaa8tj6KQilWhrg8iPTP0RAJS9bLgG3SV0F
	UD8BUP/Wg3HlvWnSTrcOs/0mZ1g4Ge437GM1Q+GJP5lQyxkWM52D3BYlmedVeDP5rHEnJoYzENKWe
	Hf9WpX6dJpZnscaA3wqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgv1-0000aY-QE; Fri, 14 Jun 2019 07:46:40 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbguW-0000Np-Ah
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 07:46:09 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so1055359pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 00:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7fks+RHwfpZJQtPWrw5nDoRST3V+5O+GkaVO28nAgb0=;
 b=XVr9cokBZ7NTVicCoyW2Xr5HSHlsN+mc4Dq2RdcuvjLzUt5G8awdcjxJUphdXzJN8u
 elwM9jtqHkzHrSClBryatrNx6NaUnCQf7Hd0xGdnYWXpeutN7/+giHDglndb4H33aLKP
 /TJ5Zae0GHxxAvWhOT6oW/cb/yjSz9jVBIXji9GQ5Ld1AVw4vq82JVrt4KdrBWfeeT06
 hPujR9TLIFc3ONvQi4Sz0k2MflMmXSg9FO45UI188R0vxosXUBuGNHtNwnnirVGEyIH/
 nmGAHwdVjeEAazZIYHBaVz9AT5/05yCMnmY5PApBUKp8y/BhiwN9KZiOAZcjlX6aHrZc
 rESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7fks+RHwfpZJQtPWrw5nDoRST3V+5O+GkaVO28nAgb0=;
 b=p1NYyi9TRGKURsuf3qYBG2oYdRzNpPEDSAIXN0ysXIyP4rYYmPd4JfEJkkEn/LVBTV
 chuh36ywiA41XlOIyq5mRyX2oYS4U80T6PjKlw/P1ioTEgUqmIZTd3Nl5l0CqLND+itm
 r6KwitXSRAIPOKTDWYNnYjmA+dkw+w3WHyMFc76mYiNZK1l9FEjmG1iWuRI3MCFveJ/D
 WEciHspcq5E1Ril5/zDoyvdaGV3M9fh1Okj4OTPzqSFwdEy82+G752MzDdPBQRQvjaqK
 Yk/g2NbEkMxwSznnVr9L7Ed7WoPxeTAf6bhmrlK1kI6e+jOcwz2VxupVbqBgsXZ3nl9p
 kohg==
X-Gm-Message-State: APjAAAXQnXNfRTRM4bjPXAbxT6KsZT/AQG/GlslaNR41zeGi/MC58pq3
 7+DxOeHvs60s98bqu0yhoZQwQB02rc8=
X-Google-Smtp-Source: APXvYqwXUksjrE5uUYp8QOxr7xqGP14YvpNzvd/EHyZwKuwFS7omhVqkD/hlPFyaIC9IoeS9Hkglkg==
X-Received: by 2002:a63:2a89:: with SMTP id
 q131mr34935679pgq.359.1560498367017; 
 Fri, 14 Jun 2019 00:46:07 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id b17sm2128349pfb.18.2019.06.14.00.46.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 00:46:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] ARM: dts: imx7d-zii-rpu2: Drop unused pinmux entries
Date: Fri, 14 Jun 2019 00:43:48 -0700
Message-Id: <20190614074348.17210-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190614074348.17210-1-andrew.smirnov@gmail.com>
References: <20190614074348.17210-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_004608_375470_3FD89C87 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neither pinctrl_i2c1_gpio nor pinctrl_i2c2_gpio are used anywhere in
the file, drop them.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/imx7d-zii-rpu2.dts | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d-zii-rpu2.dts b/arch/arm/boot/dts/imx7d-zii-rpu2.dts
index 6b8b2fc307d8..4a78ddc7513d 100644
--- a/arch/arm/boot/dts/imx7d-zii-rpu2.dts
+++ b/arch/arm/boot/dts/imx7d-zii-rpu2.dts
@@ -775,13 +775,6 @@
 		>;
 	};
 
-	pinctrl_i2c1_gpio: i2c1gpiogrp {
-		fsl,pins = <
-			MX7D_PAD_I2C1_SDA__GPIO4_IO9		0x4000007f
-			MX7D_PAD_I2C1_SCL__GPIO4_IO8		0x4000007f
-		>;
-	};
-
 	pinctrl_i2c2: i2c2grp {
 		fsl,pins = <
 			MX7D_PAD_I2C2_SDA__I2C2_SDA		0x4000007f
@@ -789,13 +782,6 @@
 		>;
 	};
 
-	pinctrl_i2c2_gpio: i2c2gpiogrp {
-		fsl,pins = <
-			MX7D_PAD_I2C2_SDA__GPIO4_IO11		0x4000007f
-			MX7D_PAD_I2C2_SCL__GPIO4_IO10		0x4000007f
-		>;
-	};
-
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins = <
 			MX7D_PAD_I2C3_SDA__I2C3_SDA		0x4000007f
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
