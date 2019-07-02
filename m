Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597025C91A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 08:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2rq6JVESW/b9PGF/3Qml2YFwHUBmgy3MlHeQtB2HLE=; b=ib+rAebxvn1Jrd
	1fpu3MzNnYk2a3qwTK/CGmYzGuA6d4+4nHnY4wB8qpNIq72R+9qjPeLB+Aff5J0vN81SoESdLSvxj
	4cjnmArD8Otut1BlSD7ZXlCJPbvPXCSOMsx+Ddt2GjfCduXtTIwNO+H/h7RMnWjbWTfPT96XNkGMB
	axQHK/3FCF0t3axrB0eRIVBId5pbFb3LMp/e7cn/Q7LV6iXzYu4eianAMTBrKKFKLoU0rhRuTsVdk
	dW+pGffZQQMIW5sRcTo8uWNg8cX4x5+KLRNn1qFQhkGYF6kb8x5gsgvGo9jeRdW45fozZdjMTWMZr
	U/NIstAPupWuAOTg+4FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiBxe-000827-HO; Tue, 02 Jul 2019 06:08:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiBvx-0006sO-GJ
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 06:06:33 +0000
Received: by mail-pf1-x442.google.com with SMTP id r7so7719264pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 23:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nNXEhYbACG3wS6zZ+/NER8qwkGIj64bXToXY5tJo9+8=;
 b=Zs5QYHjOyP0GPhSCaojxBm5NKDm/ZBM1cNN3ukko+UckelVJV3+/MLFm/ZwbOe7VdH
 Kg2iThAYU5eGMsdaY9lH7yvBhRUSqc4M0ukNXAnVFoP7nWp94ZKRfa17Xtej92aogHQA
 WOYl9tqsnjN8xNxMFivqFieyF0IIN8Zdb9uFk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nNXEhYbACG3wS6zZ+/NER8qwkGIj64bXToXY5tJo9+8=;
 b=AKNH6BQS7clq6XuGz+B87hWH+10QZ8s/pBptCUiEeKsoOjV3P/G9vFAfHyrHo39uCx
 stjhbbrf/r98pufTkruP2Pqcim7BuKRS6UOlGVNRqqhXcAv2ZxKnVz4BeWNuMq3M/QSP
 HnrkQ+FHsBx4fNA57R3ckibCbFhtYyQ8rT42ro6c+T9sFQ4y56O+xaSyf4OD3MwIFJYf
 kdRzTzaxXPs8isVDfckfHV5TihsIKMfFEZVJheN3E5F2Sw4ymWdvygXso3U9b+rchNUO
 Ak7XtGeL89d+NedQJyUPD+AxNj5IPDF3wzmRMfud7CYgXNPlFCqZQ+lJmePzIxm7GL2n
 YicA==
X-Gm-Message-State: APjAAAXZNUxq2x6jhKH2pAm12NW65GoY+m/q6o8IFF3XLnQ5OQPoiwIv
 SlZW5c5MgKMKvEEKnTxaXOehKbZaKkOjiA==
X-Google-Smtp-Source: APXvYqx9q6Jq9njI2deztF53gf7lPgnmCZz9TLU5PjauoSu7fMCqseLeN/IAkEJkyNltOEZQRWj9mQ==
X-Received: by 2002:a63:d756:: with SMTP id w22mr28152157pgi.156.1562047588891; 
 Mon, 01 Jul 2019 23:06:28 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id d1sm10284013pgd.50.2019.07.01.23.06.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 23:06:28 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v12 5/5] arm64: dts: mt8183: add scp node
Date: Tue,  2 Jul 2019 14:05:28 +0800
Message-Id: <20190702060546.222934-6-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190702060546.222934-1-pihsun@chromium.org>
References: <20190702060546.222934-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_230629_572432_028938CD 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Changes from v11, v10:
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
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
