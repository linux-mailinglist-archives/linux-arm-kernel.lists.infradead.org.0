Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5351CA047
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 03:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X7lyMou2b77uQ+Fri8OUmbysnf8lxTCqQXAgEVizF6o=; b=hYyGGJ4AuAmxjllWUJOSMr5owA
	DXk7/mTRiFcGcVHWP8uxAPB6mAf/xcV7MKRJcmB4P6mVVVA9AAVhzioZ0FvxKvYJi/IBNy1PLa2u8
	MiTcfOH0tu4O1U/oxguqe861aFNRKtY+q8/BW671M2+5g/uTJ4uCZj5W3RjMWV37hUw+nzEdMIk6u
	SO4hNC+zsCKFR/UUB5QyvvkkVdT4zwgvMW/wLuCx7QcT6LBQGMvDui9enpIysWwFdpqCH1DpjTcpe
	dQXqV0SfuNmFwnG2LYfb2ESOPBTdrX+qr3cL1SLmrtfsU9LTZR4csoomWzUUSvmdrrKaO6hN/dnUl
	o7XY1beA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWs6m-0004oS-EX; Fri, 08 May 2020 01:47:24 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWs63-0004JS-Ix
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 01:46:41 +0000
Received: by mail-pl1-x643.google.com with SMTP id b6so2853279plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 18:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LPVqop7eYhlKO1AOSFfnjZfL6zhGOb1jJx61piurnL8=;
 b=CB43zfc2JYiMsXGaSfTcH60amDf/MlsHLRAtdfJB6P3Q9cjb8wAwYz3Wxj+tzXlJgu
 Y9EJg471fUeOK+LCx7qu1DkbWDuqG4s8TMbTtJC/bMJrVB0PgIBLj4JWa7Khlgb5kE5M
 KZuRsnDmcE2eD1/3+8fXOnaK4Rnywz8jRQ0L6iUptOcl7WwPHUsodGf5kFOFGs1jT6Py
 qZEmC2hBoCYrGNj0XZ7738p3mkFAi4xA1epozT3LauHL8sFWCBZ0+TsYgk2nFZB1gAhd
 znKq3vheicxRnTbwT6rUHTrg3+9g2n2ab+vvL8dX2oPLXCzi4PspUcHp5SjkoUeeSUWe
 VIRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LPVqop7eYhlKO1AOSFfnjZfL6zhGOb1jJx61piurnL8=;
 b=MqDB8CTDqemw97fOGAZVK7a7DhjyV9Y3B/sTarAZZnuQe29gM+sHaCJQyzgsDEIxFr
 Naj3hQKfkL06DIrQhSr7ohBNJnABnP8wWcqYeCVmnHwE6Fb0+2GJq6oZYe8oNxsEijhU
 vUf6KybWucMkg6XzzKch1vwmjlf4eVcpwyE/VNUsTOo8/2HqtUrm6lBmEaHqZ4fuJ5GI
 SYcwwqebJmEuW4mT4vjy1fv8N95Rjm/MWmoKMslVbBLmZyJ5acs6gM+mAxPahcvceS78
 N7T8oiFE72XTRHxzturMcvcRddERBB5AhYAHJ5mJhHq53ZZCSiHtd8vD2X3SbG9nyczz
 iOYw==
X-Gm-Message-State: AGi0PuYsoVihSSMBiQSGLi0qB65I2k5x1VH88UCZvfQmOPW99mMaCyfj
 BIhOfImhN3G8mmO/L2ghhX/8BvudjoI=
X-Google-Smtp-Source: APiQypKYtnjt5BuwWJAO7lMyWZ0afQw2+8ef6ewM9hR/2/Pg0xHZin/kH71U7koFCWmmamMtdbYD6w==
X-Received: by 2002:a17:90a:e596:: with SMTP id
 g22mr3235874pjz.201.1588902398711; 
 Thu, 07 May 2020 18:46:38 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id f74sm9270816pje.3.2020.05.07.18.46.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 18:46:38 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH v3 2/4] ARM: dts: stm32: Add pin map for I2C3 controller on
 stm32f4
Date: Fri,  8 May 2020 09:46:26 +0800
Message-Id: <1588902388-4596-3-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588902388-4596-1-git-send-email-dillon.minfei@gmail.com>
References: <1588902388-4596-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_184639_671267_EE0C3C86 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patch adds the pin configuration for I2C3 controller on
stm32f4.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
index 392fa14..051f336 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -316,6 +316,18 @@
 				};
 			};
 
+			i2c3_pins: i2c3-0 {
+				pins {
+					pinmux = <STM32_PINMUX('C', 9, AF4)>,
+						/* I2C3_SDA */
+						 <STM32_PINMUX('A', 8, AF4)>;
+						/* I2C3_SCL */
+					bias-disable;
+					drive-open-drain;
+					slew-rate = <3>;
+				};
+			};
+
 			dcmi_pins: dcmi-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 4, AF13)>, /* DCMI_HSYNC */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
