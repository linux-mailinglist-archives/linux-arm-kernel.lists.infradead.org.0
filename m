Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45339F929E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CVQjizBlRU6zpIM62YuQ+i+Wp+P0WExaJ4MMBy3acpo=; b=U9JUsEzIS9xlXw
	p1Rcoh+D0E3HsRx8clsfYBbXajou/s36BvWsvFWumeA5JZ8JChA/HEBIVALxlM2y/yCDC3BG3CRIj
	0kOREJ1tbWCeUpA9F00ZkG9a/fpCkMFKKmdt3MHEKfqa5YfKhhNF3CiSIxFCDGp1/DUx9wVc4+vml
	WbEEoStWVpnBs6dwDYzzFKKXd1VdxLaU2ZyujIo2qYJoBpzENVuDVmnqa59N15iW9Tm7l1dVgV7bb
	bJ3Ql3G3yQtpTjGHYZFpkrUVU29KwdVv9KtkJ26i3WPF7SLh/RMZrlUyam8IwAFVil2S64rFGSkF1
	bXBrBarhwvmRqM0MOMdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXDI-0007FF-06; Tue, 12 Nov 2019 14:32:12 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXD3-0007Di-SJ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:31:59 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xACEVn6X014751;
 Tue, 12 Nov 2019 08:31:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573569109;
 bh=eqDXkdRx3Q6H+gxxdh7mbTefYiQt+16uNQd/29L6a4I=;
 h=From:To:CC:Subject:Date;
 b=sJuIshYzqq2XN/e/aiIRPZF7ZyxYeryYwBVtp9dJtLL4qGOELhSmzajvQ9QASzgl6
 DFy8i6P1AdviQFf7/W8Vz5gXg8zyVheDN3hPnxYbVZMzz9o0RpaO4pffWpO4SoNY2j
 8vGFJKwHLsmnWHaz9144VGrub2Gy6U7xQNag48Wg=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xACEVnMf127633
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 Nov 2019 08:31:49 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 08:31:31 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 08:31:31 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xACEVjUJ050451;
 Tue, 12 Nov 2019 08:31:46 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>
Subject: [PATCH 0/9] arm64: dts: ti: UDMAP and McASP support
Date: Tue, 12 Nov 2019 16:32:52 +0200
Message-ID: <20191112143301.3168-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_063157_995041_0204607C 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series will enable DMA and adds the McASP nodes for am654 and j721e.

The DT bindings for DMA is not expected to change much anymore:
v5 of the UDMAP bindings patch is:
https://lore.kernel.org/lkml/20191111135330.8235-9-peter.ujfalusi@ti.com/

While adding the DMA support I have noticed few issues which is also fixed by
this series.

I have included the McASP nodes as well to have examples for other peripherals
on how he binding should be used.

I have been using this set on top of linux-next (the series is generated on top
of next-20191112) with audio on am654-evm and j721e evm + ivi card.

Regards,
Peter
---
Peter Ujfalusi (9):
  arm64: dts: ti: k3-am65-main: Correct main NAVSS representation
  arm64: dts: ti: k3-am65-main: Move secure proxy under cbass_main_navss
  arm64: dts: ti: k3-am65: DMA support
  arm64: dts: ti: k3-am654-main: Add McASP nodes
  arm64: dts: ti: k3-j721e: Correct the address for MAIN NAVSS
  arm64: dts: ti: k3-j721e-main: Correct main NAVSS representation
  arm64: dts: ti: k3-j721e-main: Move secure proxy and smmu under
    main_navss
  arm64: dts: ti: k3-j721e: DMA support
  arm64: dts: ti: k3-j721e-main: Add McASP nodes

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 122 ++++++-
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       |  46 +++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 312 ++++++++++++++++--
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  45 +++
 arch/arm64/boot/dts/ti/k3-j721e.dtsi          |   2 +-
 5 files changed, 491 insertions(+), 36 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
