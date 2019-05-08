Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A743716F1B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h5Uf6exs8ZmXVsA/hRXIG/+Ap+SftVYU69yAFChYS9E=; b=TppRWswNfh54mldZlmck3TTUbr
	zzAoU5Ft1/gbV9EdVRTlraEulAGiQg4UVq40OO1aEGdObfoNv7IcZAUUOuDi1CSEvoReyfiwFl6Hb
	nPz7RmT8opCaMEVkqhgdr+UNjPzElp9/cP1Z/Hn8AZ1f5cWTz8K7Sn0CuDa2FSHkt1T4UHqp6zpsM
	chcOLvMBbO+TUw2HbDx/cNopXdt8misTkpiUd1+mqdWCOH0MUsJVQB9BEuSlts25r+9sUz5OD+aQF
	EtzWeNwvR4WdezGsirAQv6EjFhk4weMJ5jHpGampfPnIpVK7HfKc3WsV1FAn/RxN5zEUH1kfYEYl4
	n7D5zRbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCUd-0003A1-0s; Wed, 08 May 2019 02:39:39 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCUR-0002zj-Cy
 for linux-arm-kernel@bombadil.infradead.org; Wed, 08 May 2019 02:39:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VT/DoumIOruXiAt+IEfHVTj8xFMF06dsPV76vTKLKmU=; b=Qg3l3skO3XlT8w19rZIUjBpdo
 mVmtOidPHebdj1VbcUmxlwoHO+5DI+BjOU29+R2hifD/PSzNbij6qqQFA87rrM8R8nhQFAMMzAJit
 u0yBzFpcVXbA65JN9ZFGjC8m96MyAj7EWYrRjP2Bm866SrryJ6Tlx7+gLP2QbWHsnm4I6JoD/CqnL
 ToPZVw8rfE7kMYEMLtteqRwkMwpnZNpJZ1BbatpWz2K+bOAOFzPiGqwJ2ApntHNZ0oM0vE85BCqIH
 DdRhuHkkys9tckfR4tVJClime0myLZ4GYGSjU6Y0TxyB5XOu6dnsvl71K3BE6Wh6to+PPDHU3aWUv
 tE68gJOAg==;
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCCd-0008W1-Ee
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:21:05 +0000
Received: by mail-yw1-xc42.google.com with SMTP id 18so10172245ywe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 19:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VT/DoumIOruXiAt+IEfHVTj8xFMF06dsPV76vTKLKmU=;
 b=qIQj7mU4c7YJHHe7BHgZEUYGBUP8UfrrrZBbYdGM5Yu+nz6qHXQGamhEyeAGJrzMJ9
 3gl8WGLMdi3K4E4XsP8ft4URWKos/ny2JcrGqYZcBd90V+IfE4RpP28jyXsIZ+wDbVpZ
 sLWdTy+6Q6P96HNODOJIlLlCDRoFLonAdzVThLDnR2hShGvXw6aRh8HRhyPtoIEWmms3
 OY5Dc8BO/PrYgDGwP3JAfuXxgZeQvYQAgv7NYNxIU6nWHrIl3KJf56MWOJ7PX91e2Kn2
 Erpnd30Fb/uVAnXAp3vpywTsDvqCZKUg0agcDNdzQOSl3OPlWni+s0jYRalouzi03tDj
 ufXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VT/DoumIOruXiAt+IEfHVTj8xFMF06dsPV76vTKLKmU=;
 b=n+rffIwDWBB+WvZlISz5eAE03RufWYBVN2I146JSFOhZrKDiUUXaAm5LDe1XdVqZww
 X6OlLj5JiR1dEwDkY2oDEb1fb2CERdwn/Tc1yHI1E02piEx6pHpVaNF74SYajKgzX26U
 40FeWSDvP2RQXBFDs2sYABOCPom4ovBC+0B0nnAiLWidmAFtGtY+gGakDyzlDOwx7LqR
 9uMQLZA5Hn8+l1ChzuQ7uZp3ZeD9caVTgMnNlEmqKuSqEgdFWzVXiz2s5WobpWJ6F6zY
 J1JgZV/tP8nHljivpJFhIvUdNfzCwdaLmCm0SiN1tSXf7g1yyTLL5+FU8GBdW43WJrpf
 om7A==
X-Gm-Message-State: APjAAAWlaP5YYobjDRjvCyUMCLd7FbMa191TLu2a3x1WzXTM08ER51/R
 1SimKy4FdgN46TuT3dk7lisbYA==
X-Google-Smtp-Source: APXvYqwUV2PSsioGsTEJtGNisNfeTjMAt5+acFaEPT1kWqqPlXnSGAxrpT/5JBTWNkf7gyrMX5zVZw==
X-Received: by 2002:a81:6d87:: with SMTP id
 i129mr20367881ywc.424.1557282061711; 
 Tue, 07 May 2019 19:21:01 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.20.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 19:21:01 -0700 (PDT)
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
Subject: [PATCH v2 11/11] arm64: dts: sc9860: Update coresight DT bindings
Date: Wed,  8 May 2019 10:19:02 +0800
Message-Id: <20190508021902.10358-12-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_032103_527879_845E9D20 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 arch/arm64/boot/dts/sprd/sc9860.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/sprd/sc9860.dtsi b/arch/arm64/boot/dts/sprd/sc9860.dtsi
index b25d19977170..e27eb3ed1d47 100644
--- a/arch/arm64/boot/dts/sprd/sc9860.dtsi
+++ b/arch/arm64/boot/dts/sprd/sc9860.dtsi
@@ -300,7 +300,7 @@
 		};
 
 		funnel@10001000 { /* SoC Funnel */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0x10001000 0 0x1000>;
 			clocks = <&ext_26m>;
 			clock-names = "apb_pclk";
@@ -367,7 +367,7 @@
 		};
 
 		funnel@11001000 { /* Cluster0 Funnel */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0x11001000 0 0x1000>;
 			clocks = <&ext_26m>;
 			clock-names = "apb_pclk";
@@ -415,7 +415,7 @@
 		};
 
 		funnel@11002000 { /* Cluster1 Funnel */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0x11002000 0 0x1000>;
 			clocks = <&ext_26m>;
 			clock-names = "apb_pclk";
@@ -513,7 +513,7 @@
 		};
 
 		funnel@11005000 { /* Main Funnel */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0x11005000 0 0x1000>;
 			clocks = <&ext_26m>;
 			clock-names = "apb_pclk";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
