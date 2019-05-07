Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 814A615839
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NVhQnHwc9gnjN2NngW57K+fsuRP1FRY3+pXCWY77luo=; b=fdKjrWShvLi/2dNSmwFU/7WmjC
	REQJ3EnFlP0302vUuwF1KGCGTKUSh+2mcIZvmWLWo7fkgrKBooUrfMU868p6CbkSSzWbt1vn1dKZJ
	hjSvmqZVQ8c8fvaDEt/s+OzTIp6BgWZkRNHCaM1ujsETfh/rsrXFgQXHcu49IPOvDEMGcItDSEltG
	ExZynz6GUHNsVBhuh4wZyCNZ7VbpoMBy2x31vUButbJ4b/0yo1j08QPV/LvRd13m1sTMKhnNvCxSD
	nxzsOaVvWBCGIc6RIkXxn8g6FLggGFe9U8R3Cn36/dYqf4lheR4dyqqT/wvUXRsTY6isX4Auo+93d
	TS1jV/Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr75-0007DD-LW; Tue, 07 May 2019 03:49:55 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr65-00060z-Co
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:49:21 +0000
Received: by mail-yw1-xc41.google.com with SMTP id p19so9291661ywe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+6nVzL732ATDYMaa6BLwW6BJNUlUmi3mV2wlrBHgFQs=;
 b=aH4oMuWx+G5wk2MaRTrkYaz9xquDTkMq1XEGwdh2tyqQttxbzFIa0wCQ/++vXe/YtP
 w0npk+10Rg8az0gShN6Kj14h87/Mx29yOcKRjk5g6agna00+1paw0FfhrAYKvkI7n5Lw
 mZYXg1kPwZ6XtLNr79/oeYPPr4xvl4yFTuHdExQZD/Nx7UDAaeFz8Fs04EgJEZUvrOYs
 5PMmEBCdhi8lUN3ut0r0nC5u2VHf8a+fACrLuFypM7AeqkIjIlj6dEap1qln+D7Eehng
 XiNfYBf64KwCDaE7DUJRZookDj4fELXlgj+kip3thVc8yfriElsFzb8OXabEviDwfJU/
 4ybg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+6nVzL732ATDYMaa6BLwW6BJNUlUmi3mV2wlrBHgFQs=;
 b=piE2PNoIs2KfpKA9iHK8czqX/hnoJBqFlq0GWoaS3tUTVeB/yDOFGOwlCHaUcz7hun
 PKOqUIHMiXT/AjUtdDdEtboj27cAoDhEjQFyM7rch5yEiVuqJ2Eb/c/yvD6dyiJAfMbV
 XWACTE8baZiM/gnK0DbRgbCI1KgBbJ/VHUMSqXK/d30Uy2VcfyXaD0ZHC4ZYvasIwnPD
 u66SlSn8KfM5yL4e3P6/IO6AoR6ffvMlzqDkqXWb6+X1F6AIR7IlVwfoZbJRJNRA4JUR
 drVvjYAeU3j3qNKPYObxHUCi90n1EHRL4Cr9u24ZTA+avgY5tqfYdB1vnoxY4GbehF3N
 M+tw==
X-Gm-Message-State: APjAAAVQc82H0JvDYqtzw/JPMd19bsxR2JDNdUaPwQkyHQGtyNnoI26R
 K2bUdxJ4s/AKpjjl++ujc0LQAw==
X-Google-Smtp-Source: APXvYqxAms9ss6puYT5ObEWZl2QhgdnKFXaLg3+hkosjI+Nai7aFQhvWwMfwOe8oSBiZbfvpGZ4TBQ==
X-Received: by 2002:a25:6b10:: with SMTP id g16mr1382896ybc.510.1557200932623; 
 Mon, 06 May 2019 20:48:52 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:51 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 12/17] arm64: dts: hi6220: Update coresight bindings for
 replicator
Date: Tue,  7 May 2019 11:47:29 +0800
Message-Id: <20190507034734.20622-13-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204854_085900_93F356A4 
X-CRM114-Status: GOOD (  13.35  )
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
Cc: Haojian Zhuang <haojian.zhuang@linaro.org>,
 Zhangfei Gao <zhangfei.gao@linaro.org>, Guodong Xu <guodong.xu@linaro.org>,
 Wei Xu <xuwei5@hisilicon.com>, Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight static replicator bindings.

Cc: Wei Xu <xuwei5@hisilicon.com>
Cc: Guodong Xu <guodong.xu@linaro.org>
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
Cc: Haojian Zhuang <haojian.zhuang@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
index 68c52f1149be..d87a4fc5d6c7 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
@@ -65,7 +65,7 @@
 		};
 
 		replicator {
-			compatible = "arm,coresight-replicator";
+			compatible = "arm,coresight-static-replicator";
 			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
 			clock-names = "apb_pclk";
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
