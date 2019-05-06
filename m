Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4836E151D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KbKgNDCrhXgVDSXflm1xB9vkM5qdBIGeYtrM6Xelxds=; b=ss9KGRNNIC0yB5
	7+nsYBFUHXOwhg6yCAZf9BBGSW8PXVk0Vyo0On5KODGGhn3bulFIulhqZ+IyU28JKdwNdC6Uv91s8
	/9EeVMkQMJbIGbZ0hLBtFOhAdVtZVSZuvfOc+nocwBWXbSUYFeGIVvJWWirgDBse9dDRWY9VknEMP
	Ylw2OEk8A07qQsCtT9UMv9OGP2YThzXFB0nwO7LkIkwq+dygD4xp3O8nEHGZDOoSIejRyohB7GYnA
	mfAyrovlaTqt80RKpuWzrGkJNzEPEN0tInk8Wwb58ahHSAveN0K/o0kjmQsH2q9KyUaWnGmbNQJ4e
	1BRpvgxZtkX0uGYL+3fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNghN-0006AY-Gm; Mon, 06 May 2019 16:42:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNggA-0006A7-Tq
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:41:29 +0000
Received: by mail-wm1-x343.google.com with SMTP id y2so16305664wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iQgeIsTEx/kg4VMAEWL5/A2xoaxXugvuxPH5cSYewSA=;
 b=iRDpA+vmODUAsqGvsSDQj7xMTEOdhls+TLlvbLY46dCsNO0mjlUDfqG4tLq5LOz+mk
 aQ1dMpo3N9PktpsZNedav1xyCrLoXNjBvyrHgpTirC9sBELsOEQqWO8njMDlMdTpm6D+
 ZIpGoxHmJoZ5IesNQ5JZIkCGtMN7FiOBE4BT2aIYMqeaxyLUDP/oss/uDe5cSTuVcRFw
 pC2CRkCCdtpBLIc7LZyd5VzGY4r0ii+7hypjJbi9oUXyhRwBUKUC4I0pIewJWFUY7uDy
 Wj8KEV0X3cydKifJ4p72w+cmnedj3ia4jpSqppOzgCaIyLRD37/oCeDgnSlsT1v1bXPd
 Y5dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iQgeIsTEx/kg4VMAEWL5/A2xoaxXugvuxPH5cSYewSA=;
 b=M3mG+G7UjOvDpO/nUlm2Qi2/RER56eq2hdpvsYj8o17c2xvQLCp6oPK2u4VYK/u1tL
 fz/YbudzuU1HfrxueKiJ/tFDEd/CtA0q+n1Ls5AXaS2KJu+TaVWRS0cjbC4jUIeyPiY8
 Uzn8bb5AL5vsnNzZCWDrXpB1y3molsKcUayd6ngaIrbihWtkPU5NokvBsNu10pJjvaNR
 KmEhgJ1MqhxLD037Z/Lt+fEFhPq4auV9gWufoAoHQQJWa0BopKND+K/0aTEq8jSTTiLP
 Cbt5Wyt0r/lOuERMrjt2BEoO9TANnQK4eVwC5/NVJKjD9wpOkmAdSbAyME36M79jGUGr
 hOng==
X-Gm-Message-State: APjAAAXd7W1wf2KQYgaLwzSbNt807cuwT0b0UKCxlmvwuFzifynxrxWm
 w5VA4LvmfDKygQXPcUDs9gY=
X-Google-Smtp-Source: APXvYqzANdLemc6456XT1mU0YZtZMdf99+IAJEjPSEf7DxfemWkxLaVEN8Bsdm852kuTYccQkyqjBg==
X-Received: by 2002:a7b:c411:: with SMTP id k17mr17156595wmi.68.1557160883201; 
 Mon, 06 May 2019 09:41:23 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id f138sm15280wmf.23.2019.05.06.09.41.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 May 2019 09:41:22 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] arm64: tegra: Disable XUSB support on Jetson TX2
Date: Mon,  6 May 2019 18:41:21 +0200
Message-Id: <20190506164121.4507-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_094128_188418_0069406A 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Bitan Biswas <bbiswas@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The recently introduced XUSB support for Jetson TX2 is causing boot, CPU
hotplug and suspend/resume failures according to several reports.

Temporarily work around this by disabling the XUSB controller and XUSB
pad controller nodes in device tree, while we figure out what's causing
this.

Reported-by: Bitan Biswas <bbiswas@nvidia.com>
Reported-by: Jonathan Hunter <jonathanh@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
index 75ee6cf1e1b4..14d7fea82daf 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
@@ -59,7 +59,7 @@
 	};
 
 	padctl@3520000 {
-		status = "okay";
+		status = "disabled";
 
 		avdd-pll-erefeut-supply = <&vdd_1v8_pll>;
 		avdd-usb-supply = <&vdd_3v3_sys>;
@@ -137,7 +137,7 @@
 	};
 
 	usb@3530000 {
-		status = "okay";
+		status = "disabled";
 
 		phys = <&{/padctl@3520000/pads/usb2/lanes/usb2-0}>,
 		       <&{/padctl@3520000/pads/usb2/lanes/usb2-1}>,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
