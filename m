Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3F81FB3F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jInQrt+IzoGRUNGPtIhTEMJ1OzJ4QCgQKwGDNpsaGGE=; b=g5QSsZRbc6qS61
	CWWCV+GxwZVoJeoBl4LAFI0QC1mI7KjK1uIewLeoKJJPxNFgKOX/ce2vN1yaCF5Fht444ERnfB3E7
	c1+khG4R848qGjPVQLEOUwSNotiAjcvvrPlvBiKXaARIm7v/Q4fqvQ6HOrHo/b7qelVLihf5Nk639
	HWVbVHVVTl4udupY3pKmFwRAo5YOYTdySROChUbMSxlgojWlPfun1ecUcJvwXK2F1sKaJZiRgSnix
	H+rZ9mDt5FWqZbQRu2giD0awRzM0Hj+xyzrMGAGgukw2mw/wwtDQJqXsa53xQWtkvbQyny1/mCWjq
	P7ss9Rf9cvosnxUz2Qlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCO7-0004tD-JP; Tue, 16 Jun 2020 14:16:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3d-0004pT-0R
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id q25so3194759wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wbc2pnbB3OBTDG8nCrQ0ZO/9K8+8OAOdCsSzY43cJ8U=;
 b=nyVEktSdoXCMtIrXFAb2yKXVkaA5SJQzXyQHtsh/1LaXRtDXlXdXj8eAjhColWBk2J
 SGliWBa2Z2euCaDT1iyq+U6Q7tk0WWXKYRzK1K+VeedCOFimxP4xyieUr8QdVhYNoWBK
 hANDAFWVPwVmV8mcB0BJTMs/sDVmHjwcm7JYdR6P7NoCqnIPQsKcKkQqtBCTDtE/bSW8
 mvH9jjqpz4gd7VcrFMETNWSZ0/tsU0+XEn0F5qn54ipbY4rEtSFVsVXDJ9QqlHR8qHkA
 /RoWDa3KWWZY0sXjmHJ8HVqJs0WgXtzk6O4GGsqKDhtuJJGYC/U+DIAmG5qFEj8xd2lV
 S6ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wbc2pnbB3OBTDG8nCrQ0ZO/9K8+8OAOdCsSzY43cJ8U=;
 b=OpaDb/NT/IZd5fmgCVUeUJxNC5aKMRAAH9of0wdfKfIUg5nQhFM0FyNV3xYnE5w9jO
 6IzLVh1RumTZtlgEMEGiHtLFhTxLF4lKUTHPhkCSIKhujUGsCQl5cVbSP0/WDZ8uLWwY
 Im0DLQrgL2Wzs2ZH92FsS6UGpR//oyAiRrJ+TY5znf/aAh1Odr0BugTu/A/kYZ7OzTx5
 NkwG+yd52tek9bFv0cdDL7ZYFavGZRvOzFRSDdwaXXh9/XmjvGhVVpchabRfRJXCjW+z
 a72OZUivAl++TWbFHGx2JpLWLS+zM6cCz/OWBk3s4TVhWzFkLVw6WuUgvAh9DErlwPBS
 0KvA==
X-Gm-Message-State: AOAM532y7q3yTuzkRMI1sv7YQs9uFPs35wtATk8KdS7IU1i4TOosyjDK
 fQ3F42q1qfx7EKzU9whJHkQ=
X-Google-Smtp-Source: ABdhPJw7Ne/U54AuM1vlB4mwhW8A1Pje6DrkDeyNYelZnKcA43bmqjMswzYv3makQFEhByGTlZ/Ehw==
X-Received: by 2002:a1c:4d11:: with SMTP id o17mr3256659wmh.37.1592315719144; 
 Tue, 16 Jun 2020 06:55:19 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id i8sm28364307wru.30.2020.06.16.06.55.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:17 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 64/73] arm64: tegra: Fix {clock,reset}-names ordering
Date: Tue, 16 Jun 2020 15:52:29 +0200
Message-Id: <20200616135238.3001888-65-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065521_257441_56C497D5 
X-CRM114-Status: GOOD (  10.24  )
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

It's very difficult to describe string lists that can be in arbitrary
order using the json-schema based validation tooling. Since the OS is
not going to care either way, take the easy way out and reorder these
entries to match the order defined in the bindings.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 1cd369ac48d2..a73050ec61a7 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -799,15 +799,15 @@ pcie@10003000 {
 			 <0x02000000 0 0x50100000 0x0 0x50100000 0 0x07f00000>, /* non-prefetchable memory (127 MiB) */
 			 <0x42000000 0 0x58000000 0x0 0x58000000 0 0x28000000>; /* prefetchable memory (640 MiB) */
 
-		clocks = <&bpmp TEGRA186_CLK_AFI>,
-			 <&bpmp TEGRA186_CLK_PCIE>,
+		clocks = <&bpmp TEGRA186_CLK_PCIE>,
+			 <&bpmp TEGRA186_CLK_AFI>,
 			 <&bpmp TEGRA186_CLK_PLLE>;
-		clock-names = "afi", "pex", "pll_e";
+		clock-names = "pex", "afi", "pll_e";
 
-		resets = <&bpmp TEGRA186_RESET_AFI>,
-			 <&bpmp TEGRA186_RESET_PCIE>,
+		resets = <&bpmp TEGRA186_RESET_PCIE>,
+			 <&bpmp TEGRA186_RESET_AFI>,
 			 <&bpmp TEGRA186_RESET_PCIEXCLK>;
-		reset-names = "afi", "pex", "pcie_x";
+		reset-names = "pex", "afi", "pcie_x";
 
 		interconnects = <&mc TEGRA186_MEMORY_CLIENT_AFIR &emc>,
 				<&mc TEGRA186_MEMORY_CLIENT_AFIW &emc>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
