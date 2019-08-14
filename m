Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEC18DB66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 19:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8DF1zft0204cstKrgItxnzMuNNo8tyYvCiHvmiNikB0=; b=Uon
	nEf0iFO/njawlx6MaSQjp02c9xk4z4AQqFfCrMcV3jQIBkAtXsJ36fJmiYSiGNTS2lLzyTX2FV4ev
	4uDm/zy7YKbBjwPJmd/D4YJFA6uQf4QRcPVIBh4jD8EdMgznqHbJkiNV5GGW3CeR5OpW8zFLU8nY+
	N98xGlpXKoovguNB6wGadDkeXUVEcv/tz3ldJqG3EpjH+8FFXj0qIo6RdINf+UKAArR4+oMihJAXa
	z5FSTmRQsihKy4nynk2B6OmaLR0Se7DqTA3u/2rXDP0mV/8RFElzQFQfhnRoLERJVC32oxxMl6/wg
	v6dFoW4+tiG9mY/mxtOrRHgiIusiJJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxx18-0007nb-LY; Wed, 14 Aug 2019 17:24:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxx0n-0007kv-EA
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 17:24:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28DE6344;
 Wed, 14 Aug 2019 10:24:36 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D9B683F694;
 Wed, 14 Aug 2019 10:24:34 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] ARM: dts: vexpress: updates for v5.4
Date: Wed, 14 Aug 2019 18:24:25 +0100
Message-Id: <20190814172425.26089-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_102437_608634_E681DA7B 
X-CRM114-Status: GOOD (  10.32  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC Team,

Please pull !

Regards,
Sudeep

-->8

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/vexpress-dt-updates-5.4

for you to fetch changes up to 7ff1154d459d25f8f674765a5ec575207516168c:

  ARM: dts: vexpress: Add missing newline at end of file (2019-07-31 16:36:05 +0100)

----------------------------------------------------------------
ARMv7 Vexpress DTS updates for v5.4

Couple of updates adding missing: SPDX GPL-2.0 license identifier
and newline at the end of the file

----------------------------------------------------------------
Geert Uytterhoeven (1):
      ARM: dts: vexpress: Add missing newline at end of file

Sudeep Holla (1):
      ARM: dts: vexpress: add missing SPDX GPL-2.0 license identifier

 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi | 1 +
 arch/arm/boot/dts/vexpress-v2m.dtsi     | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
