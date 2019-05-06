Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA9D151BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QtbRsQUECEtwLJ2/2BtDuv4U7nZSQjQu7r6PxKL9XiQ=; b=JIIskY/TQMOx6P
	ItHAfclOYbUpXxpdqAiqCH+2aguaMw/8oOmpoCMGUWdjj2V9p6igzuLATnxoAOlcmW5Mnu1u/k6uz
	maUNha4w+N/PkQF4WoMeFfPL1txCt082tueW/ZXqwxtqcIgSbq0YOmqV6UDAAZMENPSm+QN4lWODP
	PTfVPEIX0ydfcn6cbjIFlLNzvduaAglBg9z9tKBrt2gqEXQ4jcE8oskmuv+8LSA2/CjK7u7ijZNci
	xzUQ9oP2g/ozkp0m9cwIyyJEGROqCLS2hs2ehmj8NgjALAf8EYpnxiC+2HqRFHIaUnYpW+I9Sench
	AdyNZbkxMVnR9+3l8+kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgaB-0002v7-JF; Mon, 06 May 2019 16:35:15 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgZt-0002YQ-DC
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:35:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id o25so5475719wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yRZ8RtyrKcj3qe446aHM7OBWQlNxnyULMIUjwVjZPaM=;
 b=l+MYvV3gBlHfyt2z8vZRf+BQn7AEwevzadY92PN9vb5JHgS0fBRmoLybgLdB5zli6U
 F2kM0hGHmHd1cp73KCkXvlIpUwE4s/W6HzwX4bSgHBfytWNp5plB0zGts9BsN2oztMlP
 D8/CvlBFJ+Ji1Nfs2S/CvhoksCTFSfBfiCRnY1BOyzd4Gi9f9M3AGWEbGAGqajajAnYF
 PeFy8WtghhBJ/bAFiPIYpjb/JneECQoSakJZhRoiJSGg1JA7VW7m8k5Hx7aOgP5hzIdh
 lI5CRa9mqJM0OzeWtCNQuhmKKwvQUqq3RBlALX0yWzvwL9xwDDr1cEoA9e74zakuA2hG
 5sew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yRZ8RtyrKcj3qe446aHM7OBWQlNxnyULMIUjwVjZPaM=;
 b=f6wQvXJoKJz87z4WRrYrFwmO2AvKgoYGnQL3fclOKBeGr/sbKKZvAvoT1ZWLRrfR4R
 1cmhoE/zjyt+LrzNEx04UWYwNYpw6WTpLm87slc/Qy7oEQTBSq3+ru5dRGa5f0n+FwME
 dPZRNQCy7xf2HlSC6T81Ijd/QGeb7V4OhFE/2L8rfkpQABxyDuUI7/8wmxk5XijVPSYU
 OhXyWv5J10Q8lkFPzQl96y96aWoZe3Q1yvFXcx2xXITfDdwYW+RMRjNvvAZ/zir8CJUL
 eddATx+uSvI7+ey+Bk7QewaaWJA/fcUo8bidTBWW93mDOJje8Zr/KR5dgJaGMdKmH5WX
 u3vw==
X-Gm-Message-State: APjAAAXDOgkfcdIOwUKS29D0/vKY+szQP3hbGQ6VUPSl9yvNZ0zc52aa
 hEv7Mi0XRXbP7B2P58FEfvkdpdTAluo=
X-Google-Smtp-Source: APXvYqwz1UHDAQ9MLyi7u8ufDnk20pfGLcu+zwVagA8BRRoCDQKb3AyLg9G/1W5qWTgFEMxzHAfsPQ==
X-Received: by 2002:a1c:2ecd:: with SMTP id u196mr6858651wmu.111.1557160495254; 
 Mon, 06 May 2019 09:34:55 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id q24sm9624675wmc.18.2019.05.06.09.34.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 May 2019 09:34:54 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] arm64: tegra: Enable SMMU translation for PCI on Tegra186
Date: Mon,  6 May 2019 18:34:53 +0200
Message-Id: <20190506163453.3852-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_093457_595107_04E2C6A9 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Commit 954a03be033c ("iommu/arm-smmu: Break insecure users by disabling
bypass by default") intentionally breaks all devices using the SMMU in
bypass mode. This breaks, among other things, PCI support on Tegra186.
Fix this by populating the iommus property and friends for the PCIe
controller.

Fixes: 954a03be033c ("iommu/arm-smmu: Break insecure users by disabling bypass by default")
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 3fb60f6f3a93..426ac0bdf6a6 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -673,6 +673,10 @@
 			 <&bpmp TEGRA186_RESET_PCIEXCLK>;
 		reset-names = "afi", "pex", "pcie_x";
 
+		iommus = <&smmu TEGRA186_SID_AFI>;
+		iommu-map = <0x0 &smmu TEGRA186_SID_AFI 0x1000>;
+		iommu-map-mask = <0x0>;
+
 		status = "disabled";
 
 		pci@1,0 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
