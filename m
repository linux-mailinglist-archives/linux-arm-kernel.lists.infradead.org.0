Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6059238BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GT4AEQWNSp8xcBXMbCSp9jyU5OMe7M/yaYTXJQVpTGM=; b=FqntG6MDRwpFhR
	yCZ/x5HyGzLXYewZB20elokLn0EOrATeiLPv3gRZv7BDsbloxom+/GriU6cPyaflY45UGUS6lcuaR
	20Gb479DIA1ZaKP8AI+tAbsjb3rn3ELGmWqOtTtm+jkVSYnaTyTKOf9W/yhonZlBA0ubvV2DgWBLI
	f24t2A3aa+nod/39U0LldyS2b59vytgXX+PQLC3+u8eeuwyuwg4NScC2P187Y/eaQoHZYovCwLOZf
	m43N+RZMPuSxpYgzaywqoaVIIHrhFiEHIlso7EYNfAT/x5LKjk4X8b+STARL1tqQZT7dCURUiCwyi
	UhrUsxifM7qICrDTsnaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSifB-00027M-Vl; Mon, 20 May 2019 13:49:13 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSieU-0001Mv-Fu
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:48:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id c77so11912720wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IJ6PDvd1zdmsPjGfyJ9WREQUngSXET91i7YITSNB1Gg=;
 b=BlmF8OfIcqMoG4U4PbeqQ6bWHYV9dzB4Z+s1Xvnmb4E2lp14Jb83c2F6pQOXDQFA1F
 x2RscsAV7V/wv6O3TAJ0f7778RXtBb9EEPhmBlL8Ph9y0ZyE0ZTWILqMI4y2SIPhxn+J
 TtzOpQKOn3SRazhB2hlLH0VmsVhicLKVkNqOO47a2sFE6BkOCX1Nlny/6qOae7xw7aOs
 yJ3Si08KV1PAk8dKQH+qnihHg+lTgfEqBJHAmS1Y6G+ah9eBKxw5TtIbG3zt4WfxGxhP
 aUyNuD9Um74AE7W2cD9Y29U4cII5TMqTCXizOVQaU2Qvgd7G9IGvyvfU2+UJq95oNlOt
 Uy0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IJ6PDvd1zdmsPjGfyJ9WREQUngSXET91i7YITSNB1Gg=;
 b=inmFQbFV+qo6yZeig4P0+PP9goutUveB/+pt88Nx28eJa1lXisr211k3ujhk8CkWI+
 ScWCzaG7hOZzIwIBeoJfCDmWURcIqGaKAkIHrkUBhURajkyEJ8qtdATx7DOB8DTyumIZ
 eCXB88M/aPNE0PbPCFLR7xwmmBrCaqNjngz2kLvLcx8eTgUL0RiPQvx5AcKs8KKtQWGm
 wMu41RlbfkXFF47OSiRY/+dplGipmtlU+kl9oUqMOeY6m9oMVgPHfkeMXfXEwaJw2TNJ
 rzFoO5hae5GvnT9sC8rXwwbOl9q6uUVkWuBJ/2ZSL+7A2AJ8AWhv1Om6FdNzSQWZ2nGc
 6E+g==
X-Gm-Message-State: APjAAAXEtPCZzJX4gtGCr+Fa0vBiJoNKk1/53adclYMV2foCn1Bunpcz
 zBH5j/k9O7bXCiqJfpY/bQHLQg==
X-Google-Smtp-Source: APXvYqx4EmUVUeO2iGJEI0i4hROwnTejxwInKELZ5O3tIe4sAshnsNkeSJA4T6ZYg3DFdgF1s2qYFw==
X-Received: by 2002:a1c:9a14:: with SMTP id c20mr25110254wme.104.1558360108754; 
 Mon, 20 May 2019 06:48:28 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h12sm12091358wre.14.2019.05.20.06.48.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 06:48:27 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 3/3] arm64: dts: meson: g12a: Add hwrng node
Date: Mon, 20 May 2019 15:48:17 +0200
Message-Id: <20190520134817.25435-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520134817.25435-1-narmstrong@baylibre.com>
References: <20190520134817.25435-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_064830_863113_3C36BE22 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic G12A has the hwrng module in an unknown "EFUSE" bus.

The hwrng is not enabled on the vendor G12A DTs, but is enabled on
next generation SM1 SoC family sharing the exact same memory mapping.

Let's add the "EFUSE" bus and the hwrng node.

This hwrng has been checked with the rng-tools rngtest FIPS tool :
rngtest: starting FIPS tests...
rngtest: bits received from input: 1630240032
rngtest: FIPS 140-2 successes: 81436
rngtest: FIPS 140-2 failures: 76
rngtest: FIPS 140-2(2001-10-10) Monobit: 10
rngtest: FIPS 140-2(2001-10-10) Poker: 6
rngtest: FIPS 140-2(2001-10-10) Runs: 26
rngtest: FIPS 140-2(2001-10-10) Long run: 34
rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
rngtest: input channel speed: (min=3.784; avg=5687.521; max=19073.486)Mibits/s
rngtest: FIPS tests speed: (min=47.684; avg=52.348; max=52.835)Mibits/s
rngtest: Program run time: 30000987 microseconds

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 8fcdd12f684a..19ef6a467d63 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -197,6 +197,19 @@
 				};
 			};
 
+			apb_efuse: bus@30000 {
+				compatible = "simple-bus";
+				reg = <0x0 0x30000 0x0 0x1000>;
+				#address-cells = <2>;
+				#size-cells = <2>;
+				ranges = <0x0 0x0 0x0 0x30000 0x0 0x1000>;
+
+				hwrng: rng {
+					compatible = "amlogic,meson-rng";
+					reg = <0x0 0x218 0x0 0x4>;
+				};
+			};
+
 			periphs: bus@34400 {
 				compatible = "simple-bus";
 				reg = <0x0 0x34400 0x0 0x400>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
