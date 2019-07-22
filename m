Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD566F8B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XRxVgU16SkGowx5IMr+bXLp0o0mKhWlzeAJ6daRiOVM=; b=Y4ln02wE2E7oDx
	oCcWlgES46Ah9P4G4S2gEWGlpSxvl0SqXrYYngyIDW3sT88ildrVqtHMaceUE1aezp+H+J3z1PZQf
	zqJTOALegjCbJJh5V4wXP/yUrNKqD0U44Ffh+s8y03KjLWBHnL1U8dF0vyFKmZ5hDALOSJalmntAy
	H0/EpO/io2XP9BJOsQhV65csDwbsxTfGn+lqaCxGbRzZfT6ydBoIYyFyOdhXt9H4U0RX/pBZZwlye
	mJnPfwgoD/QvrtfG+a/MzEchl8Su1nLt7tgF7bIVBuN8aZ26ZJiq6jQwAcJVxe6xtwx4kjjsYep9P
	OOD8HT/P3va2g9suyVtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpQZO-0003NP-8N; Mon, 22 Jul 2019 05:09:07 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpQZ4-0003MK-RJ
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 05:08:48 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6M58f8j094913;
 Mon, 22 Jul 2019 00:08:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563772121;
 bh=SG0BY7NmARWHPZ46WvVxOLib4UKMaQ/abgenQMLS8pE=;
 h=From:To:CC:Subject:Date;
 b=MOW+KtI5PzXhXUYnhzvy+6XB0LJXGwc2/EyXxCrLVzsPcHa5lGYtGl/KVRq1jB/1O
 dub3kA6PzqfY2yGxggr9tiPSojozgvLqQvVyf4XolypJoTdPQdbpzE29FOSSdJAoNk
 R3j5DUJihG4zopf5J4xLL5PccOjUdjToqvZ4mMU8=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6M58fCK010931
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Jul 2019 00:08:41 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 00:08:40 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 00:08:40 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6M58bwL039856;
 Mon, 22 Jul 2019 00:08:38 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 0/5] soc: ti: k3: Allow for exclusive and shared device
 requests
Date: Mon, 22 Jul 2019 10:37:52 +0530
Message-ID: <20190722050757.29893-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_220846_993177_48359499 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sysfw provides an option for requesting exclusive access for a
device using the flags MSG_FLAG_DEVICE_EXCLUSIVE. If this flag is
not used, the device is meant to be shared across hosts. Once a device
is requested from a host with this flag set, any request to this
device from a different host will be nacked by sysfw.

Current tisci firmware and pm drivers always requests for device with
exclusive permissions set. But this is not be true for certain devices
that are expcted to be shared across different host contexts.
So add support for getting the shared or exclusive permissions from DT
and request firmware accordingly.

Changes since v3: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=103447
- Rebased on top of v5.3-rc1
- Updated power-domain cells for j721e.
- Mark the console uart as shared in am65x-base-board
- Added Reviewed-by from Rob

Lokesh Vutla (5):
  firmware: ti_sci: Allow for device shared and exclusive requests
  dt-bindings: ti_sci_pm_domains: Add support for exclusive and shared
    access
  soc: ti: ti_sci_pm_domains: Add support for exclusive and shared
    access
  arm64: dts: ti: k3-am654: Update the power domain cells
  arm64: dts: ti: k3-j721e: Update the power domain cells

 .../bindings/soc/ti/sci-pm-domain.txt         | 11 ++++-
 MAINTAINERS                                   |  1 +
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 44 +++++++++---------
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       | 10 ++---
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |  6 +--
 arch/arm64/boot/dts/ti/k3-am65.dtsi           |  1 +
 .../arm64/boot/dts/ti/k3-am654-base-board.dts |  1 +
 .../dts/ti/k3-j721e-common-proc-board.dts     |  4 ++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 20 ++++-----
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  6 +--
 arch/arm64/boot/dts/ti/k3-j721e.dtsi          |  1 +
 drivers/firmware/ti_sci.c                     | 45 ++++++++++++++++++-
 drivers/soc/ti/ti_sci_pm_domains.c            | 23 +++++++++-
 include/dt-bindings/soc/ti,sci_pm_domain.h    |  9 ++++
 include/linux/soc/ti/ti_sci_protocol.h        |  3 ++
 15 files changed, 136 insertions(+), 49 deletions(-)
 create mode 100644 include/dt-bindings/soc/ti,sci_pm_domain.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
