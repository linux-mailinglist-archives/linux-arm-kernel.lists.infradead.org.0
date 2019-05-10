Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBF3199DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 10:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=poFClsq41fZDd3kPmwZuQHZmIhzzChpGC5GmpKv5Kw0=; b=kPIArb8VaYUTZ+
	FRVXuticX5XTv/fP2lQf7226h86wmAYK7c0gtq4MoxdBiACPjBxdUci4SawlrNRVGXIiPCOl9bfhd
	ZjcA2+Ix2EcxXXnwbLmsSMdXOKo7a79i7lkg2cKJIMmdx9/vdo8b6xrms7admZjNxC6i8MYISOq1a
	49VbetuyjyabDHGQxDPM4K1e/s19xl8eeurd9/Oy+4gP+8sitwOkzUQ7B58DmAoudY/JN8cmHzIHM
	rEt+n34zujYNANS8xu1yGkOiuwL2cAXkAb7DnZhEwIKm3OgKu4jL7lh4j95PRotiVv68GT0qQAASZ
	ldVtL6DBXErcEQyEK3qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1Bq-0002Rz-6t; Fri, 10 May 2019 08:47:38 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1Bg-0002Qd-Q1
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 08:47:30 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd53a790001>; Fri, 10 May 2019 01:46:49 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 10 May 2019 01:47:26 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 10 May 2019 01:47:26 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 10 May
 2019 08:47:26 +0000
Received: from HQMAIL105.nvidia.com (172.20.187.12) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 10 May
 2019 08:47:26 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Fri, 10 May 2019 08:47:26 +0000
Received: from josephl-linux.nvidia.com (Not Verified[10.19.108.132]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cd53a9c0001>; Fri, 10 May 2019 01:47:26 -0700
From: Joseph Lo <josephl@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>, Peter De Schrijver
 <pdeschrijver@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, "Rob
 Herring" <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V3 0/8] Add EMC scaling support for Tegra210
Date: Fri, 10 May 2019 16:47:11 +0800
Message-ID: <20190510084719.18902-1-josephl@nvidia.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557478010; bh=N2tbrMr6hsnS3EP9epK7wkCJP3AqLxx9RhmdE0LuuA0=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 MIME-Version:X-NVConfidentiality:Content-Transfer-Encoding:
 Content-Type;
 b=JDXTC0ShvT3w5hrdXsHExAAKIoU+7v4FX5tnkfde6g7ypnl3sEgKXtaLcvRS9INaV
 7xkXFDXYqOZM4e6mJUx1WFemkwMypOd/NpKJ7Zam5ieCBMPhAeJpg70TYDa3Kl9jDI
 Z7hGMf3P9w58fjC6LYpYQ4kXDJGvCFva2Ba7Enl2HDTzRaIrU19jHvFH65Jw8kXtDs
 whGMueGcGpkqtDeGaB0VsrTb+T7/H9wZ6Z8gxjf8I/Z1F4sKZNcNpFor0tXchihXHl
 IWTUDQxsrJ+dk5wlhbc8X2YkTHNmTSAvnDhaQSLdyrW4ORv31lRhsbarTYDGtwBQY/
 BZFbjOhsdBsVw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_014728_857897_CE6B2B77 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Joseph Lo <josephl@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series introduces the EMC clock scaling support for Tegra210. The
new version has a significant change, which drops the EMC table bindings
and replaces by memory region node of EMC table.

And most of the comments in V1 have been addressed.
Thanks.

Joseph Lo (8):
  dt-bindings: memory: tegra: Add external memory controller binding for
    Tegra210
  clk: tegra: Add PLLP_UD and PLLMB_UD for Tegra210
  clk: tegra: Export functions for EMC clock scaling
  memory: tegra: Add Tegra210 EMC clock driver
  memory: tegra: Add EMC scaling support code for Tegra210
  memory: tegra: Add EMC scaling sequence code for Tegra210
  clk: tegra: Remove the old emc_mux clock for Tegra210
  arm64: tegra: Add external memory controller node for Tegra210

 .../nvidia,tegra210-emc.txt                   |   55 +
 arch/arm64/boot/dts/nvidia/tegra210.dtsi      |   33 +
 drivers/clk/tegra/clk-tegra210.c              |   85 +-
 drivers/memory/tegra/Kconfig                  |   10 +
 drivers/memory/tegra/Makefile                 |    1 +
 drivers/memory/tegra/tegra210-emc-cc-r21021.c | 1953 +++++++++++++++
 drivers/memory/tegra/tegra210-emc.c           | 2123 +++++++++++++++++
 drivers/memory/tegra/tegra210-emc.h           | 1037 ++++++++
 include/dt-bindings/clock/tegra210-car.h      |    4 +-
 include/linux/clk/tegra.h                     |    5 +
 10 files changed, 5288 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.txt
 create mode 100644 drivers/memory/tegra/tegra210-emc-cc-r21021.c
 create mode 100644 drivers/memory/tegra/tegra210-emc.c
 create mode 100644 drivers/memory/tegra/tegra210-emc.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
