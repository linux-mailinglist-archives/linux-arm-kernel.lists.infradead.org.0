Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 206081BC5AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6ChZprbvPqKXM9iOaBRB3Cj1fu1DIeBnL99Jp6oOywI=; b=VkPsgvQl/rQhpi
	ghOFcG1fzIoBccOtREgECemK441PqjrtaR3bVZKzRCfuMBWX+JuMFm/FcaIBxycgkJ1PZIwmTIlYv
	wo5zfaTvSMyXdU5GtYB5m7Z4Es5dnZEMGEE1r+DOre7yPrJbxkoySgTSpi2R1xaZuReapCJCGwiu8
	b3afA4v5XHAeLxLN34RcnsBTRnrQmu1wQp2a+jRmpo/Vja43qGNGX3+gLbKun+Vzd3yrsW2TrPRjN
	mxUIs2vPu4qoFdECtJdGiZ2MOgCWwRXLfL9cL4jV/2AlL7P9sQY9H2cO449voLC24La7DWZZaFRHc
	s5orWI+BFzL/OHeBJ64Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTO3-000142-AW; Tue, 28 Apr 2020 16:47:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTNh-00011l-0m
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:46:50 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 216E42063A;
 Tue, 28 Apr 2020 16:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588092408;
 bh=88MCrNdUzDRBy6tiBP3IMdmC+90z5iRpC628zAxPAlw=;
 h=From:To:Cc:Subject:Date:From;
 b=HZwp+TtFT9SFglptGgjL5WbNZBftCUv8drMhliDQO32Zgv20NJVJpWok/OvhVjqY8
 r/tO515xvbdBmMa1KKxZ5T6Rs4aRCykJaIa/F5q2sK5OHD+mADwlwL4SBeClHMxCzD
 wccd48uj2iUnjmH4rbFMQOJ3yU46HlxyCBzNkDhE=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 0/2] arm64: Finish up assembler annotation modernisation
Date: Tue, 28 Apr 2020 17:43:29 +0100
Message-Id: <20200428164331.27289-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094649_082095_724EE802 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series finishes up the conversion of arm64 to use modern assembler
annotations.  The second patch selects a symbol added by
2ce0d7f9766f0e49b (x86/asm: Provide a Kconfig symbol for disabling old
assembly annotations) in -next to ensure that we don't regress and start
using old annotations again.

This will be needed for BTI kernel support so it'd be good if they could
end up on that branch, either through merging a topic branch or
otherwise.  The patches are generated against a merge of v5.7-rc3 and
for-next/bti in the arm64 tree.

Mark Brown (2):
  arm64: kernel: Convert to modern annotations for assembly functions
  arm64: Disable old style assembly annotations

 arch/arm64/Kconfig                            |  1 +
 arch/arm64/kernel/cpu-reset.S                 |  4 +-
 arch/arm64/kernel/efi-rt-wrapper.S            |  4 +-
 arch/arm64/kernel/entry-fpsimd.S              | 20 ++++-----
 arch/arm64/kernel/entry.S                     |  7 +--
 arch/arm64/kernel/hibernate-asm.S             | 16 +++----
 arch/arm64/kernel/hyp-stub.S                  | 20 ++++-----
 arch/arm64/kernel/probes/kprobes_trampoline.S |  4 +-
 arch/arm64/kernel/reloc_test_syms.S           | 44 +++++++++----------
 arch/arm64/kernel/relocate_kernel.S           |  4 +-
 arch/arm64/kernel/sleep.S                     | 12 ++---
 arch/arm64/kernel/smccc-call.S                |  8 ++--
 12 files changed, 73 insertions(+), 71 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
