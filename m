Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D120914671D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:45:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4iQvf7J8sRwhHznML2ha3SuwW4mAfsMywR81SeD6ql4=; b=hNf6P9qYphqAHt
	EWbqokJrpgsbR0xHB1gA9sLP2AzH6rPZ6ZAAomcQ0SIM+wyAs9kotrTzBJhXgRY4hFPLBBUMRYXT+
	GCK0mK/wCGXnztMnh4ZaaSyca/J78/Fvnoc0yVASiE8fFiE0KcICX5tZc+Z7VZjbTb+5zJrmLbyzU
	2yGGDtG+tQbHCf1V3wrRmD/5sfqfN4H/HI2bHYX7/6zcMyVhQovw/LlRjTRlLQSp2lun2/f5x0lRn
	b1RwSprt3YAr97WdPkpp5ltFWeD+WYX5kE6AFC+hra3EJXIjwQFlrvp7ODrVHEwT2THfc5D56TLrc
	j4+LbpZV3XOOEejzRW6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuavZ-0001kN-Hc; Thu, 23 Jan 2020 11:45:37 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuaut-0000GZ-I4
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:44:57 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00NBinIw023470;
 Thu, 23 Jan 2020 05:44:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579779889;
 bh=056yP0wQc7y1OMqVn54WtC4Yn6DYkshBLN9I0yRi7e8=;
 h=From:To:CC:Subject:Date;
 b=cUIkrbLol1zXrJYj+GSwPOJQauBCLtHn6ZqwzVlf4XZMxM9vcmV9zXYdeFC8Yz4yS
 edVrO//9G754yHYpOj6iw4XbW9nzbpUzBgW907Qk7JqWmMGZfBDBO5A7I3g8JfwQY8
 L9TKwkR43NYxF+PugcyaiePOoFHoo9J/2MhG2YRU=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00NBimiW016993
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 23 Jan 2020 05:44:49 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 23
 Jan 2020 05:44:47 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 23 Jan 2020 05:44:47 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00NBijBD114078;
 Thu, 23 Jan 2020 05:44:45 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>, <lokeshvutla@ti.com>
Subject: [PATCH v3 0/9] arm64: dts: ti: UDMAP and McASP support
Date: Thu, 23 Jan 2020 13:45:19 +0200
Message-ID: <20200123114528.26552-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_034455_673342_D9138B9C 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Changes since v2:
- Correct unit addresses for the McASP nodes
- Remove unit address and label for MAIN and MCU NAVSS

Changes since v1:
- rebased on ti-k3-next
- Corrected j721e mcu_udma node: s/udmap/dma-controller
- Moved the two McASP node patch at the end of the series

The ringacc and UDMA documentation and drivers are in next-20200122.

While adding the DMA support I have noticed few issues which is also fixed by
this series.

Tero: I have included the McASP nodes as well to have examples for other
peripherals on how he binding should be used.
The patches for the McASP driver is not in next, but they are only internal
driver changes (and Kconfig), not adding new DT dependencies.
Since the McASP is disabled in SoC dtsi due to board level configuration needs
it is not going to erroneously probe drivers.

It is up to you if you pick them or not, but I believe they serve a safe and
nice example how the dma binding should be used for UDMA.

Regards,
Peter
---
Peter Ujfalusi (9):
  arm64: dts: ti: k3-am65-main: Correct main NAVSS representation
  arm64: dts: ti: k3-am65-main: Move secure proxy under cbass_main_navss
  arm64: dts: ti: k3-am65: DMA support
  arm64: dts: ti: k3-j721e: Correct the address for MAIN NAVSS
  arm64: dts: ti: k3-j721e-main: Correct main NAVSS representation
  arm64: dts: ti: k3-j721e-main: Move secure proxy and smmu under
    main_navss
  arm64: dts: ti: k3-j721e: DMA support
  arm64: dts: ti: k3-am654-main: Add McASP nodes
  arm64: dts: ti: k3-j721e-main: Add McASP nodes

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 122 ++++++-
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       |  46 +++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 313 ++++++++++++++++--
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  45 +++
 arch/arm64/boot/dts/ti/k3-j721e.dtsi          |   2 +-
 5 files changed, 491 insertions(+), 37 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
