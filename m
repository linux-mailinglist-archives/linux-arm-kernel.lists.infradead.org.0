Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DDE1ED305
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 17:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OjXJh6BhEy/+GvOluDdKBUeqW0GFfdun8vfnkqUsDJ4=; b=RXPsSOrqUR5u2X
	9o3pfQNyctvgpoAI9j+UXEobngHuzunMBpXJzMVub4wHN+wr7oQLtVQDZRLavfRrPdSmo1rcyRg08
	NRsZaFN6YIwJykb6KpYvrNgFl7wGClUvo7mbujYNFB+w8NGG01rZRteuFSLB2ZVkm30FCDg307zTa
	CTjzNzoB4y0jyJOunsKfceTZVMv6f00+QyNkKAjEuEJhWjCA40JunFQUPCi3PWU1nn4ki5fw89hEu
	Op56ROtSa5YuBE+4/25oiJ6WQsc0gMSn9OZ+viMfMs70NnlBIaa7b7BhScJYyXCk8Ym+Vzp8IZ2Az
	qekQAKUbmC1FRzAXQGCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgV2T-0001W8-Ec; Wed, 03 Jun 2020 15:10:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgV2M-0001VR-Us
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 15:10:40 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F3F32067B;
 Wed,  3 Jun 2020 15:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591197038;
 bh=KpMFwwZHn4SeIEQRozrwC60n+sDN2ZGsVMylOQtGRuU=;
 h=From:To:Cc:Subject:Date:From;
 b=F8dLP1R/4FaGBYfiBh0VoZzhtrI7VX/ytaoOSlAGE0L8aDWrwcT22VahgxFFG1AHo
 iOpCPbyls1NvMZ2nH41ToQWhX/ro6L0omTaM+8G7x/z+wXFhUvKllvcsBVN/bDqTv+
 i90TVsWyJaCV4qw1ma1D00tS+kJm+9MEJJnyNFNk=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64: Fix single-stepping with reverse debugging
Date: Wed,  3 Jun 2020 16:10:31 +0100
Message-Id: <20200603151033.11512-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_081039_017049_8346E7C9 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel-team@android.com,
 Luis Machado <luis.machado@linaro.org>, Will Deacon <will@kernel.org>,
 Keno Fischer <keno@juliacomputing.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This series fixes a bug in our hardware single-step and ptrace logic that
was reported by Luis after seeing some GDB testsuite failures. The second
patch is cosmetic, but I was in the area.

Cheers,

Will

Cc: <kernel-team@android.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Luis Machado <luis.machado@linaro.org>
Cc: Keno Fischer <keno@juliacomputing.com>

--->8

Will Deacon (2):
  arm64: Override SPSR.SS when single-stepping is enabled
  arm64: Use test_tsk_thread_flag() for checking TIF_SINGLESTEP

 arch/arm64/include/asm/debug-monitors.h |  2 ++
 arch/arm64/kernel/debug-monitors.c      | 24 ++++++++++++++++++------
 arch/arm64/kernel/ptrace.c              |  4 ++--
 arch/arm64/kernel/signal.c              |  6 +++++-
 4 files changed, 27 insertions(+), 9 deletions(-)

-- 
2.27.0.rc2.251.g90737beb825-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
