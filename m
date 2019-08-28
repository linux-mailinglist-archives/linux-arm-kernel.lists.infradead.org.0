Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5231A0862
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 19:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+3piHw0aNNMJBDWohf9T1cIg91k6cbphqIr9v+MUCtU=; b=eWzBZQgKWHFsQq
	8rI5yWZprXbvnVZrNetkkfR1oIV3no++bkSWTRplMWxogs60NgBScmMaOUxozBRvzeMvTOsjirDHG
	ukAvuYpKuV5NYJvTxZ3+401VXA/dGJxyn9UvDv5IKVhD6UvgxzKpVzUM/DPZxkUYEVlP9PqeS0Vd2
	yMUvsSkXegS0XtotZy8IlFRuVAEFPkYNpJbumg+zsYyWbY9HeaKzAKlgi+La1m4v5klvakV/cx3Es
	z4jGhsGkG0ScwS2q4QvSxtxGnZJNsfKzXHgDr2RpgjrdaqV+qHZBJ2F6ybnSC9TXmheSQqKwrKbHo
	QAXcff62csWNikswD0gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i31kt-0004YN-9M; Wed, 28 Aug 2019 17:29:11 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i31ki-0004XX-B2
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 17:29:01 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d66b9dc0000>; Wed, 28 Aug 2019 10:29:00 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 28 Aug 2019 10:28:58 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 28 Aug 2019 10:28:58 -0700
Received: from HQMAIL110.nvidia.com (172.18.146.15) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 28 Aug
 2019 17:28:58 +0000
Received: from HQMAIL107.nvidia.com (172.20.187.13) by hqmail110.nvidia.com
 (172.18.146.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 28 Aug
 2019 17:28:58 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Wed, 28 Aug 2019 17:28:58 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d66b9d50000>; Wed, 28 Aug 2019 10:28:57 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V3 0/6] PCI: tegra: Enable PCIe C5 controller of Tegra194 in
 p2972-0000 platform
Date: Wed, 28 Aug 2019 22:58:44 +0530
Message-ID: <20190828172850.19871-1-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
X-NVConfidentiality: public
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_102900_391230_42A7C0E8 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, vidyas@nvidia.com, linux-kernel@vger.kernel.org,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
 digetx@gmail.com, kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series enables Tegra194's C5 controller which owns x16 slot in
p2972-0000 platform. C5 controller's PERST# and CLKREQ# are not configured as
output and bi-directional signals by default and hence they need to be
configured explicitly. Also, x16 slot's 3.3V and 12V supplies are controlled
through GPIOs and hence they need to be enabled through regulator framework.
This patch series adds required infrastructural support to address both the
aforementioned requirements.
Testing done on p2972-0000 platform
- Able to enumerate devices connected to x16 slot (owned by C5 controller)
- Enumerated device's functionality verified
- Suspend-Resume sequence is verified with device connected to x16 slot
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
	t=1567013340; bh=TvQY7ZhhxcvoKbpcEAh6qHqIQEasISWH+/X/STdQQk0=;
	h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
	 X-NVConfidentiality:MIME-Version:Content-Type;
	b=gVtBiB2IR+pKYaZJQ+f6BYQX23e2leD7q8vdf+vr0+12GlPQc/30oFhIDgzGmLr3W
	 81mgV2Pp3bLNf9oNOB7tnv+yjoJK+qPGAB0bQ+VPMKGOkpvVfFtN4K3D+TkNjEQnQc
	 eBs35Pzc7zQ3jso4y80hoeIGegqfu4qLvORCW3qsy7OuPxjELUpGKvJTozekRSZVw3
	 voa570Uvaiotu9UgYqdAyJe0S4iuNUmJ8eWJDZLb9zkj1gfWhuQaDxt6bOMK8pyr7e
	 SVhNP0p2cTOaV0ALtd16tvi7+vRmcV4uQeArl0l1XPwxwHkR6ShLYbyji3Zb+JxJGN
	 vrTsP917B385w==

V3:
* Addressed some more review comments from Andrew Murray and Thierry Reding

V2:
* Changed the order of patches in the series for easy merging
* Addressed review comments from Thierry Reding and Andrew Murray

Vidya Sagar (6):
  dt-bindings: PCI: tegra: Add sideband pins configuration entries
  dt-bindings: PCI: tegra: Add PCIe slot supplies regulator entries
  PCI: tegra: Add support to configure sideband pins
  PCI: tegra: Add support to enable slot regulators
  arm64: tegra: Add configuration for PCIe C5 sideband signals
  arm64: tegra: Add PCIe slot supply information in p2972-0000 platform

 .../bindings/pci/nvidia,tegra194-pcie.txt     | 16 ++++
 .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 24 +++++
 .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  4 +-
 arch/arm64/boot/dts/nvidia/tegra194.dtsi      | 38 +++++++-
 drivers/pci/controller/dwc/pcie-tegra194.c    | 94 ++++++++++++++++++-
 5 files changed, 172 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
