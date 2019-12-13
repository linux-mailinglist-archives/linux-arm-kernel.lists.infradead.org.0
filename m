Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883E911DD4F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 05:57:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OhMSn9QHfOcjtS2Tt/uObjmTJFjNVMzXw4yCWVZK2zA=; b=jp2NzQ6RoE9/gf
	bJvuY1tygcxnZOxMi61NiwWN0wwyOpFc0pOcMHQ9lKd1isfMRHDKDxnYru1naJ6a7j2nYzsn3DroG
	TZYXL43pMWwWcNmD7JqkdD1S2G1IISqLoCzLgP/tl1Da8F4uDmEHUcl0KKAPXm06SqDaGoK/faGtH
	tvySGrOvMyMZeBbUnsogaHG/UedyfO5UlkqfDG5RmJzzRUGkbMIreIR+eITHspjkkY9PVMCVVveKZ
	qsX+zwe85cWXbU7DHa2BWNK3d02ACavwikksPznaPpRwAiPW0d1sqp/8rRABiIwgbVc0T4Cf6QZ6/
	U4qkmjFSHk25MrwRdo0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifd1V-00049g-1u; Fri, 13 Dec 2019 04:57:53 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifd1I-00047q-Vf
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 04:57:42 +0000
Received: by mail-pl1-x644.google.com with SMTP id x17so736883pln.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 20:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cvwe20yUJDJuFJ66zvHMDZeiCBexsoGR7m8CsDCyCu4=;
 b=X2PRwyMyCuxiKRaie0hFrkxzqLEOPlOz+26PPrWgf6Uclbta2wGm5N7QPTP9IHfAZm
 qx41XdHXGk0wGNodDYVtSfyomKAInudAl44gz5Cnjh7ZJo3RVGyljrrldIcrM0UG/Ql6
 gSkNnNEOqi7MXs8lWa00tcK16Z1ieFZsGUj4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cvwe20yUJDJuFJ66zvHMDZeiCBexsoGR7m8CsDCyCu4=;
 b=NG/8Y7IORYDggFqUCB1x/u9XbQQpF6QML0gqW6lifHIE8bCb5DPfhLqtA2M+CezjJO
 0bIKEGupYxDYDnJUuWvwYbz0pAtEXOnCzMuI6Xz2QdgklRmQN7anfxcwpcbKgkL6DguI
 o/SGk+QxIoIw/F2is9Rb9WmnVeIiA/DtAcH1V78Ze4zchiEvRI1EctoUZJYD2r5WsFXz
 cu/GCYpiiM/8PsSriX1aHy45DuiVn4asZWsX+MPt5P3KgTH37lEmcfgJnddAEW482+2e
 4FT595QPev7pBfKU7rjnbq24I6SUIAlXYF2VgdVicKYbbwGH0x0DZU9rge9CzYIg08es
 mZgA==
X-Gm-Message-State: APjAAAXFosbbjifVTtaLNaSHW8hQh7n3c3t7DKDdvlAWskuDDDjEJAjw
 R3/HX1Xj3qeQRU4M2rkbPGJ7s6/wiYKmfw==
X-Google-Smtp-Source: APXvYqwnWUp0o8KtiSrYFm8++pXYoHNI+Rddu1ElryZsNalMMsCCoQR6YhWaVxkyQC5g//D6B5tL2A==
X-Received: by 2002:a17:90a:8a12:: with SMTP id
 w18mr14128302pjn.68.1576213059923; 
 Thu, 12 Dec 2019 20:57:39 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id o16sm8539538pgl.58.2019.12.12.20.57.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 20:57:39 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: mt8173: add Mediatek JPEG Codec
Date: Fri, 13 Dec 2019 12:57:20 +0800
Message-Id: <20191213045720.172738-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_205741_014281_15EA7EF8 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Daniel Kurtz <djkurtz@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add JPEG codec node in mt8173.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 15f1842f6df3..82df8940d515 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -1401,6 +1401,20 @@ vcodec_enc: vcodec@18002000 {
 						 <&topckgen CLK_TOP_UNIVPLL1_D2>;
 		};
 
+		jpegdec: jpegdec@18004000 {
+			compatible = "mediatek,mt8173-jpgdec";
+			reg = <0 0x18004000 0 0x1000>;
+			interrupts = <GIC_SPI 203 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&vencsys CLK_VENC_CKE0>,
+				 <&vencsys CLK_VENC_CKE3>;
+			clock-names = "jpgdec-smi",
+				      "jpgdec";
+			power-domains = <&scpsys MT8173_POWER_DOMAIN_VENC>;
+			mediatek,larb = <&larb3>;
+			iommus = <&iommu M4U_PORT_JPGDEC_WDMA>,
+				 <&iommu M4U_PORT_JPGDEC_BSDMA>;
+		};
+
 		vencltsys: clock-controller@19000000 {
 			compatible = "mediatek,mt8173-vencltsys", "syscon";
 			reg = <0 0x19000000 0 0x1000>;
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
