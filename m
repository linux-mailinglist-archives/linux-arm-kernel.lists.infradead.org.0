Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24797198D92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 09:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qyg2x2lZN0cQWLnuxaSJ5Xykb+V5CY6N2g1uOy6NwLs=; b=klB3POBoexGXSM
	9yggKRqXPjPLdQDPy1ydhjbURbjAf8PVVljpLPz/gkl/V3kivIlPzj7ft3m0GiRrWSkwsKBcIO3LK
	yVWOq6e/Td/X1ZPm+R8j4mjkqSKx4VZ6RSAJ+i36dJMmBZAAOe/S/QK81MUTGvEy7VN9LsKg5mKRQ
	vAKThwh/fuzC2XVYu4iIxtpZJUA/SlNOjRpUq4yxTiLJRhlwBdha52gMTOk24TJumuTwlvOrrRGek
	j1nlWr/k6rbXAnd98C+P4xmgrVOt5fDMHah8G13xWkKmxUyT3Sm9SCnR+H8lRkkyx8u27gvqBn+DB
	yqPmU9uXWwPdxz0YLskQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJBjA-00076s-74; Tue, 31 Mar 2020 07:54:28 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBiz-00076J-HE
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 07:54:19 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02V7s6Gb056302;
 Tue, 31 Mar 2020 02:54:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585641246;
 bh=1uPgCl7zqIU8IkGEGi3EPMx+udUdfvUF1olxNisngvQ=;
 h=From:To:CC:Subject:Date;
 b=ZfWapfoe5OiNFCrcZP0PObwnFdziWcCc6FKbPJDVMqCMLz1ezbv4kWTj0e/1H5KPu
 eQ+wamhOPDjwWXc67kTiTcvGgSV14BetXxESEqGjF5P3EXP0rfAGE+Ki6lgRRJa2sm
 T5JTCK2VFoFt6cLKnmgHrQTC8BivN741utTcoXfA=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02V7s6NG096904
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 31 Mar 2020 02:54:06 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 31
 Mar 2020 02:54:06 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 31 Mar 2020 02:54:06 -0500
Received: from a0393675ula.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02V7s2gf009443;
 Tue, 31 Mar 2020 02:54:03 -0500
From: Keerthy <j-keerthy@ti.com>
To: <rui.zhang@intel.com>, <robh+dt@kernel.org>, <daniel.lezcano@linaro.org>
Subject: [PATCH v5 0/4] thermal: k3: Add support for bandgap sensors
Date: Tue, 31 Mar 2020 13:23:52 +0530
Message-ID: <20200331075356.19171-1-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_005417_699280_111DDF84 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add VTM thermal support. In the Voltage Thermal
Management Module(VTM), K3 AM654 supplies a voltage
reference and a temperature sensor feature that are gathered in the band
gap voltage and temperature sensor (VBGAPTS) module. The band
gap provides current and voltage reference for its internal
circuits and other analog IP blocks. The analog-to-digital
converter (ADC) produces an output value that is proportional
to the silicon temperature.

Add support for bandgap sensors. Currently reading temperatures
is supported.

Changes in v5:

  * Removed thermal work function which was unused.
  * Removed unused preve_tenmp and a couple more struct variables.
  * Removed couple of redundant header function include.

Changes in v4:

  * Fixed comments from Daniel to remove trend function.
  * Mostly cleaned up all the unused variables.
  * Driver from bool to tristate.

Changes in v3:

  * Fixed errors seen with:
    dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml

Changes in v2:

  * Fixed yaml errors
  * renamed am654-industrial-thermal.dtsi to k3-am654-industrial-thermal.dtsi
    to follow the convention for k3 family. 


Keerthy (4):
  dt-bindings: thermal: k3: Add VTM bindings documentation
  thermal: k3: Add support for bandgap sensors
  arm64: dts: ti: am654: Add thermal zones
  arm64: dts: ti: am6: Add VTM node

 .../bindings/thermal/ti,am654-thermal.yaml    |  56 ++++
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |  11 +
 .../dts/ti/k3-am654-industrial-thermal.dtsi   |  45 +++
 drivers/thermal/Kconfig                       |  10 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/k3_bandgap.c                  | 268 ++++++++++++++++++
 6 files changed, 391 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
 create mode 100644 arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi
 create mode 100644 drivers/thermal/k3_bandgap.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
