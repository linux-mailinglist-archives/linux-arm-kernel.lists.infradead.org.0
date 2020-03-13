Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196A8184BC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:54:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xXe2HDx3sXknGyeeV/HNAgGp8cj49VXRn4yQIp89zs0=; b=YweRpX8lYlra8n
	3iC/nrRWscFB3SLvhW/2mvaItzvdeHVnfB2ovrvYJoeUamau1r7rsku9A2HVvebOYI1j0027CRZGd
	WJAIubgKAlgq6SRE72eiYRwD8F5lluyCFT70J35BCJSWLIJ5uyalxGUlB6k+bmmwgkMKz5YVAyDH5
	M66PdE9c7aCTx7KTbp+7ppMjGWmPtmU6wFYKuwMR8jHbcTz/CxLFMt8rkXYJ6aYwWdW/jD4M/o1q+
	XjukF8hRNsiAauNcuFopn3OW+mmdw+mfBH45n3NO2+vEAOhqGurSs6cSEySKPJN7BK99xN4ov9Gwv
	CuQ0LTWtfmNN4af34cnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCme7-0007qN-RY; Fri, 13 Mar 2020 15:54:47 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmWg-0008QI-IQ
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 15:47:13 +0000
Received: by mail-oi1-f194.google.com with SMTP id d62so9795855oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 08:47:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tMfy8/E6oXzJJx/8VpRV3tj4/ckSsq/8G43sIQgZQ7U=;
 b=l6TmaT50P8qVxZRq3UksVMgES3U5nB/ikuHsd6xVma6CYKr9QBZ8VteLW1vkUW/ZJl
 6vHCn7KrvutX/vgdgsUTu7sjAxkr3+Bv+d3S0mR1kca6H1kkU1Lk4okRtaSbZEEgX1LL
 mbJqZ9v6yroCnMLjxSh1Ia7vt3Yo98HwIBH3sAgYclP8xJIJ6Y6XrEa928v53j+vc3Cp
 VMHbsgUTL0aAnjnH1xasdyR4LUqCsRWVlfyN2wnY9keLclIuqJ5p1Jh/fMnDa+pnrgNl
 yC4n5nfpOeRtkGXVDiPtRpVrP8C/UjFN6Q6YypqlnG3L8Ju5cQre2jlVt4lpTrzh1/Or
 /xvg==
X-Gm-Message-State: ANhLgQ3E6lo8j6bmuD0w6IvsMlXjiP6Kek/1krc/LaHg8bgTDc9iF2Mc
 lMr8yQMxCQSuMg6EGMgMJQ==
X-Google-Smtp-Source: ADFU+vtE/jAJa6g5NqFQM+VkazVXWPBMZUEMY66SKGWqXr6JceMIiuB6q4UOhUn9lUCRUfb+R5SqfQ==
X-Received: by 2002:a05:6808:14a:: with SMTP id
 h10mr7551170oie.81.1584114423061; 
 Fri, 13 Mar 2020 08:47:03 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id t21sm6884983otp.80.2020.03.13.08.47.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 08:47:02 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] ARM: dts: sunxi: Fix dtc 'dma-ranges' warnings
Date: Fri, 13 Mar 2020 10:47:01 -0500
Message-Id: <20200313154701.948-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084706_628530_E51E2BC1 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'#address-cells' and '#size-cells' are needed in the same node (for the
child bus) as 'dma-ranges' in order to parse it. The kernel is more lax
and will walk up the tree to get the properties from a parent node, but
it's better to be explicit. dtc now does checks on 'dma-ranges' and is
more strict:

arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): \
/soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid length (12 bytes) (parent #address-cells == 1, child #address-cells == 2, #size-cells == 1)
arch/arm/boot/dts/sun8i-r40.dtsi:742.4-52: Warning (dma_ranges_format): \
/soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid length (12 bytes) (parent #address-cells == 1, child #address-cells == 2, #size-cells == 1)
arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format): \
/soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid length (12 bytes) (parent #address-cells == 1, child #address-cells == 2, #size-cells == 1)

Cc: Maxime Ripard <mripard@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
I'm updating dtc for 5.7 which will introduce this warning.

 arch/arm/boot/dts/sun5i.dtsi       | 2 ++
 arch/arm/boot/dts/sun8i-r40.dtsi   | 2 ++
 arch/arm/boot/dts/sunxi-h3-h5.dtsi | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/sun5i.dtsi b/arch/arm/boot/dts/sun5i.dtsi
index 0b526e6e5a95..b8bb58b0180e 100644
--- a/arch/arm/boot/dts/sun5i.dtsi
+++ b/arch/arm/boot/dts/sun5i.dtsi
@@ -186,6 +186,8 @@
 			compatible = "allwinner,sun5i-a13-mbus";
 			reg = <0x01c01000 0x1000>;
 			clocks = <&ccu CLK_MBUS>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 			dma-ranges = <0x00000000 0x40000000 0x20000000>;
 			#interconnect-cells = <1>;
 		};
diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 8f09a24b36ec..b9c45aa8f21f 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -739,6 +739,8 @@
 			compatible = "allwinner,sun8i-r40-mbus";
 			reg = <0x01c62000 0x1000>;
 			clocks = <&ccu 155>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 			dma-ranges = <0x00000000 0x40000000 0x80000000>;
 			#interconnect-cells = <1>;
 		};
diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 5e9c3060aa08..62ca0d287008 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -560,6 +560,8 @@
 			compatible = "allwinner,sun8i-h3-mbus";
 			reg = <0x01c62000 0x1000>;
 			clocks = <&ccu CLK_MBUS>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 			dma-ranges = <0x00000000 0x40000000 0xc0000000>;
 			#interconnect-cells = <1>;
 		};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
