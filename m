Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B76643730
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 16:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xqICfvsBwqvlK/5M99zchQrolVk+aD0uWaTiilgvhrQ=; b=GFjaJInMixs55z
	K0sTXykeogWjSiEHZJ5XncvwlIQ7R2/PBrqPKtof/ZTx1JiST6tedtN0ylF9bgHkbZ8mHax2KMxmk
	RJOY99SOucbCCUTG22GYAcWi4IbCc+RUgAx8V3zQKmcMSIUamQHJVFSKCHM+ms2MvLIULYpEB8U33
	qub6IbGeFNb95++60Tw4jcKxw+OCH9/49KjIwY0iRWIrCY8KjD/ld9rJBYABTLcXYQG07h+wG1IdB
	FubxGhLnEboPLx8CV0tgQn5rriJV6BFxMpcQ23S0EcKldZac1HsGm3Ww+SAIPzmQO2qbTsGZWLE8k
	47jSQkNDGtwJHk/Je7nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQcn-0001iu-UW; Thu, 13 Jun 2019 14:22:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQcb-0001iQ-2W
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 14:22:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A3A8367;
 Thu, 13 Jun 2019 07:22:32 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F12303F718;
 Thu, 13 Jun 2019 07:22:30 -0700 (PDT)
Date: Thu, 13 Jun 2019 15:22:28 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] ARM: dts: vexpress: updates for v5.3
Message-ID: <20190613142228.GB7283@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_072233_159726_B091531D 
X-CRM114-Status: GOOD (  11.14  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC Team,

Please pull !

Regards,
Sudeep

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/vexpress-updates-5.3

for you to fetch changes up to b8e65c1939ffa49384f2a2dca2057b5a1c8c365a:

  ARM: dts: vexpress: set the right partition type for NOR flash (2019-05-30 13:39:50 +0100)

----------------------------------------------------------------
ARMv7 Vexpress updates for v5.3

1. Couple of updates switching to use new/updated bindings for CoreSight
   dynamic funnel components and NOR flash partition type
2. Disable NOR flash on Vexpress TC2 platform as it conflicts with CPU
   power management. This follows what we have on ARMv8 Juno platform
   and is required after recent commit that enabled CFI NOR FLASH in
   multi_v7 defconfig

----------------------------------------------------------------
Leo Yan (1):
      ARM: dts: vexpress-v2p-ca15_a7: update coresight DT bindings

Sudeep Holla (2):
      arm: dts: vexpress-v2p-ca15_a7: disable NOR flash node by default
      ARM: dts: vexpress: set the right partition type for NOR flash

 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi    |  5 ++++-
 arch/arm/boot/dts/vexpress-v2m.dtsi        |  3 +++
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts | 13 +++++++++++--
 3 files changed, 18 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
