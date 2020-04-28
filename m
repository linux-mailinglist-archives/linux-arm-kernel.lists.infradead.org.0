Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0A81BC690
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 19:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5RpLJPDN+GftpBSqA84pb/9y9zYi4yL+rlyA6NBGhEw=; b=BU5am+lWt1yOJQ
	L6v6jPiRnBWYL/Jn+CCGN9gXkm8K1/my5YABp1GZU/7phbyXLBAwy5yR6gWa0zDI2o8XwCjJDkWhR
	oxV7vauXzvkRsetjodWD1QkcaSNM1pnlDA1ATn09hAYFr57tePEOB8kqO7BBy2OqOSQ4NsvmhOFQU
	MoGluQY9cZASHRrdRr6QIRZ0QJ2ZwZMf8oH0SZhYFm9Hh4NkiLbBxe24DtOboXxp/lU2pO1AvBA7n
	4UYDsIxFyoN6hKsIT0HE4OSw9715IyJAEW2AFtzVTcTi0dGqvFj5DOjRAycHId2fy8xwkWYya9IBy
	IyE7VnAl2ayc30yyVU6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTz2-00062l-D6; Tue, 28 Apr 2020 17:25:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTyJ-0005pA-7V
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 17:24:40 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D81A2082E;
 Tue, 28 Apr 2020 17:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588094678;
 bh=dCjczGmbn8izieERkIWSm7odT9zdp5D2fBB3CYFqzxQ=;
 h=From:To:Cc:Subject:Date:From;
 b=pWSExpCmMaoDzwWmDT1Dr91VzWLn/HI7yUy6+4Wfh/yFXZpruk1DJ6pTx/TBvPVid
 9vGDzSaDrs0GEykMwnE23GL91B9kYzwjBFpbYO6zOBT/9Jn7p0zjXhUBFjbLMJjWeo
 I2p07KUd/hydFzsVXGIiWQcZwCt3p0NSrYiKUExQ=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 0/3] arm64: Make NOP handling a whitelist
Date: Tue, 28 Apr 2020 18:24:30 +0100
Message-Id: <20200428172433.48830-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_102439_318612_7C3A258E 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
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

Currently we default to assuming any unrecognized instruction in the
hint space can be safely handled as a NOP.  This is not robust and any
code that really wants a NOP should be using the explicitly defined NOP
so let's instead invert this and whitelist those instructions which it
is safe to handle as NOPs.

Patch 2 adds defines for the HINTs for BTI landing pads which will be
used by the in-kernel BTI series to generate landing pads in JITed BPF
code so it'd be good if this could be applied on or merged into the BTI
branch.

v2:
 - Fix values for BTI HINTs.
 - Rebase on v5.7-rc3+for-next/bti

Mark Brown (3):
  arm64: insn: Don't assume unrecognized HINTs are NOPs
  arm64: insn: Add constants for PAC and BTI instruction decode
  arm64: insn: Report PAC and BTI instructions as NOPs

 arch/arm64/include/asm/insn.h | 22 ++++++++++++++++++++--
 arch/arm64/kernel/insn.c      | 32 ++++++++++++++++++++++++--------
 2 files changed, 44 insertions(+), 10 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
