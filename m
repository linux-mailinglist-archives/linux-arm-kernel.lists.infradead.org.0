Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8A0B72B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 07:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3nBvfc3vHJI6lO0Q5LLkUjdRMJc0HaKT2L8uaex4Kdk=; b=uKYdsyomZMP1qo
	FGVcXoEeREFZ90vDWipGe4dFrJKxXvRMiLtK2HQHYyt0ZblxAjgygplKWio69TPGy+LJrUPnpvhho
	AyHa88BG6z29oK8vBDn5wTR6wbfOEoqUu4QwYeNgk50+xl+kSMCTxQtH1baTmd0GrOA1pPH3z6oMb
	AY58NrwctFC+IiNEwNBSoECUbHTjZohtTLcxX6fTkpxd90oRFkGpuYshM4Xu8A1OFT2xy9CvlH20P
	jkgxs8U/7Q3Hqur3xKbUNMHiKfevK9etHJW2b/PIrXsYYhOK7FspPf4SK69XCxBdKfZrmVXfGKJIw
	ik1EhlEZGhd+Bw0kwVWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAp1g-0007fp-2p; Thu, 19 Sep 2019 05:30:44 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAp06-0005F6-2J
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 05:29:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id x10so1197161pgi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 22:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7UOcZwhIF06MhGn+HJKXs6pdfSRqhxVhEIb50OgmNOI=;
 b=Y7HZPUIUZqEK4jo+BJve1KpFrqXMnsuT4bQMzaur4NSxYR5oJZEaU/x99ezt/hgzfm
 M8PBWQosHOZYlBM54/Fa5fMIwPZQ7ECsrS5UPQMAhp40MvbZCPvEYUe+LfiUyItaU+O5
 VrurC+B1oAuvwLo1lyOl7ZjDnYwRIKRGoziX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7UOcZwhIF06MhGn+HJKXs6pdfSRqhxVhEIb50OgmNOI=;
 b=BlwBeKv8tGpy7Kes/Xyfi/xR9Y0Am6dKtUMuVys80E3iCFxwv0Nij865vyaaVrMNXw
 CeYyu3uO4uHUh/aLFsofvYzxHudV/+Bx0xHxshvazZvfob9x77xHCBI2p6YyOK4u0dKJ
 IP0QfuZ0MwmWmnWhtwv/Tf3lTHaiEDYrSpGWxAZ6MIJkDrm/0wj6e6tYh73m2y1bVUdc
 cX2l9fY2j62FDbGHNQqm6ge6HAlHcwKY1a+/RUMPaR1b75Zb7uyDv3e8RcyoQU3ZXCRW
 OW69QASkg/b2kyYKuc7Fy/6TRk5IuiQGIqGUZNT+6TxYnkxpk5lsmobYzyCmxDxnjtvJ
 Ugzw==
X-Gm-Message-State: APjAAAXjnYEnDe+V4bzBOA3pEcOB2z6ERiY211Amye+GQK2njI7qB+Qp
 KuJT+MhN6cickBqQbL2iDCI6cg==
X-Google-Smtp-Source: APXvYqwhNboYAOFo2Eq0/XPNnZNqgcNjmWaxGA4Hw7IJ25NN0lvkUgCVt3/UnpQ1hpCwXf1Vlu0p/A==
X-Received: by 2002:a62:fb06:: with SMTP id x6mr724333pfm.186.1568870945159;
 Wed, 18 Sep 2019 22:29:05 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
 by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.29.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 22:29:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 5/6] arm64: dts: rockchip: Rename vcc12v_sys into dc_12v for
 roc-rk3399-pc
Date: Thu, 19 Sep 2019 10:58:21 +0530
Message-Id: <20190919052822.10403-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_222906_528656_C508F0EB 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is always better practice to follow regulator naming conventions
as per the schematics for future references.

This would indeed helpful to review and check the naming convention
directly on schematics, both for the code reviewers and the developers.

So, rename vcc12v_sys into dc_12v as per rk3399 power tree as per
roc-rk3399-pc schematics.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts  | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
index e09bcbdd92f5..51242ea5447d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
@@ -57,9 +57,9 @@
 	 * should be placed inside mp8859, but not until mp8859 has
 	 * its own dt-binding.
 	 */
-	vcc12v_sys: mp8859-dcdc1 {
+	dc_12v: mp8859-dcdc1 {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc12v_sys";
+		regulator-name = "dc_12v";
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <12000000>;
@@ -85,7 +85,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc12v_sys>;
+		vin-supply = <&dc_12v>;
 	};
 
 	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
@@ -118,7 +118,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc12v_sys>;
+		vin-supply = <&dc_12v>;
 	};
 
 	vdd_log: vdd-log {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
