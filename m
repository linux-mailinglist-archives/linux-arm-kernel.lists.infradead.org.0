Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 333D877BF4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 23:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1NuGWTIys9GUR7szUnDzIjN0/VbCpMBFx1+7iq2gnVU=; b=l+yU0rSKdATCpB
	ep5v0Mh4ybc8cZP5EpFUIwZ1Ob9eFM2yYC4Q35npUwR+JPUvunMvsI5s/6ysGSUKIdyhgP9bHkoBQ
	UaB2T0dcVwk5z18jQOSZiDV3dmrKcYgNLNXtdZ3HZ4XBmfBpK4eO4QaC7PyM40EqAoJxvf15n2MfT
	hE5rF937p/MZBtDg89E3w0Z13470w+EK1UCqvK8FG4fF6R+XMCaG028O8hxv2S17jkc9qzYmYn9e+
	MOZ5A3CCksQsE6KNePQbKy3jYHMcs06qAgSexW0ccA4F4kY1ZyqVhnPf/9j6YiOBMLbT85yBbgYpC
	DuaXj+VEROOCKyuj9MYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrTqz-0005gA-3l; Sat, 27 Jul 2019 21:03:45 +0000
Received: from mout.perfora.net ([74.208.4.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrTql-0005fs-L0
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 21:03:33 +0000
Received: from towel.hsd1.wa.comcast.net ([71.197.225.149]) by
 mrelay.perfora.net (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0MMVI0-1hkIq42rDq-008MBc; Sat, 27 Jul 2019 23:03:22 +0200
From: Sunil Mohan Adapa <sunil@medhas.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on A64-OLinuXino
Date: Sat, 27 Jul 2019 14:03:07 -0700
Message-Id: <20190727210307.17607-1-sunil@medhas.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:rxDMNqtsrqr2/w067HCFthZ7p16fRHrwFbrQrs23+huAvCY4I56
 tVhgjj1IJTX/NMasmutT265cvFz4i61axYqRyntytM3dIQiV0gPG8b6kCSiwJyZBXsxfk70
 uWJ7kvSzIVASxee+lvshSTIalaO74GetkvdTCDR1YStk2UMmDtTWRuDS2ZvLbyhhmn8e7Tw
 JjGPg2ykc/eMhkd0oENZA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ek5Wi3MTjEE=:uBhWcXdFx2HTTzMwkD9cM9
 +eu2TGcxgSmeqmSkIvXSFskvws2sQl6zoft+UBIutAzlLlsWviegCVqHyS4/qApmHEhLKflpV
 2wD6t5PqipbDI9IFxHh6EjoH6Ym7o0sPBWHhoKNkpw1/JmAND/epdEUh43vJ4kvUR/ay2sA8d
 luVijakiIcd8LtreiRqPhxa96LbvGsQk7YdTaJg512P+zatWFw6TX6dPiUico091M9ub5u21+
 tRyh7R6raJHFc/pN8GJp1CuDb/MTk9X4P3qkmCGZJ1Vjtl+9/BBTtzbcm9Ow/YHzdSApgeAPh
 GGNkkyySZxnbpiL6gyy0eebKM6OdMq6KbYFRm6fGyKTG8smPIN5mpPOhK+P/4Gb4qpk4VI0HG
 e+mIBB2+5bQocUMhm9i5DovYAbBtxFCPMmMXZ3zU1ie6ErDUNGjJiF1Wmaak0J4/8H311RRBw
 8/kXjTqjLTkm0boBzjuw9nThEozf2VnJ7VwXKSkIkiugFdwwwTLIrxfJ+G+SRBfSQQzTLP9Mu
 Zt6agPdvn9BchnWXDI2WGlmOEgzE7reS2Dj/0gOUEIA05MJBaS+jyo1XSuaCMewjj9IEWEHQi
 Tyt7RGek6B2r9qpcRmGABEmWToEBgm/bUw9wI3nLLBIUxmWNxz15XrtzOOfWber/rGu3BEkys
 d9LkyeU0aClTEg8h7GXktA8buLP2MDN77p01034yKLC/Q6dH+h00GPituB0QvsBCUXLMSLdFq
 VOA0gJ9PJlhFHe85MVTtC7X0bcmTD+WEZJMKsw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_140331_754894_647A134A 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.197 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: maxime.ripard@bootlin.com, Sunil Mohan Adapa <sunil@medhas.org>,
 wens@csie.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A64-OLinuXino board has three variants that have eMMC support. Add support for
eMMC on boards that have it.

This patch has been tested on A64-OLinuXino-1Ge16GW with Linux 5.0 from Debain.
Basic benchmarks using Flexible IO Tester show reasonable performance from the
eMMC.

eMMC - Random Write: 23.1MiB/s
eMMC - Sequential Write: 74.5MiB/s
SD Card - Random Write: 1690KiB/s
SD Card - Sequential Write: 11.0MiB/s

v2: Fix descriptions for VCC and VCCQ.

[sunil@medhas.org Fix descriptions for VCC and VCCQ]
Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
Tested-by: Sunil Mohan Adapa <sunil@medhas.org>

From: Martin Ayotte <martinayotte@gmail.com>
Link: https://github.com/armbian/build/commit/174953de1eb09e6aa1ef7075066b573dba625398
---
 .../arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
index 01a9a52edae4..28bb67ebe173 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
@@ -155,6 +155,17 @@
 	};
 };
 
+&mmc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_pins>;
+	vmmc-supply = <&reg_dcdc1>;
+	vqmmc-supply = <&reg_dcdc1>;
+	bus-width = <8>;
+	non-removable;
+	cap-mmc-hw-reset;
+	status = "okay";
+};
+
 &ohci0 {
 	status = "okay";
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
