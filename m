Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E189674EE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9y3N1rHuPWdRTnJPCtnZC7jdEVr7s/KDH7HFEqNlhk8=; b=uTT0khxX2N0zZA
	VGGtNP/K2kDDw2c3Bh5ev+83uwEb5YeZ7hR2XdRAIgWfiIWjIVMz2WxKaQyxO3Wth5xocbFuksJ8+
	nyZX5S1AJWsuOJ6YALH2Z3FsBEZIzv/mQoLXkJhLjXKAGxpRGEcq52gtmVhrARbcAOp5c2qcQcHqx
	g5vPpAI6VEj5DiKWriF1y78FdC6ktqDIPuC7BZEecVS30ZgrAPVKjkK9A/uOO70NQs9/BCeuMbPsL
	u+CcZTZyMTilDvIQoCmCHdDzYEXIioxGaGyMfMNQVC6orc4heJPskDeYRlY1cJg40905JP9zYikA4
	T7RZV+Uqmg1aFvZ+RglA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdYg-0002jb-SI; Thu, 25 Jul 2019 13:13:22 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdYP-0002iH-Ge
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:13:06 +0000
Received: by mail-wm1-x341.google.com with SMTP id a15so44960641wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 06:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UlHPQbgyQYfGZ3NYNuBRx+Lr52kdbe694moegnICIVc=;
 b=NifUXO46j7w7Famst0qSTWA+/NAM63+P3EEYOVDutdfzQG+lK0vxeP1W9KJl2ETjQ7
 JYP0quRtoQLFtAnCn7C6Pc3FPDxtA/BAwt2L8CF4rT2eLsfFPOexvuzSo5aEgUenXEKF
 0xJD1ZPaQUgYskYoku7SCxlDucpHqt4XuP4VpktEH/xgT+qb9NxNwqJ6vKAo+oM+K7qJ
 p4pv+z98jk9nWshsZwikW5iH3QZiYecYIXm8id5dC6AdA6RFNy94z/9qQA1s7rRTS9S7
 o0jU6sDTrVHcIz8qEpotKPocMOYRC8+R1o2j3d6Xj22b4M+z7IhWR0RELbV6dSxIxFfI
 Ojmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UlHPQbgyQYfGZ3NYNuBRx+Lr52kdbe694moegnICIVc=;
 b=gCRpsdQAYFQZI/xzFgha7F0a0Qv/IOvoJNOYX3y4W8PWhFuIl8lVJ1CRHABdpS9LTi
 rzaj3ppRMrdkvqk009yh90T41lep1oVwsQhQ8kCOFHJCw+NrTEexqOsa9YKp/SqWJ+os
 iWAYepFoKkZkyvvlrm+dEUnbihQpAZ62rkSiXCeIVMjrElBEcAKwTI+y91ovkC8j0YSl
 mPsy9F3A5khnkv0L1o7uUzTO/Dv3WIH4Fbf/ViwERtnUBYWyzyMnZ/6oUj1xA/Q9I4Bg
 ITsxq2i5a6SChyR7fR6uafGTK9jP1e8/DkZbyhQgLLLSZ3/E+kOfit11pn1VG159L0lS
 sanA==
X-Gm-Message-State: APjAAAUGm3hm09IgPSxkmf8cCW6C1QcvrkUwccQkXstgeq/PMdEjVMvz
 WrRzOFBOkEQafDHVXIQWCsw=
X-Google-Smtp-Source: APXvYqwY8Li4ENYOTTDLqaDLIZqrJmGdo/DsVkKI6zl4K5u/ERvtsF3kWAQdjUnv/c82L9w7qWyNag==
X-Received: by 2002:a05:600c:204c:: with SMTP id
 p12mr79503703wmg.121.1564060382076; 
 Thu, 25 Jul 2019 06:13:02 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id
 z7sm47119735wrh.67.2019.07.25.06.13.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 06:13:01 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, David Lechner <david@lechnology.com>
Subject: [PATCH v2 0/5] ARM: make DaVinci part of the ARM v5 multiplatform
 build
Date: Thu, 25 Jul 2019 15:12:52 +0200
Message-Id: <20190725131257.6142-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_061305_590729_AAB0165B 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This series makes DaVinci part of the multiplatform build for ARM v5.

First three patches fix build errors spotted and fixed by Arnd with v1.

The fourth patch adds necessary bits and pieces for davinci to support
multiplatform build and the last one actually adds all davinci boards
to multi_v5_defconfig.

Tested on da850-lcdk with both multi_v5 as well as davinci_all defconfigs.

v1 -> v2:
- added patches from Arnd that fix build errors spotted when building
  random configurations (much appreciated)
- rebased on top of v5.3-rc1

Arnd Bergmann (3):
  staging: media/davinci_vpfe: fix pinmux setup compilation
  media: davinci-vpbe: remove obsolete includes
  davinci: fix sleep.S build error on ARMv4

Bartosz Golaszewski (2):
  ARM: davinci: support multiplatform build for ARM v5
  ARM: multi_v5_defconfig: make DaVinci part of the ARM v5 multiplatform
    build

 arch/arm/Kconfig                              | 21 -------------------
 arch/arm/configs/davinci_all_defconfig        |  5 +++++
 arch/arm/configs/multi_v5_defconfig           | 12 +++++++++++
 arch/arm/mach-davinci/Kconfig                 | 17 +++++++++++----
 arch/arm/mach-davinci/Makefile                |  2 ++
 arch/arm/mach-davinci/sleep.S                 |  1 +
 drivers/media/platform/davinci/vpbe_display.c |  4 ----
 drivers/media/platform/davinci/vpbe_osd.c     |  5 -----
 drivers/media/platform/davinci/vpbe_venc.c    |  5 -----
 drivers/staging/media/davinci_vpfe/Makefile   |  5 -----
 .../staging/media/davinci_vpfe/dm365_isif.c   |  8 +++----
 .../staging/media/davinci_vpfe/dm365_isif.h   |  2 --
 drivers/staging/media/davinci_vpfe/vpfe.h     |  2 ++
 13 files changed, 38 insertions(+), 51 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
