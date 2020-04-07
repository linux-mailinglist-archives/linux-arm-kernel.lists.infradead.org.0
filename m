Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2041A06B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 07:51:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zNm9oISXqhTjWQYhRoljr1+YKSdsg+g1bTde2NsTv6g=; b=GaGxnrP48vEKjQ
	jfL86p8vkFKN0QJIBkpY1SAS/CGEyoSQ31tR4bFkkTxORxq/8837eWq8Cg2hKRhqUN0hsUoOW102c
	ZRx3xbfBbnzxHa8LOJjkHBtKDR1e9E08ZCJpvAry4K5u7EyJe/ixbPpBFtTSSUgatWLV+X2PsKuST
	reYRj5gQFb9blJuYGFeJxrDkpXSVXz5xb92VVZxE9aS501AvuV70PrjYve5RIBMWMRapFVe3ogS1X
	v3Vd6kVEB3rCODZCUbE1oD6KBg6H1WcnkwI0AK2ocIeBh4Ce23uRggNdt41HLfRhTZ09Wyd7OfdPO
	XOziez50csu+tVGWCqBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLh9F-0008I0-M0; Tue, 07 Apr 2020 05:51:45 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLh97-0008Gt-37
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 05:51:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0375pPNn091413;
 Tue, 7 Apr 2020 00:51:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1586238685;
 bh=hR+ITKXScejGN8Vg1z7eaq/mNwFLIoSkIvJwYBN9RZ0=;
 h=From:To:CC:Subject:Date;
 b=W2AY5epzcUvMVbJXVRs58V3R/6exPLe69ANPE6sJpr0EnJYtkWlwYmhPDdllXiSOt
 iNmKap+3WjuG8vFM8mfHj/gixzgFuurQneKuEk1t9TX8av2tWIEdUy0JO57uYoz+Cc
 sDHzVhEDi3b9Qxbpr1mMVwW/eEkNLsEcwW3paWa4=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0375pPMZ041443
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 7 Apr 2020 00:51:25 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 7 Apr
 2020 00:51:25 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 7 Apr 2020 00:51:25 -0500
Received: from a0393675ula.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0375pLdL017972;
 Tue, 7 Apr 2020 00:51:22 -0500
From: Keerthy <j-keerthy@ti.com>
To: <rui.zhang@intel.com>, <robh+dt@kernel.org>, <daniel.lezcano@linaro.org>
Subject: [PATCH v6 0/4] thermal: k3: Add support for bandgap sensors
Date: Tue, 7 Apr 2020 11:21:12 +0530
Message-ID: <20200407055116.16082-1-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_225137_232931_72C35B95 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Changes in v6:

  * Removed bunch of unused #defines and couple of redundant variables.
  * Reordered patches a bit.
  * Minor reordering in dt binding patch.

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
  arm64: dts: ti: am65-wakeup: Add VTM node
  arm64: dts: ti: am654: Add thermal zones

 .../bindings/thermal/ti,am654-thermal.yaml    |  56 ++++
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |  11 +
 .../dts/ti/k3-am654-industrial-thermal.dtsi   |  45 +++
 drivers/thermal/Kconfig                       |  10 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/k3_bandgap.c                  | 264 ++++++++++++++++++
 6 files changed, 387 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
 create mode 100644 arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi
 create mode 100644 drivers/thermal/k3_bandgap.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
