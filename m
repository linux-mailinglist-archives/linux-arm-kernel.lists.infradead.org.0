Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497071F59A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YcL8DcxI6XKSEAPMvJD7kcS/BWiYe0qnScBJebaskfc=; b=d0a
	kjdAvsnpz7Pu/XWVl1x/dj2v0lsJCfA4yG8usWJ1WN0G+OqaWod+276IYD7xqHpqu2hWJEO6rA3oh
	79q/dYslR+a6NbEO3DtitNvbH6mcHsBt6i9Y3d6UefQT0x0pzkQ7nX9SZiPkV8ukkoi/jBYP4o9xw
	AaB6zUOjJrylBdlOEMLY0ICTRhCmB/Uv1icQp9Pfu2jLos5oJkzdZjROXhYl7zjc2U5uMoJD7e684
	PtdmOvxF9jX/XVIdQ4/QOIUaI35THzfX6e20m2vgsXUPffV4vhPTb0PhMLkkuxCoWv7m715NIfO2+
	4dttQOnI9CrC+5b2hvv8Y064xfN5kDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj48J-0005CY-8i; Wed, 10 Jun 2020 17:03:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj48C-0005C4-Qa
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:03:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C3D91FB;
 Wed, 10 Jun 2020 10:03:16 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6DFEB3F6CF;
 Wed, 10 Jun 2020 10:03:15 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64/sve: Misc fixes
Date: Wed, 10 Jun 2020 18:03:08 +0100
Message-Id: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_100316_902150_2B0AFCC2 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A couple of unrelated minor fixes: one documentation typo fix, and one
fix for a (mostly) theoretical data race.

Dave Martin (2):
  docs/arm64: Fix typo'd #define in sve.rst
  arm64/sve: Eliminate data races on sve_default_vl

 Documentation/arm64/sve.rst |  6 +++---
 arch/arm64/kernel/fpsimd.c  | 25 ++++++++++++++++++-------
 2 files changed, 21 insertions(+), 10 deletions(-)

-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
