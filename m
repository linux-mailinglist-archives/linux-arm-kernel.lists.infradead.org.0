Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F0D39616
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 21:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EJxRmR2dH8Yq06GESeHzZOQhkcWEqUQr4roMdE8Rbt4=; b=snd2C/UsALwr27
	TsqdxdRBRegoXag0ORbypsamvvYCU4ZW1UZq3TWWNrbPXVMvdY9G5+z2F/ORM9FtbimQGpYmEYe0I
	hztj1yCAL3iv1ammxGgPoI2iNccdY2n3/kXXxLo6qxLbWN+Omb+crJo9ahIyziPo20+QNq3k7Nb6w
	wuxzEmeoOjaWTac57CrB0ZsgpOcn5c0t4qAYV8BLIAE4E++oVjCq17wlBGEFSGR+DEbXBaf39CgVN
	k2ZpW9tYUEn4DQpHTguGuCMrvm+7uVoOKvJepdbe1oH2DEwO+5oeZEOKfpWZ5EpTAOGtEBYKP0/Xo
	8ozwsuHcz5bqDlV+3uXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZKmJ-00008Z-2n; Fri, 07 Jun 2019 19:43:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZKm8-00006d-Dy; Fri, 07 Jun 2019 19:43:45 +0000
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net
 [71.197.186.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ACD9720868;
 Fri,  7 Jun 2019 19:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559936623;
 bh=tFAX1TrUh+zWhm4cmBHIYK3G5smuy2djcrTGV59Ksuw=;
 h=From:To:Cc:Subject:Date:From;
 b=0oUCfe4AFMgIqpLhsK2SHdwXSoWkt+P20/GrYCplr6QfJXa76J7i7SRSkPx2TloI3
 epYMnraxb41OXVZvSeBI71eWnQWkNU/VlY0qfL2tTCNmFOX2EkIT+SS6RFNmF7ui3p
 cbaYb85XTpJX3G1h3pDJN5LREahcfvbK12lP7dns=
From: Kevin Hilman <khilman@kernel.org>
To: linux-rtc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH 1/2] dt-bindings: rtc: new binding for Amlogic VRTC
Date: Fri,  7 Jun 2019 12:43:42 -0700
Message-Id: <20190607194343.18359-1-khilman@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_124344_492116_A98D31F6 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kevin Hilman <khilman@baylibre.com>

Add binding fo the new VRTC driver for Amlogic SoCs.  The 64-bit
family of SoCs only has an RTC managed by firmware, and this VRTC
driver provides the simple, one-register firmware interface.

Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
 .../devicetree/bindings/rtc/rtc-meson-vrtc.txt   | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc-meson-vrtc.txt

diff --git a/Documentation/devicetree/bindings/rtc/rtc-meson-vrtc.txt b/Documentation/devicetree/bindings/rtc/rtc-meson-vrtc.txt
new file mode 100644
index 000000000000..f02886179788
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/rtc-meson-vrtc.txt
@@ -0,0 +1,16 @@
+* Amlogic Virtual RTC (VRTC)
+
+This is a Linux interface to an RTC managed by firmware, hence it's
+virtual from a Linux perspective.  The interface is 1 register where
+an alarm time is to be written.
+
+Required properties:
+- compatible: should be "amlogic,meson-vrtc"
+- reg: physical address for the alarm register
+
+Example:
+
+	vrtc: rtc@0a8 {
+		compatible = "amlogic,meson-vrtc";
+		reg = <0x0 0x000a8 0x0 0x4>;
+	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
