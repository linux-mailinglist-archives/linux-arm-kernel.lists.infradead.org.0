Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6B0DC116
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 11:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vrE/VZnn3c0/dh0DRLi31OhVuw3ROzOdv8s6NbjeiWU=; b=qE1GWxNI9S7F8d
	Ajb2phTBSs+nX6BmVROdGUaSJactM2/sOfzRff86UetAOjnYdskbhZj564IBeUZ2IVEmIM/IWOJDW
	396M36VNyV3zE4M8fzRAAyjBmI5gE8UeZTH6FAX6i0vE4hmU7edQbY0Ur3gZqQEqZc1sy8lK99omU
	o+q5YwScgjIV1X2DGdXGXYzOowL78COm7onBdkTD7YtlEx0eS5qSDiYYajE4Grmd9RTYDSSv5ZYT3
	r6qhye5amls5SATf19el+xeT6tB+Z9g80zaKSzKdtnrXqpIZdtem/htTFyoxsfVsen2Kq1KdeJTs+
	vF0VWpYA9RzDUJRqgMPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOdP-00081u-H9; Fri, 18 Oct 2019 09:33:23 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOdA-0007zG-Ko; Fri, 18 Oct 2019 09:33:10 +0000
Received: from droid13.amlogic.com (116.236.93.172) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.1591.10; Fri, 18 Oct 2019
 17:33:00 +0800
From: Jianxin Pan <jianxin.pan@amlogic.com>
To: Kevin Hilman <khilman@baylibre.com>, <linux-amlogic@lists.infradead.org>
Subject: [PATCH RESEND v3 0/4] arm64: meson: add support for A1 Power Domains
Date: Fri, 18 Oct 2019 17:32:43 +0800
Message-ID: <1571391167-79679-1-git-send-email-jianxin.pan@amlogic.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [116.236.93.172]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_023308_684066_918990A1 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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


Changes since v1 at [1]:
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

Jianxin Pan (4):
  dt-bindings: power: add Amlogic secure power domains bindings
  firmware: meson_sm: Add secure power domain support
  soc: amlogic: Add support for Secure power domains controller
  arm64: dts: meson: a1: add secure power domain controller

 .../bindings/power/amlogic,meson-sec-pwrc.yaml     |  42 +++++
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi          |   8 +
 drivers/firmware/meson/meson_sm.c                  |   2 +
 drivers/soc/amlogic/Kconfig                        |  13 ++
 drivers/soc/amlogic/Makefile                       |   1 +
 drivers/soc/amlogic/meson-secure-pwrc.c            | 204 +++++++++++++++++++++
 include/dt-bindings/power/meson-a1-power.h         |  32 ++++
 include/linux/firmware/meson/meson_sm.h            |   2 +
 8 files changed, 304 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
 create mode 100644 drivers/soc/amlogic/meson-secure-pwrc.c
 create mode 100644 include/dt-bindings/power/meson-a1-power.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
