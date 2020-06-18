Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8255D1FF409
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 16:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qU+VdvkafE0miF2av/y3TCm9JjyPicxUb2soGk7mGd0=; b=YoDKKfb+iy185c
	Krlc0buCuueSfhRFVcZtZvYlXN1YTRpPxFLfeYrEpaHXWigK8ljCNwtjNOSypKv78j/qeg8tA5Oj9
	dZ79eAr6/H17zAFT94CeMFLTBPGJ3OQDomq5EeWzl4rXn3m8PwwGKh8NXJGK310hJQFD1dkcKmxHe
	14tmdkirc5zXYy5Doycgcn5z0RvV7Es0Y9TqLq9jU+4rUj4S3y7VGyqmgvhahAIiU+7snKk5a1iny
	8Wb+ma8laHSLlz0keIKephqZq0ApMT5R+ngmF5+5YqBiom9n2yTUW34YT2XYpQJS7fdPgYsK6Wyqr
	2GZE5nZ9XJ8jRkB0TVSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlv5f-0004s5-CA; Thu, 18 Jun 2020 14:00:27 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlv5L-0004lC-IE
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 14:00:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592488807; x=1624024807;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pf/f1hZ+QC+aV79Jr/mTBD2zhiT2nFLN3XNxZ/7tIXg=;
 b=xrg1BPZtc2PcGt0cw2PQKxYySzV9Dk/ZQpSHpiO68VVDcpLV4rcC2Yks
 lsu0FCwwEWL4ucYZw+7m99N/V2ZNPf+IUX03vpcWfasdohe9gJkTk1tGT
 GuKrJSalWvjxFM6NZ/9lPBh8tkq11FCKdp9uv5BhWlY+NaDL6uhlculJ3
 qCd8mKRNFCcy+nM1eSD09BYxXZsyHR9ti27ltRl9JliN3ZOGhArROgJwv
 rZukqPvPg8LsG0Sgxchaw5mfhy6/pe3pq7dO+IbYEY+nsqwp4nL3ByyFo
 NtRtwu/ifj5VmHFTXbvhwV8apUsHO+J2mpguzrxG1EYVjWIBCy3rxrfHd Q==;
IronPort-SDR: glNIF+jP1Wy9kaiTBXhjwbWxH6h1/pQOiTV9mJ7ozuiN+YesoANspOKr78V30xKI5/Ufx6WdzL
 qheNoTcadLU0YC5NN/4ZnDxs7tvBoHMfrGu5Noy4Sm5snKksZN31ge3wcpxTgJdBeYbYQ0atpK
 mU/DBzMxE8vtKlmDumeA0+cnqJSwG183I+mg84BkBSsB2tfEWhuKxp8T+VwfB93mrKZHWRYQVQ
 SvAAL43D3ImUFGo8pkKaZPj4fHV3xfkJAp6u/QBJ8jVWlSuM0PdnJdh/P5Ex4GnPNaCn8KBIuQ
 Idk=
X-IronPort-AV: E=Sophos;i="5.73,526,1583218800"; d="scan'208";a="80637099"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 07:00:03 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 07:00:03 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 18 Jun 2020 07:00:01 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH v4 0/3] hwmon: Adding support for Microchip Sparx5 SoC
Date: Thu, 18 Jun 2020 15:59:48 +0200
Message-ID: <20200618135951.25441-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_070007_637683_1D072967 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
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

Changes in v4:
- Added sparx5-temp.rst
- Sorted #include lines
- Use AHB clock to derive sensor divider
- Added comments to temperature calculation

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

 .../bindings/hwmon/microchip,sparx5-temp.yaml |  44 +++++
 Documentation/hwmon/sparx5-temp.rst           |  33 ++++
 arch/arm64/boot/dts/microchip/sparx5.dtsi     |   7 +
 drivers/hwmon/Kconfig                         |  10 ++
 drivers/hwmon/Makefile                        |   1 +
 drivers/hwmon/sparx5-temp.c                   | 168 ++++++++++++++++++
 6 files changed, 263 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml
 create mode 100644 Documentation/hwmon/sparx5-temp.rst
 create mode 100644 drivers/hwmon/sparx5-temp.c

--
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
