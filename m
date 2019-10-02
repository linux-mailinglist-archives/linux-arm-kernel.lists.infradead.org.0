Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D10C8B91
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bL9AoGtt//zp1c70R2Er+cbaWbIqU3J7u9ydx45KiBk=; b=jree9L3ZSiTmsZ
	rYJVBXbJocXREEHdt3lX0890NOINnIyAcGcTdzEK5bNvOWmU5G9tKa8fKQMtavp9hkcn5EoObHl36
	AaBjFoqetZHyi22VGcU1WV7tgMIbB98fKI/TcyJZBUTyoYC/0THcVvMMK0j8zWZQp7lLU34Z3RgX7
	V5yhUSwMhawinWNEz/u4MuV2JMDQmmVpIejbIa1gxqLskNwYnILk/s8NzK2cQNCScRS//PutGLviU
	pI0KvdrGtTbX16yA90nPhPRPsYUoXnzbuBA/ouCN+6PndPQPlVQeNqXE37mRhNXPhIyre1i3QOd4Z
	ESsytj67Riv3l84+pxig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfrJ-0003tU-1P; Wed, 02 Oct 2019 14:44:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfpW-00037j-2j
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:42:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 459FA15A2;
 Wed,  2 Oct 2019 07:42:12 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D2B73F706;
 Wed,  2 Oct 2019 07:42:10 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/6] arm64: Remove gettimeofday.S
Date: Wed,  2 Oct 2019 15:41:53 +0100
Message-Id: <20191002144156.2174-4-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002144156.2174-1-vincenzo.frascino@arm.com>
References: <20191002144156.2174-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_074214_173572_8ED6E0F6 
X-CRM114-Status: UNSURE (   9.00  )
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 luto@kernel.org, tglx@linutronix.de, vincenzo.frascino@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

gettimeofday.S was originally removed with the introduction of the
support for Unified vDSOs in arm64 and replaced with the C
implementation.

The file seems again present in the repository due to a side effect of
rebase.

Remove the file again.

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/kernel/vdso/gettimeofday.S | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 delete mode 100644 arch/arm64/kernel/vdso/gettimeofday.S

diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/vdso/gettimeofday.S
deleted file mode 100644
index e69de29bb2d1..000000000000
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
