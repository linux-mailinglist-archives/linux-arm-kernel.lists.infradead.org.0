Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A681FAB14
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O/4D9FkcP+Ev0GtJTh6eRhxOhipS/eha5LgU2IK+OGI=; b=VcbgbaGXOHhI4u
	JaH0oX31sQsMZRz3fu8oVYlVoXDKfBUWp5WgHaDpBLWU/GMqpvoF1zen8zWxRc63KhKWNB9muZmbL
	KlkddGBnvlQdbpfUUIDyDBet+0bkaCJFbdmgNpdSlP0X531pDULpLAqY1vYn1+HAltPWy1em+xvXL
	PnvkjsChTGxETjm5YvwzqOcZXBQOI04KV02heqNj52VyEUfOF5BhR+DMonnw+cTHVDpvIh1ijxigD
	ImKD0WJnT8ogD2tuLrQNOl3mKBGP2A0jb2UNoZSxd+GtK41261Xj63OQuK2Rqzbzg+ON8gIByh3wL
	buX95Td5bEk3pubDAUJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6vF-0003yS-4C; Tue, 16 Jun 2020 08:26:21 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6v6-0003xh-3N
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:26:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592295972; x=1623831972;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pdUPZ7+Pu/NEXeETQG7AdYlCrLApBPSZGixeZ66Fvys=;
 b=voQ902xUnuUnRWRg6lgauEzq9dDDLw23v08ui4JZFq/bUJLGGhlZKDQQ
 Gsko+R68XwoFBD8AQl5CSB3XX1n/EKI2QepfvR1AmWHP4wAnRxGF+6F9P
 f9DsF61y0RyEuB9KJpS8G4v+QERu6Hq/nbIAj4d0ExeZfGigI6oAyl7Z1
 Yzy+9L2q6v0GtmaNWOPw0uelML+4bCpEtCITeM+UurZY1o1dc2BMvqyNI
 rEGfVMPK1AyYgP+n/lw3YX2kv99t6ALQYRtDHEIMiK/o/RaTWNbUQmA52
 5qfq/CpqPS4uRCaxBbD3JKpTL8l+lX8w4yP4vQKNt5FecyOw6kycYoyzy Q==;
IronPort-SDR: YcQAzRbALpE91uj+fDjLyhJYX/RMVfaIOHGR+8/8dHiOmYVMzdWjHPlVSty/KZqDBmkZ/vqR30
 EGwopgrpB+EGNuOiIuYFzQJaIj8JdyJWadsaX8ryy4qwmBU44ZIF1MRI5BrXjIQpW++MJJ50Bv
 J71rXEzXdlQkeunDpG5RyoyfNrr+qgRMy2xH2xYLlK06UiTZxVby7C7XtQKz3jqZt98F46dFjk
 juc62I6iEsoC4yw8e3VTkxraBX9KKeJZo8GUrL2Przc2jZ/Gu+rkXaMZqEt1hHX62FMiXR0MzN
 W/g=
X-IronPort-AV: E=Sophos;i="5.73,518,1583218800"; d="scan'208";a="79621886"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Jun 2020 01:26:10 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 16 Jun 2020 01:26:09 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 16 Jun 2020 01:26:06 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH v3 0/3] hwmon: Adding support for Microchip Sparx5 SoC
Date: Tue, 16 Jun 2020 10:25:53 +0200
Message-ID: <20200616082556.27877-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_012612_170630_809C6E41 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.71.150.166 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
(Message-ID: <20200615133242.24911-1-lars.povlsen@microchip.com>

Changes in v3:
- Enabled driver for COMPILE_TEST
- Use "bitfield.h"
- Trimmed #includes even more
- Removed unnecessary devm_add_action()
- Maintain sort order in Makefile
- Minor cosmetics

Changes in v2:
- Removed unnecessary #includes
- Statement reordering in s5_read()
- Replaced EINVAL with EIO
- Add 'break' in default: case statement.
- Removed extra ()
- Removed superfluous initialization

Lars Povlsen (3):
  dt-bindings: hwmon: Add Sparx5 temperature sensor
  arm64: dts: sparx5: Add hwmon temperature sensor
  hwmon: sparx5: Add Sparx5 SoC temperature driver

 .../bindings/hwmon/microchip,sparx5-temp.yaml |  39 +++++
 arch/arm64/boot/dts/microchip/sparx5.dtsi     |   6 +
 drivers/hwmon/Kconfig                         |  10 ++
 drivers/hwmon/Makefile                        |   1 +
 drivers/hwmon/sparx5-temp.c                   | 136 ++++++++++++++++++
 5 files changed, 192 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml
 create mode 100644 drivers/hwmon/sparx5-temp.c

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
