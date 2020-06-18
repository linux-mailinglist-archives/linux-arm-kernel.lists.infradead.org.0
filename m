Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2571FF833
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pAwsgusG93scbOxXfvwwexPKg69ecIlOEjVr30S0WwI=; b=B+Jk/nkt7S2evz
	KLHE70miY7Gke7d4dSq5evK4R2cS9lOYeSb2tqGM6CyPiGRH7TBNdK0tXWd02UHUM/a8Z0OwG4vLH
	xJwpn/BLBiWRQ7TopOchLDqJQPwYfBbEH1ZaHiCwjaO77vz9F7L+Kga4e1Rp5Y4KntjGZX3CeL2Fu
	/1UsNcyVxixNXq6T1ZdwV7if/1BB0VXovtYqlmHd4m0ManyB4DqCCIzpO+42h1Vyn29Rt0g5JgYT8
	fcQITbTSY+4IkSOxnAl5gALZFQLPrtCBNEB1qNFO9LKcRazSyYPV5PcaNgZBWsXf3qNBKhP7V5uhV
	4pk5kI5xjrmizrhP7mWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwrS-0002gF-Kj; Thu, 18 Jun 2020 15:53:54 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwfv-0005VS-PK
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:42:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592494919; x=1624030919;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/xPz/XUkWYQ+/6NSvaaOEEb50Wks9JYr5YDDXFtRas0=;
 b=QhaiUCEK7i81gENO2tsSSrMwbX3wuhKCyRds4R6hEthMY+vLqoPBeuld
 FWNBBaNWbl0x+lU5WECv1lHy655lfAFnvt5xJTr/tLdfWYwBOZhll+M7e
 bTomtEntP2Sf1ldIbAb9w6mrnW9lvomuPgBL5tXi3zsQPSMcpfnqrL8sL
 o4gX000516OBGZd6zJZVZVdAclCkh7QFzySI1HV7fZAzva50Zm6G4dI0v
 vVg8ZTOHnvTZOa1qyaKwK92Dx0OdJkrnP9uoHlqJ7zEDy5KuObQwOWV1n
 ZD2QKr4DNanq2pPdkkxwF7FDifmrXPIhRVSOAm2bOsfgP04R7gNnGH6wb Q==;
IronPort-SDR: E2EVEbmoB+k9vNfuRVb4TC/r1xLs5eNFWooUjCtOVDwuTIeMhurjvIlZ6cRHGpJUYf/s5WjebJ
 y83z/8whG5O7zm0FIM16nmGMaLDGRxMZUzejqcTXvvTibw0inqRmKpgUhcyg8tjEL6mGGYqycj
 43io/Nmr5coJ0xAZk6ytCZFpDd/limNeZgPSO2n0N3G9CU3mAoH9eSbSo7lsqBCgIw6y76VibB
 Cn+HaNe+AMIl04cJCr2G5/KrfuqLxXzu88k5d/hiv8kOATt2YBQlQV7ux+Gb4ho+zt7IhsQQ2m
 +aM=
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="84149583"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 08:41:56 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 08:41:56 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 18 Jun 2020 08:41:43 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] ARM: configs: at91: sama5: Enable CLASSD
Date: Thu, 18 Jun 2020 18:41:47 +0300
Message-ID: <20200618154147.687878-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084159_849562_8B9B611F 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alexandre.belloni@bootlin.com, krzk@kernel.org, linux@armlinux.org.uk,
 ludovic.desroches@microchip.com, sudeep.holla@arm.com, olof@lixom.net, Codrin
 Ciubotariu <codrin.ciubotariu@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CLASSD is present on SAMA5d2 SoCs.

Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 arch/arm/configs/sama5_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/sama5_defconfig b/arch/arm/configs/sama5_defconfig
index 8e1f78c19920..f688443fe7bf 100644
--- a/arch/arm/configs/sama5_defconfig
+++ b/arch/arm/configs/sama5_defconfig
@@ -165,6 +165,7 @@ CONFIG_SND_SOC=y
 CONFIG_SND_ATMEL_SOC=y
 CONFIG_SND_ATMEL_SOC_WM8904=y
 # CONFIG_HID_GENERIC is not set
+CONFIG_SND_ATMEL_SOC_CLASSD=y
 CONFIG_SND_ATMEL_SOC_PDMIC=y
 CONFIG_SND_ATMEL_SOC_TSE850_PCM5142=m
 CONFIG_SND_ATMEL_SOC_I2S=y
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
