Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2597C13996F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=00p+1DvyPD63ywTmoaUieIG/Ucvr2esb9KG//dEUXhk=; b=XQX7clEEDbTkAUlS0DLE6FCxko
	l79O2vE4CINx7Ja1gYxw4QrTFhxHkomN4LkfRC5bSwra7mJSpD3MqDbfZk44t2XinVlue5IdV7xeE
	7oO649VIzB6GeGw144XD2N6kuvROMni3Si5ysi6vLGrM7TUnmqlJ4UOElMOVaw1j0eCPA+BEJUcHM
	3W/CQAdVu0Vc0Z+Qf/t6BKls0SG7KaW0dM5UaSI16uA1REgWrt0pVpyOTGc1owrul2ZaYlJcBRLVv
	tU6a/K204Mw++HeGN/0YIkIwOK5uF1dHC4TJH/2cdAlxUwilYIanVk/DPKSbBlr55AJQZifRIXk1Q
	v2Rs5WLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4tX-0008G4-E2; Mon, 13 Jan 2020 18:56:59 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4tQ-0008EH-DB
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:56:54 +0000
Received: from localhost.localdomain ([37.4.249.154]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Ml6Zo-1jVahK26do-00lTfi; Mon, 13 Jan 2020 19:56:42 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V5 3/4] ARM: dts: bcm2711: Enable thermal
Date: Mon, 13 Jan 2020 19:56:17 +0100
Message-Id: <1578941778-23321-4-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578941778-23321-1-git-send-email-stefan.wahren@i2se.com>
References: <1578941778-23321-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:SNWSISItmXIx6eBnLoCptDc6JzOtBscQcH5BvXlshAHdxm/pO/U
 nWGuWALXvxvoi2nUl2x5Bi5mw5ROnHHYRUmjT6GQBGF3ovXlPXW29EN1QuzwMuEF7iMWWvG
 oJorM/yZN5rYbL/0027fpe4I3SxbGTfNvYJMbvklxeW8H9cHpkzV1x8HW/znp2jgkWOOG16
 ci+0JH72mCKwJhY9ujULA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1sUaqkNUY28=:ONGBQllNlMxWag82getHbF
 C9TRj8WODi5/zj5ZssXoX7usomRTx3C6d0JBt+gExp++FSA3PSho3BpyxtHN1Iyd1CiGwa9zj
 e4z2JaiEBTOIVx64KItMokdZNraIsKkPxYdVgGJqEMFOTGjlfxqovj1FMbADRa605CsXW5T3D
 6RiR50kOfCv6Y773oh3TQYjZ45sBmQ9bY8aw1s7yiT4jD8PmF+u8qLMYsfM3kcJe1/hXGCk6w
 6XmAGu/ue0WskYFG9JfHPLVt7fxs4bwrmM1Gg6by8D6UKjR9v2b05QPsQdKCgYfb26Rp5SrDr
 8VLZZhwu34EgughC1Xn3p0wXA0UmT/cAnK5Nd5Fnp8CEUpZByVt2YwX2fMP0PBZQvB5cDlzcW
 G5BoFUU0YjBQG1dBlsAJKheBQvvvqpIEjnH/uD0eywf0k65nLGkH9EEp3UfqAl3bfsuz6r4dn
 nh/CG/IBsgxgQ/Gki0SXjypWYXJz6mzU3l5zRR+a5L3AVWfBPqvqup8Qhodihg45va5cVp0l4
 KNyqZAG+gpOEqP0AKbks5XzDInZsnnmS3Ijs65hFj8xnQKNdF9MSedlaxwiZQ2iXPXLY7IYiq
 2WAzeArBITr/2gQlJVxpYTpmcBvboRoyqKRZym2v5FUL7oZXIz3a7xLMBvb87RWc81MjXCcin
 0sCeyN5PqQKUWna+JSF8JUuWuNqKu/2ea8W8xqOwNCLY8t4Fa/1yOM/4W+cLtC9IfF5cpZHUq
 7eQ6saS4a4C39bNzUMsnNNOef9qUrekTL8BBqOYs0pUF04ekLJ64KBBzTVQatp4k+/VvdNz8K
 KvLclkEQeRGtmn0ycInTaVvlZKbWE4oNxxA2GRVBwu6TlgdciKNGLgLcS1I3GDRznyPIT7qvh
 swdPoGeXY5wyMNNAbwMpIqzD4B13UTKAFD86w2Zlw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_105652_739323_B847E344 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables thermal for the BCM2711 (used on Raspberry Pi 4) by adding
the AVS monitor and a subnode for the thermal part.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/boot/dts/bcm2711.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 961bed8..96f341d 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -66,6 +66,17 @@
 						 IRQ_TYPE_LEVEL_HIGH)>;
 		};
 
+		avs_monitor: avs-monitor@7d5d2000 {
+			compatible = "brcm,bcm2711-avs-monitor",
+				     "syscon", "simple-mfd";
+			reg = <0x7d5d2000 0xf00>;
+
+			thermal: thermal {
+				compatible = "brcm,bcm2711-thermal";
+				#thermal-sensor-cells = <0>;
+			};
+		};
+
 		dma: dma@7e007000 {
 			compatible = "brcm,bcm2835-dma";
 			reg = <0x7e007000 0xb00>;
@@ -363,6 +374,7 @@
 
 &cpu_thermal {
 	coefficients = <(-487) 410040>;
+	thermal-sensors = <&thermal>;
 };
 
 &dsi0 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
