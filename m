Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA951FB30C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwrBZj8QLvO6x86+lK38KpBlln7p4fitZVdFgQ+9fAA=; b=nuzdPXegbmiUYc
	5so0+ECDFId/pt5iogKTb0h3UQvFbdN45lwCHEpJEWpu8U1WUZHEy78ia4+aMy2OmSo8NupRRF+BQ
	cpayVlf1aqqKPQ5zFQXPRegKcULq0/J0YKUFLZsmQWgyEU3JFB0ii84eC2D4mt3Aj/TBZsBglidL6
	Nj3BRCQXPfx5YsHoDdyBMAtpZnpBoDKVCq9nN4kCeo4Kq82fEo8YIIH1iXawNOrLQ7TZ1hm/Ket+F
	kXAIlZU5S3uffM5PFB5LI/LVMVDBG/woyAZZkJvImVxBvHc+9d5gpHmpvgHdawPTE5JToE5/OVGk0
	Gt2selY94YtMiQHOJ/QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC6V-0006e3-JM; Tue, 16 Jun 2020 13:58:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1Y-0001Ll-Ir
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id d128so3174718wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CsJOLSAV7jrFDpiST38oXr0om9CoIKPDCCZXQlS9m+Q=;
 b=C6nNcEvDBdDRoblLxhN8crE9V0SWAqmjp8IXfNd70fYoZSj08a+KNMXYpm2Ep0mkGs
 04ztt55i2rIDsg9NqBibK7gjtsS1RsgWepHq96duxmdHx/BqXi8yjtlTKea7tETXxnBd
 TP2mOSmfu8UbeN+b9tinPBznIPZbFp2rgCRwTErfeBhm8pcP1lVdlMMVO051Bx3Y6YUq
 JMiWnei717U/W4qh1myEpoaEeNHN1gBa8eJ1gE1k6HBwxSeewyADUMg/b9/OX6zqWKzC
 YI5yy9NuKEP22YheElSCpdqbuyiw3AFV29GaD/rfl66C4/o6VF8JGcO3IrvBK1PCJ5En
 ajMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CsJOLSAV7jrFDpiST38oXr0om9CoIKPDCCZXQlS9m+Q=;
 b=G1wGXU7UETsYW3kj/Int9vAzekH+5UfTT6Kx8g87iuyTb8tmbCq4IQcWMLTxNIl3cb
 zYgBi5rEvx+qpXD1Ifv5+OpEXG+7sUuR44e7eN/m3UNEXy1lpJMxdEokPFeq7v6EGBX0
 sL4+iZkk8AvbCYk0ZwjTqYzo11Ad35uRRCIXhdZioQsu6I4xkIadIrmvqwNkHQhlPTLH
 AJ9JPLRO2JvOk49hCLjaTVw3PKRnQ6fIt6ISq4Jz5HVD4WZe2DH4vzYXQtX+dpE8YBmw
 ylx/1OFG6qWkBWlepPsu2GwcMsecX8coYwolCPr3X8XBbjijOUYurxKILWImwuV+YCxu
 uI2w==
X-Gm-Message-State: AOAM5331WfNvoAutqvTXlIjKM6KOTvAHZmDJy0WvCa7gKn9hvt1xZvMQ
 Gs2IONVyuZr2eTXx1YwvsHU=
X-Google-Smtp-Source: ABdhPJzjqNfVbW94/FWweHsM1LMjOQFMMEaox+XR5ER4LbkHjLbu5AdkLhtiA+njLuz+SS46g3QF/g==
X-Received: by 2002:a7b:c1d4:: with SMTP id a20mr3238882wmj.153.1592315590607; 
 Tue, 16 Jun 2020 06:53:10 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id r7sm3881747wmh.46.2020.06.16.06.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:09 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 10/73] ARM: tegra: gr3d is not backwards-compatible
Date: Tue, 16 Jun 2020 15:51:35 +0200
Message-Id: <20200616135238.3001888-11-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065312_653527_5BFEF70F 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The instantiation of gr3d in Tegra114 is not backwards-compatible with
the version found on earlier chips. Remove the misleading compatible
string.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/tegra114.dtsi b/arch/arm/boot/dts/tegra114.dtsi
index d583dfba688f..392f06107b32 100644
--- a/arch/arm/boot/dts/tegra114.dtsi
+++ b/arch/arm/boot/dts/tegra114.dtsi
@@ -46,7 +46,7 @@ gr2d@54140000 {
 		};
 
 		gr3d@54180000 {
-			compatible = "nvidia,tegra114-gr3d", "nvidia,tegra20-gr3d";
+			compatible = "nvidia,tegra114-gr3d";
 			reg = <0x54180000 0x00040000>;
 			clocks = <&tegra_car TEGRA114_CLK_GR3D>;
 			resets = <&tegra_car 24>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
