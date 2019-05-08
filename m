Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0978B16F08
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Flksnwc+on9SXkDLWqnh1g13R8Y+kOZhewbgX9wxjDM=; b=TYeK0PjOIxlk1/4QSiv0hjaJPf
	PmoBF2IjPytIVkWpbHMaXLYWy+7A395XY1bd6ALRiiVndXAutzl8XLj1togcw0iXH+OOnHErGsfq6
	1Gj5R2Ph6JP82FBdjREUwr/ebnnqTeDE0OL5dTvW3X6O4RP1Npde3L8hPX89h2pElfMDd+xTEBtdv
	vlJg8ZZ0LRwy9Ghz4veH4q8Vt9YrIefS/nvh8MklQjYEX/ZQzM1pbiY17sffi0hEY8MmqoWEksF9e
	MOuTOwUsrpUHo/wlYT2JdnYV7k8QrzVhYoLjgeIDNdaZZ4L3LBYgDHxZWjNnjBpCYqCQflwo2kUiK
	xP5cBl/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCDD-0006PK-BP; Wed, 08 May 2019 02:21:39 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCCA-0005BG-0S
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:20:57 +0000
Received: by mail-yw1-xc43.google.com with SMTP id a130so9376396ywe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 19:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TAc/GxMoJ12hlCOKjFhOOuRo1hB5yjbAsEcA/xgu61o=;
 b=Eg5kI3qCSpK3XZPhkRqPo+oVbC77BreWmlwyhoojn5j2LlMdObG210c+a+fDiE1uUi
 QEmxB70VH2Uqq+5Y7JTUyj5ZFqHAcgCD1VCtgRYuIpzOyLDVq+pwWem8hLocVWiMsUco
 W0D0/vLcdUSJOIqBd7IgYQJoHSEZeDEq+Q7Nagto/LhwP5ghW84TVK1i5lDspAZWGCI5
 OzWMD7FO0Uw/YfPvSmARA+LElMYCbnMWJvY9u5YANfW8MfyhqXmm2xV0PSrxMxPpw+r4
 YZe9BcQiF0MHRPZTvVunfxNxPuVuBCyEqv6BkiliyuxW2CfS3ymYcOK4EgX7LkRcjD3t
 UGqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TAc/GxMoJ12hlCOKjFhOOuRo1hB5yjbAsEcA/xgu61o=;
 b=oEjfYRn+TIL4/DeUeVJuUXATVL3ByQjBfETepxAn91rZeRNH/IW/MDxHo1xlRCXF0K
 vaUMZKotqmc6+U2p1uK3g2ol23SnwLawTw0KU/IiFbp/nx/PCmwCbB3xqKMuilYP2En2
 HEFHnCmQTAwo+MPijHajb32nneh78Y3S/m5auVaZkKOoRJt9YaPCwI7c0bBVoXdPd2J1
 6a9igtDDFN+O5C6iJkfoNDtVx0h+F+JJ0dQZpwTg/3dS2pSb19c/u4TCPaTEKcxSKwlu
 UkSZoU1leQAXxtKVht/rS7shT6bHQxnsIMP7tMaRktDbfMEWzk2vFuSr+uozfuQ5kJPU
 3F8g==
X-Gm-Message-State: APjAAAUA+Hj0NWiVdEWdOT7vc9hyS6iU+nr4KwWLzWWeMNXlXT3k6gC/
 fI6XuxrxgFMKbTzR0p77pEurpg==
X-Google-Smtp-Source: APXvYqzk9BHBwOpSjsEO+DnEKaJxR99GL7ibPg5s4a2YFp1iHsfA6y6hU3vx6atjzY8D9Bdr0cfr0g==
X-Received: by 2002:a81:1388:: with SMTP id 130mr23630836ywt.36.1557282033177; 
 Tue, 07 May 2019 19:20:33 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.20.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 19:20:32 -0700 (PDT)
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
Subject: [PATCH v2 07/11] arm64: dts: hi6220: Update coresight DT bindings
Date: Wed,  8 May 2019 10:18:58 +0800
Message-Id: <20190508021902.10358-8-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_192034_669458_FB16359F 
X-CRM114-Status: GOOD (  13.89  )
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
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, Guodong Xu <guodong.xu@linaro.org>,
 Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CoreSight DT bindings have been updated, thus the old compatible strings
are obsolete and the drivers will report warning if DTS uses these
obsolete strings.

This patch switches to the new bindings for CoreSight dynamic funnel and
static replicator, so can dismiss warning during initialisation.

Cc: Wei Xu <xuwei5@hisilicon.com>
Cc: Guodong Xu <guodong.xu@linaro.org>
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
Cc: Haojian Zhuang <haojian.zhuang@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
index 68c52f1149be..5a34217d823a 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
@@ -15,7 +15,7 @@
 / {
 	soc {
 		funnel@f6401000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0xf6401000 0 0x1000>;
 			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
 			clock-names = "apb_pclk";
@@ -65,7 +65,7 @@
 		};
 
 		replicator {
-			compatible = "arm,coresight-replicator";
+			compatible = "arm,coresight-static-replicator";
 			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
 			clock-names = "apb_pclk";
 
@@ -133,7 +133,7 @@
 		};
 
 		funnel@f6501000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0xf6501000 0 0x1000>;
 			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
 			clock-names = "apb_pclk";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
