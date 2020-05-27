Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6714F1E3A64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:28:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HGydmveY2CXV3txVg5xoqVW2mn7/ttX8rGHI2JnYJD0=; b=eaeveX9ZEfG5k4f6R/N3neH0xH
	c/Smv0n1CA25e/YfdIIsJ8olavIVd1xF90ZSRBJIkv+VZwFOs7owhgZ4+bgbbbWM0d2ThXyOxiMK1
	BzuOTN8OAePESUfcyL5Mleyz4FDmazbAj0ICrhYUkjo22xekHqrBB3mieW3xnXt3zJnJ0ezAXvA1x
	CWiJDx3uUAWgBIu1PF/l4TJr4FoHqg++o1mgA9Lv6t8YwUw5l2lLUWqh0THLnybZm2aoZtDhm+onR
	ugiDdScHPYVnhW+8diSwmlmjJWz+gzDZm16p6UrgLrOurJRUW+6M/gQkb7b7+22xII7YNIKIrVd+L
	pgiI8uTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqUB-0003AF-Mn; Wed, 27 May 2020 07:28:23 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqTa-0002Zx-I2
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:27:47 +0000
Received: by mail-pj1-x1041.google.com with SMTP id n15so1134139pjt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 00:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UETiT/+hv4pHR/FxQpN8ElBZpgtWRVFOPMtYdets/m0=;
 b=adRZeb9Lm9Mw5bBmtIfv6dbOePFDu2sMfBHHzfZKYcv8RFY4FDsx76Z2h7qVYFEcFA
 SiAtTZRpKiu6ZGk28yBVC+DlKWd/LxQaSRsvi1xHYD+8SldaaJZSs3WvbxZpflRB0qJ/
 K1psQWI9snmWeyfED0jbFki2a2fiRcYvv8DPDMY2QdjMmij/oQmu7PB8aXeHhCbsto+W
 5BBXh/bQMYCLbQHkrl4NdUaBr+/5rI+/dkc2oxIch/OhpNYLJoF4GzDi5/UtkfDwYSdQ
 LZHeiRvVNBWyAszvLuEfCkcnjKxTn767Co+SsHu0pNEh4sS1CsjP7Ydsad+v7/0w7nhs
 P6ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UETiT/+hv4pHR/FxQpN8ElBZpgtWRVFOPMtYdets/m0=;
 b=cKL435dMpZx6aIVXcfrNUlGK39/trAvDNw/9NEgO5/DI5/NFyqB7Rk7nJshpPq46M1
 QeHg8WmaxSDlzAmAaeZ59HBMHAooQcGlVeImXl84AQPEldswYQ4xxgZJaM/L6wUg9m/K
 RgwNTld//B/GHYk0pcQtifif8D+aMvwndFY4vX4XaVDS5itQL3il7Cvyc9EwrNmPJyTA
 WjnorA23KQSOS4g68q/aJm+qPPj8dokMyBiUj5f8ZG2+R1R7dOIjPDyAIIqfkC2TLqS8
 AMwlD4fwmIFWA0twXbvbMwExFG2gAzfAufiTZkJPUHpW38a/BXY82g7bGGDpZI94a0Yz
 hZ9Q==
X-Gm-Message-State: AOAM530Ha3gYqCqc5jEeEeZDCkhlKNwdP4ofklZyMwa9RcX06jbJxA9s
 D6+vLQFlyqA/pafDt4YEECo=
X-Google-Smtp-Source: ABdhPJz5gbkJ79n4grpbJ62IF8L3aiqo8pVw26w3l2Nkc2Ney24Q3/bI3BZNPFN2Svinwt0qeTx7Ag==
X-Received: by 2002:a17:90a:a017:: with SMTP id
 q23mr3572709pjp.4.1590564465807; 
 Wed, 27 May 2020 00:27:45 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id q201sm1371842pfq.40.2020.05.27.00.27.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 May 2020 00:27:45 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, thierry.reding@gmail.com, sam@ravnborg.org,
 airlied@linux.ie, daniel@ffwll.ch, mturquette@baylibre.com,
 sboyd@kernel.org, andy.shevchenko@gmail.com, noralf@tronnes.org,
 linus.walleij@linaro.org, broonie@kernel.org
Subject: [PATCH v6 1/9] ARM: dts: stm32: Add dma config for spi5
Date: Wed, 27 May 2020 15:27:25 +0800
Message-Id: <1590564453-24499-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_002746_612148_4BCBACAA 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com, linux-clk@vger.kernel.org,
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
index d7770699feb5..5820b11e7365 100644
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
