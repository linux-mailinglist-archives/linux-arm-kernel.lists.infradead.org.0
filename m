Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B78108E09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 13:34:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0EZdQz3J6pgO2yHDPe8sHjmF/7qO2oM0qSkWrTP0GTY=; b=m0JfNit6UFYWRr
	Fqr50fXchO22mwSVPf7jStwwPial7ZP0WgpW/VjzcUcSAEWN4ND21xF4QVwECesBAMprhPlIpEmbD
	+/jq/2lm+GF4vecV/kG0z34auCI1OBTMnOXkJYkP5syqXCnFWWgynaNtq+yi2ja16T4owF1UICVan
	fqYiDzaMcga1s/9h1IndxWlKSCEOHQPt/TAQvR8/q/qKUYbzCl5lqVHgDJXGWWJrFraeM6WmkS+ab
	G9uduUyHS7czXukZQRNmcAtLr6PYllUPVRfL5ovrQ/QqDyYxLSWLOsuVr7UuzCWn+VsOc/6jzt31U
	vodcWfH9LNra7F5E4O6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDZ0-0003ln-5E; Mon, 25 Nov 2019 12:33:58 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDYm-0003jd-1b; Mon, 25 Nov 2019 12:33:45 +0000
Received: from droid12-sz.software.amlogic (10.28.8.22) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10;
 Mon, 25 Nov 2019 20:34:07 +0800
From: Xingyu Chen <xingyu.chen@amlogic.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Kevin Hilman <khilman@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 0/2] add meson secure watchdog driver
Date: Mon, 25 Nov 2019 20:33:36 +0800
Message-ID: <1574685218-31164-1-git-send-email-xingyu.chen@amlogic.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.28.8.22]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_043344_088412_AD2E7E54 
X-CRM114-Status: GOOD (  10.01  )
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, linux-watchdog@vger.kernel.org,
 Jianxin Pan <jianxin.pan@amlogic.com>, linux-kernel@vger.kernel.org,
 Jian Hu <jian.hu@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The watchdog controller on the Meson-A/C series SoCs is moved to secure world,
We have to call SMC instruction to trap the ATF for watchdog operation. These
operations are different from previous SoCs, so we introduce a new watchdog
driver to support this kind of SoCs.

Chnages since v3 at [2]:
- add SM_A1_ prefix for WATCHDOG_OPS
- remove phandle to secure-monitor node
- remove watchdog node from dts, and register wdt device by platform_device_register_simple()
- remove dt-binding for meson secure watchdog
- use the msec as unit of timeout parameter which is passed to fw side

Changes since v2 at [1]:
- remove useless dependency in Kconfig
- return zero when getting left time value fails

Changes since v1 at [0]:
- add a new dependency in Kconfig
- simplify/add the return operation
- remove useless ping operation when setting the timeout
- fix some return values
- fix the license statement

[0]:https://lore.kernel.org/linux-amlogic/1570874721-36077-1-git-send-email-xingyu.chen@amlogic.com
[1]:https://lore.kernel.org/linux-amlogic/1571387622-35132-1-git-send-email-xingyu.chen@amlogic.com
[2]:https://lore.kernel.org/linux-amlogic/1571983984-11771-1-git-send-email-xingyu.chen@amlogic.com

Xingyu Chen (2):
  firmware: meson_sm: add new SMC ID support for accessing secure
    watchdog
  watchdog: add meson secure watchdog driver

 drivers/firmware/meson/meson_sm.c       |   1 +
 drivers/watchdog/Kconfig                |  16 +++
 drivers/watchdog/Makefile               |   1 +
 drivers/watchdog/meson_sec_wdt.c        | 207 ++++++++++++++++++++++++++++++++
 include/linux/firmware/meson/meson_sm.h |   1 +
 5 files changed, 226 insertions(+)
 create mode 100644 drivers/watchdog/meson_sec_wdt.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
