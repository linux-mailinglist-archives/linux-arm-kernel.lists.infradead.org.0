Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003B91B7935
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:15:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKPO6HCbOBgvaNNZK8emgNAFCbpRBX1sWM6P+2W5+oU=; b=A2qmFiiLqbeQ0y
	/TRFohbTjufqbE0nB1YVDYfApOZMK+GS6dbS7p8ib5cDdZR5DEjTIMUmCf/jf+aftpkJbnzBWRIxE
	uPo0ydm+sznJZkgGRi3z52yGyZYTVwvCRVbQNWEF2zm3ksEkr/DKIbJlIxO/xY18njX+clPGSpqct
	QKSgLcHIzxW9WKNjOh408RN2/sYRouYRU5A1r7Ba/b9XXjaSO0kDA4Bdb22Qo4dTeQr5lUA2zlnrp
	LF6iziMfOkCKgh1aDPjVDErNzZcyz9P80UqKQ2xTGaTLsNQOYNSyOVK1XhMJUaBhzC/VtEdHe2U+A
	LxnYr640vn4aTMRs/vzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS031-0006iy-Jf; Fri, 24 Apr 2020 15:15:23 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS00u-0003kJ-73
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:13:14 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03OFDAOq044797;
 Fri, 24 Apr 2020 10:13:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587741190;
 bh=d/IJo3x9BxxGo0xX81ekv72rR2Mx41VLbYE6BBxvxLI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=pbl+4wq67hfOIamnWkTNHN8IBbZ0C+GAAoWcQzLtYEHOMzyoFByVhwxjHdKCdqfpg
 7zRGAl2YTSirpRvL8NJcEt4OYQ8CSGNeIY2m3F3g01x3h0/1SSYYMLl9cWCZsaD3VK
 utrSlHcXHM8PsSjnncMmayMHQdh211siYfTUHuJI=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03OFDAVR092125
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Apr 2020 10:13:10 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 10:13:09 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 10:13:09 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCu7G122378;
 Fri, 24 Apr 2020 10:13:08 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 08/17] ARM: dts: dra7-ipu-dsp-common: Add timers to IPU and
 DSP nodes
Date: Fri, 24 Apr 2020 18:12:35 +0300
Message-ID: <20200424151244.3225-9-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424151244.3225-1-t-kristo@ti.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081312_345643_944756EC 
X-CRM114-Status: GOOD (  14.83  )
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

The BIOS System Tick timers have been added for all the IPU and
DSP remoteproc devices in the DRA7 SoC family. The data is added
to the two common dra7-ipu-dsp-common and dra74-ipu-dsp-common
dtsi files that are included by all the desired board files. The
following timers are chosen, as per the timers used on the current
firmware images:
        IPU2: GPTimer 3
        IPU1: GPTimer 11
        DSP1: GPTimer 5
        DSP2: GPTimer 6

The timers are optional, but are mandatory to support advanced device
management features such as power management and watchdog support.
The above are added to successfully boot and execute firmware images
configured with the respective timers, images that use internal
processor subsystem timers are not affected. The timers can be
changed or removed as per the system integration needs, if needed.

Each of the IPUs has two Cortex-M4 processors, and is currently
expected to be running in SMP-mode, so only a single timer suffices
to provide the BIOS tick timer. An additional timer should be added
for the second processor in IPU if it were to be run in non-SMP mode.
The timer value also needs to be unique from the ones used by other
processors so that they can be run simultaneously.

Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi  | 3 +++
 arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi | 1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi b/arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi
index 8a53da1c5f2e..23ce3b67faf7 100644
--- a/arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi
+++ b/arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi
@@ -22,12 +22,15 @@
 
 &ipu2 {
 	mboxes = <&mailbox6 &mbox_ipu2_ipc3x>;
+	ti,timers = <&timer3>;
 };
 
 &ipu1 {
 	mboxes = <&mailbox5 &mbox_ipu1_ipc3x>;
+	ti,timers = <&timer11>;
 };
 
 &dsp1 {
 	mboxes = <&mailbox5 &mbox_dsp1_ipc3x>;
+	ti,timers = <&timer5>;
 };
diff --git a/arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi b/arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi
index 6e31c1c27fd4..a546cf740365 100644
--- a/arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi
+++ b/arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi
@@ -13,4 +13,5 @@
 
 &dsp2 {
 	mboxes = <&mailbox6 &mbox_dsp2_ipc3x>;
+	ti,timers = <&timer6>;
 };
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
