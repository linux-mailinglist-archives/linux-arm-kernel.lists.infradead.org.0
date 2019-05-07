Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAAD15831
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:48:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5k9O4FgGP+iq26I32OThFF9sf4r+fMt76gvRbPRxZ20=; b=dgnioR8BQJdNsYvqE+jiGQKuWq
	H0iKnDKJWbY92jmF60NngOb11lFFdfaSeThjoCziXcqLLTOaptnVd9JgCndfBd9P0rUjj8Zbx8uQ4
	/Gb6zfsIlmDPjvCK0/J7nSCMmlgSgaKvjgo1Gr3NWSi4Md8aZUxxm9gziKlMyXqDD2IwkdJ5Fbp5j
	5g773gsS7QXoDXX7IK6OBlEBf4/Phuv5VNu8RU0Yp+MJNHx7WIqkbr4CVSeooNQjykWSuKeKupvaD
	DrhF0u6GPgDz5tB2DL7A/yAFK8f/s+j+/UxWSyrsAyc+D8F8NZW+MRLMsIrLNC183C+fuS/TPdfrq
	sj9IBjLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr65-0005qA-9H; Tue, 07 May 2019 03:48:53 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr5X-0005G4-Sn
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:48:33 +0000
Received: by mail-yw1-xc41.google.com with SMTP id q11so12148367ywb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0UvNSUTFDMDuR0ooFb/G16rSVY5aiKDB00HL2R5JFmM=;
 b=lcTrW0ZIHpf1G/Ts5SA0F2+bCEg8R7u+IQ7bfSgnAEF0cwr8fPjMCdkc7rWDe3ezSA
 Cehzng7Vydh5EapM64Y5u/NG+0ODM7W+aCOWcMW2WZuNqzhdtzg+9GhG/P6be1vhif3R
 gwDa2HZWH5xyaAR5tPswkjFeNVEMNpp4JhxP369xvNseaDdxsaUFhWmieCxSVJB2U2EZ
 Oba9iP0N0xASr85MLbV8s7IOL4+IZfcIgzvITYDs+fx/Vd1FwkVyQelHlyTNH1dDlNZJ
 JsgchMCtYxyfgmW2DmwoqRjuni6MHKWI0ZxqRdYldaEvXLqcLYx8XeT5inEDbqCdzshk
 BcLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0UvNSUTFDMDuR0ooFb/G16rSVY5aiKDB00HL2R5JFmM=;
 b=Z909EJPGk84jXrPYvHTwFR4fKmAQFBB7SL29FGT+YTjtsFEflodof1QLxTo3qAuOfP
 0/+eDcJhy8tP4ImqWYvz5MbrR/fGZo2IZNAbCHAsUhaseq6VZSHxNoTW8YOALWEZm/p8
 Nltq6cwZfLd4m39/3GAU45VAP/sfuEM/3uNBjTuc0iAzfzt37IvNDqkm3bqkugMvfazg
 dqyGT2XkFdwYPh4s6brKX8n1JB5f9XHootfUxhzcBRivTetgQMwCbouz2e0fi1jaRvDk
 qyXTjWKweNnnnNFs+WB2L2FzonOyGqxW235BkHnRmAL4WNNhGlulUamatWWlEZRce9Wb
 kKMg==
X-Gm-Message-State: APjAAAV5PXtWWoxgFNpSMYr0/mc0+LDh9ZHjsdvyUmJSHSjdRfZzbUQe
 ujf9rVhmHEdXPtwf6aTyQvsq8A==
X-Google-Smtp-Source: APXvYqx0+VvlaMdx1uH/Mmox+EGKACa/RiKDt1RLrpTv9IK5tVmcV1tRdcLZCz9mbFLh4lopb1KCOQ==
X-Received: by 2002:a25:ac4f:: with SMTP id r15mr20160434ybd.273.1557200898673; 
 Mon, 06 May 2019 20:48:18 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:18 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 04/17] ARM: dts: imx7s: Update coresight bindings for funnel
Date: Tue,  7 May 2019 11:47:21 +0800
Message-Id: <20190507034734.20622-5-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204820_614174_C7D4C1E9 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Leo Yan <leo.yan@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight dynamic funnel bindings.

Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/imx7s.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index fb98761edac9..d8b4eb67146d 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -175,7 +175,7 @@
 		ranges;
 
 		funnel@30041000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x30041000 0x1000>;
 			clocks = <&clks IMX7D_MAIN_AXI_ROOT_CLK>;
 			clock-names = "apb_pclk";
@@ -217,7 +217,7 @@
 		};
 
 		funnel@30083000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x30083000 0x1000>;
 			clocks = <&clks IMX7D_MAIN_AXI_ROOT_CLK>;
 			clock-names = "apb_pclk";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
