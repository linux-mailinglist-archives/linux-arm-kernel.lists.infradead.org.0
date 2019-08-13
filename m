Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 312A08BB48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z1ArJD9KjjJvWal6wonjkibX8vo9BrSUcb6VqIsCwPE=; b=BlP
	ZwWVb7xSFxqBXKvtkYDTZB6Tmcr9PyfzQpCsCY2Oo93JrLp5s8J88spIV0kaGeCaarhPkvcUhgHwp
	Dutm/J6Luruy2TWGSASUKt4O0qH4wsgeMB6bczg1im2XFAPP4Rwlu07q62d/nuEvFMcBaGcyIhFeK
	ebM7AgYILTkiPmJ75YNBycVOr7GdRBZ/Zj5VE9yB/ZqvyqZymImGIXfmWotqko4+MEm/bpqbPxidR
	CeqJ1qrt0O/5Vx05n2FpYTkzN1jczbygcG1B5qV4xh7dltTVZWVxxTMt2DAZk//n7bPf/ZYDQiFP/
	6RSfLRJB3viq7l+Mh+45trY8kMgRvRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXd0-0005XU-Ty; Tue, 13 Aug 2019 14:18:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXbV-0004yg-Oi
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:16:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2945344;
 Tue, 13 Aug 2019 07:16:43 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 30D0A3F706;
 Tue, 13 Aug 2019 07:16:43 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] arm64: trivial constification patches
Date: Tue, 13 Aug 2019 15:16:36 +0100
Message-Id: <20190813141639.13476-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_071650_033667_4EECD07E 
X-CRM114-Status: UNSURE (   8.59  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I spotted a few arrays under arm64 that we can mark const, as their
contents are never intentionally modified at runtime. Doing this will
make it a bit easier to spot bugs, and (in the case of sys64_hook) will
make it marginally harder to get the kernel to execute the wrong thing.

Our crypto algorithm and undef_hook arrays all have runtime-modified state, so
these cannot be made const.

Thanks,
Mark.

Mark Rutland (3):
  arm64: constify icache_policy_str[]
  arm64: constify aarch64_insn_encoding_class[]
  arm64: constify sys64_hook instances

 arch/arm64/kernel/cpuinfo.c |  2 +-
 arch/arm64/kernel/insn.c    |  2 +-
 arch/arm64/kernel/traps.c   | 10 +++++-----
 3 files changed, 7 insertions(+), 7 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
