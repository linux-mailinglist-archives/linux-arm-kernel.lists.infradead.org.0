Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3663D173C6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ygtHdUMqElAQVECz+cuPpMLt1id7Ng6K6BGNYeQPQJw=; b=tI/GCqoOkzyaAc
	YWivvTm+a9gAmGrZG+o1MsgZpuSg66FXcBW5GzFRCR4iL4USTShR5RpR5e4HmqT++vBiQhaXWDp2R
	YHZz2k542328igw6IBWpmsO/hsvzhrrERa8Upy1Vs/UiKTPIX5CRx9NZ1CK7OT4gLvFRZr1Ps1Pcp
	lgaAXvoGrB2HM/PCU0fnuQz4VuSSwN7mx0x8t+ZH574gHAU2V4TO5MBi43ZRyiNMJjFykUDkpYqtJ
	iP9QkQjdt+qj4+VUHgtpBgP1c+bLrmY55DHV+uKl/WrsLhqMRPd3orebpeOyxfCra6YqEn0tXmRC2
	YrapZErDnl9SfoPMsPkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7i4x-0008CJ-CS; Fri, 28 Feb 2020 16:01:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7i3k-00076g-B2; Fri, 28 Feb 2020 16:00:18 +0000
X-UUID: 238509fa3be84e219ff04851a0490b41-20200228
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=6GQzQmyAP4hZHov0w9Z++EkLKOgmoZgg7oFRSbDV/cs=; 
 b=oF3/ZhXT0lsdOfiwc56cBMF6TTySj1OjKziRwyhm/UW9vtIFAEV+pAD0IUIzgBbyw3uYc+Y61h9pa8vF/pPGJ3qN6ltUfi7LcCIZUFV3dGvB7A+h68GhljnmhKxkFqZVMyUenI/wIMcRx6w1Mjqn8jFRaoGZf9cZZZ3Ng/Kyy4c=;
X-UUID: 238509fa3be84e219ff04851a0490b41-20200228
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1295405409; Fri, 28 Feb 2020 08:00:10 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 08:01:18 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 23:59:03 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 28 Feb 2020 23:59:48 +0800
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [V3, 0/2] media: i2c: add support for DW9768 VCM driver
Date: Fri, 28 Feb 2020 23:59:56 +0800
Message-ID: <20200228155958.20657-1-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_080016_425753_66FD2619 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 louis.kuo@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Add DT bindings in YAML and v4l2 driver for DW9768 lens voice coil actuator.
This is a 10-bit DAC with 100mA output current sink capability from Dongwoon,
designed for linear control of voice coil motor, and controlled via I2C serial
interface to set the desired focus position.

The DW9768 controls the position with 10-bit DAC data D[9:0] and seperates
two 8-bit registers to control the VCM position as belows.
DAC_MSB: D[9:8] (ADD: 0x03)
     +---+---+---+---+---+---+---+---+
     |---|---|---|---|---|---|D09|D08|
     +---+---+---+---+---+---+---+---+
DAC_LSB: D[7:0] (ADD: 0x04)
     +---+---+---+---+---+---+---+---+
     |D07|D06|D05|D04|D03|D02|D01|D00|
     +---+---+---+---+---+---+---+---+

This driver supports:
 - set DW9768 to standby mode once suspend and turn it back to active if resume
 - set the position via V4L2_CID_FOCUS_ABSOLUTE ctrl

Changes of v3 are mainly addressing comments from Andy, Rob, Sakari, Tomasz,
compared to v2:
 - Rebase onto 5.6-rc1
 - Convert text documentation to YAML schema
 - Add documents for the register addresses and bits in the registers
 - Merge _power_off/on with runtime PM suspend/resume function
 - Drop the I2C ID table
 - Refine DW9768 power sequencing timing
 - Use the regulator bulk API to enable/disable regulators
 - Change i2c_smbus_write_block_data() to i2c_smbus_write_word_data()
 - Fixup coding style and improve code quality
 - Fix other reviewed issues in V2

Mainly changes of v2 are addressing the comments from Tomasz, Bingbu, Andy,
including,
 - Use i2c_smbus_write_byte_data to replace of the custom dw9768_i2c_write
 - Use i2c_smbus_write_block_data to set vcm postion
 - Use the runtime PM suspend/resume callbacks to power off/on
 - Check the PM runtime status before powering off in dw9768_remove function
 - Add one more regulator vin for the I2C interface
 - Remove or refine log print
 - Fix other reviewed issues in v1

Dongchun Zhu (2):
  media: i2c: dw9768: Add DT support and MAINTAINERS entry
  media: i2c: Add DW9768 VCM driver

 .../bindings/media/i2c/dongwoon,dw9768.yaml        |  55 +++
 MAINTAINERS                                        |   8 +
 drivers/media/i2c/Kconfig                          |  10 +
 drivers/media/i2c/Makefile                         |   1 +
 drivers/media/i2c/dw9768.c                         | 437 +++++++++++++++++++++
 5 files changed, 511 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
 create mode 100644 drivers/media/i2c/dw9768.c

-- 
2.9.2
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
