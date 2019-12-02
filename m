Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B2A10E9B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 12:43:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jbfI9qxLicY5foGZUc2975uSR+hnKxVvpE3FxXelnFU=; b=ZGEPneikT4tA4w
	Q9jU99mjDsKIAJRseIAsQ3JZmA6U0ha/TGxri2qnWnI7KT8LjeE1b8T21ptR2qTS9rLX0qg/OwMxP
	x5TnZNLin3t9oYqWuI8sZ2306/8EB2Ic1lnnB8UddK5mWA0WtPrG8mb83xb9spC7QMts2CLPye2Q8
	p+kOvkq83k0ui1pw75h6FKA/CQqZmh26a/5O+JFLyJ/pQ2/dSNzTMUeeuXn2JTYhPWjF0NqpPXw5c
	nvPXzyRK6+JdJR65nNb9LAUm2b40445K4uMK2Sy+gJnxytuKhdZieCgf4xJ04iEqC4TKlIobpzV5P
	Z+b19osu7Ia2IJ9OnZ7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibk7P-000084-6E; Mon, 02 Dec 2019 11:43:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibk7H-00007S-Jw
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 11:43:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C6E930E;
 Mon,  2 Dec 2019 03:43:46 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CBDA23F68E;
 Mon,  2 Dec 2019 03:43:44 -0800 (PST)
Date: Mon, 2 Dec 2019 11:43:38 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] arm64: dts: juno: fixes for v5.5
Message-ID: <20191202114338.GA20965@bogus>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_034347_698322_D64D9209 
X-CRM114-Status: GOOD (  11.13  )
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

-->8

The following changes since commit 577dd5de09906e37a407a4326d17e58f6051fa2d:

  arm64: dts: juno: add GPU subsystem (2019-10-21 15:32:56 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/juno-fixes-5.5

for you to fetch changes up to 54fb3fe0f211d4729a2551cf9497bd612189af9d:

  Revert "arm64: dts: juno: add dma-ranges property" (2019-11-28 16:40:51 +0000)

----------------------------------------------------------------
ARMv8 Juno fixes for v5.5

Couple of fixes:
1. Fix for UART clock frequency on all Juno variants that exist since
   the platform was added. This is mainly due to incorrect Juno SoC
   TRM that was referred during initial development days
2. Drop "dma-ranges" property for now as they are triggering loads of
   warning on boot

----------------------------------------------------------------
Andre Przywara (1):
      arm64: dts: juno: Fix UART frequency

Sudeep Holla (1):
      Revert "arm64: dts: juno: add dma-ranges property"

 arch/arm64/boot/dts/arm/juno-base.dtsi   | 1 -
 arch/arm64/boot/dts/arm/juno-clocks.dtsi | 4 ++--
 2 files changed, 2 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
