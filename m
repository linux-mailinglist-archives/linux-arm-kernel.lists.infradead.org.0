Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A995BC4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 15:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZCzn9mMKLfALCYbzUWtE/eC4FDCuhtFtGNmvt4pxNm0=; b=BeCeQC5+Nwb6HK
	KRhbzwtNzOb2Oz/2dBbgBvgpOhIGr2fr4Vf1co4DTIhMjTcXOL9ngl7Iw49f3bFOwedfi9xMvIMQR
	LI3ES3VsiZdmeOQWdshLVh32hRetke6JT2YpwOWXujX/n3IxIJz9zYczaGO90mw4zmPeYDgG5Ng9D
	gdmoSnrNXN7lP/hnOBRsHE2xkWTGQSWb4OGftU3okiN9mmqD+u0+i9S7LqtqMM8mFLff/+hyZMfan
	SLjVytodJcGhqRMYrpl6a6d6eTTDM/MQUlT0YBMQhBn9HITiuLqnQFQgmU/JFR4Bscre/WIdD2SFI
	2TeIQ6yheHTCNHEcoTHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhvwu-00061s-Al; Mon, 01 Jul 2019 13:02:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhvwn-00061I-6q
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 13:02:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D2BD22146E;
 Mon,  1 Jul 2019 13:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561986136;
 bh=sItSBS86bM2QNimkExoFDOGOIdfJCF4iAiVQ1BjkyoE=;
 h=Date:From:To:Cc:Subject:From;
 b=EJFUkOTG3HOWhlO/+BTxJj3RFt0AwzSyh3aqBLlxVmMdH/OboCg8fgEftN+mX6Bbm
 Nzw1YnjEYn5H8T99SVPcXwxyNUFjXSlcAayBNmvZgib6frWVLYTryE480htoRoOa0B
 Zu2UaFQfQC32lqR1qQ9UzhVvlMx8jx2HMnOeioYY=
Date: Mon, 1 Jul 2019 14:02:12 +0100
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: fixes for 5.2
Message-ID: <20190701130212.ifn7d7p2mqvquq6u@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_060217_265164_4F0BCF50 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

When you get a chance, please can you pull these two arm64 fixes for 5.2?
They fix a build failure with the LLVM linker and a module allocation
failure when KASLR is active.

Thanks,

Will

--->8

The following changes since commit 615c48ad8f4275b4d39fa57df68d4015078be201:

  arm64/mm: don't initialize pgd_cache twice (2019-06-18 14:37:28 +0100)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to aa69fb62bea15126e744af2e02acc0d6cf3ed4da:

  arm64/efi: Mark __efistub_stext_offset as an absolute symbol explicitly (2019-06-26 11:40:20 +0100)

----------------------------------------------------------------
arm64 fixes for 5.2

- Fix module allocation when running with KASLR enabled

- Fix broken build due to bug in LLVM linker (ld.lld)

----------------------------------------------------------------
Ard Biesheuvel (1):
      arm64: kaslr: keep modules inside module region when KASAN is enabled

Nathan Chancellor (1):
      arm64/efi: Mark __efistub_stext_offset as an absolute symbol explicitly

 arch/arm64/kernel/image.h  | 6 +++++-
 arch/arm64/kernel/module.c | 8 ++++++--
 2 files changed, 11 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
