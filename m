Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBCF31B4C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 12:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XxljRiE2GimNF0Zr1BsPl7IhhLQwhfoHw9vK0wQaDg0=; b=MmHFw3VELTo4im
	2GPxCCH88ksKCd80JDDEDh22qcjFZScKg2rNZBZ2F25hT1qIusbmZA5OOvqlc0yEfqKziht4f+p7p
	4grA6hbyxWQ5dgX6stOwKanyBPN5zxTWW58rULunA9VgHnj4wpsn4qXPUCVxg15qknE1+Jumlpimz
	3J+PQoeOyRMphq5wE/Ejo4JdhljgQYeSduDTC7wNaM2ULXLmY7f8dkkj+i591yH9Nqf9XN/5PIDq6
	9H1F3VFNCC1/XRGkU6l3jDDq+FhEN9F91R2Hcj7VEX6ukPv65ArRVpmCjmE9gEzIFMELYeCbWXhPR
	e02uP1FmDvvaXAfWC0XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX1WQ-0005aH-Ua; Sat, 01 Jun 2019 10:45:58 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX1WI-0005ZO-To
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 10:45:52 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x51Aji7w017184;
 Sat, 1 Jun 2019 05:45:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559385944;
 bh=oc83/WPZAKxZ5gQImeSIybMZHlJVM8DNCMv1sFjd1hU=;
 h=From:To:CC:Subject:Date;
 b=Mi8XPKWvDzQ3mg2ey+x3AjQiZbi86miCck1paLJvmkU821YROEZSu87Vfexfoo9EW
 1/2EVIU0dIzrhHJdFHUnNEO60C04a4Gi+S9bd3XGuBBNe1gvZud97vZ9jZIMGRQZ16
 L7xjaODp4d6xQoH0T7flv0qgaRjQOL7g9oPfWOps=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x51Aji0A022616
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 1 Jun 2019 05:45:44 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sat, 1 Jun
 2019 05:45:44 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sat, 1 Jun 2019 05:45:44 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x51AjgxX076536;
 Sat, 1 Jun 2019 05:45:43 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Santosh Shilimkar
 <ssantosh@kernel.org>, Richard Cochran <richardcochran@gmail.com>, Rob
 Herring <robh+dt@kernel.org>
Subject: [PATCH net-next 00/10] net: ethernet: ti: netcp: update and enable
 cpts support
Date: Sat, 1 Jun 2019 13:45:24 +0300
Message-ID: <20190601104534.25790-1-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_034551_044702_1E1129B5 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Wingman Kwok <w-kwok2@ti.com>, netdev@vger.kernel.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

The Keystone 2 66AK2HK/E/L 1G Ethernet Switch Subsystems contains The
Common Platform Time Sync (CPTS) module which is in general compatible with
CPTS module found on TI AM3/4/5 SoCs. So, the basic support for
Keystone 2 CPTS is available by default, but not documented and has never been
enabled inconfig files.

The Keystone 2 CPTS module supports also some additional features like time
sync reference (RFTCLK) clock selection through CPTS_RFTCLK_SEL register
(offset: x08) in CPTS module, which can modelled as multiplexer clock
(this was discussed some time ago [1]).

This series adds missed binding documentation for Keystone 2 66AK2HK/E/L
CPTS module and enables CPTS for TI Keystone 2 66AK2HK/E/L SoCs with possiblity
to select CPTS reference clock.

Patch 1: adds the CPTS binding documentation. CPTS bindings are defined in the
way that allows CPTS properties to be grouped under "cpts" sub-node.
It also defines "cpts-refclk-mux" clock for CPTS RFTCLK selection.
Patches 2-3: implement CPTS properties grouping under "cpts" sub-node with
backward compatibility support.
Patch 4: adds support for time sync reference (RFTCLK) clock selection from DT
by adding support for "cpts-refclk-mux" multiplexer clock.
Patches 5-9: DT CPTS nodes update for TI Keystone 2 66AK2HK/E/L SoCs.
Patch 10: enables CPTS for TI Keystone 2 66AK2HK/E/L SoCs.

I grouped all patches in one series for better illustration of the changes,
but in general Pateches 1-4 are netdev matarieal (first) and other patches
are platform specific.

Series can be found at:
 git@git.ti.com:~gragst/ti-linux-kernel/gragsts-ti-linux-kernel.git
branch:
 net-next-k2e-cpts-refclk

[1] https://www.spinics.net/lists/netdev/msg408931.html

Grygorii Strashko (10):
  dt-bindings: doc: net: keystone-netcp: document cpts
  net: ethernet: ti: cpts: use devm_get_clk_from_child
  net: ethernet: ti: netcp_ethss: add support for child cpts node
  net: ethernet: ti: cpts: add support for ext rftclk selection
  ARM: dts: keystone-clocks: add input fixed clocks
  ARM: dts: k2e-clocks: add input ext. fixed clocks tsipclka/b
  ARM: dts: k2e-netcp: add cpts refclk_mux node
  ARM: dts: k2hk-netcp: add cpts refclk_mux node
  ARM: dts: k2l-netcp: add cpts refclk_mux node
  ARM: configs: keystone: enable cpts

 .../bindings/net/keystone-netcp.txt           | 44 ++++++++++
 arch/arm/boot/dts/keystone-clocks.dtsi        | 27 ++++++
 arch/arm/boot/dts/keystone-k2e-clocks.dtsi    | 20 +++++
 arch/arm/boot/dts/keystone-k2e-netcp.dtsi     | 21 ++++-
 arch/arm/boot/dts/keystone-k2hk-netcp.dtsi    | 20 ++++-
 arch/arm/boot/dts/keystone-k2l-netcp.dtsi     | 20 ++++-
 arch/arm/configs/keystone_defconfig           |  1 +
 drivers/net/ethernet/ti/cpts.c                | 88 ++++++++++++++++++-
 drivers/net/ethernet/ti/cpts.h                |  2 +-
 drivers/net/ethernet/ti/netcp_ethss.c         |  9 +-
 10 files changed, 240 insertions(+), 12 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
