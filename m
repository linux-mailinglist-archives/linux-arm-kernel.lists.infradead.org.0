Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CA69BF72
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 20:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRJc36qme5VW+1mP4Yo1Ej9EeP+m+YWvt/2ECjnvEPc=; b=lVjw6pvKXVttUA
	UtvZ3M2+Z6BBOKNbzXPBYJxwZpvRbpk1Citwlc6kCk21RnZ3B8tYLPLk02g6DCWmkPJsU6wAx7y9g
	Bml+3xEj0Vkj9QD3Y+MQMdDJv/AmnVLRSisRoc76OWWHjIbkuGMGRUR+IvVv1qnSEu6rJzsfaIAKH
	wARAlJYp6hHdqNGUs/whLXv7AW4yT2glbSXceTmRUJIHt8LcNGLS307N/w86y5rcpfG+PI/pH4J2H
	0Z2ZjvwZxVg1HfYMibyUyWhNNp/SOKkwCRdBsULjrIlKt6Y+5RfCbMb9MLr5LiOPNeYdfigNchIWH
	wPAZ1f8qjl6fY43JxbcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1b7S-0006V0-QI; Sat, 24 Aug 2019 18:50:34 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1b6u-00054A-3w; Sat, 24 Aug 2019 18:50:01 +0000
Received: by mail-pl1-x642.google.com with SMTP id y1so7591636plp.9;
 Sat, 24 Aug 2019 11:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KG3wU0cDOLtAU+yc37BRhIg5M3JzRBY8MVvSn1NtlyE=;
 b=Ta+h6P6PVcFDwVsgbSLDnX7gW1kemD4czlwwbc9mlHYkvo3nUiUfIZBGt3zo3guLa2
 +lv7tOVxu5RWaoChp/DBlEUeL6kBIk4KP14FEyD81Rw7dkDatNKh1Nx8aPrIRW+055uE
 mzL7uMMNrUTDfre2uT4D5ewQRUlzt9CT0EzQTwMZKa+3YCyxwEL6zctSftTDqdf+DRv0
 +XcRw2nk+xjeyD+uLyjgRyJvj919MO0EQqIiDCN32Cd4LjINgcLXvn5HHX3PpXb/tey5
 uU5c8DHLDDoaRu1PXKgKITwBUejIhQFdLX1OoUhgVCKeEfJClSCPmhqS4uPSD2KF0CzQ
 1VWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KG3wU0cDOLtAU+yc37BRhIg5M3JzRBY8MVvSn1NtlyE=;
 b=JIuR8IgQwrkHFVjwQS62lJg+/Ly7lumNN8EHWyYtYOchJFw1Mghz6KOzcTaVOoptkV
 lO9PaH5V2UJqblOlQMffib5zyguZmh6ul4hfgfH8AQLu2+hGOU+DP/KK2S0wvaXvOiap
 gVnaK8ziDBstsJoXKHtvileQF/CvSvr7mf9ego0agUNpdw4qOgofFfzpKDsxKvsAUih2
 79KRlDqhFqFy4a0Y0tZwVFhU8bayW0bX+7K3/iruEicVwFRNekQlXkmlwT4h4hC1NSpc
 akrAcpJgc+XGw/8ZIDVxAbbo7oO/aEtXbqWKWA0UJ+vtgrRpcC6oH/HVbNOOGq0A57e0
 K1/A==
X-Gm-Message-State: APjAAAX5TjRFbdYDGadfKYfTtHgEV+DlrO/K6fAcLkTJ5xw3q5mG5lEJ
 UJFzA68QLzPuouQvxZRE5rQ=
X-Google-Smtp-Source: APXvYqyMAOX4IlwwT6RsKneClv2NtasaHom5hyOCs/mi2fe6yXE26vU3ERE59ELNNeC8HH/dakqjPw==
X-Received: by 2002:a17:902:e30f:: with SMTP id
 cg15mr11298012plb.46.1566672599386; 
 Sat, 24 Aug 2019 11:49:59 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.111])
 by smtp.gmail.com with ESMTPSA id t8sm5519292pji.24.2019.08.24.11.49.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 11:49:59 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv4 2/3] arm64: dts: meson: odroid-c2: Add missing linking
 regulator to usb bus
Date: Sat, 24 Aug 2019 18:49:11 +0000
Message-Id: <20190824184912.795-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190824184912.795-1-linux.amoon@gmail.com>
References: <20190824184912.795-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_115000_158298_FFCBAE72 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing linking regulator node to usb bus for power usb devices.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Changes from previous patch
[1] https://lore.kernel.org/patchwork/patch/1031243/
split the changes and add the comments to power source
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 41d5fa370eb3..f3dcabf97c63 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -36,8 +36,15 @@
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 
+		/*
+		 * signal name from schematics: PWREN
+		 */
 		gpio = <&gpio_ao GPIOAO_5 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
+		/*
+		 * signal name from sehematics: USB_POWER
+		 */
+		vin-supply = <&p5v0>;
 	};
 
 	leds {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
