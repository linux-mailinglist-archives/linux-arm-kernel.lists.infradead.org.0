Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F331C9CED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Q9FkEHBs18bGyyUppvcYtHidz4ebaI0CxwOxz9kyk9E=; b=c3K
	l9pkPqFIanjHTBpOzQuqtc15nK3q7y1vQzMjMXIqy7Rtq5XcQ+X54RYRwBDwMugvR9puYPp66Tv/Q
	55mRuaNph7YZR7PVxhBVLNKBWKXZo8gQEQALQQqTYz0hUwc6dfzJcvOC45EpOyMpXIhLOsI+rRISW
	zn//D206OZesfK6XElRBWGpkmYn5DEBlEC/igxjIcDjHcMVue38D0R3rW32GNtmQdsvf+Qx+mBqV3
	7MOxCzDjpMfw0Sf1nzKUAixaF4rsOGyOq1LR0pjIQKo3mTFlpYs+kE8o6hUx5fRdrkLYUc6vBgNqZ
	bRXYGwcTr2gYPjvQD1+8My1I1LXIdlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFz29-0007C4-2w; Thu, 03 Oct 2019 11:12:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFz1u-0007B3-Jc
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:12:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 667F61000;
 Thu,  3 Oct 2019 04:12:16 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 47D223F706;
 Thu,  3 Oct 2019 04:12:15 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] arm64/cpufeature: Fix + doc update
Date: Thu,  3 Oct 2019 12:12:07 +0100
Message-Id: <20191003111211.483-1-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_041218_693085_C2BFA96A 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
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
Cc: Jonathan Corbet <corbet@lwn.net>, catalin.marinas@arm.com,
 linux-doc@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 will@kernel.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This patch fix an issue related to exposing the FRINT capability to
userspace (see patch #1). The rest is documentation update.

Cheers,

Julien Grall (4):
  arm64: cpufeature: Effectively expose FRINT capability to userspace
  docs/arm64: elf_hwcaps: sort the HWCAP{,2} documentation by ascending
    value
  docs/arm64: elf_hwcaps: Document HWCAP_SB
  docs/arm64: cpu-feature-registers: Documents missing visible fields

 Documentation/arm64/cpu-feature-registers.rst |  4 ++
 Documentation/arm64/elf_hwcaps.rst            | 67 ++++++++++++++-------------
 arch/arm64/kernel/cpufeature.c                |  1 +
 3 files changed, 40 insertions(+), 32 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
