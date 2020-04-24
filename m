Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 873C91B794B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:18:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ly4jkN3gDXBbtXaxqJcNm1Zv+9qnkdHHDB566s3Jo1A=; b=gOGkEALoOc/o9B
	UIyUmeR5A1CVWYKg0gUZfSZKOIKtUwoytNRhQZcBMSB7Jv2mZtjcGcmv8TGDFaTGwNS93uy4bJ5fF
	mS6RyXjvCCnWY/jLLvBg9s8z2YQeD6FwcJQQ7tn9NzMzYVxQfLHVDEKSNHYXWyuJjwkDrrHntgKxI
	f4OOdYZaSLuiRNSnG7W2RWYAHwjbz885kgdXfLDf1dzZc/wm46Zvlmik8pCCGzpvcC/kMXKjDgg0h
	7L2hfFAyi6uFqX/yQGRGL28kW6PGh2TodyHuCEOfQnfOCNaAwEiytBenwFK3NZVGDIwzW4zMQBY84
	rEnmFBf/f1r2u9VXzaIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS064-0002Fq-5s; Fri, 24 Apr 2020 15:18:32 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS018-0003w2-MN
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:13:28 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03OFDNUb051974;
 Fri, 24 Apr 2020 10:13:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587741203;
 bh=P8ZmpQjmczswA6Ei2TXEgbRC/mMssBRFI2xJIoa9u0I=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Pn9SH0RQDazcGUb6lfDCDoWPXVkKMrQCY4nZuXYWoDGUTMcLzHo3kRdjxbKW6lHvw
 XaXlmezR0yh0vkX4taqe/LLDZ4y53KbLenQwan/4mkerYEotsMuFbvtTGQx4uPwaQB
 Bdmf+X2iVkt2XDW77arOHQkj8w8GSRe+SXHG0Qhg=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03OFDNMR092288
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Apr 2020 10:13:23 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 10:13:23 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 10:13:23 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCu7P122378;
 Fri, 24 Apr 2020 10:13:21 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 17/17] ARM: dts: dra7-ipu-dsp-common: Add watchdog timers to
 IPU and DSP nodes
Date: Fri, 24 Apr 2020 18:12:44 +0300
Message-ID: <20200424151244.3225-18-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424151244.3225-1-t-kristo@ti.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081326_812793_83BFC40F 
X-CRM114-Status: GOOD (  14.81  )
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
Cc: Angela Stegmaier <angelabaker@ti.com>, s-anna@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suman Anna <s-anna@ti.com>

The watchdog timer information has been added to all the IPU and DSP
remote processor device nodes in the DRA7xx/AM57xx SoC families. The
data has been added to the two common dra7-ipu-dsp-common and
dra74-ipu-dsp-common dtsi files that can be included by all the
desired board files. The following timers are chosen as the watchdog
timers, as per the usage on the current firmware images:
        IPU2: GPTimers 4 & 9 (one for each Cortex-M4 core)
        IPU1: GPTimers 7 & 8 (one for each Cortex-M4 core)
        DSP1: GPTimer 10
        DSP2: GPTimer 13

Each of the IPUs has two Cortex-M4 processors and so uses a timer
each for providing watchdog support on that processor irrespective of
whether the IPU is running in SMP-mode or non-SMP node. The chosen
timers also need to be unique from the ones used by other processors
(regular timers or watchdog timers) so that they can be supported
simultaneously.

The MPU-side drivers will use this data to initialize the watchdog
timer(s), and listen for any watchdog triggers. The BIOS-side code on
these processors needs to configure/refresh the corresponding timer
properly to not throw a watchdog error.

The watchdog timers are optional in general, but are mandatory to
be added to support watchdog error recovery on a particular processor.
These timers can be changed or removed as per the system integration
needs, alongside appropriate equivalent changes on the firmware side.

Signed-off-by: Angela Stegmaier <angelabaker@ti.com>
Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi  | 3 +++
 arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi | 1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi b/arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi
index 23ce3b67faf7..a25749a1c365 100644
--- a/arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi
+++ b/arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi
@@ -23,14 +23,17 @@
 &ipu2 {
 	mboxes = <&mailbox6 &mbox_ipu2_ipc3x>;
 	ti,timers = <&timer3>;
+	ti,watchdog-timers = <&timer4>, <&timer9>;
 };
 
 &ipu1 {
 	mboxes = <&mailbox5 &mbox_ipu1_ipc3x>;
 	ti,timers = <&timer11>;
+	ti,watchdog-timers = <&timer7>, <&timer8>;
 };
 
 &dsp1 {
 	mboxes = <&mailbox5 &mbox_dsp1_ipc3x>;
 	ti,timers = <&timer5>;
+	ti,watchdog-timers = <&timer10>;
 };
diff --git a/arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi b/arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi
index a546cf740365..b1147a4b77f9 100644
--- a/arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi
+++ b/arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi
@@ -14,4 +14,5 @@
 &dsp2 {
 	mboxes = <&mailbox6 &mbox_dsp2_ipc3x>;
 	ti,timers = <&timer6>;
+	ti,watchdog-timers = <&timer13>;
 };
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
