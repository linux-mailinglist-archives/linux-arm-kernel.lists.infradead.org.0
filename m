Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78976135A60
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:40:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8ts0IiIp9jMPX9MnMFL2AMfRH1J2zowS5QAwqE9KBo=; b=oftbPY8Db2wJHw
	+mE2ozlpLIJVwisAdbeATNHlDvEZ0sG7zTf6D8V0CpsVhWZgGf+0+exG39S7+QKQRPyGiXolhM3Nx
	70NU2XGbbeEnpY7NivWmiMbbfr5qMfvKMlF3bzPlvwaaFuXngnEaxe8kky2q6It7JyBlW8cAXCk3q
	wAUPd0RpPlh5nagso/LIY9NsjqDCNCBVTxnYy1N/v8zwh/zGRrlC6myoEua2PrqrLozCsEkeB4vFq
	n9FqHbenEdJ82yjwNSHz7BLIL4NCFr/Rc1o2zQGXTz3O6hpJaWFSPm6LJZAzSuggvwJSpwNR3Y+66
	397h8FUxKaqnyHLy0QFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipY2v-00054Q-A1; Thu, 09 Jan 2020 13:40:21 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipY20-0004RX-Iv
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:39:26 +0000
Received: by mail-wm1-x336.google.com with SMTP id u2so2876770wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jefvAhdoN3UgGXE+/GJYxeZcqaINGsrauh5HiUc9SKE=;
 b=FX03olbdaMwjq0QX1vku2430i8PqYnGFl/yHiDYfyz2aXtozJouHqMTLNstihuaAJm
 L0LtTLK8/r2PpVi+EmKGA7NQAj9pndbSRwe3vRP9UKAEr1mkAYB+4ym04gJslw/GGQOS
 E+2T7l57hXSczLtq7RGxEZ/WzuMPou9/7SNqB4NfXURbf5p7Sud9wJVChFOr5qrxhPBi
 jXbWU6SL605TfBbaHzBZeDasYDw8oOUMyUYQyfW5ULeoz4RJi6PLRpTlcpc1yFZSy1N5
 UexALQmf7bJ18J0XI3KCC4YBM/C6GhYmlAQDRhilvPP3qbrX2OBc4tKXsJgzxaXyiW6V
 rLYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=jefvAhdoN3UgGXE+/GJYxeZcqaINGsrauh5HiUc9SKE=;
 b=UTCr5skTBBdLyMaCmO6sDabB+nOavfteu+tjuvv7lH16IdXtejp3CffRFwGA6v1qs3
 rj8Q115aEjQbqxmR1rOEjnyl09xl1N4J24SsA23zHSZC/2P8iEYmiIr4B+zVZu0j+Ik+
 Lh4/CKkHnjFFwLe0YDc9bqGyxUDFdFyXaJmue9avjFh40zJJkEIUIsP3tNitlf3VekIJ
 UPPHSLTkQhn0DLmQDDb2SUNHLqJiNqYWhIVZasWYj1fdiHDVq8oRgpsi+IenuY1CSwbn
 SUQ9RPGGxCJSK7Sv4XlGA69JS9jrwWY0saiBRblhvPiBgHUQAmdb+i9R7WMXEF+6/rsP
 IWFQ==
X-Gm-Message-State: APjAAAVK8cY/mqbt9SIcYQDQaz9GelVzlwwwEF3nOinyx7jtnSDAJzcu
 urWAbiJBJmSt0zCC7H1FiOfTiRoQ/crF4w==
X-Google-Smtp-Source: APXvYqxIHYCHekeETdVXxsgFVv8p5nrAUCoaoagczmqG8qo/8aCZYJcOinlwacLZu9ja4n6Mve8MFA==
X-Received: by 2002:a1c:6755:: with SMTP id b82mr4938237wmc.126.1578577162830; 
 Thu, 09 Jan 2020 05:39:22 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id o4sm8255006wrx.25.2020.01.09.05.39.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:39:22 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/6] arm64: zynqmp: Setup clock-output-names for si570 chips
Date: Thu,  9 Jan 2020 14:39:12 +0100
Message-Id: <7d46b2e92382df23996d95254fa025faccac7dae.1578577147.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577147.git.michal.simek@xilinx.com>
References: <cover.1578577147.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_053924_648925_B5F11DD2 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
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

If there are more instances of si570 clock-output-names property
should be used for differentiation of clock output.
The patch is adding this optional properties for all zynqmp boards with
si570 chip.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts | 2 ++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts | 2 ++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index c96e8416fa7e..845671447f60 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -389,6 +389,7 @@ si570_1: clock-generator@5d { /* USER SI570 - u42 */
 				temperature-stability = <50>;
 				factory-fout = <300000000>;
 				clock-frequency = <300000000>;
+				clock-output-names = "si570_user";
 			};
 		};
 		i2c@3 {
@@ -402,6 +403,7 @@ si570_2: clock-generator@5d { /* USER MGT SI570 - u56 */
 				temperature-stability = <50>; /* copy from zc702 */
 				factory-fout = <156250000>;
 				clock-frequency = <148500000>;
+				clock-output-names = "si570_mgt";
 			};
 		};
 		i2c@4 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index ae62fe4287c2..822de6f04725 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -388,6 +388,7 @@ si570_1: clock-generator@5d { /* USER SI570 - u42 */
 				temperature-stability = <50>;
 				factory-fout = <300000000>;
 				clock-frequency = <300000000>;
+				clock-output-names = "si570_user";
 			};
 		};
 		i2c@3 {
@@ -401,6 +402,7 @@ si570_2: clock-generator@5d { /* USER MGT SI570 - u56 */
 				temperature-stability = <50>; /* copy from zc702 */
 				factory-fout = <156250000>;
 				clock-frequency = <148500000>;
+				clock-output-names = "si570_mgt";
 			};
 		};
 		i2c@4 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index b3c29947d6b3..022c732005ee 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -304,6 +304,7 @@ si570_1: clock-generator@5d { /* USER SI570 - u47 */
 				temperature-stability = <50>;
 				factory-fout = <300000000>;
 				clock-frequency = <300000000>;
+				clock-output-names = "si570_user";
 			};
 		};
 		i2c@3 {
@@ -317,6 +318,7 @@ si570_2: clock-generator@5d { /* USER MGT SI570 - u49 */
 				temperature-stability = <50>;
 				factory-fout = <156250000>;
 				clock-frequency = <148500000>;
+				clock-output-names = "si570_mgt";
 			};
 		};
 		i2c@4 {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
