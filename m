Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF6E78CCC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoFwnQylrFlCBFi9sm3332Io8NI2hUg1SU+pa0bBODA=; b=iws+jn7rBe1w/d
	Ho7pQOyGEsdA/UDw6XT3DmgLoXfnAGcxGn3mCRegzoJZRgeiXFriHFNx84FRD2QipQXp6PmOORVNQ
	NObkeK0tzA9vXZG2g3OnXCI8dLBrSxKgM+T16KDOXmfEx/0rPWRpKDaBb9qoZ2J3M6ZG0AyPw9sNE
	wmkQBhDrwA0+makujUbLCs5/L6VXIjC/yk+BOl6hQ1aVdU1y2BzVYBfZEZWfEx6A3y/UuSe1lODC+
	I2GR0IPsF886H1ReD98z876MXnAidLa84+JqByANQOCjPyInR16o4uF9lHE0aPHBCh6VdjFS1pQDw
	LI/mNTZSIINIUyJLeYsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5fy-0003Gl-HX; Mon, 29 Jul 2019 13:26:54 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5fX-0002vd-Lj
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:26:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id s15so32120553wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 06:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R6hdLNTeTLszU/ud7dutUthDOGKXlHCQCe41wjZK7aU=;
 b=0nT0UBPaPJkbO96T/NeeoaVXvWJfeqkrgODoXD0hOabcIm/f2SKNcWdJ/jtQXajVGE
 sDwo4o1RVSOuR34im6wlMPfJOfqXGEg6MNUHLfbN0IczVG7hVswHO/ZZpUsu0QSWWQuc
 H+O+vJ3uOgaQGg9JudhYQT6tZ4PmKFssXJJqvA/UjVP5LG+UyB9PKv7MfSvmt9CHXsmg
 uvp9QYBO1D+9LEiLeSZIBvIrrGYQhcnpZXsE6deaCdxpXlzS8unPgG4d7o9JRkol8e/9
 rMmtBUzbQY4JALFZbzdZQKsSaB0Xh344gwxaYr4hVkcY9jXtPK2WpwJN9VxZdHmdGdbd
 VA0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R6hdLNTeTLszU/ud7dutUthDOGKXlHCQCe41wjZK7aU=;
 b=F9NYE0CoUpY2tFByOJ0RVfxQIz31xLRqGgtErvCpW4tOWuur3VgZ2t8mUCXnbRqc0b
 avmrYyvoyzzA8hPsgAa1BmQKwf73iV2RCUJ7hKSAnT2Y72zaO+iNDVQEc//hFscjYVkR
 SRb0RVTPNiOV8+06y0HWn8HAOKIbbmW+ytITnmdncAFpi+Pgy+SXhzD8HFhvpCa3Orb/
 vcTz7QoRQynpHEyW+SUYsxMWwmmcg45d+s7tInbH7ZEg++JgWEVEVcSjaxMzI4pT34ww
 /JiZKrdNTq1gP+tv56bSagyIeiwbkDZj3+3PRdg8RABhOIyAhNX+v74uiWDXYK4kHtsE
 9Lxg==
X-Gm-Message-State: APjAAAUwqy8RPYYupyk0J2k9pjiuaFEQjt7BrMAKCW/29Gka7Vk4qWIM
 mPxBiSzsobpdjSXruLk1lB0Jf96KXKE=
X-Google-Smtp-Source: APXvYqwHel1y9s9VMLRTKwHHIa1SbFDtk17K0BVQG+dg4SRlAeWevQDYthnrDjTJ9oF+jyOJSg21NA==
X-Received: by 2002:a1c:cb01:: with SMTP id b1mr30878151wmg.69.1564406786208; 
 Mon, 29 Jul 2019 06:26:26 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y2sm50270053wrl.4.2019.07.29.06.26.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 06:26:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 2/6] arm64: dts: meson-g12-common: add pwm_a on GPIOE_2 pinmux
Date: Mon, 29 Jul 2019 15:26:18 +0200
Message-Id: <20190729132622.7566-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729132622.7566-1-narmstrong@baylibre.com>
References: <20190729132622.7566-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_062627_730864_B3C964AB 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the ao_pinctrl subnode for the pwm_a function on GPIOE_2.

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 06e186ca41e3..38d70ce1cfc7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -1970,6 +1970,14 @@
 						};
 					};
 
+					pwm_a_e_pins: pwm-a-e {
+						mux {
+							groups = "pwm_a_e";
+							function = "pwm_a_e";
+							bias-disable;
+						};
+					};
+
 					pwm_ao_a_pins: pwm-ao-a {
 						mux {
 							groups = "pwm_ao_a";
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
