Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F29AD305C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvgouBog3D8QofazrQJTwZKk6f66+MLo1tP+Lvqr1cw=; b=NfAdnbEWtGTkhf
	Fn0sFnoeHIBXj1jUj7IHtX1P3VDRQB48bLwK8MmSOry0zYy+BUPwPP4tUFYuirUKClcjHMGf0Khog
	v0Z+CNUFGi7cnR9gOZNe2oUIh/agt24mB9Jg74Ol8ubEDUNMIQiSxUcVVy8EBKPe5Dmf/1qJPe4xp
	JlXzGFdsIYjL5Os7UNVBSIY+AvLvij76V/w38APBu/qTWrFxVPff7C/kBtbN8XOhMNBSh3QvCn+A5
	L04j/5wsVdjzdz0LFqUxUdJt1y6mhomRrLkg+KwWOsYBNzoI3AmArkHNB8OHAgkx024Rh1iR6tMt7
	13XCm7HL+c9VGdveDrLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iId8s-0005yT-Jo; Thu, 10 Oct 2019 18:26:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iId6a-0002gQ-7z
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:24:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id n14so9030671wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 11:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eFc0TnCiV39kO57Nf4fDfCRzWyhpgpmUwtiQu+sgq4c=;
 b=QD/aYw94NN50dr3SkQZk39lkA1R6HaVNO9ts2BoKVuEyXjCc5JDlaf/G2JLf49Ftxy
 YMwnp9f9ww1kkZrxyyjuE+YmqXpruZZrxuGyAsG5QGfP+He29tqq0/86lqkHMBBf3NB5
 RGNbfx+elt3Ih+HFGtp8Bowi0d9m42nz5PcqV3J7Tv/bvG0rbrOpMZrUVVeXh+rTYlji
 df0jFwhxxiuQqW2IDIHhAmuCEOIWtQseF6rOPtXYzey0ohvMNC9z6ICRaYMJcI5kV/Ro
 yuA3joShoS9OYZ3RCit6SAxa6pYp1MG5OnljH20RrLz1//jCdKKOmqq8U6LNfJ2nInr5
 T84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eFc0TnCiV39kO57Nf4fDfCRzWyhpgpmUwtiQu+sgq4c=;
 b=XjF8NqVj6WtriO/MxTsXAoO4SoU65YMUCzM8TLMda/ROaUJcyb2obmKh/79uopBC6H
 ye2URzlhVKhzoX54A9uFhnDggcP5h6mrZTIqFtUm2Y/Zv7VLS/omtwto5sRBKQVvUJUR
 2TU1fr66DMGpNEKienLvZFtunuv0rakwIzVm1AiCJe0uUDoWu4g6Mj1du+pXu1p3PLf9
 +F7c6r0zuCJM3kdFR30fGqmxZGfCzgey26VNRCO8xqM985uW+NJSieKb5UYmNjX++G44
 mzbRm85N4VsNC/LPx5Jj1D2virEm2BYMEklw+OiqhTuLYhbm4sbrDEPpDtPkaCuftQpk
 txQg==
X-Gm-Message-State: APjAAAXe2DuNN1ojddY62u4trfcV7B0451r6sYhnspHPzvIFy19H8beU
 /63GYZCDd+Lpl+KCfpMXjQo=
X-Google-Smtp-Source: APXvYqwyzjQcMH1nDbxHHzVakeW/SPThMO2JRlkBJmeSqdWeh0kAxIStHqWAB4eDL7mGeVBDNEsRFw==
X-Received: by 2002:adf:8385:: with SMTP id 5mr9934134wre.267.1570731842613;
 Thu, 10 Oct 2019 11:24:02 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 y186sm11367664wmb.41.2019.10.10.11.24.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 11:24:02 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v3 07/11] ARM64: dts: allwinner: sun50i: Add crypto engine
 node on H5
Date: Thu, 10 Oct 2019 20:23:24 +0200
Message-Id: <20191010182328.15826-8-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_112404_313524_11821D86 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner H5 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index f002a496d7cb..14cf29539aab 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -127,6 +127,16 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun50i-h5-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "bus";
+		};
+
 		mali: gpu@1e80000 {
 			compatible = "allwinner,sun50i-h5-mali", "arm,mali-450";
 			reg = <0x01e80000 0x30000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
