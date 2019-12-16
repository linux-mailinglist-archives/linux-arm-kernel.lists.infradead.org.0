Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9657120196
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/9n0CCWcjT5uMFzP4kwvjaOMV1zIXTSBEdVJ7qGeb9Y=; b=e1hdHeOtWuwjwr
	4xk5dPomxAhXEjG15gpPZFgb7BTBH1rErFPeRpjzE4yP40noJUAeUwBu2ZYB9scZEr/7eIA4o22m1
	/s+if8Cd7pItFs5BYdKqm1kKkRuzFh1uO0B2TkvLK7aLRUSMciBTEcyvuJhB8AD2a6w1PlIVsVA8r
	CnQE/skFJqj1BLqpW3sCD6fwlGRvB28mBU3yujH47bV74gB/BnfcWVrQ2N8ZZTUZkHDvpKtLh/AsI
	Kh0eUIJGDZynLUP9EapxzGXCsjO9/FQTmy+RqOciv7NF7gCNFB4tVSEO68qs4hATusHzPbPn6sks7
	sZFe6AQD01iZCxtdMG+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ign7m-0005yF-0T; Mon, 16 Dec 2019 09:57:10 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ign6j-0005Kk-3D
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:56:07 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBG9tv6G037837;
 Mon, 16 Dec 2019 03:55:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576490157;
 bh=h6SVCdCA8094qluRqF1qIAbqUqNnpdtR3qwpgtBc3ck=;
 h=From:To:CC:Subject:Date;
 b=iddfKkc8eLohJwWp70i8+Vj+SfbfoCLwB60WOEnGWymfsq4ZaFBih2dvgRhb1yhCq
 y3KRXCNl5IWIWj7ri49iqsf6zFLDFTnyxIk5BBkbpdNeb3X0YYkjGSzSJU7RHeDhfs
 NRc/AydGH3GLVlF9FpqY1WTRfCCezVmcDp1x93NU=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBG9tvOA048668
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 16 Dec 2019 03:55:57 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Dec 2019 03:55:57 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Dec 2019 03:55:57 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBG9tsJJ084408;
 Mon, 16 Dec 2019 03:55:54 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Anil Varughese <aniljoy@cadence.com>,
 Roger Quadros <rogerq@ti.com>, Jyri Sarha <jsarha@ti.com>
Subject: [PATCH v4 00/14] PHY: Add support for SERDES in TI's J721E SoC
Date: Mon, 16 Dec 2019 15:26:58 +0530
Message-ID: <20191216095712.13266-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_015605_217910_742DAC9A 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TI's J721E SoC uses Cadence Sierra SERDES for USB, PCIe and SGMII.
TI has a wrapper named WIZ to control input signals to Sierra and
Torrent SERDES.

This patch series:
 1) Add support to WIZ module present in TI's J721E SoC
 2) Adapt Cadence Sierra PHY driver to be used for J721E SoC

Changes from v3:
 *) Fix Rob's comments on dt bindings
        -> Add properties to be added in WIZ child nodes to binding
        -> Use '-' rather than '_' in node names

Changes from v2:
 *) Deprecate "phy_clk" binding
 *) Fix Rob's comment on dt bindings
        -> Include BSD-2-Clause license identifier
        -> drop "oneOf" and "items" for compatible
        -> Fixed "num-lanes" to include only scalar keywords
        -> Change to 32-bit address space for child nodes
*) Rename cmn_refclk/cmn_refclk1 to cmn_refclk_dig_div/
   cmn_refclk1_dig_div

Changes from v1:
 *) Change the dt binding Documentation of WIZ wrapper to YAML format
 *) Fix an issue in Sierra while doimg rmmod

The series has also been pushed to
https://github.com/kishon/linux-wip.git j7_serdes_v4

Anil Varughese (1):
  phy: cadence: Sierra: Configure both lane cdb and common cdb registers
    for external SSC

Kishon Vijay Abraham I (13):
  dt-bindings: phy: Sierra: Add bindings for Sierra in TI's J721E
  phy: cadence: Sierra: Make "phy_clk" and "sierra_apb" optional
    resources
  phy: cadence: Sierra: Use "regmap" for read and write to Sierra
    registers
  phy: cadence: Sierra: Add support for SERDES_16G used in J721E SoC
  phy: cadence: Sierra: Make cdns_sierra_phy_init() as phy_ops
  phy: cadence: Sierra: Modify register macro names to be in sync with
    Sierra user guide
  phy: cadence: Sierra: Get reset control "array" for each link
  phy: cadence: Sierra: Check for PLL lock during PHY power on
  phy: cadence: Sierra: Change MAX_LANES of Sierra to 16
  phy: cadence: Sierra: Set cmn_refclk_dig_div/cmn_refclk1_dig_div
    frequency to 25MHz
  phy: cadence: Sierra: Use correct dev pointer in
    cdns_sierra_phy_remove()
  dt-bindings: phy: Document WIZ (SERDES wrapper) bindings
  phy: ti: j721e-wiz: Add support for WIZ module present in TI J721E SoC

 .../bindings/phy/phy-cadence-sierra.txt       |  13 +-
 .../bindings/phy/ti,phy-j721e-wiz.yaml        | 204 ++++
 drivers/phy/cadence/phy-cadence-sierra.c      | 699 +++++++++++---
 drivers/phy/ti/Kconfig                        |  15 +
 drivers/phy/ti/Makefile                       |   1 +
 drivers/phy/ti/phy-j721e-wiz.c                | 898 ++++++++++++++++++
 6 files changed, 1691 insertions(+), 139 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
 create mode 100644 drivers/phy/ti/phy-j721e-wiz.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
