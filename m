Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E6B1C6E91
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LncXrCUhgrt35qm/1AmGP02SYVeAFsPtd1GoBRH5NAs=; b=P+e+tIeQYEl/oW/zUOotLNsFUB
	uGoo9/sPWZX/x5651HPXjY6d7+X0MuogUS+iXAL2lHojdAczFD8llDPyrITW0mro+OmIWdkoUPiZ0
	MapqAbTlszyDUnbPWsEHgwmAI4TzdsBo4ol/DSGdKNV2cNpgHrnCcv/RUMjOWsSG5btmQJ1I8Bi7g
	90OZMTIRwWWVT9hC4vuUzCW8ZcOaDZNxSG37u1AKnSKCyR6mjxhaKM4GhjbIoffNnqMn8x8XN99pS
	fxslEmt9XKEx+g7i0fIlEvXXCvOlU7t/2saEyEH2KelhwuqNobmieL7D0E4oNOBZhbbhKpQUwk8X2
	VxzgET3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHRl-0007SX-Jy; Wed, 06 May 2020 10:38:37 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHQ9-00066O-MB; Wed, 06 May 2020 10:37:03 +0000
Received: by mail-pl1-x62e.google.com with SMTP id x10so321241plr.4;
 Wed, 06 May 2020 03:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=76eHOjGHMEgzX37Faryvon4g3SALJsaVuBiR0wCzH1s=;
 b=bbVhZ4DS9wqmaRlJjokLaRu4lxF8whWuQYaW/PZ0PAm/0oD4zzJepaXvrEYmIEAVBF
 22YdCtTnlNpnVe/XnNAqzRFvHCi9ePePIkq1gfkKfZGHv0YzkbK1xPNfJ/8rg2wPz3G5
 hKBWVSnAjBqnY9rxA1bPal6hkql7nuWiM4DmHSrFbspbtZbWnadqi/1LWjFXjwic1uNS
 W+obUW/OJ5im+ozRFgDSzdEexjj2cM19hQqixgQYfKp9zKNoKUmyC37Ov65oUGELlSkF
 3KCp0Hfyr1Dx9yggrgKOXH72+OHr7jQ4YJj69aUyyM5JUignznBLmD6NPe+UFQgTXEGk
 REEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=76eHOjGHMEgzX37Faryvon4g3SALJsaVuBiR0wCzH1s=;
 b=DzFJ9CxNmFT4UBDp357OOK+fYWMwdAzRO244NotKkBRosud7FkPqwei5rHwbk6+DKq
 CH4faMKNcz5WuiKZGEyfgPFP4oJY4Kr+jpZZwhc9kxaWRiFY76GUhRHldd3G8j1VsNxL
 35cPxch/DQekmT+15HkNNNmcUpahb1d3wR1gziJEOgr0VUNypCd3aeo7Ih4CjCO8UbFS
 UwBzosXcx4k9H3XiZAb6STu52L1HXwk/njjm43oFh8cOBD5oQVbv2XrQc2Y8g0yJ9NrP
 ATOxlQo6Z/lG7OaQiCFUtFRuJ8fCdU8+7WgaSiDmd3A73jaVMKiTonp4iL4N4BbWOQCq
 j96w==
X-Gm-Message-State: AGi0PubD8ZVZgD/bL2B//0Vnb6AWXe/nilUA7HFj2bgwAbGsnXtUs4jA
 T26vgDENMrb7oIbBdNjFK4c=
X-Google-Smtp-Source: APiQypIlm5ITusl54MJwIXCqwRSpoGSeJlra1vj/chEzhCyV5ADnxAyySg5sofguMnZFg8Zqk+B4aA==
X-Received: by 2002:a17:90a:fd16:: with SMTP id
 cv22mr8361235pjb.169.1588761416194; 
 Wed, 06 May 2020 03:36:56 -0700 (PDT)
Received: from localhost.localdomain ([106.215.43.48])
 by smtp.gmail.com with ESMTPSA id i72sm1601582pfe.104.2020.05.06.03.36.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 03:36:55 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH RFC 7/8] arm64: dts: actions: Add MMC controller support for
 S700
Date: Wed,  6 May 2020 16:06:09 +0530
Message-Id: <1588761371-9078-8-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_033657_743661_617F105F 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62e listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commits adds support for MMC controllers present on Actions S700 SoC,
there are 3 MMC controllers in this SoC which can be used for accessing
SD/EMMC/SDIO cards.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
 arch/arm64/boot/dts/actions/s700.dtsi | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 56f2f84812cb..3f1fc3e48415 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -258,5 +258,38 @@
 			dma-requests = <44>;
 			clocks = <&cmu CLK_DMAC>;
 		};
+
+		mmc0: mmc@e0210000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe0210000 0x0 0x4000>;
+			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD0>;
+			resets = <&cmu RESET_SD0>;
+			dmas = <&dma 2>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
+
+		mmc1: mmc@e0214000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe0214000 0x0 0x4000>;
+			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD1>;
+			resets = <&cmu RESET_SD1>;
+			dmas = <&dma 3>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
+
+		mmc2: mmc@e0218000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe0218000 0x0 0x4000>;
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD2>;
+			resets = <&cmu RESET_SD2>;
+			dmas = <&dma 4>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
 	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
