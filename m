Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D837C1143B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 16:35:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZNtq7CkSMZZutqkS5n2v0q+KVk6KNspLI6Hga/H5Aw=; b=G/tpepZy9xfhMB
	Su6YQcwRZN3+tQe6ONMit4VdvAc6is610wnscdcdpdOKqfxfBNXP2ICEqNlDNjqPfGpMa5CaKiNRO
	9gK48vu1kGLxYbIUC4WS26vxMvqCidgM02re/xCv2+xlSX79FPAjXMZq40X/mFHg1aYH9XGn6oeT3
	WUIafizMWxrmZtIJFCu2dcsw35uEWT8MS/nPqkvlkchcT77CCyX8nHe3ZeQpPUwHTLOUJgJswVXLM
	S+nxNUSj1obEuN0oyX8dOaX9opgMlKQJmK6qmh1Xfrvw38ZJ/TtfhYcPIgmiDQXBZPHwQb+/+z6CP
	xQEyMjLL90Aga5C4nRWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ictAC-0005hB-5J; Thu, 05 Dec 2019 15:35:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ict90-0003VN-S7
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 15:34:21 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so4178910wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 07:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cvIKYbv02jfkUFc5yq+y3wt+kyYSZpa4lPRFM3efvsQ=;
 b=Vtzf6YNqgoAaCepibQJqB+oRUraYuYM4z8tSKK59qmq5stMUvAdB+5q+XIdsKOABIl
 VpP08vBGgGPR8Y5f3xG1AMOHGvmMkWvU/Oca1xY6ANqlBPb8nVAqzxNEmOAcv+3QICm5
 T0VME75HypIlfAukkXmcATSTMQkKMZlFi4y652RFyDNg8fbpq6ZzJWp/9mQ1Epdo0iS3
 RPsYVfmjJiH+w4INMrHQRt1bgSz6bJlx4OQRxRdyhIPmSeH0g2k3bnxVlyeYoZC7KwdE
 ZVyzhB5UG+UTEHwz1loKwzmn0BA6e6oPkpKaEcfbyaeo2O9txuwXlZAvzkF/hqw13RVR
 6lYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cvIKYbv02jfkUFc5yq+y3wt+kyYSZpa4lPRFM3efvsQ=;
 b=bbgvUSbXG1MhUmV4t9m7MnUxwyQYIzeD/J41ii3jh613GaPcsxFCpLR9fGJbKCxyiW
 tlRKC5G1g7/HWAwa58OpRj+paNvrqt48dGEWaReUevKpwJjJoz8jFDENNGa16NC8p4M8
 GzpZp2jjOjD1xw7fhnIBp1fck5/Mk5aW9Hq4klAnjtFTEp3pAmvgS97/kKjT5nCuCb0C
 4cgXu6VVr5btk9pfrcxRIL8azyb9zA97ZOBjT5noNnVVOw6kIpNwVc2drBJsNgwn1Mie
 5guBgyuCBJS07Cgfdd18SvrQWZmGDZ8N8mKP2XRR3L6ul5oTHyIzYllfsEPmDVhtoy9l
 nA1A==
X-Gm-Message-State: APjAAAXKZ2MMJrI8ecQSqrwF/vexmtGIYaccyTyYKgu2loAAssWRURuJ
 LNDZ/EKBu6p3KCdeIZY9a8K7gQ==
X-Google-Smtp-Source: APXvYqyHR+QR60eFIPYWpUC+I+EzJhKER/8/scWXEk6o2dHPHZQW02oXEkm5YTJXCK4A04iQ0bW1wA==
X-Received: by 2002:a5d:6a52:: with SMTP id t18mr10388098wrw.391.1575560057417; 
 Thu, 05 Dec 2019 07:34:17 -0800 (PST)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id u26sm191894wmj.9.2019.12.05.07.34.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 07:34:16 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mjourdan@baylibre.com
Subject: [PATCH v2 4/4] arm64: dts: meson-g12-common: add video decoder node
Date: Thu,  5 Dec 2019 16:34:08 +0100
Message-Id: <20191205153408.26500-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191205153408.26500-1-narmstrong@baylibre.com>
References: <20191205153408.26500-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_073418_933803_89B8E9E3 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Jourdan <mjourdan@baylibre.com>

Add the video decoder node for the Amlogic G12A and compatible SoC.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 3f39e020f74e..6fe7dead5a92 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2152,6 +2152,29 @@
 			};
 		};
 
+		vdec: video-decoder@ff620000 {
+			compatible = "amlogic,g12a-vdec";
+			reg = <0x0 0xff620000 0x0 0x10000>,
+			      <0x0 0xffd0e180 0x0 0xe4>;
+			reg-names = "dos", "esparser";
+			interrupts = <GIC_SPI 44 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 32 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "vdec", "esparser";
+
+			amlogic,ao-sysctrl = <&rti>;
+			amlogic,canvas = <&canvas>;
+
+			clocks = <&clkc CLKID_PARSER>,
+				 <&clkc CLKID_DOS>,
+				 <&clkc CLKID_VDEC_1>,
+				 <&clkc CLKID_VDEC_HEVC>,
+				 <&clkc CLKID_VDEC_HEVCF>;
+			clock-names = "dos_parser", "dos", "vdec_1",
+				      "vdec_hevc", "vdec_hevcf";
+			resets = <&reset RESET_PARSER>;
+			reset-names = "esparser";
+		};
+
 		vpu: vpu@ff900000 {
 			compatible = "amlogic,meson-g12a-vpu";
 			reg = <0x0 0xff900000 0x0 0x100000>,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
