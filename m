Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F3A1ACF7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=muycepPdEfr9FisxTpdjg/OY6LO/MSkn81HjGCRCJvE=; b=Jdj
	CXxAGLMTdwypf9uLL0VhPxoE9+bOBTO/y2mECbCt7t7b/BIhm2PL36plcL+G/QgR6MubSyv1FtywB
	C8vglb0wHvWljlpgt6n/tM0xCzYyajo0HjXaV9a5kzNMAsCBFHC/zK3h/iQewiL0lZrmh+LhGlAPZ
	Da297wu1GGPaFk8f5B9Na3I31bpVlaGDe2I/VkHCfU6kAD1tbp6jAockeOX0ZNxYvWEcL18JFyhbr
	hWlJ8CB5kwWFPzOLRmxbkqFod9tfyvcwRviS/N97z60oE5L2LaR8dmR8vZx30NxDBgXZ7Rc142hoZ
	xLVuhttFjNZfVBW6wGaXdq1djsfaBng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP97W-0004qW-Om; Thu, 16 Apr 2020 18:20:14 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP97B-0004pS-Ep; Thu, 16 Apr 2020 18:19:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id x18so6028530wrq.2;
 Thu, 16 Apr 2020 11:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cEAaXqjbvarVunGK5EIaoB/gFSYviCQxW9/KrEgduNU=;
 b=jOjIXOUNpqV4vgS2P0e/NN2SML1NfcNU4agJ7hlenV8vJ7aS6bhAXCz9Dn8fBKcD2f
 pIUPxsoWthEWnS4sy/30qAJcaI/VnP89Z7M4clcCSzK4EWGRkrfyAKAYv3rIE5q+P3IJ
 aiBiLZQVWgMSSpNy93+Z7GpGHJAQP7b0choQXL0MTXBufxCV39OGP6fUGq71G3bWrUxI
 EpBvR5rWusmBgI/JJ/S5CFobq7Ublms2NXQc+XRR0K0UnL5QQoSV6o1AzH7IW/68HOuZ
 682Mt6jHr3UuW+h+3JIIi1bPTcecaos3iPweLmD7GXtMRR7ZUCEbvr5yYlFxqcgBik0f
 RfMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cEAaXqjbvarVunGK5EIaoB/gFSYviCQxW9/KrEgduNU=;
 b=UD66WrlD5yRFyqT8OV+/IFtTXHAbj60K+8WFhZOzx9nmFk+vpoPwpkP8cnKkwl2mTH
 uXTxLvtr0v1T2KFceuuhwgL6rAK+B2mQaUsx/7dthrZgX7quDtMXdIExWGfLCKpaqIp6
 6k+VargNtLuca1zGPjSjWYsSCmAlEaBAXNAr6dj41gHRbWdojxSjs/M2lhGkiDSU50KZ
 tRExn2/zxaYJT18g2KIAAYKdFFMaFAFX5hEvvq5u3pXFLOwauKeQKenKIVKZqqku/Z3V
 uXuK1ij/epRauX70WnNwguzRv/tGxkJ/WTeKYHm/eX55WxjktTT9azrHobyHzOJ6PxQa
 Ltow==
X-Gm-Message-State: AGi0PuZDDtYlvwQFpQ6kpkQTHwULjGAkdVo9n4KMvZi1Rk73Nnr7EbjJ
 jCE+BC5Bo8Lk/IzkvqF+854=
X-Google-Smtp-Source: APiQypK1DEot7c5BxCRkgoBTWKxlQTrfIXgs2pj3dVp4kUGCzv4aCzV9FQqfjF1BDwwMYWgvn4Cfpw==
X-Received: by 2002:adf:a18c:: with SMTP id u12mr32028157wru.325.1587061192033; 
 Thu, 16 Apr 2020 11:19:52 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u17sm31317719wra.63.2020.04.16.11.19.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Apr 2020 11:19:51 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/3] arm64: dts: rockchip: add bus-width properties to mmc
 nodes for rk3328.dtsi
Date: Thu, 16 Apr 2020 20:19:42 +0200
Message-Id: <20200416181944.5879-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_111953_519827_7EC9E0A7 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'bus-width' and pinctrl containing the bus-pins
should be in the same file, so add them to
all mmc nodes in 'rk3328.dtsi'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 175060695..db2c3085e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -861,6 +861,7 @@
 		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
 			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <4>;
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
 		status = "disabled";
@@ -873,6 +874,7 @@
 		clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
 			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <4>;
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
 		status = "disabled";
@@ -885,6 +887,7 @@
 		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
 			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <8>;
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
 		status = "disabled";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
