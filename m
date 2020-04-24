Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514E21B7936
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWP6XxjbrCSlRGXNyCFwXSzQ/JW6czwUA8RJXC4KRhU=; b=XcFBwEivEuB7WV
	b2gvB4my8Sdn9esm1W43bt0J8uJVoNZjPJH1aCc9SWgpo97idiOWM3azSNfPw+fAJ/bQQ71mgf2SE
	XRklrxZpTnQPFSy/UR7s3Qyj3ttoCEXN+xWAfZcCExHIGlCks/z2A1f4EK3D9ayMQoVJKXPZ2zzgs
	NV2SxNUh2txGBfNUvH6u1jIefHLS26D4w0R38uij6aBjavLIw9SmtccTfNGU1UQM/EP0VjR5WLnmE
	7yPk8U9AEfvtfDwG6bOJmKO0vED82aAOAN7SmaYgcfFXZrS3Ob4asU1ehuFbtRwd10MB52AnnZlig
	jRfRFStAvoTfZxdDoPyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS03H-0007kc-HF; Fri, 24 Apr 2020 15:15:39 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS00u-0003k7-Cm
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:13:14 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03OFD8uD102837;
 Fri, 24 Apr 2020 10:13:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587741188;
 bh=fI0sdQm2IdUNqVR48BJqjmXnYRo3kmpLOoT56kJvWS0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=WJFOTyCa/y/tveYeIaiJLRs+uJ0yUpN7aOkLr97x2pWrqfSct7/tQ/Yz+vtSGFIym
 bavOG012toVa2lscDcZXUbiOjESzpcTj9bmTO2sfB1iSU2krjqg2heRoWM/8Vv/iH7
 ETghRVPJat1keRmh9WBIx1IhzfGTmOe8vpa0MInk=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFD8WM043357;
 Fri, 24 Apr 2020 10:13:08 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 10:13:08 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 10:13:08 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCu7F122378;
 Fri, 24 Apr 2020 10:13:07 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 07/17] ARM: dts: dra7-ipu-dsp-common: Add mailboxes to IPU and
 DSP nodes
Date: Fri, 24 Apr 2020 18:12:34 +0300
Message-ID: <20200424151244.3225-8-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424151244.3225-1-t-kristo@ti.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081312_527312_DA4FEE56 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

Add the required 'mboxes' property to all the IPU and DSP remote
processors (IPU1, IPU2, DSP1 and DSP2) in the two available common
dtsi files - dra7-ipu-dsp-common and dra74-ipu-dsp-common dtsi files.
The latter file is for platforms having DRA74x/DRA76x/AM572x/AM574x
SoCs which do have a DSP2 processor in addition to the other common
remote processors. The common data is added to the former file, and
the DSP2 only data is added to the latter file.

The mailboxes are required for running the Remote Processor Messaging
(RPMsg) stack between the host processor and each of the remote
processors. Each of the remote processors uses a single sub-mailbox
node, the IPUs are assumed to be running in SMP-mode. The chosen
sub-mailboxes match the values used in the current firmware images.
This can be changed, if needed, as per the system integration needs
after making appropriate changes on the firmware side as well.

Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi  | 12 ++++++++++++
 arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi |  4 ++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi b/arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi
index 478a07e29538..8a53da1c5f2e 100644
--- a/arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi
+++ b/arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi
@@ -19,3 +19,15 @@
 		status = "okay";
 	};
 };
+
+&ipu2 {
+	mboxes = <&mailbox6 &mbox_ipu2_ipc3x>;
+};
+
+&ipu1 {
+	mboxes = <&mailbox5 &mbox_ipu1_ipc3x>;
+};
+
+&dsp1 {
+	mboxes = <&mailbox5 &mbox_dsp1_ipc3x>;
+};
diff --git a/arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi b/arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi
index 645063d0df13..6e31c1c27fd4 100644
--- a/arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi
+++ b/arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi
@@ -10,3 +10,7 @@
 		status = "okay";
 	};
 };
+
+&dsp2 {
+	mboxes = <&mailbox6 &mbox_dsp2_ipc3x>;
+};
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
