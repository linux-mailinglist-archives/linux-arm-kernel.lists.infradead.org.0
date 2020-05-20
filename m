Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B581DBC18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q+IFoPMD0Kil+HCEI+IcIK/pwYfQhjFn6SlVqWJ0nMk=; b=GRFjc8oarnXwAv
	FI9iZPYGCteThTK0kVje5QBGq+zc0epvtDNGON3XmDGLjRtOUbwhQ5/TlNwfuxNkviLaajc6FXGdG
	Eq/CNk2YXcA9aR+rq9zxgc5LxUvyWErF8vPAEektQP7K6SOGrStjdjxEfG/sm8HXFo78tRyoDKaxR
	kKAf2pQ7YKnnMw2QFNwHQ/EnbpYc5M8YhXLUTY7Bq6JIeNeFMwqcYT3KUu4Lxl24rH76nfxMQLecC
	1L+BmXCjc9nQnnedJdDQ6hsBceSDgzmpseAdSAgwE8NLyK5wJ0BNH02GdX2XksPkYJ5gXCnQTuNtr
	gqEM+clV1iaYjt1629Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSxe-0003ni-DB; Wed, 20 May 2020 17:56:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSwT-0003A9-OH
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:55:49 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F401B204EF;
 Wed, 20 May 2020 17:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589997345;
 bh=RjcKzlDRRMdelENucMWCiG1gUt0q7bqy6Vpb7eheWMw=;
 h=From:To:Cc:Subject:Date:From;
 b=PzAut2nxmQunc0XXHlPEVPPKKIfzpHOYYPRmzJElJu3qOQDHHsEZiRtHXgu12PYwI
 pKVasRrndBu++RQyvAlP5CJjgrBd1pyae1S7TafC5aDyaZaBW1qgr36uXN8iDJoYTG
 vNf/ciorw4Tt9bXpP5iAgqmPm9RyuFn40UrRrULY=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/2] arm64 sigreturn unwinding fixes
Date: Wed, 20 May 2020 18:55:37 +0100
Message-Id: <20200520175539.28464-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_105545_879579_8687C99D 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Will Deacon <will@kernel.org>, Tamas Zsoldos <tamas.zsoldos@arm.com>,
 Mark Brown <broonie@kernel.org>, kernel-team@android.com,
 Dave Martin <dave.martin@arm.com>, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

Here is v3 of my attempt at fixing the vdso sigreturn code for unwinders.
Previous versions are available here:

  v1: https://lore.kernel.org/r/20200519121818.14511-1-will@kernel.org
  v2: https://lore.kernel.org/r/20200519162821.16857-1-will@kernel.org

Changes since v2 include:

  * Fix the .cfi directives to identify the link register correctly
  * Even more comments

Daniel, please can you give this a spin with the LLVM unwinder? It should work
this time.

Cheers,

Will

Cc: Dave Martin <dave.martin@arm.com>
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com> 
Cc: Daniel Kiss <daniel.kiss@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: <kernel-team@android.com>

--->8

Will Deacon (2):
  arm64: vdso: Don't prefix sigreturn trampoline with a BTI C
    instruction
  arm64: vdso: Fix CFI directives in sigreturn trampoline

 arch/arm64/include/asm/linkage.h     |  6 ++--
 arch/arm64/kernel/vdso/sigreturn.S   | 51 ++++++++++++++++++++++++----
 arch/arm64/kernel/vdso32/sigreturn.S | 19 ++++++-----
 3 files changed, 58 insertions(+), 18 deletions(-)

-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
