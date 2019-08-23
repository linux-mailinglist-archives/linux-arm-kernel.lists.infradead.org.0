Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174899A869
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBe9QdDD5ynpPVRQwCzBn8wZMqDt213XO2Lzd9STRWA=; b=XIXsYAUMDOO0Wx
	2FxM9/8ZU8XBiPzJsi3Ys6Hyft3G3myLAEhdBCGGKMXdOg9YYLfZp3At/lfaEJ8a7Ec0gk8h67tA0
	gIz0uMcxhagEY/S5r0b0hdWBcbeQ4uDKG2az424hMGWVYGPn5iE3iXo6lArlHLnQ/1p3GvhUKHPsz
	cmKU3nY8DD2ZwY+yOvq6UOciUrS1XnyVJtc4BB4z1PxUsnpSV/lf1j5eh1zhTDSYhyzQbnzTzS1PG
	SX8HjwRICDHMOnb9zUgW0G5MWHe2MprzDOYQe3Ztttk7voo8SxZg2FDbIddt1f0l86i0m82sNQNdU
	DGWdQPrqR6UVA+lYibgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13p3-0000y6-6Z; Fri, 23 Aug 2019 07:17:21 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bB-00014n-7M
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:03:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id p77so8632142wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=azywW4aY+7wwgpNcGjCphBBHWjJRM460WoYJzBT0wYk=;
 b=tXU3kWHD6fL1kUtu493aPKmgU35PK0cJBZuXho29b/UAUO5IUdGJ5s0YwYZIcxbkJx
 rsS5aJ63ewGloC4FDFkDeYWx90taKRGxx9PuHTEs01ZDvDkwOtkjqJDiV87WTrvQ/TgO
 C/mhppXl3Fog2EO/Tlbb1Ee3g+pIuD4BQx6Im1Zi1pxM3pxbCygGcmiirKntjhzSUaRG
 qo6ip9/J7rTm8kBLIOPXLLuTOZNKJK0j+nRi6MHdtTJTXLDM/LdbCOSRBMrCqBAHyMzp
 3fTNWdADY/M3BLnld/6bdQGC8X6weIZnE1Dq2ph83G1BevN5OQmhFr1L8MlrpBZbTQPV
 e8tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=azywW4aY+7wwgpNcGjCphBBHWjJRM460WoYJzBT0wYk=;
 b=TTiov8VRkfyddlqgO+uQ2804HjQyFWfN24mHAuVbpNFibmYSK7SLRNa6jfISB/CF2g
 bPU9xleRWcvkxlgzPBfQgTOKjfom78vn7dig3buFAIMp1ofMs79IPB0p1nE3OlZ5nQ+R
 YAc3ae4AcKMfoXlVlKhkWcOElgt7PicDcbOdo0GdiL0ty5BGM+hkBTwsZZO5nmeYutYF
 v6+0b560N99orjsizG3PLBPOBjeY0bjs9VPTZS86j+6r5BiYw/qzwyFxnfCvS9ktt/2n
 xHGQ6xgBIaCtjlBRvFmJliLLRFewoYP0aegQw0MApc2A0abh8cmmGRO3IxEHmPafj1Ub
 gm3A==
X-Gm-Message-State: APjAAAWJGPLOA9aettJymCO6hOc82YEawNKBzvooOUG7hVMY6WUHkSpU
 3QsP8VKMI5MWe5+cLvUw8Nx2IQ==
X-Google-Smtp-Source: APXvYqypWTGY1OgUHLWikf1dmECp2VpbfjrWpKD1mRPlCd6Udkbv7ND2F33HHWtG2cvD70GipoVAYA==
X-Received: by 2002:a05:600c:218d:: with SMTP id
 e13mr3277166wme.29.1566543779798; 
 Fri, 23 Aug 2019 00:02:59 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.02.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 00:02:59 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RESEND PATCH v2 06/14] arm64: dts: meson-gx: fix mhu compatible
Date: Fri, 23 Aug 2019 09:02:40 +0200
Message-Id: <20190823070248.25832-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_000301_981588_DCB2FACF 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: mailbox@404: compatible:0: 'amlogic,meson-gx-mhu' is not one of ['amlogic,meson-gxbb-mhu']
meson-gxl-s805x-libretech-ac.dt.yaml: mailbox@404: compatible:0: 'amlogic,meson-gx-mhu' is not one of ['amlogic,meson-gxbb-mhu']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index b3fe3268af3e..74a2cdff0563 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -490,7 +490,7 @@
 			};
 
 			mailbox: mailbox@404 {
-				compatible = "amlogic,meson-gx-mhu", "amlogic,meson-gxbb-mhu";
+				compatible = "amlogic,meson-gxbb-mhu";
 				reg = <0 0x404 0 0x4c>;
 				interrupts = <GIC_SPI 208 IRQ_TYPE_EDGE_RISING>,
 					     <GIC_SPI 209 IRQ_TYPE_EDGE_RISING>,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
