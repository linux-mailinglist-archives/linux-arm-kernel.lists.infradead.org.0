Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCDB1C3B04
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jzVBADeCqRlb/9f6ElL5IKbDIhQv0KZal4aN2EAvl6E=; b=rhhpPB1qDm0gTa
	VgMkGWbkfwvldHBMNOYFvSUkdVTeXkeafbIY8U8UL60jQrfpmV0gshZ7ZM7oqE3npSNusdPyqO8vK
	YTE7+aDTUUp9MzwsmyVGFkdgepPQUxr1o4plVz80F3pcIHWnbTdn1TiP067IVxKQgxgirFP5OXl9c
	Isqn+eZLR9gMvK65/oUO/HjEi63aC6r1iKNS5qZ1aYhzIbXTwpE1PzFEqoLD2cpdhSRO6B3lb6Owz
	Dva+VJVk9fsu9gd6zPizT4tcvVsfdfQktQ57qXz6uZ7UHUKBybcOA1ezTD7W4uPGdutZjIMfem7cK
	RoYgBjW1RIYCDEeDuIeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVauq-0006Sj-MM; Mon, 04 May 2020 13:13:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaue-0006RV-Jz
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:13:42 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9032320721;
 Mon,  4 May 2020 13:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588598016;
 bh=m5cBouM+VdgiOUWiRfboCGS/3TYZIpp1SjlxUFOcDh4=;
 h=From:To:Cc:Subject:Date:From;
 b=DvkdJkmhvSM6Ms9cGKQHkb0G8Ymjpvtb1nR6WxATVdi0+/gaKHRuEDtfrZMZKcALB
 BQdMYAoEYosJXk6nJd2+4u2xqKIhnpeE7L2qz12a4QxD2ITgFvGxQPZ9NCxlJKaFYd
 n0u3tNDuLbB5WqxMt7FbfQYh+VFWOs1AOGCsfgeM=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v4 0/4] arm64: Make NOP handling a whitelist
Date: Mon,  4 May 2020 14:13:22 +0100
Message-Id: <20200504131326.18290-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_061336_682351_FCFF6C11 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently we default to assuming any unrecognized instruction in the
hint space can be safely handled as a NOP.  This is not robust and any
code that really wants a NOP should be using the explicitly defined NOP
so let's instead invert this and whitelist those instructions which it
is safe to handle as NOPs.

Patch 1 adds defines for the HINTs for BTI landing pads which will be
used by the in-kernel BTI series to generate landing pads in JITed BPF
code so it'd be good if this could be applied on or merged into the BTI
branch.

v4:
 - Add a patch renaming _is_nop() to make the usage clearer.
 - Reorder series and tweak commit logs.
v3:
 - Correct values for more of the HINTs.
 - Add constants for additional HINTs
 - Handle XPACLRI as a NOP along with all the other PAC HINTs.
 - Update commit messages for greater clarity.
 - Tweak the comment about what a NOP.
v2:
 - Fix values for BTI HINTs.
 - Rebase on v5.7-rc3+for-next/bti-user

Mark Brown (4):
  arm64: insn: Add constants for new HINT instruction decode
  arm64: insn: Provide a better name for aarch64_insn_is_nop()
  arm64: insn: Don't assume unrecognized HINTs are skippable
  arm64: insn: Report PAC and BTI instructions as skippable

 arch/arm64/include/asm/insn.h          | 30 +++++++++++++++++++++---
 arch/arm64/kernel/insn.c               | 32 ++++++++++++++++++--------
 arch/arm64/kernel/probes/decode-insn.c |  2 +-
 3 files changed, 50 insertions(+), 14 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
