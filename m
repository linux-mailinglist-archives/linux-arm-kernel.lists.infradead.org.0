Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6907546C83
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 00:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gGjmdtdBe3IdlE27gfaEG2qWuPQ5LmOMXHd2nXrvOJI=; b=syzfJleioz74jh
	h0yRLTJTh14Ck1ToOZ+Onlxmhpn2dOoc5kHKX4xS0N8spJ4lxvv3zDUPAfC8OhYny1RhuMLm6yxmU
	J0TQEKeOwgJ/Pf/w+I8Zpp3A2d0lXx+OQ4XoxdXlBJnxMZS9vc1LxSbj4FBUjz3y96pW2aI8E1liO
	MihIHVMBxH2WSwVo7ODXnuXzao7tKZdmeUweGb+jY2cjk4Jz4yH+0QA3u7/kh4qbpxxv7e7TnGt5g
	w9/1yBlYtF8lK44M7fio3UkXMbe+jltsv9RgcjuWYm1aF5UoUzaistiH2SEpiYJHTN+FDmcOcpxBI
	SPw+sBMIKgl98hRVzMqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbuxG-0002EV-Lp; Fri, 14 Jun 2019 22:45:54 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbux7-0002D0-5x
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 22:45:46 +0000
Received: by mail-pf1-x441.google.com with SMTP id m30so2229204pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 15:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CmE6N4JKzhXb5lHoVXsuD5qj8tmeCrMDzU4ePEIWm0Y=;
 b=E73CaugswLEoSnRUob/BsIpit8Tpx/hMYrnG1PMqIuPtY3H8B5BMGazNT5uoypDBWx
 osOLOrWmYS78KuZdurwrMG5aU1Y229O/IYHb/YcPh8YQIb9gbtbFQLqx5utdsF24L0cP
 CMPNavVjwHgO3gIr+WTWuV2HWsmZ2/Og89tlk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CmE6N4JKzhXb5lHoVXsuD5qj8tmeCrMDzU4ePEIWm0Y=;
 b=jpw4FkShQ5ZC/qJv6BCUXRlCUz7pzwYkepklXis0YepSONTWker0ekeEBmBFpNsjWZ
 /DyPs93fd7uGl7TeabDbNuKYeuiqPQuWzknczsTG6AuxkIzSUDDm8h/7Wb4gNOFi5wfW
 zSiZG++CQO8i6Tt5FEuyyDmmFXbI+Tm15PbxEHuABlZtDubgbX/0F7BFyvyXLWf3j/Xy
 SDsHov4ovqtze6ofC2SaJcMLXyRuPNyFuYWtUwzU1j9sD5kOsXtdez9LRn4Ehv7xojhx
 yIWWFLRKAnnXtS1DBcC6w/ikOV+NVW151JVqUGafTzUHTe2u/JftbrO6nXrtxjzBveAI
 4Saw==
X-Gm-Message-State: APjAAAVAUNF+h+MZTAHmdwr4VjgFdP6ePXiSHFY9xw+unSLMHUnjJk+n
 mdS1btbCLILtvKFP5+2UU4PDnTrKQk8=
X-Google-Smtp-Source: APXvYqyN12JRzQIV0hm4tLUoGW9KOz1B4YaxPa5FrSR+r+v1H8arhpYH9PjobRBRAWHrn53K5WiajQ==
X-Received: by 2002:a17:90a:37ac:: with SMTP id
 v41mr12841194pjb.6.1560552344085; 
 Fri, 14 Jun 2019 15:45:44 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id x129sm4099537pfb.29.2019.06.14.15.45.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 15:45:43 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight settings
 for Minnie"
Date: Fri, 14 Jun 2019 15:45:33 -0700
Message-Id: <20190614224533.169881-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_154545_250358_2622B466 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, Pavel Machek <pavel@ucw.cz>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.

According to the commit message the AUO B101EAN01 panel on minnie
requires a PWM delay of 200 ms, however this is not what the
datasheet says. The datasheet mentions a *max* delay of 200 ms
for T2 ("delay from LCDVDD to black video generation") and T3
("delay from LCDVDD to HPD high"), which aren't related to the
PWM. The backlight power sequence does not specify min/max
constraints for T15 (time from PWM on to BL enable) or T16
(time from BL disable to PWM off).

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Enric, if you think I misinterpreted the datasheet please holler!
---
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index 468a1818545d..28cbe07f96ec 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -86,8 +86,6 @@
 			240 241 242 243 244 245 246 247
 			248 249 250 251 252 253 254 255>;
 	power-supply = <&backlight_regulator>;
-	post-pwm-on-delay-ms = <200>;
-	pwm-off-delay-ms = <200>;
 };
 
 &emmc {
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
