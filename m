Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBE79EC40
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qYT7L6OFzjiT5JeCTQn0e6T2Yx4m0oz8ldmq2mMeA0w=; b=gUx
	vNQOO/0b4GPdUN7cDum3W4wMhjes8r4oZu8Gnzf0RB20UGDEkHJ6WvzIOYiYmLD/xxX0VoVoJpXIy
	/F5okgztVINF2OX2ic/RuSUPmVk2awy7Yu399OXPk3nje+5yLGqnILAlMNpgvEoq2Vum/Qobqc5U4
	Fx0UDV26oyKnn/cf8i9uvayGsqVvT0IqxPKuqbVmv7GnRKnf8Z07i//tpKO34lmYBCg9mmbTiPI1a
	CqYhMv0yFraMunJJ5hdyGA1ayWHMzJI0D9AQZKlt+YDvlNh6YBFyp6lvxAgSBVadq+i8yP/AGuGcK
	JqC7o1oYjuMmgPgG4ecMDIqHOhTjEvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dEw-0005Md-1N; Tue, 27 Aug 2019 15:18:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dEl-0005Ld-I7
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:18:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2AD18337;
 Tue, 27 Aug 2019 08:18:23 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6E85B3F59C;
 Tue, 27 Aug 2019 08:18:22 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] Try to make SMP booting slightly less fragile
Date: Tue, 27 Aug 2019 16:18:12 +0100
Message-Id: <20190827151815.2160-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_081823_637824_99313686 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi everyone,

After spending some time investigating SMP boot issues when using
(random?) configs from Qian Cai with lots of debug options enabled, I
hacked together these two patches which make SMP booting a little more
robust.

The whole thing is still a racy mess, but I'm not sure we can do much
about that without reworking it to use per-cpu data structures which
we can update atomically.

Will

--->8

Will Deacon (3):
  arm64: smp: Increase secondary CPU boot timeout value
  arm64: smp: Don't enter kernel with NULL stack pointer or task struct
  arm64: smp: Treat unknown boot failures as being 'stuck in kernel'

 arch/arm64/kernel/head.S | 8 ++++++++
 arch/arm64/kernel/smp.c  | 4 +++-
 2 files changed, 11 insertions(+), 1 deletion(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
