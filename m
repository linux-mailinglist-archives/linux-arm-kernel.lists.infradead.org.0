Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2ED6D5CF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIbJi6FALsUbrlyK+MGvDc6xsr5WMsNCSplpdEnnlc4=; b=M/I+yza4ohqJlm
	E3nmsxfG/S2gQ7IpgPXLC8looZTG4aff7WhU5gBDVDC2b/lPCcQjG7ch4rQ9U2vCHaPi9HqdpUMCi
	aLtEenl7sUFV+a74E0SKvk9jtjbTy0XP6L9fC9g5v7DkmjLEIY5//OQT6qsctqJwfXLwYx2FlbPhE
	WK68KKwJbqVmgoaeI6oqewnS2Ef/S5EpOVAqxc7UNlNlIoZ+tJeWXCmKaGuunYyaUWQXMqsBune+V
	Un0HdmN+UTm3AUxiIOeGRKlv2RBoyQ4NNEFVktCfH8Zm0IXUxv2FLo3QK88NsNgnaayoc9kixy3Ok
	BhqRaBagEnDbh6JUT68w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvGW-0002L0-Cd; Mon, 14 Oct 2019 07:59:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvFY-0001ck-TW
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:58:43 +0000
Received: by mail-pf1-x441.google.com with SMTP id y22so9933524pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 00:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QVRHT5pDxuvkIfhkJROJMokZUW2BLlyY/F+bHkNxqRo=;
 b=Hw6W642xH1aROaObhBlIVPsu/fTpXv1b3H39oxGbXRFLKlZMFQNVzm/PeUsIRcyVO1
 zFSz5IqF/qhd7w/CIawaKAsOENgjYRt3UFZqRFFTL49U+18twCrxef7/EDjwtrx2KMDs
 /Wr+mDjiRbrgNYuI0LhMdjB3jrNL9ioEZ3sBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QVRHT5pDxuvkIfhkJROJMokZUW2BLlyY/F+bHkNxqRo=;
 b=uSqf/VQtaAEnndeHjts/9eO/Oh7vOUp3yzWbPFWwyXxOpX7F7dQwUktXdg0UuC/gj+
 T5uIvPURaDmoXP3LccE7DuBYh9MnQhzyGJJy01hM0x51fVyWFAKzZgIg9CHx5+WWShhL
 VZr12JXYnYvW/APtyjKB7HbMMy5JixrhMy5l7R8YHnvJf6tHqHcLD0UDV6+o05Ll2y98
 X316ZpMhZg7yUQJWo9LLgMH3Jn3EybJhTk2oLy6cMq9bnC3a1N+d7ohMJrUc1zNJ1OYn
 nHhWON8U6vih9TfefRWL2meSbaS/Z9YRoOjAEwVfshS/gKAe2l+aEn9/My3a2e3emf5n
 lb+w==
X-Gm-Message-State: APjAAAWz9Tukf3TljzzMrDTAmtDl5ZHw878ZOFTGGQXcKmFLhcYJaX8p
 B7KDdmhTVq2u1Ea0yFSK+xjTxw==
X-Google-Smtp-Source: APXvYqyX//1pTCjDs2s0kZc2grJXGSArCyBFdJ8I3SvUS7+iXEEXvhoXvyTt3zB+/7qKoGAQmAo4Uw==
X-Received: by 2002:a17:90a:6302:: with SMTP id
 e2mr33759632pjj.20.1571039918605; 
 Mon, 14 Oct 2019 00:58:38 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id q76sm36695998pfc.86.2019.10.14.00.58.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 00:58:38 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v20 4/4] arm64: dts: mt8183: add scp node
Date: Mon, 14 Oct 2019 15:58:09 +0800
Message-Id: <20191014075812.181942-5-pihsun@chromium.org>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
In-Reply-To: <20191014075812.181942-1-pihsun@chromium.org>
References: <20191014075812.181942-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_005841_113309_EBCB8F7E 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Erin Lo <erin.lo@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eddie Huang <eddie.huang@mediatek.com>

Add scp node to mt8183 and mt8183-evb

Signed-off-by: Erin Lo <erin.lo@mediatek.com>
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
Signed-off-by: Eddie Huang <eddie.huang@mediatek.com>
---
Changes from v19 ... v14:
 - No change.

Changes from v13:
 - Change the size of the cfg register region.

Changes from v12 ... v10:
 - No change.

Changes from v9:
 - Remove extra reserve-memory-vpu_share node.

Changes from v8:
 - New patch.
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 11 +++++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 12 ++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 1fb195c683c3..ddb7a7ac9655 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -24,6 +24,17 @@ memory@40000000 {
 	chosen {
 		stdout-path = "serial0:921600n8";
 	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		scp_mem_reserved: scp_mem_region {
+			compatible = "shared-dma-pool";
+			reg = <0 0x50000000 0 0x2900000>;
+			no-map;
+		};
+	};
 };
 
 &auxadc {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 97f84aa9fc6e..3dd1b76bbaf5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -269,6 +269,18 @@ clocks = <&topckgen CLK_TOP_MUX_PMICSPI>,
 			clock-names = "spi", "wrap";
 		};
 
+		scp: scp@10500000 {
+			compatible = "mediatek,mt8183-scp";
+			reg = <0 0x10500000 0 0x80000>,
+			      <0 0x105c0000 0 0x19080>;
+			reg-names = "sram", "cfg";
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&infracfg CLK_INFRA_SCPSYS>;
+			clock-names = "main";
+			memory-region = <&scp_mem_reserved>;
+			status = "disabled";
+		};
+
 		auxadc: auxadc@11001000 {
 			compatible = "mediatek,mt8183-auxadc",
 				     "mediatek,mt8173-auxadc";
-- 
2.23.0.700.g56cf767bdb-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
