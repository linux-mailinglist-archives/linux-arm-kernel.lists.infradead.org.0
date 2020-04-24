Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBED1B792A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQ1/BX7enm44UxP2vwLbWpBzzFhF8FTvnYzNVTth/2k=; b=VSkThDOTv4lIqp
	kDi1GVSGXG4yDM2ikLbGT81JUrmqsfYp8+c2g611GPN38oBOYZ8JXNMSllv19FSBrS66fVNAkj65x
	JwOUDD91SdDtLeuDU9JWXhhdqRfebXjJy674eMIEpPgWM/FtBqO1maveJpl3OureN/JgpbrfgKg2U
	MMg7swz3m6wUpwGDHhGt1zRLxfNq7iyOlKUFGPxnBE0Q20HHtcwn822x2Tp7ysDBbNzlHIBeMAnyU
	k3EnddTeiWCoPoIKNmn5Xf0tSCw2covjsxpPhbA1lMqH+Du+oqeDse8Z9defVFqbB9PoRg6RnA1i+
	RWSRG6LlP9dkUV0EXESg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS01g-00046v-Qo; Fri, 24 Apr 2020 15:14:00 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS00m-0003dF-Oj
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:13:06 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03OFD2UC044754;
 Fri, 24 Apr 2020 10:13:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587741182;
 bh=oY8Iv1pxCjpBeK+t8WNDjXmRSvBkyl0OaXXJIOziGQA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=NWMXJptZ5OZ4exKNUjA4geoN43ogrgiOUi6OvZtJDfVY1cLr4dAm6/yDnbjyqudgJ
 lIYT0C8pRRpAJs0dAD5+ku6bdv2CCrno9Pbv+HZgc85WRlvfOYFdK3sh17HMyU8XkZ
 OneF4eLwaGFyUr8Wficd/8tvSILu7Bc+4qdkBwBQ=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03OFD2JO099624
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Apr 2020 10:13:02 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 10:13:02 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 10:13:02 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCu7B122378;
 Fri, 24 Apr 2020 10:13:01 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 03/17] ARM: dts: DRA74x: Add DSP2 processor device node
Date: Fri, 24 Apr 2020 18:12:30 +0300
Message-ID: <20200424151244.3225-4-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424151244.3225-1-t-kristo@ti.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081304_878446_D783EA5F 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Cc: s-anna@ti.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suman Anna <s-anna@ti.com>

The DRA7xx family of SoCs can contain upto two identical DSP
processor subsystems. The second DSP processor subsystem is
present only on the DRA74x/DRA76x variants. The processor
device DT node has therefore been added in disabled state for
this processor subsystem in the DRA74x specific DTS file.

NOTE:
1. The node does not have any mailboxes, timers or CMA region
   assigned, they should be added in the respective board dts
   files.
2. The node should also be enabled as per the individual product
   configuration in the corresponding board dts files.

Signed-off-by: Suman Anna <s-anna@ti.com>
[t-kristo@ti.com: converted to support ti-sysc from legacy hwmod]
Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra74x.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/dra74x.dtsi b/arch/arm/boot/dts/dra74x.dtsi
index 7b1c61298253..94ba80769001 100644
--- a/arch/arm/boot/dts/dra74x.dtsi
+++ b/arch/arm/boot/dts/dra74x.dtsi
@@ -124,6 +124,20 @@
 				ti,syscon-mmuconfig = <&dsp2_system 0x1>;
 			};
 		};
+
+		dsp2: dsp@41000000 {
+			compatible = "ti,dra7-dsp";
+			reg = <0x41000000 0x48000>,
+			      <0x41600000 0x8000>,
+			      <0x41700000 0x8000>;
+			reg-names = "l2ram", "l1pram", "l1dram";
+			ti,bootreg = <&scm_conf 0x560 10>;
+			iommus = <&mmu0_dsp2>, <&mmu1_dsp2>;
+			status = "disabled";
+			resets = <&prm_dsp2 0>;
+			clocks = <&dsp2_clkctrl DRA7_DSP2_MMU0_DSP2_CLKCTRL 0>;
+			firmware-name = "dra7-dsp2-fw.xe66";
+		};
 	};
 };
 
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
