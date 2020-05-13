Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 019421D1422
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ucoraNngLipeU0RDcwTysndTkbvCMuhps1zalxvtC8M=; b=UiC5vYmsJ/ug52
	eTDNShlGLE6/5Jm6FfUnC056tfpFqi/Kek3/MzVFGmlAx8S9xOhHr19jNX8Ir84KNNccbtBxHEM1k
	XDQ7FHsPrLbJ2V/4/OM99TeSnoqgAFWQ0KuV5qRC7n3txzK63GgBSU0GKfHJLwHxACf5w5vxRc85D
	zbqwVyQo/FmS8QoN3CWU8bWaDtyWULLfRQn99s28tM0bZo4xjv/1ze7x30h/1hGACCw2+npJ/sL3Z
	umc85Nzh08vynGG8ilL2dsdvLpEVdGo3QrsU6E8RjeWolWEjYVWICkGisrzpN8IGGuXIZCImk+Ew6
	QdmpRVjz/90SgegdFJGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYr92-0005Kv-65; Wed, 13 May 2020 13:09:56 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr83-0004VI-L9
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:08:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589375335; x=1620911335;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wEXDFyhD27FZDpCBx83MYF8BSCc7p0QLtEEMqVkQwfk=;
 b=kVMNO2NsH2oPLucy4doYPWJG+Ohuyj4JXRWb8d5Ib5iM5lYOQkJRGw34
 Mz6O9PAEIDhWb3Ld3Ar09UemY3j5CIX95zuEGUQy3CIcDs3uMFucBUS7z
 PCZviQ42mDfqJwpdGTCb4P0jf4iJiC2Kv6PfmNCMyt/r64wruH2QRLeuT
 ph/r6dTOLePkOwd6jSGpTNeF9wQQ5bgjqj1Sr/EES7LaxVsSM4oXM/hxW
 /x9VNAblajw1UjEph8kG3TlZE/WFPXx5ptmiw4OOsGEQ/fEDzzOvB/JMD
 U9iW7sS7CaNkWh8GPRP5fUC4HzCCU49Q1H8D7iZTkzYoIug0AxggM86S4 Q==;
IronPort-SDR: u4GtpcwpQ8MLU6OB9FkxDseViNR3YvoIb2dMRW2aHsvK94tIS3YRC/H1aZ1aJGFh447eHJ6kxm
 q0M9h2sHr59/QU8HxihFuIrdVG6L6VY1StWHUaXYcFnJ+0gUZ1kYwzulTdKX9mKoyjDNMzGlW1
 WRoWOxUtL7Qf/vH9i/84trcmss+PxIw8QdVVYIiN1CrScjMZzqrrZF03S7HzRVRK8cubqsbNZk
 Up62au2XJDvEMe26Udy40kwR9xIUIxKskgvj+ggSJFtYonedtPRoxzWJsNiom5nY35mxdL2tkf
 n18=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="79438661"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:08:54 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:08:57 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:08:52 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Sebastian Reichel <sre@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH 0/5] power: Adding support for Microchip Sparx5 SoC
Date: Wed, 13 May 2020 15:08:37 +0200
Message-ID: <20200513130842.24847-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060855_717586_CBDBFD03 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

This is an add-on series to the main SoC Sparx5 series
(Message-ID: <20200513125532.24585-1-lars.povlsen@microchip.com>).

It adds reset support for Sparx5, using the ocelot reset driver.

It is expected that the DT patches are to be taken directly by the arm-soc
maintainers.

Lars Povlsen (5):
  dt-bindings: reset: ocelot: Add Sparx5 support
  power: reset: ocelot: Add support for Sparx5
  dt-bindings: reset: ocelot: Add documentation for
    'microchip,reset-switch-core' property
  power: reset: ocelot: Add support for reset switch on load time
  arm64: dts: sparx5: Add reset support

 .../bindings/power/reset/ocelot-reset.txt     | 13 ++-
 MAINTAINERS                                   |  1 +
 arch/arm64/boot/dts/microchip/sparx5.dtsi     | 11 +++
 drivers/power/reset/Kconfig                   |  3 +-
 drivers/power/reset/ocelot-reset.c            | 95 ++++++++++++++++---
 5 files changed, 105 insertions(+), 18 deletions(-)

--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
