Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7B83271C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 06:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cVPfQouJ8X417876eXqMNWc+6EfD52iV9tbdBzOoZuk=; b=kNSdsM6DV1Mk/5
	1pKRkIzQI7ZWzrAXKPLQVsNkYaXxAoh1yws8OqqquIcHwwoValItQN9Kp8AZl/OKuHDjDj12iZBT3
	e1+MkFgP3+TY5TJ80tauWARxUAsH029y9DvkL5qPIbfvIoUsuMqCtvdS2DGB/o+rzSfIsjneUmzv7
	lridzU/vh8uzka4ZStfQWosIWA5Ar3QKjDfR9sug/wT0sihf7S9BPan4HQftv1+uC74gBLnrN1IvS
	ito1G1aJWE3k6869LVaU2KKZiwX816TR9uAsxn+PuFu/x/4050wwINtYIcRF6FOWht5X488AHNw3R
	UQ0lg27aDFtr8y//PKZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXeAu-0000aT-0T; Mon, 03 Jun 2019 04:02:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXeAn-0000Vt-Vv
 for linux-arm-kernel@bombadil.infradead.org; Mon, 03 Jun 2019 04:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2Nsh8lQFYxZ1lBkrz/qlmC7f5LUpUHKswZjElUU2A74=; b=R84Xv84jABxs7qFg0bvu1rLXju
 8qa0Gbg8VcXwTkzDdnUu+0UYA0srp8N98uSyRTmOUKxIHFDkC3LW4s3MXnDsdDccrnR5SXkh6W4La
 TdhfZb2iZSY+xBXpeWeq813PVCAliKHGEcVQVWxudk/Xq2l3CbCRkrFmmLjL0JEMjzePV3rktoJjY
 wsEumxCuMor0i4Y/qoCUauEPNaIGDSQvq+Xd3OrWvZK4XVXw7fa61vwkus/lPLLm7eo4yfASYQfRp
 Miloq+hTSxB2+wt1rLqzgso4Q749WDPmhXilU6O7CxWAmpIjyfWhUdcgBsHPF5S8nVKz0d4rZCtSb
 l559938Q==;
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXdve-00081i-NB
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 03:46:36 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so7447171pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Jun 2019 20:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2Nsh8lQFYxZ1lBkrz/qlmC7f5LUpUHKswZjElUU2A74=;
 b=SaLCmni6iGpfWfY98SgX0KEwfmFEgiEJWUJObZVKcEj3JOVhPeqxZOex4hGKOwXyTv
 ENjJ5tXWEOumRlxS1fbhu9b6ViozkxvrqT9nO3AF1G5bDzlF2qVl+pTkKfGiQltMHy8W
 qrdt79nnngaGqxMYo4L4aEcCsr3EDMgKR6m3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2Nsh8lQFYxZ1lBkrz/qlmC7f5LUpUHKswZjElUU2A74=;
 b=l3VPPFHYy3LC/rgJg6C3I7xofyioX9iyMtmXUTHpeocSB5fajD6IRVBdHL3EqWJw/h
 1KTpoeksHPOh21qUj3xG9dwZp/qSqgTGta24RL4faZ0qEeY3R8UrHrq6sOLu6Xti7SDs
 +dxN8hSwj44EbLFslPjn9IGmYN664oLmXot92CRdqGTIHsFrjlMZWBSzjEI9s2YUCthE
 TGhOUEwcONSZWhvu9B0Afis0UqtJhjRcInVijya9QrJT+Jo2n2rBMGGYpwYTUB/tiVPH
 +05qpH4mVbV3dXiCg8Qrea3DXweV1HSca8TCyEOYa3HTZ13tOsyoYkCtlwqZuBxzUZJx
 OVZg==
X-Gm-Message-State: APjAAAX6DxaOIt8Xcw7BDiqKw+LF8yHgq0UAdrJy8NEYpcpqMonfIZkI
 EXP5UJq4tkBHb33Rt4rqTe2VtQ==
X-Google-Smtp-Source: APXvYqyE4Jqv+EBCxqiCTrbeSFOS+gUnYBAXLVGT25v8uqqhNSMVSxBUaC6uhzdJ8H3eGcBKH1F58w==
X-Received: by 2002:a17:90a:25af:: with SMTP id
 k44mr13519004pje.122.1559533592439; 
 Sun, 02 Jun 2019 20:46:32 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id i73sm11878960pje.9.2019.06.02.20.46.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 20:46:31 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v10 7/7] arm64: dts: mt8183: add scp node
Date: Mon,  3 Jun 2019 11:45:12 +0800
Message-Id: <20190603034529.154969-8-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190603034529.154969-1-pihsun@chromium.org>
References: <20190603034529.154969-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_044634_969783_97843971 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Changes from v9:
 - Remove extra reserve-memory-vpu_share node.

Changes from v8:
 - New patch.
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 11 +++++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 12 ++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index d8e555cbb5d3..e46e34ce3159 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -24,6 +24,17 @@
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
index c2749c4631bc..133146b52904 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -254,6 +254,18 @@
 			clock-names = "spi", "wrap";
 		};
 
+		scp: scp@10500000 {
+			compatible = "mediatek,mt8183-scp";
+			reg = <0 0x10500000 0 0x80000>,
+			      <0 0x105c0000 0 0x5000>;
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
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
