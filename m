Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8711D93C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:48:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=exfXjN1U1fwibtBXLNeoY387yGxiDoc700ZgPesqZpE=; b=ZGTFExhIlgZFyG
	O0Yuze7Iz/qCfUGQHtciaEnzoCtSQcr0hUPUXZ7RhEv1+TeNb/1/H/LyodrG0dzUIfj4tWuIBGSVk
	D0xS+lHZmg+iY4wb3K464oVyPyrxsotDZW/wHzKpe9Oyd3RTqelChzbT2Csv7VL8ZV5UoJJURaBDe
	Dvy4ID8Jz4HwRx/F/4prMVYSMMS79Bpd4reWFcsmsUk68fGLEwhgqXe0ICs33Klm769gPRib5GyYF
	E2ZeZej3kdoiYf95G6Mfa++BCLVrrokDH9jMTu5jEXbL2Rl41BzQIGLePQk8OW/+dDoWvbUd9ef0p
	/zFSKdmuYshA1guPUuKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayrf-0004VO-VP; Tue, 19 May 2020 09:48:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayq9-0003UJ-K7
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:47:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E1F3101E;
 Tue, 19 May 2020 02:47:11 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D26393F305;
 Tue, 19 May 2020 02:47:09 -0700 (PDT)
Date: Tue, 19 May 2020 10:47:02 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] arm64: dts: juno/fvp: updates for v5.8
Message-ID: <20200519094702.GA32975@bogus>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_024713_721812_3427F864 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC Team,

Please pull ! Note that there is a change for a file in arm32
as there is a symbolic link for the same in arm64.

Regards,
Sudeep

-->8

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/juno-updates-5.8

for you to fetch changes up to 94cc3f1baabac5e5c4dcc6c2f070353f8315d0ee:

  arm64: dts: juno: Fix SCPI shared mem node name (2020-05-18 17:08:54 +0100)

----------------------------------------------------------------
ARMv8 Juno/Vexpress/Fast Models updates for v5.8

Various miscellaneous device tree source fixes to make them fully
binding compliant. It includes fixing various device node names,
order of interrupt properties, compatible names, address and size
cell fields and their aligment with children nodes as well as
moving some fixed devices out of bus node.

----------------------------------------------------------------
Andre Przywara (17):
      arm64: dts: fvp/juno: Fix node address fields
      arm64: dts: fvp: Move fixed devices out of bus node
      arm64: dts: vexpress: Move fixed devices out of bus node
      arm64: dts: fvp: Move fixed clocks out of bus node
      arm64: dts: juno: Move fixed devices out of bus node
      arm64: dts: juno: Fix mem-timer
      arm64: dts: fvp: Fix GIC compatible names
      arm64: dts: juno: Fix GIC child nodes
      arm64: dts: fvp: Fix GIC child nodes
      arm64: dts: fvp: Fix ITS node names and #msi-cells
      arm64: dts: juno: Use proper DT node name for USB
      arm64: dts: fvp/juno: Fix serial node names
      arm64: dts: fvp: Fix SMMU DT node
      arm64: dts: fvp/juno: Fix bus node names
      arm64: dts: juno: Fix GPU interrupt order
      arm64: dts: vexpress: Fix VExpress LED names
      arm64: dts: juno: Fix SCPI shared mem node name

 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi            | 328 ++++++++++-----------
 arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi   |   4 +-
 arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi   |  11 +-
 arch/arm64/boot/dts/arm/foundation-v8.dtsi         | 142 ++++-----
 arch/arm64/boot/dts/arm/fvp-base-revc.dts          |  10 +-
 arch/arm64/boot/dts/arm/juno-base.dtsi             |  82 +++---
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi      | 166 +++++------
 arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts         |   2 +-
 .../boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi      |   4 +-
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi   | 152 +++++-----
 10 files changed, 451 insertions(+), 450 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
