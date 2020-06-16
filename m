Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82601FB411
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f60TtVilrvk1b8F9d0cataqiApoDu6zrf+7xGI4rCJw=; b=IwszCpqpy7Ojb+
	QAhQWyjpJ5FjQYwo/pJRtUYjwLWoEY3aXtkoeXCJKdYR0cbOTpBM4q8lgMCmzulAzAiBW8R0ExVlD
	ZkmbW9sh0IK0QRWRazEB2gY2Tlg0Vont8nZ1HB6dy1KPgX/EfemK3/HtJgyeDLQo49E0bn4qUKAf5
	hNLXUWft9cLvKsRWw4cI+XUQAFQCH0RfqwPDrwUfrJ7a7iqGsGTqHbkBLY0phnFoA+0ECS7A/3e5d
	88F/9KG2gIKhavk5GpJoC2zbqgAXOxYKMl5Wg3BOPZGNPIuv9QPIF5eynwsuXf8gp626wSOQt1y4k
	YO/CIwUU1Piwx6WS7MTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCQu-00077J-Df; Tue, 16 Jun 2020 14:19:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3v-0005HC-D7
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id b82so2986467wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DGzB0/0/il17VNqcHra8V8a8lDPZ/qFFOjjsMWa0K+o=;
 b=GfDCizPR0iMBSNcQN8A211laGhsls+R4319HIstBW6C1SFDmd/9irZfxnoX4S60PUi
 HAXLjAdQcFcuFGKlmV+i9AAvQWHeKyZ0rpF+LOpkU7bD/c8wk8ThMdrpTxOdVfvqSelE
 joNh0xtDepA/6i5QrPygN0+5v0GyU+oj+u7c5lIfWZwonOFFs8kSowxhKjCqLiC0T0AN
 xXHu6cbW10RvD9MF5OZ+y6PV/fUhpG3ktuRh8PyurPWiZ82zP6Zb1x99u2ezmDW57DIt
 2wYSYmcqVsB6O7lVqwzBHBRG6QiElal9y5jT8rdQzApMiceDzT6IPrnhuamv4Uztm93/
 tAFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DGzB0/0/il17VNqcHra8V8a8lDPZ/qFFOjjsMWa0K+o=;
 b=c+eoFFotgdZeekxDdNLuIDy3XQCy6GRO/IOw5uGw0Z2nHYV8W2uhMN76YS2yoXNODO
 VR2kRUkQIMy+y62cfmts1Fp9BTZX6GnZPmgNvPaVBVVHsak7XbtL+myRb9NeQx85t2OP
 sTo4FWIIwL/vaicNTfgtKVCJBWan4871T8mOVDOF5L9V3eW3z1dCahIyXPmLbpboX/9A
 ilZFN7rkTSmXKX4+Dyd3uxlzt756DwGhAbBQfb64utkam5HecADH4Pz10kHApcRIIHKc
 qnSIpc0vwGJkM4A4ly75NTW0lknm22DwouvIRBnsiHho3+HIv8UT69FJusBNe9w6oD7V
 1qLg==
X-Gm-Message-State: AOAM532+LmD6bUXv27ROcFvt1bMbJpIGC84M9N/qP0lPJblOXQoItYzc
 HSKVjZuOPlxmToJlSLvW2P8=
X-Google-Smtp-Source: ABdhPJyvOJUx8J8tverpbBVlKwlWUXIE1Ix8D7gKUxJaOT4kLqxfAok6NyTmm+d7P2I1R0jX1hubiQ==
X-Received: by 2002:a1c:7c0e:: with SMTP id x14mr3232857wmc.1.1592315738010;
 Tue, 16 Jun 2020 06:55:38 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id a1sm4008540wmj.29.2020.06.16.06.55.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:37 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 73/73] arm64: tegra: Fix order of XUSB controller clocks
Date: Tue, 16 Jun 2020 15:52:38 +0200
Message-Id: <20200616135238.3001888-74-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065539_543726_E02A43A3 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index c265211f8a84..b9c6ba707ef9 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -997,8 +997,8 @@ usb@70090000 {
 			 <&tegra_car TEGRA210_CLK_XUSB_HOST_SRC>,
 			 <&tegra_car TEGRA210_CLK_XUSB_FALCON_SRC>,
 			 <&tegra_car TEGRA210_CLK_XUSB_SS>,
-			 <&tegra_car TEGRA210_CLK_XUSB_SS_DIV2>,
 			 <&tegra_car TEGRA210_CLK_XUSB_SS_SRC>,
+			 <&tegra_car TEGRA210_CLK_XUSB_SS_DIV2>,
 			 <&tegra_car TEGRA210_CLK_XUSB_HS_SRC>,
 			 <&tegra_car TEGRA210_CLK_XUSB_FS_SRC>,
 			 <&tegra_car TEGRA210_CLK_PLL_U_480M>,
@@ -1006,7 +1006,7 @@ usb@70090000 {
 			 <&tegra_car TEGRA210_CLK_PLL_E>;
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
