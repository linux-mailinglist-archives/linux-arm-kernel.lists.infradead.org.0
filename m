Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF82195933
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 15:39:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5OAnf23qgK6L9C20rOkjhYmsmI7dpZ4rSBN9h9EOMVw=; b=WF6pN8apyKVHj0
	3AFLGi7lVl0bnKGjHRwBlDCY+bdVXDW7IjZ/OlsEbk4i26Fl0mlvxUNRR4ogGlkLEuNTlnhQWZ14e
	Ikr2euIlgldGvdByjdfBr6LptQNe03fy6feMkZUwfqL7ShJHs2c6VN311DvTayxiKta6dF9Id8DUi
	rC4QvTEZnvh7IozibDtsC+g6n3kSpDcUvaEEE/NZOrcf2Z/qcf2DjTDR7YzS6qDCu4/pe6CgdllwM
	cVRtfMog2yHN/attO7P2WWX9acBZjRcOy0Jkq2CXQgo9kL0MgmN2nL7ra8fOTzxWkhQbgeG/YacIW
	DrmJ+3jsqLrXjjtH1LVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHq8u-0000mN-7T; Fri, 27 Mar 2020 14:39:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHq6X-00079j-Jz
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 14:37:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0EA8206F2;
 Fri, 27 Mar 2020 14:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585319820;
 bh=YhxnLqESn5OJ6l0aP2+/xsbNdof7w2zmwZVpw4YJjhw=;
 h=Date:From:To:Cc:Subject:From;
 b=D82neLNeNnF3peNxO19ARovHHuLJ9IodxxTi6bsXOLbUBSgw4ETNpQKrqo+q8ZsGf
 crI556YvCMFcQ1Sl2EFLg8stV1+3ATz7PGifB7DHuq4sRLGXkdGGytvr/JVekh6deA
 4whECf7biyLTmVDqXReD58xnloZHqGNqecg68Zgk=
Date: Fri, 27 Mar 2020 14:36:56 +0000
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64 fix for -rc8/final
Message-ID: <20200327143655.GA6205@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_073701_696734_E633A118 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, kernel-team@android.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull this arm64 fix for 5.6-rc8/final to resolve a defconfig build
failure when using Clang's integrated assembler.

Cheers,

Will

--->8

The following changes since commit 3568b88944fef28db3ee989b957da49ffc627ede:

  arm64: compat: Fix syscall number of compat_clock_getres (2020-03-19 19:23:46 +0000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 6f5459da2b8736720afdbd67c4bd2d1edba7d0e3:

  arm64: alternative: fix build with clang integrated assembler (2020-03-20 10:01:28 +0000)

----------------------------------------------------------------
arm64 fix for -rc8/final

- Fix defconfig build when using Clang's integrated assembler

----------------------------------------------------------------
Ilie Halip (1):
      arm64: alternative: fix build with clang integrated assembler

 arch/arm64/include/asm/alternative.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
