Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17331ACF7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:20:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Dq1ekM1Ei3eOrU9pndNCd3vJEkhFasYpa5iyGmEMWdc=; b=dqzr7MriqYsACf7TK0tGxaKJWA
	eDX3EYoY7g8BeZPis+fywQcR1tgtRmr0srVf1tA2jFFIxpsSyCAzuy7RrleHzIfgDJOLFUMbk5UqG
	DmcoUCg+x41eodkysixrnNfbeLYdpTtBBYJtkUhFKb1oJIetknwnkxqMkhUqOWhEVzyBFg3l8b+lS
	oUo57gomEELzVxxaaRUHw1kpXni13MAEc1LnXcdONh4LvTYeg/W8+znypEUEok+KImGIumDeIxZ6O
	+bCSZSi+5SdAr3djb+DlHVp/fidh4lUGGVi9lQDofhHfpPhq3YnlbGbhaPp5YVnssEbI1j3+mxbgf
	8r088uAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP981-00083Y-Q2; Thu, 16 Apr 2020 18:20:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP97D-0004px-Fg; Thu, 16 Apr 2020 18:19:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id f13so5926991wrm.13;
 Thu, 16 Apr 2020 11:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kuhunWoWNKSSnJBSD5mXFTqsJ1kOHO8My6Abd5FOVlI=;
 b=XtjV6oRMo9f1fiyooxFRAsKStn1YM6uA4LfKKHLAMBFup+vHUfD6hePncAg8p1ApDO
 ucGxJWYm8h9ZSvixP78pVzp9opq9BMqLcmm+j3YzL5LoXvvb49Hc3LSNHrAAS8xwCgRO
 cUTDoSi+MPcbBL0yftolbIfMgcNKsJa4az1NWbBR0DU7buWwOn5u3sYV6+ojBWSjsKVI
 NDarSF2qUg4TJHFg9k1fAh50yRSmF3zSxCALYN8Cmou1gYMl1lVNQjAbJVioM+zyyhub
 gGPZ3JM4kQI3XcNMD9c2ek3KiIv5rzQn8R4T1MF5utlrXzWMV20jDG7TnU4Ik/gM6jYN
 zdwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kuhunWoWNKSSnJBSD5mXFTqsJ1kOHO8My6Abd5FOVlI=;
 b=eJKW33efyDhs+r6tMaLz6lh+13vgXC5XJw/HhAUKPN6QdwMwbjbO9ACtkao+bzqZFD
 wGC5mlIZtqs3BWWOfYLTH4hBbfV+2r+jLBo2N0cLZXFwS91eCBBColZKkQ0tzR6rRZUW
 TzUumiJmdNLhgcG0X/h33rCSRraVEN6jdTfg8KgpKkdMREEUlphzWp38RFcS7xqdHsMP
 BGf6R78+Lv82Ax1xvx4ebHuflqHCKdS+z367EL8t67EigBEWfvc+LQ92mTC7IkaK4sLz
 H4OBPYtkd83+3WaAgviRvytWZQVB/BKnKO3Ar+tOUzWhZx9jgpmLK1HbWGi6LIo1TXmu
 rZ2A==
X-Gm-Message-State: AGi0PuYWZSpLnozt5qxOcAEZJ7Ems+gZhHlB+of86rJaEtz51IpUCz2d
 eJajBV8dWnkwI015cCrnles=
X-Google-Smtp-Source: APiQypKYaWHYHbmMKObbxWQNX1u/cnJOszq4uhvMc3wS+RLncPRSwrGCexb4iivhEwhF6PKyf8WwcA==
X-Received: by 2002:adf:e681:: with SMTP id r1mr15086891wrm.213.1587061194054; 
 Thu, 16 Apr 2020 11:19:54 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u17sm31317719wra.63.2020.04.16.11.19.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Apr 2020 11:19:53 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 3/3] arm64: dts: rockchip: add bus-width properties to mmc
 nodes for rk3399.dtsi
Date: Thu, 16 Apr 2020 20:19:44 +0200
Message-Id: <20200416181944.5879-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200416181944.5879-1-jbx6244@gmail.com>
References: <20200416181944.5879-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_111955_520920_64AAB11D 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
all mmc nodes in 'rk3399.dtsi'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 123b7402a..9cf22e648 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -299,6 +299,7 @@
 		clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
 			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <4>;
 		fifo-depth = <0x100>;
 		power-domains = <&power RK3399_PD_SDIOAUDIO>;
 		resets = <&cru SRST_SDIO0>;
@@ -317,6 +318,7 @@
 		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
 			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <4>;
 		fifo-depth = <0x100>;
 		power-domains = <&power RK3399_PD_SD>;
 		resets = <&cru SRST_SDMMC>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
