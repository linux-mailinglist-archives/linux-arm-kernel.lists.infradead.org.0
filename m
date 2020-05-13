Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 997EC1D1424
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gT97NyO49esN9o0n5pXETgvY/Zmpy6DRiz9uVne9kKI=; b=RYai6MZoMZfEaj
	aC3ygXUwuPdDZoqaLruLmiaDwvCEe4Gc3sDw4aST9IDocWi/mFLECMXvcNJKMLG3LIroACnv3wNf1
	Y+KbN/WnxToMs0jTuDpcP8sRBHj9vT1ZfO8sw68iES2EhDVORK1P2VNjQhNzdgkSAco+yDfz2K2gH
	YXXJVssqI9ZGFle10uxt/OcKcoPohdpe9TFUkYGprxcAK/z+iyOE80+4koVwMOJEv21GAYfzu8r/9
	3hPH1raPU7d0BPZ763gLwGK4L2Q50tjOhlSvBz1UprHLlAYJgU2jRiwFfH2JZXvL+P4cAiQew7CH9
	evCFfzRVknSIT44I7D+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYr9Q-0005Zs-1v; Wed, 13 May 2020 13:10:20 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr8A-0004cd-Ch
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:09:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589375342; x=1620911342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ykGNljrOL3uL7TOqwtHYrU0bzI70hpjkW9oijaZnkD4=;
 b=KtfiAULLQbcvn6U0FW/C4zLxARwV1dZMCeL1LfdIGXhXNiy5oI16I9BY
 pprB7kOOvAD6iQBudCa+/k7xaoXF8E1yf8/kQFjzzycvy8qlYjx2DuPFE
 mRoL3IMQU/vv4mQQhtOeDdZ2FVbQbmpk5DCofJwyQWJJhYwJqhJTlPMnj
 tPjdeFN16U452Qp0EpNUd/n8F3OMWNokvAYdvtO+zczCme5f0jzevZueb
 mlMDdn/4I9Ah4gVW6j0dMASG6kmaC3pETJDlk5qzLrnzwa7hOI+3OhbUE
 Opblci67Ei/Dm31olum1GkjQZq4r4I8kOJqdBM+/fimRaaSZqGY3J7NEe A==;
IronPort-SDR: pp4CAtxiOJ18bIMjqxiPSRdDrgZcaeMpLz8CbXkSO+KTloXEVNF1IHYP6QlO1fwOxxW5mRXd1s
 HgqbGO1XEwzb3Wn4qNWElxT+rKYtCLtm9QW9bJkcSHdWJ28KMwovk+0Bn5UoEp4pMb+NLdkoeW
 /LPDUWLUlLoSnARibPtUAA9QsYq9iWa5rWzlVyWIt/u0UpGjIYEaJcEVZj7mqz2cY0D0emTBQ5
 JhBdFIkuo3ZrA0v7ONMMUJa1UpHO6N0OPGIBs3hCx7E1YqaLjsY85HTxEl6gcIbXEemXJk7Rgk
 CX0=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="76497693"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:08:57 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:08:59 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:08:54 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Sebastian Reichel <sre@kernel.org>, SoC Team <soc@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 1/5] dt-bindings: reset: ocelot: Add Sparx5 support
Date: Wed, 13 May 2020 15:08:38 +0200
Message-ID: <20200513130842.24847-2-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513130842.24847-1-lars.povlsen@microchip.com>
References: <20200513130842.24847-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060902_460191_7FB3C632 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the support for the Sparx5 SoC.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../devicetree/bindings/power/reset/ocelot-reset.txt       | 7 +++++--
 MAINTAINERS                                                | 1 +
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt b/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
index 1b4213eb34731..4d530d8154848 100644
--- a/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
+++ b/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
@@ -1,10 +1,13 @@
 Microsemi Ocelot reset controller

 The DEVCPU_GCB:CHIP_REGS have a SOFT_RST register that can be used to reset the
-SoC MIPS core.
+SoC core.
+
+The reset registers are both present in the MSCC vcoreiii MIPS and
+microchip Sparx5 armv8 SoC's.

 Required Properties:
- - compatible: "mscc,ocelot-chip-reset"
+ - compatible: "mscc,ocelot-chip-reset" or "microchip,sparx5-chip-reset"

 Example:
 	reset@1070008 {
diff --git a/MAINTAINERS b/MAINTAINERS
index 5aa28d6e39d4f..1db598723a1d8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11230,6 +11230,7 @@ M:	Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
 L:	linux-mips@vger.kernel.org
 S:	Supported
 F:	Documentation/devicetree/bindings/mips/mscc.txt
+F:	Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
 F:	arch/mips/boot/dts/mscc/
 F:	arch/mips/configs/generic/board-ocelot.config
 F:	arch/mips/generic/board-ocelot.c
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
