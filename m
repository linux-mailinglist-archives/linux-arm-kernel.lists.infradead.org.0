Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8228FCE318
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLE7wfzLXqZ62dtXnZ8xONbMFV9UuIz+2VRwwF00smo=; b=tW6hy008lGBIOq
	fQWVmDs94Up+fcX7REpk1QYegwPYAgPdxtZ0J1hYdJuUhemfFriI6TCM3QOdp9QG+9gpex8q+KgsA
	NVHmZhTFUsclcdeVU0Rjmafa8HcsMBVodN1XqiRhNAgDr0VFRSlJm/14paUHTWx+HXXze+5/sWKiZ
	apcuUoHDESqHgR0f68S7Ov9+W6qBeQLSgMtS6y94YkTTBcxpmDDNDz0WVxAB1AQhIA4ocqPYAAYJ9
	eY4chTsGI7122VJyYM/OesSe2GgnDqR9ZFRqcIyHTHUKuzEgbbOv3nzRTNudhZkVl6Cgug1Q79sIq
	amAB+Q0Ex4FWDgOBZopA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSuW-0002or-00; Mon, 07 Oct 2019 13:18:48 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHStE-0001iX-PY; Mon, 07 Oct 2019 13:17:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so8690062pfl.0;
 Mon, 07 Oct 2019 06:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EcVoHFsDeIeHDLHpP7WttsttV9wlf7B4Ed2NE5p2jfc=;
 b=j8we2DPkY8qn+stB744bONJ67YWamBNHxL94s06qmhPOvNOxpNbaeg/JlgBeuQ8bI/
 t979StZKifPnuS0XpqgKtaBeVAgzemBwfS8D/ircyEDW879HjNzikZXk8boNF6QJyYYa
 PHU4d4HbhWoJsZ0W5iLm6C38QT0tqjN76pbxsee8o9ehi/skETp6hTCapbubIiZo6EUy
 IZuX9cDUn1plRP3rJYBEwwMGl9V5eJ2eEyDlvPVJeZQJYsc5qDzW4CY1wfSORW5ixBg+
 1cUtH8XRmTt0F5br+Or23osASybUCRNjODHW3IWqflzJiOpN7WVnOGvMn/3VFzh99oXc
 6C9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EcVoHFsDeIeHDLHpP7WttsttV9wlf7B4Ed2NE5p2jfc=;
 b=UkS12u7r5i5mxzcJQIDJEPd/nCP5tIHHeSCizI5VgMDJj0oLpVThyZAcPPp7YFE6PB
 nBjmOmN32t3DinvvkGzgV3qGNr8xMiJVOo6auBghuHVXVI2tAj9LMsJnOFNDZTViJMEh
 DNMAC49i0zym6IYeWgkuNfg6cU3Sei/5IX0g8ngLdsOOfl5JxduN8zxua9LO8ukC1fH4
 O6rDv16TlUqAkTxrSg0qWbL34O6ir/sTa6C/QcxgPCqsavq+A4Gya96TXZOqnbNCrkf2
 RBcfF/i38jcYW/+vpJCCDR+i2M3dNL2fE/Mt7CCRIxgL2j2kKWSMEMqjTybs9qBI1FPk
 CBtw==
X-Gm-Message-State: APjAAAUbLeuRLH2LV/qQvmAi0aInBuy4IV4823um5L+PZ2em9my0bLrK
 PZ2ZL24FvBcizbF64iVUxuAe5AtR
X-Google-Smtp-Source: APXvYqyocRcmzQldhoXRSqKuK/uto+P5hrbSB6RYEWfYDa0ATI0WIHFndNsKQKqySId7xTa4x9+Xlw==
X-Received: by 2002:a63:6d6:: with SMTP id 205mr10680788pgg.442.1570454248388; 
 Mon, 07 Oct 2019 06:17:28 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.138])
 by smtp.gmail.com with ESMTPSA id r186sm16938650pfr.40.2019.10.07.06.17.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 06:17:28 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to y
Date: Mon,  7 Oct 2019 13:16:49 +0000
Message-Id: <20191007131649.1768-6-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191007131649.1768-1-linux.amoon@gmail.com>
References: <20191007131649.1768-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_061729_517049_3C24B152 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Using microSD card we cannot get the mainline kernel to boot
using mainline u-boot it fails with below logs.
Build PWM_MESSON as build-in solve the issue.

[    1.569240] meson-gx-mmc ffe05000.sd: Got CD GPIO
[    1.599227] pwm-regulator regulator-vddcpu-a: Failed to get PWM: -517
[    1.600605] pwm-regulator regulator-vddcpu-b: Failed to get PWM: -517
[    1.607166] pwm-regulator regulator-vddcpu-a: Failed to get PWM: -517
[    1.613273] pwm-regulator regulator-vddcpu-b: Failed to get PWM: -517
[    1.619931] hctosys: unable to open rtc device (rtc0)

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Odroid N2 Schematics says "GPIOC_6 should not pulled low if GPIOC is not
work as SDCARD"
Is their any other approch to help resolve this issue.

Boot log failed with cold boot:
[0] https://pastebin.com/cEtWq2iX
---
 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c9a867ac32d4..72f6a7dca0d6 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -774,7 +774,7 @@ CONFIG_MPL3115=m
 CONFIG_PWM=y
 CONFIG_PWM_BCM2835=m
 CONFIG_PWM_CROS_EC=m
-CONFIG_PWM_MESON=m
+CONFIG_PWM_MESON=y
 CONFIG_PWM_RCAR=m
 CONFIG_PWM_ROCKCHIP=y
 CONFIG_PWM_SAMSUNG=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
