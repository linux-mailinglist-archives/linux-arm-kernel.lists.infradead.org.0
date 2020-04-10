Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B40B1A489F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 18:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PwiIoz5YB3Egwud/Lwu3d7dbZkKhfBQN84EbzYaH288=; b=nNBrVytiADITu/
	dl8OCGqMTmzcxad5Pt6w+j0ejzL9WDmAKrDlA6jlpvwxemoYuwfATknYLrQnpT/GeuoyJDyh8LfP3
	e8ZVI4oTSbDTiU5AEE5jE6bToZfLPzIctWyICPvDv13Je6ih5pchXmbZDc7zSCVnhxr1FfFOmST06
	gIJ1gYnOg6jXyjZX+Cpj8gtRtKOFKF+vf7ze9Ya84+H4zi/ubJHCH56R7VdT8lLUITC1gtfa4dQJ4
	J/RSPdsKutYdIQ4J3HgyA2pEK+am3d76ZpxbiY0JHSTkYZXTz8hAmI+eS3M0jPcYBu317AyLrtUmX
	Ok1oegwUnePCZnhpmN9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwl8-00069q-US; Fri, 10 Apr 2020 16:44:03 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwl2-00069N-9Q
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 16:43:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586537036; x=1618073036;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=IZtgr281NErrC4ObsXh3MQXKvxHUfMzv2fvTAErzi5s=;
 b=i3fRgdHSLlxLX8yvx8K1kCDJS3Izh5vJc/eZnR4UjlD/zD4DO8fkz0UJ
 a4rEeoDZRvKyAoXMP9f3X8l3OPtW7MSFSGLO6ysMeZrWgG13sVdPMjDE6
 z1Sg4ZC4cVrX5Rh1nKoTEfsuic5X7m0BLgXKdFdtULGelqCDS9nt++14l
 XupSn5R10CFe2IWPPR+aDOW7kuwPS3jWHQ+hYMklvu7LHduubdhercA6G
 +7rduybxGppHTUr5pYZLbaPruQcxe3nid7acMQ1dsNaBUT2aaGGjifJ4y
 fauZsC9HTf1opLmjPoDyFf51NqC/TKo5GwbRMsOTtgQLO84fCCQKv1Xqb w==;
IronPort-SDR: PXJOqZSFecMhn6NVignQpMzVGcP3WR0oAaJwMXHXQjJZXUM0iCdbt094IHyDB21H6SVQdf0Uo7
 2ALtn/JsADLBdmOwTP1XTMIbqbjdpHib3ranqxO0PuRIMTaPtV6Od8G2JKiyzakdJOjbWpI2mU
 QVVQEVu7tYcbGJmsYU7WlA8aoLsV9H8/hYNZMBLfbEnTlXHmyaOdj5FPM4EkfGD05IgEevYSKa
 eYYcAg56gZdXQKFGTaBXAtqOWzSLEdpSW1s6iBd4yhJHxqfmsv6JWmedSy+SF1iizx/oS/WRgT
 Dwg=
X-IronPort-AV: E=Sophos;i="5.72,367,1580799600"; d="scan'208";a="75501639"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Apr 2020 09:43:50 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Apr 2020 09:43:50 -0700
Received: from cristi-P53.amer.actel.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Apr 2020 09:43:43 -0700
From: <cristian.birsan@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] ARM: at91: Add initial support for SAMA5D2-ICP
Date: Fri, 10 Apr 2020 19:43:18 +0300
Message-ID: <20200410164320.7658-1-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_094356_343390_E23E91F8 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Cristian Birsan <cristian.birsan@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Cristian Birsan <cristian.birsan@microchip.com>

This patch series adds initial support for SAMA5D2 Industrial
Communication Platform.

Codrin Ciubotariu (1):
  dt-bindings: ARM: Document SAMA5D2-ICP

Cristian Birsan (1):
  ARM: dts: at91: sama5d2-icp: add SAMA5D2-ICP

 .../devicetree/bindings/arm/atmel-at91.yaml   |   7 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/at91-sama5d2_icp.dts        | 797 ++++++++++++++++++
 3 files changed, 805 insertions(+)
 create mode 100644 arch/arm/boot/dts/at91-sama5d2_icp.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
