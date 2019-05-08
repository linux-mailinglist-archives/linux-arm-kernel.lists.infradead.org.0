Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9432516F0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uTXzep2MGoArMujdZv0TYtgEYnmBPDVMP9LCZIRWEpU=; b=DaZPOPs1/mMbrRQn8ssvZVj04N
	mhMiSgr7ow+3a2Klb8GLyYN3C2iz1MskojKQwJTnKA6IZcNxUzKTn1tf6IMT2iWZ9B0yGM6LFVMp0
	R51L1m/+qaM08eDb/IDwu97kwrF20TqBnlrIFOivxV/mz1HpDajY8RUUhgdITVHIFRZuQz08wq6bm
	G6hHwrrn/nuZ4JuEYlfZgRbB/KWD2MvUWOUl7RYuO+7NAklsV77o+P1/voQDNWhDyTBOPHhweoNOF
	ut5Kcq0uyaddiYqzj+HlkDk4s0/zV7OQTbQRy5PopYKTQbCZHBdOEk+gfF5phyQg6oVlrbgCtBkcN
	Np0fcXLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCDh-00074w-DY; Wed, 08 May 2019 02:22:09 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCCV-0005ej-6W
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:21:32 +0000
Received: by mail-yw1-xc43.google.com with SMTP id n188so15006537ywe.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 19:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o9v2i1BskzOhYoxvbGa0Ks+cL4rPkVrKBIZw1YQ7z2U=;
 b=TzbVCtOVob5wGFXsMeQt0szq3hqpslDw1dcya+lfdauPQ4SUbYScHMu+d2gv3hX9Ov
 EwnuYG5EqJtbGCu/QbiISJBC+ePP7p33BQcfCj0w3IVS9f9lL4H/qdoLFQwEg20AAzBU
 GL9TWj2xicfLC5S3+ZA7p3Nh4W7CeWZd2Ba+WhDNd6QHjjewOFnakwyFnTDbnl3wxyAG
 U5oeUaFoTc7l3NSdaHQSNom77wgB0xYWnt3dsONCmE0nebUXjuIrxfzhZUSl1QqvYMn/
 kO8NW0xCiCi8sSYJkLA2XDQ1lc5EJvYbdfl4+lhu9/4894loyKV5EzDyW814j8usdt/D
 t53g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=o9v2i1BskzOhYoxvbGa0Ks+cL4rPkVrKBIZw1YQ7z2U=;
 b=IJiTRV7+nJk9gdczJPKHv4Nivtz9MBcwAJcP4QIAlY37TkPS5SI2meBmhwtXiP7TYr
 WEBwGIlAwE1XH7gIRwGVFP1mXQUz4y0s7rahsE35PFf1V6uh0y/IS4ZCrkl9L9awbrwS
 9L2hDOtPJlN3+5ktg5YAuAp/Xp6JkRzanPSES6w6RKvuPREoxfEwhRDT7tzooHGQOxik
 6QJsMfDOWaj4SJft1shHUoJ4LtbrVt6TCsISHQI2do0aBRJzhi+WDSx0/XqCEbqiUNTZ
 szO4DA0oUWIz6lwBsPOxty7wJeYotHqIEv6EIhmRuKEuBrrF2CNl6QsoQ4bP9SkpWntm
 MoFA==
X-Gm-Message-State: APjAAAWw3yBcY6BZHLkUDIVQQxc5qnYfMdeYPm51ShJWHeeKcXB1h9PF
 VXu7qANkPcUDj42uyWe8qwPLXg==
X-Google-Smtp-Source: APXvYqxkbRQnf94BeqIG33NbLKJtoaoexo6xYGJu9Cz84P9/WBrCI33zQx6dAYnDIHlYdksEySD2/Q==
X-Received: by 2002:a0d:fec2:: with SMTP id
 o185mr22939115ywf.116.1557282054378; 
 Tue, 07 May 2019 19:20:54 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.20.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 19:20:53 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, Wei Xu <xuwei5@hisilicon.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andy Gross <agross@kernel.org>, David Brown <david.brown@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linaro.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 10/11] arm64: dts: sc9836: Update coresight DT bindings
Date: Wed,  8 May 2019 10:19:01 +0800
Message-Id: <20190508021902.10358-11-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_192055_795712_7E2D2E0A 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Chunyan Zhang <zhang.chunyan@linaro.org>, Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CoreSight DT bindings have been updated, thus the old compatible strings
are obsolete and the drivers will report warning if DTS uses these
obsolete strings.

This patch switches to the new bindings for CoreSight dynamic funnel,
so can dismiss warning during initialisation.

Cc: Chunyan Zhang <zhang.chunyan@linaro.org>
Cc: Orson Zhai <orsonzhai@gmail.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
Acked-by: Chunyan Zhang <zhang.chunyan@linaro.org>
---
 arch/arm64/boot/dts/sprd/sc9836.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/sprd/sc9836.dtsi b/arch/arm64/boot/dts/sprd/sc9836.dtsi
index 286d7173f94f..231436be0e3f 100644
--- a/arch/arm64/boot/dts/sprd/sc9836.dtsi
+++ b/arch/arm64/boot/dts/sprd/sc9836.dtsi
@@ -60,7 +60,7 @@
 	};
 
 	funnel@10001000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x10001000 0 0x1000>;
 		clocks = <&clk26mhz>;
 		clock-names = "apb_pclk";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
