Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CF71F34D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 09:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=664Wsuasmjp0G7/HRzicyE1tsFPvQ5xw0PCSMaInxso=; b=BpKN8au6VjNyHY
	3a3ZEah3gjrDy5lhrhMbYDqeP+a+HfazxaFUa9uysZVb7YkE8CcPQJ7ZvIZ44PodlKY+7pmWBYR1X
	kmQZ4czoWIUIf05CVjVu6TL/o0fyPbLBIJIbdxLHoXWoDGGhjp1doG7qnhqXz+63Lv4QKfVNmtONT
	BjPrq8ENNpFBHres0+O8SwDwuL69jsX9VQJWxSKCSLrPa9aBVtCR2LL1Ot7HRmUKh3GO6BdASIj23
	YWprr7xTZlCiZRyaKe1JB54N4GuTRblsIDdgOi/oO6RPLyQ1RrRowhXGV1Dh3wRImVqQx4nlmChC5
	dqf3w/qlO+3qEPQfGzVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiYgt-0002HE-Fz; Tue, 09 Jun 2020 07:28:59 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiYgm-0002GC-5v
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 07:28:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591687732; x=1623223732;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EdagFqo0zl2QoL9GYL8uhvzMwrGF3eoykcCf0BeB49E=;
 b=SepbYWZP6g/6fc6bRmx3WFoYDeFsiEa6BFYqE7OgeUl5UtVNDlN1l8w6
 J54pdJvEh4mYHm2BmVpIngrizCz1fR1NpB7+z7MujISXmfsHzYQxugfvm
 /CDSw74j3PMCf9yHdl5bWMhCmnByj4YiTlPK48f55FVRdMs7F5xMvElk1
 sYz7GXcRY3f58ry/60W0rOBx505W18tTckdejsLzNXGMSCIHoZC/hBPfl
 3YLhPRanQ8MrAu4xZaIJCblkxkNRRPdyi1JK94Pc2OsvCs5Bo854X0zhN
 wuTCBeoKUeHzXvJ9cOUJFwign0RyW3Ml+laTsiXQ7C6ydMNcYxqqEha9h w==;
IronPort-SDR: QTtMOPx1vuvYZFnLAVvFCMW2enGb9SAeWHRhv5MRLsaXsORetfBEAhhYxQLKXYFkieDoYMYirW
 Amz3wK85+sXhOCAZXaTeWjqzKcDB8Pqcuj3dFlqE9fuvEyMaT3MsW2+6EIY1vRcRCSD3ncVRP/
 ReMmXoqKMzJs5qaiwvpbIly0kc8v+VT2nNnU9vQsFQLQJAdSr0AWBeMPWtWg3HiNBzXKzC/OEt
 6oi0IyP+9b9L4IlkFTzSS28BQJFeqM7MxQeXyr0Jy5GB6a1yrjtx7awqK8L3I84erhvD73fav1
 Puo=
X-IronPort-AV: E=Sophos;i="5.73,490,1583218800"; d="scan'208";a="75941395"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 00:28:46 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 00:28:45 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Tue, 9 Jun 2020 00:28:43 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH v2 0/3] hwmon: Adding support for Microchip Sparx5 SoC
Date: Tue, 9 Jun 2020 09:28:25 +0200
Message-ID: <20200609072828.9088-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_002852_285036_16238257 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.154.123 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an add-on series to the main SoC Sparx5 series
(Message-ID: <20200608123024.5330-1-lars.povlsen@microchip.com>)

Changes in v2:
- Changes in driver as per review comments

Lars Povlsen (3):
  dt-bindings: hwmon: Add Sparx5 temperature sensor
  arm64: dts: sparx5: Add hwmon temperature sensor
  hwmon: sparx5: Add Sparx5 SoC temperature driver

 .../bindings/hwmon/microchip,sparx5-temp.yaml |  39 +++++
 arch/arm64/boot/dts/microchip/sparx5.dtsi     |   6 +
 drivers/hwmon/Kconfig                         |  10 ++
 drivers/hwmon/Makefile                        |   2 +-
 drivers/hwmon/sparx5-temp.c                   | 152 ++++++++++++++++++
 5 files changed, 208 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml
 create mode 100644 drivers/hwmon/sparx5-temp.c

--
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
