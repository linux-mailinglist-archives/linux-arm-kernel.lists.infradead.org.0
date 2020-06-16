Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9257E1FB354
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiaDe5brY4WHD8p6HorTlUKk4G1PYWIYuE65KODU7PE=; b=XkYX7aEf5/LLgA
	B70S0uK8Zam+3Bp5oh2LbwCtc+57dAPhKHRZY8K84RtrnRH/cUSoDx6JuRHpx6td3T6DNSt2d5Scm
	DH+s0Zu9m/thizg7+RVNl8XdlEegkQOeMFa6nAwXcEmMBaJKzw/TK+J1QtCisl0z5dvsj7RprUs6/
	0SFXPpAXdWJdv/I018f0l7uL/J+MHZZFf4UopLdi1ssXo8aubb13mWRcWbvB5Kto+9W6tnlm5ucpr
	MsWxnAfnDpJLhnUnCAkHasLTsOiOo9bdzjNLbCViNh/FoxFOsJKWCd9IrMdUtvYJN/iL0yxh2mYRN
	RVrzOniQuTq9Bj0cRtYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCBM-00049i-Bx; Tue, 16 Jun 2020 14:03:20 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC23-0001iF-Ao
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id q11so20889838wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1hzh7RbaArgZesWRTqDN/FeTVQzKBLSZlz7exAjOze0=;
 b=BBE6diyY98Clf7rBWb0sGxUZG+94G+k5yBejFWt18I8AqePPpW3KvTCx90cGKglNJU
 fic1UEDuhg75rs1f5P96aRW1OS12e2O73f/A3LogF3Fgcvb605UpmVK29YRQHWjZqZkA
 Yc7yJP3TBAvq9UfZ/HgOB/ganbZAyo7zWC8zGPuO18Ailw/0zjG7YSn9jNl+ozBH1DNy
 dl+IzfpoKGhL0SpyqVBLplZkDQfNDtKJM5YJATb9cOo4o5gm7Brq/lRvXiubVQH6px+U
 1cHH2SWgCpsGPb3KFzmAeycOUiaYkciFKMuKgCG8V2hqYS3F92imlwGRTJMIbqR8R9ej
 uMoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1hzh7RbaArgZesWRTqDN/FeTVQzKBLSZlz7exAjOze0=;
 b=RFmMkAw+UzSZAMZjBPkJ2Tqaeu8wnGNrHY492rSZKI6rVE/ltx3KzYl6gGclsjliYG
 /i359443ZIemAOyq0WC4nN5kdz0yhnApTOMAkop13yQ8bMK0ZUj/zM07lrikM/HKdzQs
 p/tT73mzLoLCN2TyFVA0nuUbv4Ib4PZMkd2iXLWCiuAuTG0ngFTcEySmJFXg/kzGTRge
 IJxOZKqtUPhwmw93B6YDviFTVTGL4QIPUeEX3W2HkQrrxCDShfp9XTNVDmNI14W4vH9s
 NpBZRCtQD8xmVP1mVBpBz0LVoLBpN/vmRR8mU/RAOtVkmLMFaICxbnykz7hSXxHWhGjW
 VL4Q==
X-Gm-Message-State: AOAM531xoRGlYXYZXij2FNK7CR7OmmTm+ivkCsz172pmuoZpY880T/GN
 3X570OlxoxoSlFDwrJCsm/SCtxRf
X-Google-Smtp-Source: ABdhPJzMz/BaDg4ZelBnXNDvNp1+Uhdm3/Sxq/uv/BGMXs2RJkskuDLu1IVdwz34s+jI8dVzp+W8+Q==
X-Received: by 2002:adf:ff8a:: with SMTP id j10mr3131917wrr.405.1592315622168; 
 Tue, 16 Jun 2020 06:53:42 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id a3sm4064332wmb.7.2020.06.16.06.53.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:37 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 23/73] ARM: tegra: Fix order of XUSB controller clocks
Date: Tue, 16 Jun 2020 15:51:48 +0200
Message-Id: <20200616135238.3001888-24-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065343_463622_C13F8D35 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

This is purely to make the json-schema validation tools happy because
they cannot deal with string arrays that may be in arbitrary order.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra124.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/tegra124.dtsi b/arch/arm/boot/dts/tegra124.dtsi
index 98cd7962a559..3840019ed5c6 100644
--- a/arch/arm/boot/dts/tegra124.dtsi
+++ b/arch/arm/boot/dts/tegra124.dtsi
@@ -680,8 +680,8 @@ usb@70090000 {
 			 <&tegra_car TEGRA124_CLK_XUSB_HOST_SRC>,
 			 <&tegra_car TEGRA124_CLK_XUSB_FALCON_SRC>,
 			 <&tegra_car TEGRA124_CLK_XUSB_SS>,
-			 <&tegra_car TEGRA124_CLK_XUSB_SS_DIV2>,
 			 <&tegra_car TEGRA124_CLK_XUSB_SS_SRC>,
+			 <&tegra_car TEGRA124_CLK_XUSB_SS_DIV2>,
 			 <&tegra_car TEGRA124_CLK_XUSB_HS_SRC>,
 			 <&tegra_car TEGRA124_CLK_XUSB_FS_SRC>,
 			 <&tegra_car TEGRA124_CLK_PLL_U_480M>,
@@ -689,7 +689,7 @@ usb@70090000 {
 			 <&tegra_car TEGRA124_CLK_PLL_E>;
 		clock-names = "xusb_host", "xusb_host_src",
 			      "xusb_falcon_src", "xusb_ss",
-			      "xusb_ss_div2", "xusb_ss_src",
+			      "xusb_ss_src", "xusb_ss_div2",
 			      "xusb_hs_src", "xusb_fs_src",
 			      "pll_u_480m", "clk_m", "pll_e";
 		resets = <&tegra_car 89>, <&tegra_car 156>,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
