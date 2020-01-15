Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9814013BE7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 12:31:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KlbGwVHMNxjGN0rKS2xwvddrLxEVWqh4wIGcaqZEfGI=; b=uCYJgXTfttzP1Z
	T/IpkkHczy79kkQ/TNjDNWjkdXTEoX8N+UwjGaUhcRRZ7k1v0pD5IHjt1AxEwAmElTslAFkjV/UuS
	qBLK//oEdnbwPkMiStf1gJT01h+lkTIr/Q19VVb0mm9n625vJzMO/y7sM/RJ7JI5iR4+j7B9ShClN
	Ll3BYAwodUmGXtVBSTp3Y43dOrhOguwavYdCOlJxIuGBBEk004UG4X151oVdOzmlinfy2goMydGJV
	MqF8pYv4GHBA24XFg5BVxyq5TBf5UNowo/01nDyQDDNdTH+z5S7JSs0RtmRyVjv22oZMVfxT/gLB3
	phpbNptZ+EwhdF+nW9+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgtW-0002TE-9W; Wed, 15 Jan 2020 11:31:30 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgsi-0001nW-66; Wed, 15 Jan 2020 11:30:45 +0000
Received: from droid13.amlogic.com (116.236.93.172) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.1591.10; Wed, 15 Jan 2020
 19:31:02 +0800
From: Jianxin Pan <jianxin.pan@amlogic.com>
To: Kevin Hilman <khilman@baylibre.com>, <linux-amlogic@lists.infradead.org>
Subject: [PATCH v6 0/4] arm64: meson: add support for A1 Power Domains
Date: Wed, 15 Jan 2020 19:30:27 +0800
Message-ID: <1579087831-94965-1-git-send-email-jianxin.pan@amlogic.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [116.236.93.172]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_033040_232628_95B30A6B 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset introduces a "Secure Power Doamin Controller". In A1/C1, power
controller registers such as PWRCTRL_FOCRSTN, PWRCTRL_PWR_OFF, PWRCTRL_MEM_PD
and PWRCTRL_ISO_EN, are in the secure domain, and should be accessed from ATF
by smc.

The secure-pwrc will not be probed before the secure watchdog patchset is merged 
at [6], which adds of_platform_default_populate() in meson_sm_probe(). 

Changes since v5 at [4]:                                                         
 - Move sec-pwrc to child node of secure-monitor according to Rob's suggestion
   at [5]

Changes since v4 at [3]:                                                         
 - add SM_A1_ prefix for PWRC_SET/GET
 - rename variable and update comments

Changes since v3 at [2]:                                                         
 - remove phandle to secure-monitor node

Changes since v2 at [1]:
- update domain id
- include dt-bindings in dts

Changes since v1 at [0]:
- use APIs from sm driver
- rename pwrc_secure_get_power as Kevin suggested
- add comments for always on domains
- replace arch_initcall_sync with builtin_platform_driver
- fix coding style

[0]  https://lore.kernel.org/linux-amlogic/1568895064-4116-1-git-send-email-jianxin.pan@amlogic.com
[1]  https://lore.kernel.org/linux-amlogic/1570695678-42623-1-git-send-email-jianxin.pan@amlogic.com
[2]  https://lore.kernel.org/linux-amlogic/1571391167-79679-1-git-send-email-jianxin.pan@amlogic.com
[3]  https://lore.kernel.org/linux-amlogic/1572868028-73076-1-git-send-email-jianxin.pan@amlogic.com
[4]  https://lore.kernel.org/linux-amlogic/1573532930-39505-2-git-send-email-jianxin.pan@amlogic.com
[5]  https://lore.kernel.org/linux-amlogic/07f0ed9d-0b1a-d84f-de8b-1967e56bbd21@amlogic.com/
[6]  https://lore.kernel.org/linux-amlogic/1578973527-4759-3-git-send-email-xingyu.chen@amlogic.com

Jianxin Pan (4):
  firmware: meson_sm: Add secure power domain support
  dt-bindings: power: add Amlogic secure power domains bindings
  soc: amlogic: Add support for Secure power domains controller
  arm64: dts: meson: a1: add secure power domain controller

 .../bindings/power/amlogic,meson-sec-pwrc.yaml     |  40 ++++
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi          |   6 +
 drivers/firmware/meson/meson_sm.c                  |   2 +
 drivers/soc/amlogic/Kconfig                        |  13 ++
 drivers/soc/amlogic/Makefile                       |   1 +
 drivers/soc/amlogic/meson-secure-pwrc.c            | 204 +++++++++++++++++++++
 include/dt-bindings/power/meson-a1-power.h         |  32 ++++
 include/linux/firmware/meson/meson_sm.h            |   2 +
 8 files changed, 300 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
 create mode 100644 drivers/soc/amlogic/meson-secure-pwrc.c
 create mode 100644 include/dt-bindings/power/meson-a1-power.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
