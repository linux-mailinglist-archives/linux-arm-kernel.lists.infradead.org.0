Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E275E1E055C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 05:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i7TTMLRfbBYEM6AbcUrSTztJsIkUpNl37e88utGSYBw=; b=ts0kZ2iS7opv46c2hzkcV1F4wY
	WufBR8zn5feNCCawHprsfZCBR6P54IEVeEnYsbttCzLFkA5Ra9RTGZRaTD7BJfHCPC6G8itPKJ8p7
	n5elv7Dm4l8xkvgD4g6gSf2vZo8uLdupA69O3zQg3yi99pCdGwVuZjZi1vcWkGLa4eymo0OLgxfXQ
	PM12SNTSfFaGFcnuxb9ORjo2ceFnoixODWYBGnsQS7Fw+4Uk0uJR3/ab+zAUEqDCbe7nTZDqU8m+G
	eh7armMk4ag7QvxXrtsn1zDmy6eRW2eY1WKg7qQitkX1QzGRInWPlX0J0a9O9e5lWkMhZbRBZKdnU
	yJ+iDftw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd3zr-0002Xz-QD; Mon, 25 May 2020 03:41:51 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd3zH-0002NB-Hz
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 03:41:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id v63so8268162pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 20:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=STuSyGO/SfkcGFSauy0QHw5IqCNUH9D9huZMTiB2y2k=;
 b=fkNPpMGzjaKpCW8iTYQCQix1C73P0vGeCYEgEBtczSwFoYfS6ni4XDVWMbiLhqvrO+
 YQj1kVsq45Hc7FyzZIQdm03WipH/XllIaDcseSWpV/0g8Dh5ICZ411BaDbDHMWQSa4/f
 0SZsJz3GhwaxVeJopKZG7Wr9Udxdp7O5jxlUFebkd5DVx+GUCmFSnusnoEtRoAeJoN6b
 1PPD3ek7v1TS/KhPcSh6Cd8UCWgt+Ml2QlTTMP/Zn+LAFKaiE7+6Z+D7BUwhr9wPfmmB
 v51sXUdOj/KwHwZ+bMdKThHsEWDk4MrX533ednxTMem3JkkuUJgODw6aLxV/+tjZJPAV
 3poA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=STuSyGO/SfkcGFSauy0QHw5IqCNUH9D9huZMTiB2y2k=;
 b=WaEYL5eH6mHqri/bbI6XXqSAUBCGBF7+o6QJVKMRP9og87sunRgymLNIP3NQ+fUgfV
 cvZa3ylWoCnOiseASSvqcentBgL+E11fhPuxS0+12wlmWPUv+gY/MXHJTH7H0so5hXoF
 kVyvUOP8cMezSU7XhRVAk7uS5cYeIGDSxKRF814a90hJTmS85syyeN8MYrKZ7UrmvQ5+
 Zv0giMhn+zRpDVc9vQKwjVJF7rEMJhECBulUisb/s49tntQmSYP+JXVR90ySm8mzm9wO
 4RrRjas/q/68xUC4LkZtjOYLksdEuAkMOBf/kHKlds1mjlR+NYCP37yMlO/hmK2e7ZLu
 uc9A==
X-Gm-Message-State: AOAM531+ldg+clwZUXY2UeAFLYeHz0NhmwVXT2VRGCHMzRQ68iwl38uE
 FvJcJaifaR5L310b5YqBuUM=
X-Google-Smtp-Source: ABdhPJweb2OFp89IGu0IqbpvrgVH1AIHqBr5JqD5/OxEMbC2D64IA8gZsH2OyXyZNWnB5ONkhP2T9g==
X-Received: by 2002:a62:1407:: with SMTP id 7mr15471826pfu.103.1590378074875; 
 Sun, 24 May 2020 20:41:14 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id 7sm11981695pfc.203.2020.05.24.20.41.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 20:41:14 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, thierry.reding@gmail.com, sam@ravnborg.org,
 airlied@linux.ie, daniel@ffwll.ch, mturquette@baylibre.com,
 sboyd@kernel.org
Subject: [PATCH v5 1/8] ARM: dts: stm32: Add dma config for spi5
Date: Mon, 25 May 2020 11:40:55 +0800
Message-Id: <1590378062-7965-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590378062-7965-1-git-send-email-dillon.minfei@gmail.com>
References: <broonie@kernel.org>
 <1590378062-7965-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_204115_587767_62162E6F 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Enable spi5's dma configuration. for graphics data output to
ilitek ili9341 panel via mipi dbi interface

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index d777069..5820b11 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -660,6 +660,9 @@
 			reg = <0x40015000 0x400>;
 			interrupts = <85>;
 			clocks = <&rcc 0 STM32F4_APB2_CLOCK(SPI5)>;
+			dmas = <&dma2 3 2 0x400 0x0>,
+				<&dma2 4 2 0x400 0x0>;
+			dma-names = "rx", "tx";
 			status = "disabled";
 		};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
