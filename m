Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6C8E23FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1bWN+F15O8yYD9CVjQlqE9SNt0PMF99wklGbAsx7Ik=; b=L+g1H3BrbPRUMl
	yKbqTbhP1PCZqAjspREypTiXQCXuIi22v9bxGf0Twy4yWF1FNn5T7BtkaAurhyJlCSoiTOxjfknAN
	H8eYHhGC9Hp3ezj71g3p+ZFJeNJx2Xs1Tg9ZHwI6wuyv0C7DYhDtvC3UNoWesXxQnglSr1+REpB0p
	bOkbxpYtaQLqsU2ZthE3Qu9/E6iGm3bUy9VAxiu9psGxPrA9hohhnO4OeagK7FbD/EwAtS//LqcDt
	esSC6KrhJ3zFFeyrnur3Zwm3y547S0BiwJGnetB56bMfOIn3SANsUmh61GRc4P15rdeD+QDTl0+hs
	+6OKiebEdqRYj1SzqnUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMuW-0002hw-Va; Wed, 23 Oct 2019 20:07:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMsq-00016L-3I
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:05:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id o28so23438362wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1LcPRSweYpxW+Ru1oGSa20C29+Rhu7RNAj0ZxbDdCTI=;
 b=U66CqiY4+lFNvwG903V5JZTA1ctJodLAwwNzXswZ6B2C1OIJetWoDLLz2fCLY+enHt
 tEQGsyVyHxrvDRAzotOg1hArtf+PmvY/UELd1/J5G0NWQ1VPHZyJvgpyPHSyNrsKvVpB
 urILbX7Vy6HtUiuunGEETFxBfVKMTY0tL7JtCg/R5ahcVdopNaVtj+tWyHOnU+9+sVl2
 p3qb6uj6kEZonvYAklSXjKjldqKxEjLrwmbVzYGI2mlsgqOXlpklbfv96U0HZkDvnKY0
 rTSRd8apocs3dlPXkGzZppqkC1k4Bx9VLaWgxMWB+AFc79sieDKZqkYLNtcmxCaEpAWC
 CWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1LcPRSweYpxW+Ru1oGSa20C29+Rhu7RNAj0ZxbDdCTI=;
 b=GFSo9ABvfZRt3c9O5nbeCrxMF9KOccsz2KDQand/9zFUYK8av72O9Ypr17+HGDGYOg
 NtebMWT2Z2lea8LGWflScryvZ03fDz06OvnL6HJtjvrP7y2CywTTDt85N//7GVfzdGeH
 XH6LSCNRVRNd2UQ8PT/0tquY5QCHlXKO22fFwMtRdP7VSrbv8ZO93hdMiKBEQNCaRoxb
 XKAOoq519NA7/DaOPuL5T7e3W8zbko4UtFqhTkTjtnMisCd5AxXsEhzDDTn9ict1r8Fw
 Rnqc4ONkl46TK8bT1eZn4L9NSHUrmhXuEFPqnAUwFcNtUlobf0TOvWexARzpRIrzkDPr
 AhHw==
X-Gm-Message-State: APjAAAW3ZswVGfizptdOqaClXGwFLTujHlLfv0LLkhl/yAXiF4umfLZN
 p3muMlkHIeLpUGV4ukRNa7A=
X-Google-Smtp-Source: APXvYqwSUE+wT0DiHwVIQFVSrgj5ZeqVoTs9O015OyrwbsSY6BqMFBb+buqr/i0CXn1e08nzq4W6SQ==
X-Received: by 2002:adf:828c:: with SMTP id 12mr446863wrc.40.1571861126143;
 Wed, 23 Oct 2019 13:05:26 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id b5sm177555wmj.18.2019.10.23.13.05.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:05:25 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v6 05/11] ARM: dts: sun8i: H3: Add Crypto Engine node
Date: Wed, 23 Oct 2019 22:05:07 +0200
Message-Id: <20191023200513.22630-6-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
References: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_130528_162039_805467FE 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
