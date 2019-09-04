Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72076A871A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 19:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zOQ8ejsExIk2rPj33k7Fsj5uXF9+5HHm5V+S+vbngRw=; b=JrbenazoLeN/VtVPDcdq/0XtpC
	exuvKvPgI28g2s/+Oduv/7TsLgBYXIAdzKl8oH/K0Z7cKayk/RR8n0JFmJKXl5qNZheJhU8kYEtME
	Ya53XOAOegdUY8XqMqxgsPP8aCK2j/7kduOEILMl7UXoxqh0LkeqattDU994btdGeLxk0tYWcira3
	hvwiqX31CWMF7zlInBKdYGuqbs6lEtum8elaCfer3fIkAdVkywBpPQQL52HqQayryGQjJ+xxKF5IF
	7tfXWBJU0I8mVnCHmlXmlz6OoRsGlIws+TTcOhFua9iJiD+FDVtP2w8MGf4vRYIgH76wzKHvkhoup
	cZWvbF4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ZR9-0008UO-Om; Wed, 04 Sep 2019 17:51:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ZQM-0007tH-Gs
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 17:50:31 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 506182341C;
 Wed,  4 Sep 2019 17:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567619430;
 bh=/GY26QI0Q0gbFhW694JTrgCRqeBhXVLVrh3+/U5tGno=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JOhBFOWIey4Drc9rZPVC+o62tCPCxqHoVj6GJHZtsfCnwHNk5BCb+EHO2TNXK0+zJ
 TXDRpNw0ty7EGkclyMM57hCyIxo1tX4Xw+S4STTmpEEv/50wnDw0uGd6Gtl6rmj75M
 z5ob51MShXEKNqS7yJ+1Cfw7dpPRmiP9wnUH6P6E=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 4/5] ARM: samsung: mach for v5.4,
 second (replacing previous)
Date: Wed,  4 Sep 2019 19:50:01 +0200
Message-Id: <20190904175002.10487-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904175002.10487-1-krzk@kernel.org>
References: <20190904175002.10487-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_105030_596238_C31C6A68 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Replaces previous pull (and it includes it).

Best regards,
Krzysztof


The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.4-2

for you to fetch changes up to c663d542bfb40eeeb6d393ed155c23a4666d65e1:

  MAINTAINERS: Extend patterns for Samsung SoC, Security Subsystem and clock drivers (2019-08-22 21:04:45 +0200)

----------------------------------------------------------------
Samsung mach/soc changes for v5.4

1. Minor fixup in plat and mach code (S3C platforms),
2. Enable exynos-chipid driver to provide SoC related information,
3. Extend the patterns for Samsung maintainer entries to cover all
   important files.

----------------------------------------------------------------
Krzysztof Kozlowski (1):
      MAINTAINERS: Extend patterns for Samsung SoC, Security Subsystem and clock drivers

Linus Walleij (1):
      ARM: samsung: Include GPIO driver header

Masahiro Yamada (1):
      ARM: s3c64xx: squash samsung_usb_phy.h into setup-usb-phy.c

Pankaj Dubey (1):
      ARM: exynos: Enable exynos-chipid driver

 MAINTAINERS                                    |  9 +++++++--
 arch/arm/mach-exynos/Kconfig                   |  1 +
 arch/arm/mach-s3c64xx/setup-usb-phy.c          |  5 +++++
 arch/arm/plat-samsung/include/plat/gpio-core.h |  1 +
 arch/arm/plat-samsung/include/plat/usb-phy.h   |  2 --
 include/linux/usb/samsung_usb_phy.h            | 17 -----------------
 6 files changed, 14 insertions(+), 21 deletions(-)
 delete mode 100644 include/linux/usb/samsung_usb_phy.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
