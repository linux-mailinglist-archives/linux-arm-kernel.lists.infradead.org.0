Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC83163E18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:44:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=esnIGnUmrGh4IjZYkzvPjHxgDjPkuG3YmK+a3JQkOVs=; b=QKFZV5qJJWR3yS
	D7vTLjsjv5bUTY/F6Xibt2Lbjl59290KmJmfKO1o5dLorIN4zMp99ztAdSFv3e1RG7zFiH4riRNgx
	cYKdZdlg9/J2e2/NtR2YKBr5IYNZwtvNZlP4ohrFZuA6kNCKN/5S82OMIbrjbFIXfMAW0PaX/tb0W
	YO8MCeomq+OuNssDBEbZVjyfqYQut5AIRnivn9eIfgIhUi7RHXiYW+vf4l7FXJadhSFnFL3gpbvfL
	ODWCsjZPYf5PvNMjgKJI/+xvqXp+jgL51mSWjIaBbqR+p92OKLjLqPsmyd5AMNSP/hqVCsmDMmZWg
	zj+yWS5pOEp0XVxJJbvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4K2C-0008V0-BK; Wed, 19 Feb 2020 07:44:40 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4K1H-0007iy-Qf
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:43:45 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01J7hdUu072298;
 Wed, 19 Feb 2020 01:43:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582098219;
 bh=80xh0h8pACz/IVpvrVTCly13JX92MOXmYJWMW+UciE4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=wqX4wGF+B9uSi0tCR6BDDvfYQgkRvLeHfDcu7kDJNfSQ+jhVXVfSL5NtX7rVzZqw6
 2MMOj820UiVnI3rjVBlx4pRyU7Cia81IEvF628ONLEO33b2WOyKp0W1qqr2XvPY5Jd
 jMUk8q4zFJ+DxRtGx3vLPTNvBhQN5Uy4geH1JjOg=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01J7hdk5038682
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 19 Feb 2020 01:43:39 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 19
 Feb 2020 01:43:38 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 19 Feb 2020 01:43:38 -0600
Received: from a0393675ula.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01J7hKCc068778;
 Wed, 19 Feb 2020 01:43:35 -0600
From: Keerthy <j-keerthy@ti.com>
To: <rui.zhang@intel.com>, <robh+dt@kernel.org>, <daniel.lezcano@linaro.org>
Subject: [PATCH v3 4/4] arm64: dts: ti: am6: Add VTM node
Date: Wed, 19 Feb 2020 13:13:14 +0530
Message-ID: <20200219074314.22829-5-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219074314.22829-1-j-keerthy@ti.com>
References: <20200219074314.22829-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_234344_050546_1E4D2B23 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

VTM stands for voltage and thermal management. Add the vtm node and
the associated thermal zones on the SoC.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
index f4227e2743f2..e7ef96b621b3 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
@@ -89,4 +89,15 @@
 		clocks = <&k3_clks 59 0>;
 		clock-names = "gpio";
 	};
+
+	wkup_vtm0: wkup_vtm0@42050000 {
+		compatible = "ti,am654-vtm";
+		reg = <0x42050000 0x25c>;
+		power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;
+		#thermal-sensor-cells = <1>;
+	};
+
+	thermal_zones: thermal-zones {
+		#include "k3-am654-industrial-thermal.dtsi"
+	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
