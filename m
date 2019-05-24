Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9607298CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/j4XULrWlwoEta3Dwn3kOI7sfiKU0uw7rl58tzi43Ek=; b=cHLyYmDOMibUw/BuipMzbP4TQd
	c4g4XEPGHcOjtqJ6yYYuCJG6XRi7DzHQARldhSL50qU7yfjesDkJMTW9QqJzLcnkf53yXfni/pi4+
	GoiN08txte3xyY7IjskupdjEHaoNX6lFrBdgaer+Bm1RPA3QCfjTZw2XwgA7BhsQCCpEl4RL4dpzS
	Bl4luqtZWH98XfD/whSYh9eHcDud1n6pP/8kWcxJ16ztrqAW+XgvRIDE8En54MKxnSPVV/eNYqnm0
	njMkmg4hKdMel2enQudTJ+lQ05cVSv6KkiSpZ1WGKnSSTDi1sUd43mQnoqoAytwhrZzNvTHp4EnZE
	hsLrJ2iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUA8Q-0006ZU-FW; Fri, 24 May 2019 13:21:22 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUA7L-0004Cy-MG
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:20:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1558704004; x=1561296004;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nr/MP/EJb08qxjtAA/Sazh/uEcySMwykL1EGXSLih5Q=;
 b=D324WY+ITrzao5BAPh+0su2b47mKq4miLYXFiVUut+wcIUvqhKzo1Nzbw+9EgYCY
 d2kgKo4ZuPvluSgLU7duIS1/iEWsjw1nEjBPuuWZ+1N6doMmf7x0fpSuza0zH33I
 6vZWdjCUCCZ6XpRhClDcAAY+80/Ds7dCpPRMasquPlM=;
X-AuditID: c39127d2-6d5ff70000000df6-bf-5ce7ef84b1a5
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 1C.81.03574.48FE7EC5;
 Fri, 24 May 2019 15:20:04 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019052415200443-20936 ;
 Fri, 24 May 2019 15:20:04 +0200 
From: Teresa Remmet <t.remmet@phytec.de>
To: linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/7] ARM: dts: am335x-phycore-som: Enable gpmc node in dts
 files
Date: Fri, 24 May 2019 15:20:00 +0200
Message-Id: <1558704003-393769-5-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
References: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 24.05.2019 15:20:04,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 24.05.2019 15:20:04, Serialize complete at 24.05.2019 15:20:04
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPLMWRmVeSWpSXmKPExsWyRoCBS7fl/fMYgz1brSzuzP/LajH/yDlW
 i02Pr7FazF7Sz2Kx9PpFJovWvUfYLfZf8XJg91gzbw2jx7evk1g83t9oZffYtKqTzWPzknqP
 z5vkAtiiuGxSUnMyy1KL9O0SuDJmHnAteMFTsa23k62B8SFXFyMnh4SAicTuDROYuxi5OIQE
 djBK3FjTBeVcYJQ4sXUzK0gVm4CGxNMVp5m6GDk4RAQSJG69FAKpYRY4wyhxt38ZG0iNsECA
 xI77P1lAbBYBVYlbLzaB2bwCzhLfzn9hh9gmJ3HzXCcziM0p4CLx+/AzsPlCQDVP1x9lhahp
 ZJK4+SkCwhaSOL34LPMERr4FjAyrGIVyM5OzU4sys/UKMipLUpP1UlI3MQKD7fBE9Us7GPvm
 eBxiFOBgVOLhTbj8PEaINbGsuDL3EKMEB7OSCG/s/mcxQrwpiZVVqUX58UWlOanFhxilOViU
 xHk38JaECQmkJ5akZqemFqQWwWSZODilGhhDXz9vm6B53iqzTt5Nafn1gmBjOR6e5KUzAsqz
 FzzhMVF9cc7mVhiztsvt9tkLtx/s4FsxeX/ronO2vtLNNm3xNkd5qx95i54zEHLZVJsUuDp5
 weSQB5Kzw3I9L+RN/D6/g93CddPBTTGH7rvdv/bgS9Lkoo0KptNe1V2XLXD5dyiI3fSmSbsS
 S3FGoqEWc1FxIgDJTD8lMgIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_062016_184266_DEB56E92 
X-CRM114-Status: GOOD (  15.71  )
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

As nand flash is not always the primary storage device any more
disable it in the phycore-som include file. Enable it the device tree
files where it is populated.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boot/dts/am335x-phycore-rdk.dts  | 4 ++++
 arch/arm/boot/dts/am335x-phycore-som.dtsi | 2 +-
 arch/arm/boot/dts/am335x-wega-rdk.dts     | 4 ++++
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/am335x-phycore-rdk.dts b/arch/arm/boot/dts/am335x-phycore-rdk.dts
index 305f0b35d6ea..d674d91e18c7 100644
--- a/arch/arm/boot/dts/am335x-phycore-rdk.dts
+++ b/arch/arm/boot/dts/am335x-phycore-rdk.dts
@@ -13,6 +13,10 @@
 #include "am335x-pcm-953.dtsi"
 
 /* SoM */
+&gpmc {
+	status = "okay";
+};
+
 &i2c_eeprom {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/am335x-phycore-som.dtsi b/arch/arm/boot/dts/am335x-phycore-som.dtsi
index 2bc2265534e1..adf04dbefe28 100644
--- a/arch/arm/boot/dts/am335x-phycore-som.dtsi
+++ b/arch/arm/boot/dts/am335x-phycore-som.dtsi
@@ -190,7 +190,7 @@
 };
 
 &gpmc {
-	status = "okay";
+	status = "disabled";
 	pinctrl-names = "default";
 	pinctrl-0 = <&nandflash_pins>;
 	ranges = <0 0 0x08000000 0x1000000>;   /* CS0: NAND */
diff --git a/arch/arm/boot/dts/am335x-wega-rdk.dts b/arch/arm/boot/dts/am335x-wega-rdk.dts
index 6431b7db8109..fd8a844ba780 100644
--- a/arch/arm/boot/dts/am335x-wega-rdk.dts
+++ b/arch/arm/boot/dts/am335x-wega-rdk.dts
@@ -13,6 +13,10 @@
 #include "am335x-wega.dtsi"
 
 /* SoM */
+&gpmc {
+	status = "okay";
+};
+
 &i2c_eeprom {
 	status = "okay";
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
