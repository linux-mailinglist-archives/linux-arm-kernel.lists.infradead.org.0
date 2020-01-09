Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CC3135AA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:53:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LwMJH2mMuaxZiMo6wnuY1hCxSOZ+NgHYkgXZAUxyQTU=; b=G0+elO0B+ICsi4
	+yCvKgRJ5ak7AgJFGYmF3SvgC6Zi+nSFLdxNi/ADNFLICTaRTczT51SprKiCacOsuMK7X8ZF9vvpe
	OYCsssArrQ5Xn9WGmxbE0V7r8v3JG29ktz2+QHcU2nJoJ12uRJ0brUuNjOQ52K/vqs+t/o9AGGPkH
	Zfhh3B8KKveLnmfb1MmUasvEszX0S7QtsvVsSk+mnUvypeKIxI9SD1j6mwc+4/Il19t2klgK9nYkJ
	i1Bo3Ib4LM2yKy0jxuQiMapLkZMAG3GLhc1OLg0IeZ6kIz3ECJBQ9UMbsBJAi3nIj67a3jgnaWH4M
	PU5l7GTSq2iQb+MUOkgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYF8-00046O-G2; Thu, 09 Jan 2020 13:52:58 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYEd-0003lZ-DG
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:52:28 +0000
Received: by mail-wr1-x429.google.com with SMTP id w15so7505457wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZrLGBX0GAZWIN09k6Jkrkg5nYulCVLrz9ygY+tV/Kr0=;
 b=DWOUhR5Pw1UT7nKDs96VcPAvctYVQZndKPpUAYQQaemJuOKNPPi0djqIMoTKZmGNdU
 m3gYqAb2ZVDxU/ZmL47bE6H4/45c0kE9GHr77nVQmGhaqxX9qBzA9K0zkGCvferdeN3h
 J1DrePcxW4f1i1JjeVvek39aSe3n1PTymc+5Lx1s6ZtJwDtXi55BhGpYWr9i0eEcmce6
 2SBlT27TJFZJymacRlX9+h9SesUOiLwWCZMyW9bsfLSzvrjNHj4TEEiRpWGHHO7BVaSC
 OKY8TIY484UNoZXe/Xrdxwn1WuxtuR7eWETApOEoiAYq28mwHqlCmjaNheN8dW5yrSOx
 ch2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=ZrLGBX0GAZWIN09k6Jkrkg5nYulCVLrz9ygY+tV/Kr0=;
 b=fqVOpUDpnvyH0kaZkz8rx1DycpoxfN/wvA+WZmnhC0yDNyNlEjNlrixSPhqx5W3xG8
 HfdqCRfMvoWVmGSbVdK+dICQPzVa7UP3qYCFqHT4qnzNoaMr0qdWeuHL75OGXOBxUSW2
 oqfMeK9fZV3snuEyLvWwA7zs9GvbJDY+MS8KoLNQYMrEbqudPddbCmvmXsYK0HS32DGV
 eXv7xD3kVuVu+jK1bGg8khXe7vjOXIeJxHyzqINuf5p9ucgs9r1DNkYAyOxk/txgTJlK
 CXdAZjMMNIlWRh/nOfY0EGQAW9jFMYTX9uFzv4k4r3AaxrBGhlzRzHhI5SncdcgUFhoH
 5aVg==
X-Gm-Message-State: APjAAAUzz6oIqZQYh+KVuvnEcwU9tBBgtOX0d980+Jn2nDd0qX+/4Dln
 uyT6MZFTkBRgrDfOeHkiq7vuovHwpFEy8Q==
X-Google-Smtp-Source: APXvYqw3xbHMsE3r5E/4sf+7dAbuVceFIbAf9AcL+fsqMok5sD7ZmoMagUK3wKeOBKhMKTlaTmrfug==
X-Received: by 2002:adf:de84:: with SMTP id w4mr10669349wrl.97.1578577945671; 
 Thu, 09 Jan 2020 05:52:25 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id g21sm2877547wmh.17.2020.01.09.05.52.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:52:25 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH v2 1/8] arm64: zynqmp: Use ethernet-phy as node name for
 ethernet phys
Date: Thu,  9 Jan 2020 14:52:15 +0100
Message-Id: <fabbd8e1417f326376d12b5bd0935405ce26eac6.1578577931.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577931.git.michal.simek@xilinx.com>
References: <cover.1578577931.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_055227_445257_AD5BDA85 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>,
 Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ethernet phys based on devicetree specification should be using
ethernet-phy@ node name instead of pure phy@.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Add missing patch

 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts      | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts      | 4 ++--
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts      | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts      | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts      | 2 +-
 9 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
index 3542d92735cb..69f6e4610739 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
@@ -73,7 +73,7 @@ &gem3 {
 	status = "okay";
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
-	phy0: phy@0 {
+	phy0: ethernet-phy@0 {
 		reg = <0>;
 	};
 };
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
index e5d83a4aca07..b75235ae7d30 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
@@ -84,7 +84,7 @@ &gem2 {
 	status = "okay";
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
-	phy0: phy@5 {
+	phy0: ethernet-phy@5 {
 		reg = <5>;
 		ti,rx-internal-delay = <0x8>;
 		ti,tx-internal-delay = <0xa>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts
index 3750690925ad..4ea6ef5a7f2b 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts
@@ -73,7 +73,7 @@ &gem0 {
 	status = "okay";
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
-	phy0: phy@0 { /* VSC8211 */
+	phy0: ethernet-phy@0 { /* VSC8211 */
 		reg = <0>;
 	};
 };
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts
index 9a894e6db6ba..41934e3525c6 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts
@@ -74,7 +74,7 @@ &gem1 {
 	status = "okay";
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
-	phy0: phy@0 {
+	phy0: ethernet-phy@0 {
 		reg = <0>;
 	};
 };
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index d92f617f0b9d..7c6b538490f8 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -105,7 +105,7 @@ &gem3 {
 	status = "okay";
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
-	phy0: phy@21 {
+	phy0: ethernet-phy@21 {
 		reg = <21>;
 		ti,rx-internal-delay = <0x8>;
 		ti,tx-internal-delay = <0xa>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts
index 1780ed237daf..d9ad8a4b20d3 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts
@@ -16,7 +16,7 @@ / {
 
 &gem3 {
 	phy-handle = <&phyc>;
-	phyc: phy@c {
+	phyc: ethernet-phy@c {
 		reg = <0xc>;
 		ti,rx-internal-delay = <0x8>;
 		ti,tx-internal-delay = <0xa>;
@@ -24,7 +24,7 @@ phyc: phy@c {
 		ti,dp83867-rxctrl-strap-quirk;
 	};
 	/* Cleanup from RevA */
-	/delete-node/ phy@21;
+	/delete-node/ ethernet-phy@21;
 };
 
 /* Fix collision with u61 */
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index cfb054e46723..2d71b4431cce 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -50,7 +50,7 @@ &gem3 {
 	status = "okay";
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
-	phy0: phy@c {
+	phy0: ethernet-phy@c {
 		reg = <0xc>;
 		ti,rx-internal-delay = <0x8>;
 		ti,tx-internal-delay = <0xa>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index ea2dcbe9effd..ae62fe4287c2 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -106,7 +106,7 @@ &gem3 {
 	status = "okay";
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
-	phy0: phy@c {
+	phy0: ethernet-phy@c {
 		reg = <0xc>;
 		ti,rx-internal-delay = <0x8>;
 		ti,tx-internal-delay = <0xa>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index d656eb8b3040..b3c29947d6b3 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -101,7 +101,7 @@ &gem3 {
 	status = "okay";
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
-	phy0: phy@c {
+	phy0: ethernet-phy@c {
 		reg = <0xc>;
 		ti,rx-internal-delay = <0x8>;
 		ti,tx-internal-delay = <0xa>;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
