Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB63DD94DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:03:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1bWN+F15O8yYD9CVjQlqE9SNt0PMF99wklGbAsx7Ik=; b=mfo3ShciCsPOD2
	DuVmCoVWD9MuLWBG3YqmcvWp1alCySNdfmj7YPvj7AKcp7Qc042YyTqAr0fyeJ0DuCEApwRoYcucd
	nlV+xbyQiCiC8IvxOMhn8/BoV0pX8ggJt4ecz/z+s/x8MLawp+sNnkWxd+UW4uxaGR3xXmCfGgp9E
	AexzPFt3y8NX77eKCQrkoswULVsdqhhC09pWDEVXi8FskdiKa1X2czPLBhNJ9SQrvnDjR1HrFigpa
	+wuooy4/51attwVku0l7pPJ8PLVGtCiNA4apuwuNABzasPEdnbRQaSiK4X8Z2C334asyoGRjTexKw
	+XGsroeP33bhfUxdnP9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkpx-0001d2-Pm; Wed, 16 Oct 2019 15:03:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKko6-0000AW-7W
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:01:47 +0000
Received: by mail-wr1-x441.google.com with SMTP id v8so28483377wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 08:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1LcPRSweYpxW+Ru1oGSa20C29+Rhu7RNAj0ZxbDdCTI=;
 b=DPkTAru0Yql5GtRWNDospNrLRWn8xyUN21TNlKMPAiwJ2Rda76JTw24YsVGFRIkMzM
 n9IEJWOYuzan0n36KWSNTEzU6wiyGDlEkxWFzUXBdbnoU5zjRT1wD1y0q7PHoVtCBtzS
 1yMNq9GPSqhrKa+Q2SOTC3T+F+9ws+fnuCJAzoRBBOtW1V2dbKWK5L8P2uUHSiNksDpq
 X/RTQ+bysHQLZawwV2drb86MMzick4gq2N9ekLy/8xNUX+LJSZuFHXw7/J/kVE9vDWpL
 aOUSXG6gGzNbq2HTC0hk0TwQmzyzdVJ5aNRISWOAMFV4DP2KEzippzg5hIPnVT9C/2T+
 a4/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1LcPRSweYpxW+Ru1oGSa20C29+Rhu7RNAj0ZxbDdCTI=;
 b=kzjp/YbxHH+/2ZqMZia0PJ5hSr+3U+7BLpwM2wBCywQHMez7EOq7fCeYnnraNP+0nM
 RiXQXmejaJQLgHLIW4t9DduvuCtFSuMmm4x4ln0/m1e13Q8WbEMf4wsypX5jb6iYOYEZ
 tElvw4MA+vqT8uF3N+esyG/rCs/HIyGvNHiPDaFLn/DgxG59C/6SFZs42K3swDQY05ES
 5rEblUxIlRlV0csC6HZLP5SMAyX9kL2hHArHZQ0ADFB/udh4WMFREyd8ZuUMtIgXXegL
 Yl2TUSEn7SWouS06GVNy5lHQqwY9CIze6jYqXWrUca3fKiVrqT9USzChCBhVcSZmtSc0
 pPBw==
X-Gm-Message-State: APjAAAXRL6f9t5POSnfarW3sLot4+Vq0Z2/z2jk61zT1CAZDO66mNkwl
 8TR34E/DOxIL32cC5ivGtbY=
X-Google-Smtp-Source: APXvYqwd0ox1BMFOPpIf6Htg8EZBF6/wQQQQ+qNi3gquKS93kFSMNdRLgUUh8iRAye6dPiKWjrbeew==
X-Received: by 2002:a5d:4302:: with SMTP id h2mr3265040wrq.35.1571238103862;
 Wed, 16 Oct 2019 08:01:43 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id r18sm3215437wme.48.2019.10.16.08.01.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 08:01:42 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v5 05/11] ARM: dts: sun8i: H3: Add Crypto Engine node
Date: Wed, 16 Oct 2019 17:01:25 +0200
Message-Id: <20191016150131.15430-6-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
References: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080146_327224_5548F770 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This patch enables the Crypto Engine on the Allwinner H3 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-h3.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3.dtsi b/arch/arm/boot/dts/sun8i-h3.dtsi
index e37c30e811d3..78356db14fbb 100644
--- a/arch/arm/boot/dts/sun8i-h3.dtsi
+++ b/arch/arm/boot/dts/sun8i-h3.dtsi
@@ -153,6 +153,15 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun8i-h3-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+		};
+
 		mali: gpu@1c40000 {
 			compatible = "allwinner,sun8i-h3-mali", "arm,mali-400";
 			reg = <0x01c40000 0x10000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
