Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D34298C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=407F0oGFCZCJuyse1L5TsntSgmxMahNc7ucxep1qwKs=; b=f/Mza9BtSGemWbz36Pcjg5EuJH
	4McnK5DcCwpwtHQib8JH1qOXgokFQ3+4dEdH00XAT9w7lVPvUlSqwL/RPs24y5wY1TMHUoefKYmeQ
	ghcJLOWTb8q68cn92vC9sNzc8/OrQu1tu/GsMCUIsB1E8Y+foCBOPPTnSg5Oylg37Yg7FcpMxxPrf
	b8Allw0oq1sC6DEyJTTp4N7nUkzdEmx9T9+1AejY5SRemWKCJ/QXhSzAjPEaWk1gNrZMLwHt5JILz
	GEOMaqikF343fkTCVBvFxvHNoCYjQe0kFCZXs6TZYcWybQZzLaoQEatJ/c45tNOQdogmiD5FA9Aye
	cdYrYDLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUA7g-0005Xi-1Q; Fri, 24 May 2019 13:20:36 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUA7D-0004Cy-CG
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1558704004; x=1561296004;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zTue6fDgJesKsY8LkGGVfgOtIsQ8SjFxkDyJKT2pZ/U=;
 b=uGrKDJ9OPxKD1t15JG5I7fIzMogZ77w3LfaU1hhxxvJdAfD1t+TrMJOq9Y92fbGq
 fBwSMeUvOLKhsVQFBddUrpRgGAvoN3CHIctHNYDfmpv/dlRAW/8txKDT7zfWeAwn
 8zFqPDnp0WfMLQ0GBN5mTSw6P/m/tLQOAs3EAiricgM=;
X-AuditID: c39127d2-6d5ff70000000df6-ba-5ce7ef84c2fd
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 8A.81.03574.48FE7EC5;
 Fri, 24 May 2019 15:20:04 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019052415200372-20933 ;
 Fri, 24 May 2019 15:20:03 +0200 
From: Teresa Remmet <t.remmet@phytec.de>
To: linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/7] ARM: dts: am335x phytec boards: Fix cd-gpios active level
Date: Fri, 24 May 2019 15:19:57 +0200
Message-Id: <1558704003-393769-2-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
References: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 24.05.2019 15:20:03,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 24.05.2019 15:20:03, Serialize complete at 24.05.2019 15:20:03
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrILMWRmVeSWpSXmKPExsWyRoCBS7fl/fMYgyeH+S3uzP/LajH/yDlW
 i02Pr7FazF7Sz2Kx9PpFJovWvUfYLfZf8XJg91gzbw2jx7evk1g83t9oZffYtKqTzWPzknqP
 z5vkAtiiuGxSUnMyy1KL9O0SuDJ6H/9lKZjFWdG2axJbA+Md9i5GTg4JAROJ782PWboYuTiE
 BHYwSqyc+poZwrnAKHF//yNmkCo2AQ2JpytOM3UxcnCICCRI3HopBFLDLHCGUeJu/zI2kBph
 AT+JK38eM4LYLAKqEov+r2MCsXkFnCUWNrUyQ2yTk7h5rhPM5hRwkfh9+BkriC0EVPN0/VFW
 kKESAo1MEtufn4JqEJI4vfgs8wRGvgWMDKsYhXIzk7NTizKz9QoyKktSk/VSUjcxAgPu8ET1
 SzsY++Z4HGIU4GBU4uFNuPw8Rog1say4MvcQowQHs5IIb+z+ZzFCvCmJlVWpRfnxRaU5qcWH
 GKU5WJTEeTfwloQJCaQnlqRmp6YWpBbBZJk4OKUaGP1WMdZPKm/ZPatEV9G9vGmhcvtx3Q2K
 RodEOJfJO54uTYu6a/1w2nzm3y4njdYUeQRtsb4Y9fRLXe6bkw4PXLZXWk9fyXZ/W+VBqdJ1
 MYn/cz63NUj5vD+621nD49IF5rjKK8/WNIruvtjPpOsvrnz+Q2/Jplvd7ceCNq/W/nSjqsj6
 w7KSiUosxRmJhlrMRcWJANOOLVg0AgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_062008_115595_0FE69EF8 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: Tony Lindgren <tony@atomide.com>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Daniel Schultz <d.schultz@phytec.de>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Active level of the mmc1 cd gpio needs to be low instead of high.
Fix PCM-953 and phyBOARD-WEGA.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boot/dts/am335x-pcm-953.dtsi | 2 +-
 arch/arm/boot/dts/am335x-wega.dtsi    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/am335x-pcm-953.dtsi b/arch/arm/boot/dts/am335x-pcm-953.dtsi
index baceaa7bb33b..20a3d9827692 100644
--- a/arch/arm/boot/dts/am335x-pcm-953.dtsi
+++ b/arch/arm/boot/dts/am335x-pcm-953.dtsi
@@ -197,7 +197,7 @@
 	bus-width = <4>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc1_pins>;
-	cd-gpios = <&gpio0 6 GPIO_ACTIVE_HIGH>;
+	cd-gpios = <&gpio0 6 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/am335x-wega.dtsi b/arch/arm/boot/dts/am335x-wega.dtsi
index b7d28a20341f..84581fed3d06 100644
--- a/arch/arm/boot/dts/am335x-wega.dtsi
+++ b/arch/arm/boot/dts/am335x-wega.dtsi
@@ -157,7 +157,7 @@
 	bus-width = <4>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc1_pins>;
-	cd-gpios = <&gpio0 6 GPIO_ACTIVE_HIGH>;
+	cd-gpios = <&gpio0 6 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
