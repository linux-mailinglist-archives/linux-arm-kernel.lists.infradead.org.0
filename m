Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9985915D234
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 07:35:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=baQm8A0OfYzzFpPk8NUZHQtCQiDWp7eeunFSdWJ1e4w=; b=KH7glCjAGvy+kR
	ClxKfed83qyTVlM9+c3dgBm48zurtl4YSxYYw3XSscFbV+n92Ge82CReSpmxgkuds4VJDIjPmNK8M
	U6gkMO9R/LbpZHFpceOfKQYQAMY0VyqoMNkCEWEdF33W09UsRnMEd8jtr89PsV0J/EP2jGwtLSGT4
	u7G2lyXk+bQoVWTeADVzhJGkYzaxOzN8PmB3Z9gf3lZFzwSGITjkZ7Z5yL7EsiRL3oebNt0qSwrDo
	uq2ZHFjD7nEg+GeqMcI4QDOARov7YRci38gd61yTXnMGh8gy+5gkbdM3bW/uJWk0zfwOd+zmlwZh/
	qs5qgO6eoi7PG5505lFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2UZ0-0005In-MJ; Fri, 14 Feb 2020 06:34:58 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2UYt-0005IT-BO
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 06:34:52 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01E6YhF9076124;
 Fri, 14 Feb 2020 00:34:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581662083;
 bh=bbrOvfJ5jGe7nnyejbgBwNd8+bqjiPoBvI9K9zxmlo0=;
 h=From:To:CC:Subject:Date;
 b=LoQXhIa0eAWRr9SUtQgWHPMwCGNhEk4OyJ7GBYKiIX17QHwteSpIrT7LhLDJKi3gn
 5Duaj3R+LZwRrExsna63p/FI5IMJ6D6GqwxnjFCkuYrd0w8xUGX1ttbiI8CqFIQrCz
 pzPPi9j0nOC23Ac7HelTVhfcrIhQxAuS3faU/EtI=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01E6YhLZ002463
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Feb 2020 00:34:43 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 14
 Feb 2020 00:34:43 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 14 Feb 2020 00:34:43 -0600
Received: from a0393675ula.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01E6YdP2028331;
 Fri, 14 Feb 2020 00:34:40 -0600
From: Keerthy <j-keerthy@ti.com>
To: <rui.zhang@intel.com>, <robh+dt@kernel.org>, <daniel.lezcano@linaro.org>
Subject: [PATCH v2 0/4] thermal: k3: Add support for bandgap sensors
Date: Fri, 14 Feb 2020 12:04:39 +0530
Message-ID: <20200214063443.23589-1-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_223451_470700_459553BF 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
and trend computing is supported. 

Changes in v2:

  * Fixed yaml errors
  * renamed am654-industrial-thermal.dtsi to k3-am654-industrial-thermal.dtsi
    to follow the convention for k3 family.

Keerthy (4):
  dt-bindings: thermal: k3: Add VTM bindings documentation
  thermal: k3: Add support for bandgap sensors
  arm64: dts: ti: am654: Add thermal zones
  arm64: dts: ti: am6: Add VTM node

 .../bindings/thermal/ti,am654-thermal.yaml    |  57 +++
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |  11 +
 .../dts/ti/k3-am654-industrial-thermal.dtsi   |  45 +++
 drivers/thermal/Kconfig                       |  12 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/k3_bandgap.c                  | 342 ++++++++++++++++++
 6 files changed, 468 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
 create mode 100644 arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi
 create mode 100644 drivers/thermal/k3_bandgap.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
