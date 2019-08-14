Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11BE8DB58
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 19:24:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gYp0os+3+sTA8DL30kPQVJ7eQTuAxeaOjhYVIK8lI8o=; b=WT4
	VX/505BRGTZq6qnTdul+HL1l/vWU+ZFoF8m5IUOQlG+W80dj2BUcggfzgaAQHIJ4U9BX2eF77MUdm
	yPu+U9xoY/Xc5hOFz8n7A9ynQZQdmZsklwgcxgsC+lhcQF6GS8BmbOppelU91aGWV/z7tzYdeN/iH
	+JHVrGmppc12joHCJAEmGth6gyClUKUXpTf8NYecka3u+pyy1e8HS1iGOR44Anhkr60K/FDPNA7LZ
	w8CqNEEHDGWXUu8WHduuUVfrlG9nrCF5K/Pt3BalnR7gm56aq+A4hEW9I3WBzq/9tAHo/rax2w6t6
	io4XjvgVNzfz+B0M1wMR03QcleKRyhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxx0n-0007Pp-KM; Wed, 14 Aug 2019 17:24:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxx0X-0007OU-M0
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 17:24:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 15D7D344;
 Wed, 14 Aug 2019 10:24:19 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E1BC93F694;
 Wed, 14 Aug 2019 10:24:17 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] arm64: dts: juno: updates for v5.4
Date: Wed, 14 Aug 2019 18:24:08 +0100
Message-Id: <20190814172408.25995-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_102421_765115_EB7B8488 
X-CRM114-Status: UNSURE (   8.08  )
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
Cc: Olof Johansson <olof@lixom.net>, Kevin Hilman <khilman@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Sudeep Holla <sudeep.holla@arm.com>
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

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/juno-update-5.4

for you to fetch changes up to a24810673638d5da0336ccae5407c3fd59da14ac:

  arm64: dts: fast models: Remove clcd's max-memory-bandwidth (2019-08-05 11:44:00 +0100)

----------------------------------------------------------------
ARMv8 Juno/FVP update for v5.4

Single patch removing optional 'max-memory-bandwidth' property for CLCD
that enables to allocate and use 32bpp buffers(used on FVP for Android
development)

----------------------------------------------------------------
Kevin Brodsky (1):
      arm64: dts: fast models: Remove clcd's max-memory-bandwidth

 arch/arm64/boot/dts/arm/fvp-base-revc.dts        | 8 --------
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi | 2 --
 2 files changed, 10 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
