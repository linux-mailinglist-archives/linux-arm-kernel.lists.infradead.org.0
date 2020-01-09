Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A721356AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:17:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5lYDBoR2b7qi2lLzgRt1mKQrL5v8VOSj8jhCeJZXYg=; b=qrrqd/y+VExlbo
	y/C3Z2XhP0g2mceuDQWnnoCVXTgC2M1jFZRNj4rS6+z1wU48i3R4HLMKAi4L8c8hHUe/0J0P7ZHcl
	6bz6O8t65Z7vdn+9XkfLnsJoVTV94OZdZ5I2irka4knc/PR5qWbk3mhy3wXD2M9qThE1YY4ZxV2Zf
	QkVqdC5b1eZaQG5lqLVxki+YRuyxhHlhsgpVEnQvEYfEKDwKaq24mbZoY+7PT9V8zmq9eOfg4MQEe
	G8t+Zvf7qe0Rm6ITRX8hLHQ2QYaA03j0NZp50H7tG4gjcf4T83iOAwo41/9gMcesfllHFuCg4RgvE
	Ven1B1vnxVxGBOXOjiNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUs5-0001R5-NU; Thu, 09 Jan 2020 10:16:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUqt-0000YS-4y
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:15:47 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so2170267wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 02:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WhPSwUwjAsJRbhdmE0cVGRUouZ5x8oaruQHda5jd55I=;
 b=HC8fxqJPjClPxESQg+0LexxqsyidMnZOoLeiIdUEVFGcSScR8sksKA8q5LQ6QyhVV5
 8VBJIJEry4vesoZt4jAg9/kBIHnwcETmPNkSAADxYybXsQR/UKd+wa/m6lVPDPd+B5Td
 13QrybTcCngrUVdXwb58E0/eQaDP0flCvPnqLulrWUvepPx7EUeHe6eJDQ+QsW/oV4nx
 UNraPa50rixC4EH+olOkJKgpoKEFvFWN84EiB+XcVbTNqZKlwa/0ZNfV6ER5mLkg7z2Y
 zKAK6QA2B0KAQrZgSg7oNulTVVT9aO0/LHgomXjDA78sQrB4Q2h6fm2yZ4gkNPBy8vY0
 8XRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WhPSwUwjAsJRbhdmE0cVGRUouZ5x8oaruQHda5jd55I=;
 b=jekPAFWnM4MRbcJQbc56ftPl/FOP27jYqPwxAsb4Ve/brgV4d6xer/J7G3Nws+aDAM
 sRPOp+sXCSBMJy+XBqUCwRdBTaOhZekM8WQLewYQ4R4/7jZPHS0Hesf57bj4PuNF2dT+
 LCNJCBWytD7f653oHVJG7M67b2exuFOj06FVJFj6ojIVamgQKn5tS40OQisIy2QySz0m
 ysdXaDYpzavNEhI/QLSdzyBWzdN6THzEmskYwyvv6pAM1NzJ7jSYv4JHzOePB4u5TS2E
 WmghgfrBchSL5Nxj59H0/gXJr0ZP8Wbl0B5TewdzhfrX0lYdyfhkP7zGH5EzOxm8H94M
 lCrg==
X-Gm-Message-State: APjAAAU8RN4luiL7OflKGyhf3FMfAubh0n3GiovoAa25R/jPvgHvt7ix
 /V/RN3+xKXEK5BLiOU+/etbtOA==
X-Google-Smtp-Source: APXvYqweHN/a/x3NQ1r25V7h01jTBfRaAmdv+1exRitS5eU4c76wXJrzSyRMerZ3vIWt3dYZVjp/ng==
X-Received: by 2002:a7b:c5d8:: with SMTP id n24mr3822007wmk.124.1578564941075; 
 Thu, 09 Jan 2020 02:15:41 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q19sm2250460wmc.12.2020.01.09.02.15.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 02:15:40 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: balbi@kernel.org,
	khilman@baylibre.com
Subject: [PATCH v2 3/3] arm64: dts: g12-common: add parkmode_disable_ss_quirk
 on DWC3 controller
Date: Thu,  9 Jan 2020 11:15:35 +0100
Message-Id: <20200109101535.26812-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200109101535.26812-1-narmstrong@baylibre.com>
References: <20200109101535.26812-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_021543_288670_648F52C0 
X-CRM114-Status: GOOD (  10.29  )
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
Cc: Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tim <elatllat@gmail.com>,
 Dongjin Kim <tobetter@gmail.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When high load on the DWC3 SuperSpee port, the controller crashed as:
[  221.141621] xhci-hcd xhci-hcd.0.auto: xHCI host not responding to stop endpoint command.
[  221.157631] xhci-hcd xhci-hcd.0.auto: Host halt failed, -110
[  221.157635] xhci-hcd xhci-hcd.0.auto: xHCI host controller not responding, assume dead
[  221.159901] xhci-hcd xhci-hcd.0.auto: xHCI host not responding to stop endpoint command.
[  221.159961] hub 2-1.1:1.0: hub_ext_port_status failed (err = -22)
[  221.160076] xhci-hcd xhci-hcd.0.auto: HC died; cleaning up
[  221.165946] usb 2-1.1-port1: cannot reset (err = -22)

Setting the parkmode_disable_ss_quirk quirk fixes the issue.

CC: Dongjin Kim <tobetter@gmail.com>
Cc: Jianxin Pan <jianxin.pan@amlogic.com>
Reported-by: Tim <elatllat@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 3f39e020f74e..4b002e799e5c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2381,6 +2381,7 @@
 				dr_mode = "host";
 				snps,dis_u2_susphy_quirk;
 				snps,quirk-frame-length-adjustment;
+				snps,parkmode-disable-ss-quirk;
 			};
 		};
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
