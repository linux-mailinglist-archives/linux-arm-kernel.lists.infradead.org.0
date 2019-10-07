Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99404CE308
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCK+DqwhTec0C7J2qATIbtx8n0TTUIGZlqsIoro5mLA=; b=mF8Ev/fj6Q5w1s
	6qXv1PO0ZxypHJK14GbzzrVOp1HaCmx9ipmmtz/cl9wHOASOKuIhObSjuHI5BsWjTfahWfi8lJY9H
	8zM/ReLI7Nkj/iQrA7m8kxeKgkqEaSmdeRMFnmhRaYuDKHb88ET8r2b6rdmQ6gvB07qPscHtaCVya
	iJaXcduqUVXCMS7RIsWTzoZ2aACO8GGF4PIXwVd6hp1hLp5dwxly2lNx9xkDG4wQ+v24IZIHNOPSr
	yirmvY2BJ2st2jkZPXTukJXHkcuauPovcxo9H5WUpL7uLkZxwyTG7kJTmCWPOjykW+wYxD2uUJuJl
	ARp4xIlB9B/9LtR2CZBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHStY-0001oq-6j; Mon, 07 Oct 2019 13:17:48 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSt3-0001X5-IV; Mon, 07 Oct 2019 13:17:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id i32so901716pgl.10;
 Mon, 07 Oct 2019 06:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c9wnC908x8Dc2ovfvaEIwhdZFAXDuGhcSt8cyx50jRo=;
 b=YwWpqvPJtwEpzVZMlfk5DEXF+OvWK+s+K9aWVNRyvA/uzd2w3N0n9BHxibOLIGgpCX
 9s8gt/Ru3gD0HTSBH79mBN6zJfcBsR1iQ19s1RSO5KuCIerBSnosMeqwsQYIRuBfTSXt
 j9T/Yz9zT2f7e2FZas6Li+b3i3O304LBu65wWHGUf3iPY9tpKo1A7BmKhE8d72L+DWyg
 eriv8XF4lneIamLiwQvSHqWgp1QOFDQLtjY2faLQJ7gARQ0Q4+tXv2n1rHX8XgwnEtBo
 OMWuoj+Nw7ehynSS3DSR1pNTu8PGFdRVBl9m3yZPZx6xSlPYFLILx+mxq+dAcu0Q6DBo
 smBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c9wnC908x8Dc2ovfvaEIwhdZFAXDuGhcSt8cyx50jRo=;
 b=jRLzOVzrDwmQEviTBQmB+qI6MubLufAZ/QzToRuLJuKtoGGcjjVyK6KBaqDMgLeWRm
 ApDtWM4ATjfxRLFjxUGoBe+25PYzVgdEgV/N6wZr8mog5iJPH3Bh8nL5FV3I/+aaoApn
 0P1BIrv50o8Gurx0dBKvrIllUZCp6jXOuGI9LCJH5NmREhEuM04y3HjcWQ2yUbQmdOYt
 N36+2Ko1aop+NfzzDslfvv625x/YWamplgu+PkQmG+EBhjfU96PX+7qYpW0D4GMksXPh
 ViMvSX6+jCv77izNsGsClz/uELOrUCCTIPeqWIpQLGPPOGXZXluJZvz/7IGl1lXo7bqu
 7bnw==
X-Gm-Message-State: APjAAAUmPgYZ0ecWdxgtMM6LD2s/Z9IxRIoOLVb46MApG52pyb4q3NM/
 PqLzlVxq5m56bU8qn/UxUNM=
X-Google-Smtp-Source: APXvYqy6LK+V/L4wpvKfrkRzRZD8R95qPwJMkTBR0Y0ZiyfkdL06PzRvWTUvyg1QUlf2W/7+0HzEIw==
X-Received: by 2002:a17:90a:2744:: with SMTP id
 o62mr32896684pje.139.1570454236533; 
 Mon, 07 Oct 2019 06:17:16 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.138])
 by smtp.gmail.com with ESMTPSA id r186sm16938650pfr.40.2019.10.07.06.17.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 06:17:16 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [RFCv1 2/5] arm64: dts: meson: Add missing pwm control gpio signal
 for pwm-regulator
Date: Mon,  7 Oct 2019 13:16:46 +0000
Message-Id: <20191007131649.1768-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191007131649.1768-1-linux.amoon@gmail.com>
References: <20191007131649.1768-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_061717_950457_42E729F3 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per schematics add missing VDDCPUA_PWM and VDDCPUB_PWM
gpio signal use to enable/disable the pwm regulator for DVFS.

Fixes: d14734a04a8a (arm64: dts: meson-g12b-odroid-n2: enable DVFS)
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index a9a661258886..66262a6ab3fe 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -135,6 +135,8 @@
 
 		regulator-boot-on;
 		regulator-always-on;
+		/* VDDCPUA_PWM */
+		enable-gpios = <&gpio GPIOE_1 GPIO_ACTIVE_HIGH>;
 	};
 
 	vddcpu_b: regulator-vddcpu-b {
@@ -154,6 +156,8 @@
 
 		regulator-boot-on;
 		regulator-always-on;
+		/* VDDCPUB_PWM */
+		enable-gpios = <&gpio GPIOE_2 GPIO_ACTIVE_HIGH>;
 	};
 
 	hub_5v: regulator-hub_5v {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
