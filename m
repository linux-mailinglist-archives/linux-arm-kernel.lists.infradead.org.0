Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E9B36871
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 01:57:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVZ8l0b7ApqgXsTwpui2Z+E8KFnUx6kAeDXLZnNqlmk=; b=PWe/e/E6NDAF/k
	h2dmc+2VMPyJOEPe4pPV/ufXzjZV462gQJq5kXLyAEq7ss+T/cuWz7VmOSRredrRqzSZ/Kj/UaJm3
	f7FbSM6aONyt3Seqi/1ozOvMp5Y/QuosCHjIcUSxlJgAc/J2YOzZr99fLWL2bUi0z3gsWs20/rPNJ
	66I2mGRsnoe7NFmmdnsRRCGJlLZTBmlWtzCAqaQ0Vx8o534QDmvJAXLDyqbplv/GSQKf1y4/V2rFa
	qGIhStrHWqnrjOsU4+1hfFo+DXrHcxb1DiZZKBrbF7gRP5dVz3CGw94ZpzrEhmJ5/80RfXBqTYQOY
	H44vmWgSIa9b2Bu6ne3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYfmz-0008OH-Gp; Wed, 05 Jun 2019 23:57:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYfmh-0008Bs-Kk; Wed, 05 Jun 2019 23:57:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id 22so557832wmg.2;
 Wed, 05 Jun 2019 16:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a+G/2dEOEsnbE77njerY0dEzhggxdzBtc1olhGXytlg=;
 b=quruOtem69W2QhHEuO85YEGHSWX2GXMMgVEsWJmX87XrfX+oEFF4uqGgMWHqlN7l5k
 Fcp61ocf49ehUcoMtvgScur1z5OfJIZA6qCWYD/RfO1FBQEr3HQGq5D53B1CQ3cF30oX
 nC0DA/mYvfrXxmd0nJ2l36rT6VBf9nJYnsSevgquaNLY94nDX4ue7ndVxaaEvQcPQ/g4
 zxTPG2Ri/yV8p6gBMX5mWZt7pnq/XXPJx2ExC6la9VUIpV96uiAAN/SGlQ0QOx1XRS+s
 B0fa+rHOPACOoJlxcoKBUDfIhiHJHKNV8556tjx4u10IXAXHb2B+GaUuTsoCN1VC2mcd
 3J2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a+G/2dEOEsnbE77njerY0dEzhggxdzBtc1olhGXytlg=;
 b=PhjWmAMmdhGbUXB/FZsapcY0Qx75f+MW+IdVydByoqtcPO04o830gJlI2w8E306FM6
 qcCNYCZT46IyuIkn4HEe3vs25kaL8aWxBN2K1ZzJ+gb4c6k8l+3q3XUqU+lMFQmfJgap
 JTQ/bw0JCyyPiHJUjcONjTtr0XIGQc1Ncpk2SYqpShp6zCdp8zPLqA3yGQZnwnmfCmNN
 hkFCgPcsc99ZNwYCmy9slSzquhJYVxfycQIVfEpgXJIWv3BiEYpUld1/cM8HEfi8L8pG
 +Gf5CvoDX1u97OM6iMZIM9XASUqGaxfqlaudAITA5JUL3x+OvkbVUAuv5ULLpUx2h69L
 HB/Q==
X-Gm-Message-State: APjAAAXk9B8RxpZAxHOqaQyA6fCcpHGwwmQW+e4QwV5U4fcpEJEAhGOM
 MhzERN/Q1ztekDYaszvKrvo=
X-Google-Smtp-Source: APXvYqw+F3qx6Zsh+mA0aetKfVYltOG6KeaG0XDLA9aqdK2eY7tXvI4nC/JkW915YNGhTbRYU2uaUw==
X-Received: by 2002:a1c:f408:: with SMTP id z8mr23548559wma.140.1559779053877; 
 Wed, 05 Jun 2019 16:57:33 -0700 (PDT)
Received: from X555LD.home ([2a02:85f:1501:7500:4991:f471:d726:d8ee])
 by smtp.gmail.com with ESMTPSA id q15sm245915wrr.19.2019.06.05.16.57.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 05 Jun 2019 16:57:33 -0700 (PDT)
From: "Leonidas P. Papadakos" <papadakospan@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/2] arm64: dts: rockchip: enable rk3328 watchdog clock
Date: Thu,  6 Jun 2019 02:57:14 +0300
Message-Id: <20190605235714.22432-2-papadakospan@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190605235714.22432-1-papadakospan@gmail.com>
References: <20190605235714.22432-1-papadakospan@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_165735_889511_3007583C 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (papadakospan[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-rockchip@lists.infradead.org,
 "Leonidas P. Papadakos" <papadakospan@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: <itdaniher@gmail.com>

Add the missing clock property for the watchdog on rk3328.

This patch depends on:
clk: rockchip: add clock for the watchdog pclk on rk3328

Signed-off-by: Leonidas P. Papadakos <papadakospan@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi       | 2 ++
 3 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 5d499c908..49d51dd93 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -349,3 +349,7 @@
 &vop_mmu {
 	status = "okay";
 };
+
+&wdt {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 7cfd5ca6c..18a3e0dfa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -405,3 +405,7 @@
 &vop_mmu {
 	status = "okay";
 };
+
+&wdt {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 994468671..e0a6279da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -407,6 +407,8 @@
 		compatible = "snps,dw-wdt";
 		reg = <0x0 0xff1a0000 0x0 0x100>;
 		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_WDT>;
+		status = "disabled";
 	};
 
 	pwm0: pwm@ff1b0000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
