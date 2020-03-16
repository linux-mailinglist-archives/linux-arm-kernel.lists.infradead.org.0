Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8F518621A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrKsIEX7H8ffOgx7ETVL+XUtO7LYFn/NssBu/pDulF0=; b=UwZh1mn1waDWAy
	ZmBPWhhG8qi2oSlQ74/UwncHW8VMu9+yMwDyBtWPUBuNkFeykO99iNtYT37yxQ7i0MfFsSvQaT3eC
	d9/5AkvjffSMa2gijCA5or9qKkddDtbUGbOAaOpc31NPUXD48G4r4r52GmhWjPhp63qH8Jvd7h+GS
	BbJkeSbCxtrx6uxSARr1I7XK1I3B2RD/KeqHYq19LJZ9d6Q8ev0GaBoI72JVsAgHZqgWCMYUUULJf
	q3iP1gOci/fNov1Q0px1a07qnywJkVZJnTwTz6LEUdhWb+bmOst6yeM4OJYJyzRNWBCaHMTODth97
	m72BbOMfJPoVGRQ5TaBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfd0-0006F7-T5; Mon, 16 Mar 2020 02:37:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfZV-0002KI-Ic; Mon, 16 Mar 2020 02:33:45 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E09C20746;
 Mon, 16 Mar 2020 02:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584326020;
 bh=Unh3rPOkR4ko5NKQUaz+SBxCMdPJ9H1YJmGubzUTjOo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DSIRRo3fl3pfuWhCdj3wnpLyejqLEdWu2+x+vGG7eBMrcLDflhTXY5/iA3fXGT/2E
 Kr3NADl7fFEismTvumrxV7ADNgnOEAUMiOgz3VhzrvAIjdsgDtmNu0Jl3Q3WVG1TcL
 jrYj/DO1HP5YOCqv6driebciUyHZmcQg/hOiGW2c=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 17/41] ARM: dts: bcm283x: Add missing properties
 to the PWR LED
Date: Sun, 15 Mar 2020 22:32:55 -0400
Message-Id: <20200316023319.749-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316023319.749-1-sashal@kernel.org>
References: <20200316023319.749-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193341_702512_61266378 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Sasha Levin <sashal@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Peter Robinson <pbrobinson@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Wahren <stefan.wahren@i2se.com>

[ Upstream commit bff211bab301db890e38de872d43cbb459940daa ]

This adds the missing properties to the PWR LED for the RPi 3 & 4 boards,
which are already set for the other boards. Without them we will lose
the LED state after suspend.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Tested-by: Peter Robinson <pbrobinson@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts      | 2 ++
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts | 2 ++
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index 1b5a835f66bd3..b8c4b5bb265a9 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -31,6 +31,8 @@
 		pwr {
 			label = "PWR";
 			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+			linux,default-trigger = "default-on";
 		};
 	};
 
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
index 66ab35eccba7b..28be0332c1c81 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
@@ -26,6 +26,8 @@
 		pwr {
 			label = "PWR";
 			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+			linux,default-trigger = "default-on";
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
index 74ed6d0478070..37343148643db 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
@@ -27,6 +27,8 @@
 		pwr {
 			label = "PWR";
 			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+			linux,default-trigger = "default-on";
 		};
 	};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
