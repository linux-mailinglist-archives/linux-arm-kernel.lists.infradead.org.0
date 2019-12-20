Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4BF128201
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 19:15:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4+8+/HfnKa5pvEhlaNX9APi/33YP3KeL/q7tHe3bMwU=; b=day5hv1DReeEYf
	r0yHyqLWQG323etclhbhC4458wkB9v6blZwY+hXi8bFso//nuva6C+yw9Duu0tHxht0mvViC7AF7e
	iMrM96BvtCGBO7mjsbZVONw/ApJr14i07uRzl79AYLn4nDmFkhQLs5DPi7u6VtKDCfgPTvGamZ55I
	KhHaXnwtUwAPoFY5y3huRYkyUPam0NV/Ab91WzRmfZ81bLSXdPl7rtTepRZO6iJzzJbbOdIs0miuc
	MrXVLIQI3XD0lhdGOeEaeTXVZhDdVm6F1lRcqcra0qXIR7ZNtMdFEj02Rhoeo7zNVIuGgPev5s1Js
	fi2yU22rOUeHf5EWDIhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiMo0-0006tT-UC; Fri, 20 Dec 2019 18:15:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiMno-0006Hu-1r
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 18:15:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AE721FB;
 Fri, 20 Dec 2019 10:15:01 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BDD5F3F67D; Fri, 20 Dec 2019 10:15:00 -0800 (PST)
Date: Fri, 20 Dec 2019 18:14:58 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 fixes for 5.5-rc3
Message-ID: <20191220181456.GA13898@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_101504_144391_3B8F4F03 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull the arm64 fixes below. Thanks and Merry Christmas!

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

for you to fetch changes up to aa638cfe3e7358122a15cb1d295b622aae69e006:

  arm64: cpu_errata: Add Hisilicon TSV110 to spectre-v2 safe list (2019-12-20 17:57:22 +0000)

----------------------------------------------------------------
arm64 fixes:

- Leftover put_cpu() in the perf/smmuv3 error path.

- Add Hisilicon TSV110 to spectre-v2 safe list

----------------------------------------------------------------
Hanjun Guo (1):
      perf/smmuv3: Remove the leftover put_cpu() in error path

Wei Li (1):
      arm64: cpu_errata: Add Hisilicon TSV110 to spectre-v2 safe list

 arch/arm64/kernel/cpu_errata.c | 1 +
 drivers/perf/arm_smmuv3_pmu.c  | 4 +---
 2 files changed, 2 insertions(+), 3 deletions(-)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
