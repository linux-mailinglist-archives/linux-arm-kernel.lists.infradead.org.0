Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541BB32D21
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ld7XJr6p7GxPl+NTzaFXGSAw3jAUJQta8/LUGUWl+S0=; b=PGAuyWh+cySM8Z
	zhAyqeZ90LjtOZQ/1FofFNL6JQEnhJldqVv3x6snUAGcH2tQIOkQjEg5kbq5BS6Le+pVG65XErw5y
	Q5dOu3KDbo+Eo1kpM+CaDngcV3HwH7UagHAzRcvNA0CGkKvO8T5ml06aTRQ695+hpXTacar1hhq5I
	IGxfIsJ4ciUKvsrY9wXUtnwehQZ778upUdqyd3trXb3TMW09WbY5NqiFNXmqztFX64nEpYXmDyoyq
	LdZNZdYdvGMj14RVoMIV+2KNgsjTakZpULv6qoIElER8PZajhEudyAwXvid3zuL7GWiHE3oiyrX8Z
	mBh87Ac+kNtLV/5T/d8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjZv-0000H9-40; Mon, 03 Jun 2019 09:48:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjZH-0007yQ-MU
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:47:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id e16so3054749wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 02:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O3SKx4XRWM8BeL1IT8cdljXN1WfKTiELxY4AFeUt8cM=;
 b=2Ie/h4H83Parn1NAqbsfpl+cqjGciqNLWktE9yU8F5Wu1eiuO7vBgmdjroB9d9/6yW
 WGAWpIsqZ5h7Nx9hbcdFtF2M+pT0Y357Teg8UbOmET4h04ZQf30ho2+IUGqfVyQH2aHI
 27ZsFxVQ75uxhiTAKi2koxOYe1MUp7cMF1QczSnOesJQDnLZS1q3rj1J2yMW8AuHCxEb
 pJLRRRh2uKLSA2syI74GTlsxAoEE+SIVHw7prgiwOYRRW/9eSrjaWqdpXNy8MC81N9jK
 8lvz7DL6AMzAnQhLunrEB6CrRx7VOFjrJbZT69UARDmEe1L/xXObO0pykKFoRnb5c0qw
 SgmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O3SKx4XRWM8BeL1IT8cdljXN1WfKTiELxY4AFeUt8cM=;
 b=n3eQBOWYWTOrrR3RnAlk29aTC19xaCWW6e2ZJjARJdlVo9LFnUr9RFICOP0u0Oi/Ea
 V+nKKp0niAbdyTXeWieuEoDy0fFQ+8QIeWRlloj1NU50R4DjeqqasSiTQFdqz0iBoKdw
 Fb5FwwY1DcZyw9QE9xfzeiJ17TiM/DuFAIK2x/yIsnv638fBlKrsJaPxf0JyR8wW+RGP
 0NaIsJsQBcmaT+WRgo+j536nzHSGUxRBtBgGvLG7YdFRmMqSeCrWifcv17IQfiKM0RaV
 hPOh87uRXuPIoDsd05WqKfWvK9Uuqkh7kK1P47cWvmfRPRHBubSmcrAxpiCqKxCZENIM
 K2ZA==
X-Gm-Message-State: APjAAAX2z0kVXltwXbULzKstBJQtpw/Nkls7vXJLbu0uYVCVK+emrXNe
 /yGqrtMxS1ADcke+isE9RxCFDA==
X-Google-Smtp-Source: APXvYqy2XBlQJstPqfMb4Anuzykhl7kWIDzWYiNsCkJbOe/WK+Wjw9v5b6HEixuGViFvp7vEwYZD3Q==
X-Received: by 2002:adf:ea88:: with SMTP id s8mr1580983wrm.68.1559555268990;
 Mon, 03 Jun 2019 02:47:48 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id z14sm11235375wrh.86.2019.06.03.02.47.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Jun 2019 02:47:47 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 2/4] arm64: dts: meson-g12a-x96-max: add 32k clock to
 bluetooth node
Date: Mon,  3 Jun 2019 11:47:38 +0200
Message-Id: <20190603094740.12255-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603094740.12255-1-narmstrong@baylibre.com>
References: <20190603094740.12255-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_024751_729915_BAC4B71D 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Fixes: c5c9c7cff269 ("arm64: dts: meson-g12a-x96-max: Enable BT Module")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
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
