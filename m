Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDBB1A789C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dT+zwIN+fywHs1Ws3dNl/CZj4S3tOKgKDVIJpR6XFzU=; b=kuO
	xLs/ejsSm7eYbcfQvy7bd9HGUR+Kk8OjwoC/uwR4iSXyYzB6AjU6Z+OQmH6h6QU1t0V8OchtxCvrX
	RLTMFI1ox1gr/chPmuWYK+3DVqnQrXmkrVCPPzuhlWQ3x+RImo5s8jXFAi/5XZFmOMOJH0Ww/YInd
	LARlKKiLY8+HIQQc+bJlAqImGbDoh2bT7GgjLDwdVB6gx3IJS0nQWFspOB1Blk/vPhWDUIFPOws72
	AyEq+qsSpDuketlIO2X4nKqnc1F9g5z2mu9vZLiW6/SxpUIThUYLNz0aLO3WsEO/+ONnZ6JL6gRAm
	T90UeT929UUPSnh/ZRd36O0nN54JZag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJ23-0001RO-UZ; Tue, 14 Apr 2020 10:43:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJ1u-0001Qe-J6
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:43:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D3D3C1FB;
 Tue, 14 Apr 2020 03:42:57 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0AEAF3F6C4;
 Tue, 14 Apr 2020 03:42:56 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] arm64: vdso: cleanups
Date: Tue, 14 Apr 2020 11:42:47 +0100
Message-Id: <20200414104252.16061-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_034258_672741_FB14C37E 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, vincenzo.frascino@arm.com,
 will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

While attempting to review an arm64 vdso patch, I noticed some of the existing
code was somewhat baroque, making it harder than necessary to understand and
extend. These patches attempt to improve this by making the code more
consistent and avoiding unnecessary duplication.

The first patch in the series fixes a bug in a boot time error path. This bug
was made obvious during the refactoring but I've moved it to the start so that
it can be backported more easily.

The series is based on v5.7-rc1 and can be found in my arm64/vdso-cleanup
branch [1].

Thanks,
Mark.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/vdso-cleanup

Mark Rutland (5):
  arm64: vdso: don't free unallocated pages
  arm64: vdso: remove aarch32_vdso_pages[]
  arm64: vdso: simplify arch_vdso_type ifdeffery
  arm64: vdso: use consistent 'abi' nomenclature
  arm64: vdso: use consistent 'map' nomenclature

 arch/arm64/kernel/vdso.c | 162 ++++++++++++++++++++---------------------------
 1 file changed, 69 insertions(+), 93 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
