Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE95E1ACF7C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qJpLY1UoS89QsvS3O4gE2I3YBrEQD69GiPR9NPUxxas=; b=EV9BwRh0OsPZIQK/FbiOK3Op+W
	kgFupx1phYkbRcKo7VfHdYCwKGQgY9dLq+9zTWpy/+BWtYXwa8Yuudt0IZXjW8fUBOmHkZO4dROTw
	zNP1fCLesmZDPXb5RBSrx9uOLBNbxCMwG6vALht+1RNC3CvXQm4QjSVAyk3YSGDh2fR52kccbAolQ
	Ov81OzyD/l0eFrFy/PAbR2h+6rCPJl9J8BDtAN72M5uFwWBh7UbQi/cNVA77DtBroSVNjrJ75gxfK
	JIIYzY1pDIP7Zd511xHOBSWNGdhfBSELcBsMCX96y2OnCvztUyBb76FxGHCTb2c6QoZpUfdcbJNiM
	+20KYCxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP97l-0007om-EC; Thu, 16 Apr 2020 18:20:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP97C-0004pU-31; Thu, 16 Apr 2020 18:19:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id t14so5939188wrw.12;
 Thu, 16 Apr 2020 11:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=un5r5wTF9YSeE5H41tvnou6xOakyg+8DVX6yhx1HH88=;
 b=ZUqLcz4hHJEOkbo9fAObJQkyqo4pX0Cg8rMzkZa/eMXTQ2/+3RoO6qkNGZVtmL/Y2o
 GQtyHzHj4oCoRQNgPhyfof1gd9aZQjeWxANU27KsOxf8Jyq3tYnrDEgOFTYyLYG9ykVW
 uS24lqVzItzURKlIPSuCva4Uo90s9A7erCksXBlmh7icVU81rLqWYb2kpWIR5hob4a71
 WqNeseB4JSSJtp0qrBxosPI1yYOXza5aNDl9X7NJhS9Nt4cx1fnTUv8OSM1BOUpu/Xfy
 yBnabSPeLk0ZsrnGHLM/YtXE5JzIQOslDCDFmTFXsFvKyZsI8ocqj6hOaW7SQxXUUKyt
 D8/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=un5r5wTF9YSeE5H41tvnou6xOakyg+8DVX6yhx1HH88=;
 b=UQVnNU3mj8hFBOqIWhA4qpfkU1/Ok//c4E5D3KGiDi1dzEH+XISPiUG88018remi5V
 yVoWTCXDl5NpO513e+rgT0VjbCvSzZ3Cd5TrZoWIA66IFROpKFXpPz3GJlf+87z1dVO3
 1pKQBDskn5WgFUiw8R7qxD/nS2aNMtO0Suh5mka+vM2DpFVmDV9QudfB5oqCqoYYaqpe
 hSYbNHW8GRvLHf+hYXHt0bt9SWva5wiB64NsKkw7EvZFfme/dk6LEk+YDkqtqA8i5u/6
 cZzsAJghrXo2a6OKWP25lnn28L78a/H3N70eTH0Q0SFtGRo9MZSMVvVHU63zMvYGbRhC
 jYQQ==
X-Gm-Message-State: AGi0PubgGl7GOIp6URnjckUIy67oSAkwjGR6BcnH/ZHUOy7WbucvBh4c
 COXC+PNO1xV7VHx72JDgjm4=
X-Google-Smtp-Source: APiQypLCS49o+s1pMzcEqla3EhAESVxIpwpRuJ128hGVMG1TyTItLU0RQ+EfVAIWtH7wjgIJewKW/g==
X-Received: by 2002:adf:e88d:: with SMTP id d13mr9336514wrm.375.1587061192972; 
 Thu, 16 Apr 2020 11:19:52 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u17sm31317719wra.63.2020.04.16.11.19.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Apr 2020 11:19:52 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/3] arm64: dts: rockchip: add bus-width properties to mmc
 nodes for rk3368.dtsi
Date: Thu, 16 Apr 2020 20:19:43 +0200
Message-Id: <20200416181944.5879-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200416181944.5879-1-jbx6244@gmail.com>
References: <20200416181944.5879-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_111954_125355_19C93C4A 
X-CRM114-Status: GOOD (  12.49  )
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
all mmc nodes in 'rk3368.dtsi'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index f22475016..0678c2e5c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -210,6 +210,7 @@
 		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
 			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <4>;
 		fifo-depth = <0x100>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
 		resets = <&cru SRST_MMC0>;
@@ -224,6 +225,7 @@
 		clocks = <&cru HCLK_SDIO0>, <&cru SCLK_SDIO0>,
 			 <&cru SCLK_SDIO0_DRV>, <&cru SCLK_SDIO0_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <4>;
 		fifo-depth = <0x100>;
 		interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
 		resets = <&cru SRST_SDIO0>;
@@ -238,6 +240,7 @@
 		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
 			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <8>;
 		fifo-depth = <0x100>;
 		interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 		resets = <&cru SRST_EMMC>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
