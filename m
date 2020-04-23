Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 413B01B5EF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V/M/sSlWn6pJ700loJLvTMR2O2asyXec1rWNyZuAPO8=; b=XS8N8nV/fhqWyj
	mYmPIUUJozCmCRqnHcN1Rk6s9Nu0/xXyqIuQfFEOQua33Xh52+npXhi69BDtIWQouBCzGUAKV9wKA
	VKfeMRWQOi0FyQTbsdg5yOU7ycXauWc1VvCRLnK+DYOyUEfWTn1MKIp6jye0madOGtzfmgucJwBA9
	wV2venTxVpmTDgl55inilcEspvFBp4891yOzgXTATrUPMwke3phDsW3f6lEHQYAnweyYeT0tvhWLQ
	obVgN8s4SVRBRsRQcbc82amxG07AFMZVjQYODuCTgCtaVW1XhP0YNYn7TX1Z4Zq0hzokkva8Rp9bZ
	3mJI4taNnJCs/YTeoUNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdcR-0003Ny-I4; Thu, 23 Apr 2020 15:18:27 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdcH-0003KH-GK
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:18:19 +0000
Received: from mail-lj1-f181.google.com ([209.85.208.181]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MyJx6-1jHfJ32IyS-00ye6Q for <linux-arm-kernel@lists.infradead.org>; Thu,
 23 Apr 2020 17:18:13 +0200
Received: by mail-lj1-f181.google.com with SMTP id n6so6573202ljg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 08:18:13 -0700 (PDT)
X-Gm-Message-State: AGi0PuZdN7I+Zq7JXBjnpVJ82WgTwlAFrI9IOo2Gcf3UySo3OTPqKvFN
 b16M2iy8X9tzLCPJ1wfMQPFp5D2ebty04Uy5xmk=
X-Google-Smtp-Source: APiQypJZExUtcD94RDruX3xk8SuY1awdgvcATE7ZOMREsLTA2azO4fgL4AgWM4ZPRu8nw8wtzLgPpXRvAVCqNgtH2QE=
X-Received: by 2002:a05:651c:107a:: with SMTP id
 y26mr2746346ljm.80.1587655093051; 
 Thu, 23 Apr 2020 08:18:13 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 23 Apr 2020 17:17:57 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2rtR9y15Vx1Vgsv2xpaQyf7eNgV8JsCCOYaWTWZhMNAg@mail.gmail.com>
Message-ID: <CAK8P3a2rtR9y15Vx1Vgsv2xpaQyf7eNgV8JsCCOYaWTWZhMNAg@mail.gmail.com>
Subject: [GIT PULL] ARM: soc fixes
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Provags-ID: V03:K1:nTYMY1dQb3xUBsbq+8BlDGz+2PuwTwyl4RbfaIcAbcHC2UQcodm
 y+vgQFZi+dqKR1Y25SLXis3yux80RZ36oAP0IFSniUtaSOd+DnoKVHWl8X93ShdoJgUuYKK
 o67yVOvIlJyfHRs1Fgfa43CQ/bJnCPO1vDRp6pqiZCqhkT/JPyWK7rTNHnEHj2BoA1UdPH1
 lUI1cGQoVzZdynUe3kgYA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:75tjKpVxAJo=:Ha6NDzZsgxeRKFW+KCmdQY
 VU4WxsOdVfrH4IKWZ6wb7nlPtmei/Su5jBI/BIS9BXDJN9mP2ol36u6nduJltiY4+Hw1UyiZm
 1PLBtL9WVCmFWfgabI0gEONi+yORqOTjHJUW+yDq3mJgOx0XENG+VOOO2nOqmKzu1TwcMnim5
 WZ7StmjfY0XhcRv6PPWfzVJEbvX7yJv5L9C+5jYS1K+qo1sR+bIB84kf7j83F6+Q1q9+C+dbY
 VlakdwOOGMar2wHm4411Y1hIJlflKE6t5sQG6ShKwHs07X+rjoOvXIiS5rsBDy0kZqEhbpdaQ
 WK3KwEQK0MPfJrmMoU1hPk9GS5vvTcKt91fZLQbi3Cxpr0Wn4sKTj2WFD4avmLdN0wFh/tv6p
 bRiYrqHoFze+BbHpbty3sOMl29zoS6yQ60UCtqeGPLJq/+5gOylBsG8L3VUAuZgFgxMWicBcS
 5B1QQBJSUnDWySKZZNl/JIC9mgcGtj2F+CYZedJF8BpXSV1IukQFGQ31BZEpZA8LvnsJGYagH
 OivqYZLl9GihhWR2To7Ndq2xwaolRrLVFGsAy+/E7uJHjNJsyu21rFGfBSLTcnvOStIdqkSv1
 OAyAq9oPej5aGNRf57ReW2+fqjhIhwoE3+cOZzVwVG2pFSgQv41hXAbJPH4OIpzbFGLTvbttv
 fLlNeoXiOzncIxlq5QM+lK22DpUREJVy42S+XG6zaRNxIjJaxkq0BXBo4LCu0sD/7Q+LdBzLL
 XWuRuPccgMJY271ybpn45Mm8hDrEbzSur/GuOb/yDrBEZwWE7gOYSyQHoJEU1PkMx19F1W726
 CvBdfVlcC9YuVDnM+29Rqjv8YfdJabAga8Pe6zJTZ+WtmgpINo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_081817_840476_E1C7E2FD 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: SoC Team <soc@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

for you to fetch changes up to f42ae4cd4cae92408bffec2c0a4c110447e908e0:

  Merge tag 'arm-soc/for-5.7/devicetree-fixes' of
https://github.com/Broadcom/stblinux into arm/fixes (2020-04-23
17:12:48 +0200)

----------------------------------------------------------------
ARM: SoC fixes

A few smaller fixes for v5.7-rc3: The majority are fixes for bugs I found
after restarting my randconfig build testing that had been dormant for
a while.

On the Nokia N950/N9 phone, a DT fix is required to address a boot
regression.

For the bcm283x (Raspberry Pi), two DT fixes address minor issues.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>

----------------------------------------------------------------
Aaro Koskinen (1):
      ARM: dts: OMAP3: disable RNG on N950/N9

Ahmad Fatoum (1):
      ARM: imx: provide v7_cpu_resume() only on ARM_CPU_SUSPEND=y

Arnd Bergmann (8):
      drivers: soc: xilinx: fix firmware driver Kconfig dependency
      soc: fsl: dpio: fix incorrect pointer conversions
      soc: fsl: dpio: avoid stack usage warning
      soc: tegra: fix tegra_pmc_get_suspend_mode definition
      soc: imx8: select SOC_BUS
      Merge tag 'omap-for-v5.6/fixes-rc7-signed' of
git://git.kernel.org/.../tmlind/linux-omap into arm/fixes
      Merge tag 'zynqmp-soc-for-v5.7-rc3' of
https://github.com/Xilinx/linux-xlnx into arm/fixes
      Merge tag 'arm-soc/for-5.7/devicetree-fixes' of
https://github.com/Broadcom/stblinux into arm/fixes

Florian Fainelli (1):
      Merge tag 'tags/bcm2835-dt-fixes-2020-03-27' into devicetree/fixes

Jason Yan (1):
      firmware: xilinx: make firmware_debugfs_root static

Nicolas Saenz Julienne (2):
      ARM: dts: bcm283x: Add cells encoding format to firmware bus
      ARM: dts: bcm283x: Disable dsi0 node

 arch/arm/boot/dts/bcm2835-rpi.dtsi     |  3 +++
 arch/arm/boot/dts/bcm283x.dtsi         |  1 +
 arch/arm/boot/dts/omap3-n950-n9.dtsi   |  5 +++++
 arch/arm/mach-imx/Makefile             |  2 ++
 drivers/firmware/xilinx/zynqmp-debug.c |  2 +-
 drivers/soc/fsl/dpio/dpio-service.c    | 19 ++++++++++++++-----
 drivers/soc/fsl/dpio/qbman-portal.c    |  6 ++----
 drivers/soc/imx/Kconfig                |  1 +
 drivers/soc/xilinx/Kconfig             |  4 ++--
 include/soc/tegra/pmc.h                | 15 +++++++++------
 10 files changed, 40 insertions(+), 18 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
