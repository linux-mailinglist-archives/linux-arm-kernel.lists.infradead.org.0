Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837E8146980
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 14:47:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b6nk9VKtfLQmbggXr7ieEyOfb7SFZtZ5b0BC6oMCjCY=; b=pfGoTLXaxqx460
	9XOMQeqke5s8cpRbaD9EcnjZ6WBzUdTgRO/XoIpeHifoO0HVTf6a/LDrw7xDYQBS1T4TQ0EYhfLf3
	34JyRRZpG+LjeYV5+lhnEFey7ZafXzn4fvsNwvNxp3ck9hXoE3avNmxniJaF2NbNdiGHFUu+X37VM
	M+B36nmDCu1vTzosf6LGd4boMYroJV2miUKKuG2REa1s0gXLdIykB7pRfJIfbbGN8pygI7nNUvABZ
	rijn8oVE8y8HA/PgdhOeS4rRojUu0gEtykTNs9al7SrrMk43euUzvrrnUu3MkCFhhU0ZQBUousVAN
	hZL36/88Z5GuNOtoEeXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucp8-0007hl-9W; Thu, 23 Jan 2020 13:47:06 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucp0-0007gp-7t
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 13:47:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so1570550pfs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 05:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9msSGB05EOD+TA6th1Q6DasshXuxXMHpgfWWmoqkjG0=;
 b=hZX9mIAIy9GMqX4umkBL4JNLBU+ujofWPQPTjEzBxMgbIXIeaOfAKSsdtbeZnrdA0k
 F5BDTO12rEh1yXXRYUf5lsWCuv2k2ccVWkLwJj4BwoZR2KwX8X/ldOW/lMkvGcIDwI53
 0vwA/U7bw6xb90SZXS9aghijC1mR8gmMGzmqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9msSGB05EOD+TA6th1Q6DasshXuxXMHpgfWWmoqkjG0=;
 b=cY9rQlCyrkCT03yiJzhQI0BBz/fi6OzcgypxpImeKWmvAFYx7s2vhHo75MfDjUHEqA
 H4kYG4oKOsP+uhnAO0JRbE80rxtLDIYPuziDl40qudATSl8YWzJx9+K1ydtKO07iVC1Y
 9V4X3Bph4V234DgxocAbMn1W02Jqbc1MtHMtHYYCjccbZzjBObaczlnrHTc9HN9aXyy7
 kA5myWaV9jdeEdGQ+f1qpgDRuLFBs8B1ET5pn9yjlm+p9sitBWUZTtrtCVOYYspnnTgj
 0fB+YXivZ+DPWC1IfEJVGlsqiN65TKPWWAqrxYiwoug47aarORhP0/ArUvQwegtjGAhy
 29Yg==
X-Gm-Message-State: APjAAAU8Ck6aij9hu9FiWwANDT5exxr3nZPi4Qg/ULG3ZBAHGVNsxQgK
 8eVvGRtj2Nmh+JuFe/34fJeyCg==
X-Google-Smtp-Source: APXvYqwu4dqBx94o0ANFySalOciPvjf6FEO1N1R3Ni57uQ4X5UqK6ImkHDTPh2JeP71b7f82/fpnUw==
X-Received: by 2002:a65:645a:: with SMTP id s26mr3928042pgv.321.1579787215201; 
 Thu, 23 Jan 2020 05:46:55 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id a10sm3119275pgm.81.2020.01.23.05.46.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 05:46:54 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/3] ARM: dts: rockchip: Fix vcc10_lcd name and voltage for
 rk3288-vyasa
Date: Thu, 23 Jan 2020 19:16:39 +0530
Message-Id: <20200123134641.30720-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_054658_703966_E748CF59 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to hardware schematics of Vyasa RK3288 the
actual name used for vcc10_lcd is vdd10_lcd.

regulator suspend voltage can rail upto 1.0V not 1.8V.

Fix the name and suspend voltage for vcc10_lcd regulator.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/rk3288-vyasa.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index ba06e9f97ddc..d2f79e5bee87 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -286,15 +286,15 @@
 				};
 			};
 
-			vcc10_lcd: LDO_REG6 {
-				regulator-name = "vcc10_lcd";
+			vdd10_lcd: LDO_REG6 {
+				regulator-name = "vdd10_lcd";
 				regulator-min-microvolt = <1000000>;
 				regulator-max-microvolt = <1000000>;
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-state-mem {
 					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
+					regulator-suspend-microvolt = <1000000>;
 				};
 			};
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
