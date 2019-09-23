Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A4BBAFAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbQwnnSAQRC0dUe6XDj8a6U4nXUb1kg22S5YrYa1rYE=; b=RlOpxKVfk+mw0q
	5KYjTvhFuC6DuKGlqbhqhU7ntMFKzl8S5H/R5no/ynPYQyKzfZI8TnuIq3iGEG0wZN1+D7tsILNCg
	Aj/Stbu0sehI9maiRqtEuiuZmhSBxV8auUc1MzfgH+Up3QNFCRD55sL/IZaIE9mwYXQqYqHG0Qquy
	bDLLTN2XONby1n0ZaKpQnSHQDlzln673EaisujIWFLSRHzKkfFBXZFv2ZSyllIGU9/wD+0FmDdyse
	52NV3DVLGEXffwHjqYqy5YD8R/T85ZqL2VfYK7rDaP5DkKKsLxoq4FFJ8FFSu2TNneV/QBb68GwQU
	wmXVb6wm56Ev2AkQHwzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJoJ-0007HS-Bb; Mon, 23 Sep 2019 08:35:07 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJni-0006xN-9c; Mon, 23 Sep 2019 08:34:31 +0000
Received: from droid12-sz.software.amlogic (10.28.8.22) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10;
 Mon, 23 Sep 2019 16:35:22 +0800
From: Xingyu Chen <xingyu.chen@amlogic.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Kevin Hilman
 <khilman@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v2 1/3] arm64: dts: meson: add reset controller for Meson-A1
 SoC
Date: Mon, 23 Sep 2019 16:34:19 +0800
Message-ID: <1569227661-4261-2-git-send-email-xingyu.chen@amlogic.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569227661-4261-1-git-send-email-xingyu.chen@amlogic.com>
References: <1569227661-4261-1-git-send-email-xingyu.chen@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.28.8.22]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_013430_332266_AB9A475F 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the reset controller device of Meson-A1 SoC family

Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>
Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
index 7210ad0..1c588ab 100644
--- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
@@ -74,6 +74,12 @@
 			#size-cells = <2>;
 			ranges = <0x0 0x0 0x0 0xfe000000 0x0 0x1000000>;
 
+			reset: reset-controller@0 {
+				compatible = "amlogic,meson-a1-reset";
+				reg = <0x0 0x0 0x0 0x8c>;
+				#reset-cells = <1>;
+			};
+
 			uart_AO: serial@1c00 {
 				compatible = "amlogic,meson-gx-uart",
 					     "amlogic,meson-ao-uart";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
