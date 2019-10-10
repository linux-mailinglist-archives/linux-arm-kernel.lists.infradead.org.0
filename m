Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533AAD1D37
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 02:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7uXQWFI+SZ6WKS0rmEcaG5/qeKy3+x0MD2CMcVX/Ivk=; b=IzIxaPWau95FNF
	OWWR5Jf4h+kuYrlTF1FfYI06pQ9EcT7ikI8y/cFvkRpPzFwJvijfqwQ+jdFODmsYOGEtVV4oFrVG3
	i0vNeiwB1Q3AYw+yKr7r1zmM8ouxGMZ7c6wzJbJAbaYXNMJ0WzJJlOtWBC1HXcBqATt3Wu0at/fwZ
	KBewN0Ql7bNf6OamloN33EcA3ernrjBaOmgMRo/iFo8g064+yL1Ca7XipLYSAMS4HufLmJf9/Nox7
	0sKTtlOYIcOMq8VHybqpWeRY0fdaYGtUxoAjRLx6DtG6mdaY8dyXteWdm0qxdG58pK71uwrpHi6pG
	iytc9pg94hup8PU3ZnwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIM4N-0007Cu-R0; Thu, 10 Oct 2019 00:12:39 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIM4E-0007BP-Ti
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 00:12:32 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 74BBD8140;
 Thu, 10 Oct 2019 00:13:01 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 0/8] Improve PM for omap4 devices
Date: Wed,  9 Oct 2019 17:12:16 -0700
Message-Id: <20191010001224.41826-1-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_171230_997109_B23B3E93 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Merlijn Wajer <merlijn@wizzup.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org, Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

We've had core oswr (open switch retention) disabled for a while now for
omap4 devices because of all kind of GPIO issues it caused with bootloaders
that configured per and core LOGICRETSTATE bits.

With all the recent GPIO fixes, these issues are now gone, and we can enable
per and core oswr again.

By adding the voltage controller data for droid4, we can get it idle at
something like 40 to 50 mW for the whole device with LCD blanked, and USB and
modem shut down.

Regards,

Tony


Tony Lindgren (8):
  ARM: OMAP2+: Remove unused wakeup_cpu
  ARM: OMAP2+: Drop bogus wkup domain oswr setting
  ARM: OMAP2+: Remove bogus warnings for machines without twl PMIC
  ARM: OMAP2+: Update 4430 voltage controller operating points
  ARM: OMAP2+: Configure voltage controller for cpcap
  ARM: OMAP2+: Allow per oswr for omap4
  ARM: OMAP2+: Allow core oswr for omap4
  ARM: OMAP2+: Initialize voltage controller for omap4

 arch/arm/mach-omap2/Makefile              |   5 +
 arch/arm/mach-omap2/control.h             |   1 +
 arch/arm/mach-omap2/omap-mpuss-lowpower.c |   2 -
 arch/arm/mach-omap2/omap_twl.c            |   8 +-
 arch/arm/mach-omap2/opp4xxx_data.c        |  16 +-
 arch/arm/mach-omap2/pm.c                  |   1 +
 arch/arm/mach-omap2/pm.h                  |  14 ++
 arch/arm/mach-omap2/pm44xx.c              |  13 +-
 arch/arm/mach-omap2/pmic-cpcap.c          | 265 ++++++++++++++++++++++
 arch/arm/mach-omap2/vc.c                  |  20 ++
 10 files changed, 319 insertions(+), 26 deletions(-)
 create mode 100644 arch/arm/mach-omap2/pmic-cpcap.c

-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
