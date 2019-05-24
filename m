Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2CE29DF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 20:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2J2oXdLHsYZp9dLdP/q9Q1975+GEL5NCbrVsCJtrWU=; b=VLT2poG1y+WcOV
	YtfalnVQTuLEyCc3kNUTz62LZTz9mB+lWtOP2HsZvzZW4lmbEr3cSMjlp+u8js88lmE2PhJ5M5tui
	VaSeQUCpRkyofIb58+/XQdrVNfmTMzEANgPpkrWvvThDWL7/bnFTRztP4i36+ZNAZJwtGrbNP9XY5
	6tjjkTCWzQA+8QwZj9tgr+3jGzjVd3I7u43imVcrj6XwPopn9w20nUgcWcNiB3EqnePV5gWz/7+r1
	fu5UFVGS2aKTNv2eajYjFujuszrLCspP7n03IrL9vIAHYML6niS85Z09IFCkS7VV3K81efVoucxv1
	El/U9U4O7i9pxhhJ7fJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUEnz-0005eL-2s; Fri, 24 May 2019 18:20:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUEni-0005NI-TL
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 18:20:21 +0000
Subject: Re: [GIT PULL] arm64: Second round of fixes for -rc2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558722017;
 bh=EbCatF+nk6Yrrx+RopsbQWZdXfG/uf+mUj9qs2Y1cw4=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=xVELS5AZpMr7x2GkF7U7Ut/dhQ80wTsGzrrQhxAHfUFsDOuZVwwpDUMMHAH/7Jgl6
 iHJ7XiX7oeS7XticboJGpA1tLamQUIXsfVoQQv5Bu+8bKyZwETWpgi5VksS9wrnrJD
 04dnjx1MYUGjB9ZqB2K7yoPrX8B+pyc/9E9fDze0=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190524174357.GC9120@fuggles.cambridge.arm.com>
References: <20190524174357.GC9120@fuggles.cambridge.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190524174357.GC9120@fuggles.cambridge.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: edbcf50eb8aea5f81ae6d83bb969cb0bc02805a1
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 0a72ef89901409847036664c23ba6eee7cf08e0e
Message-Id: <155872201757.27843.1132229878974057804.pr-tracker-bot@kernel.org>
Date: Fri, 24 May 2019 18:20:17 +0000
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_112019_242864_E39EE745 
X-CRM114-Status: UNSURE (   1.53  )
X-CRM114-Notice: Please train this message.
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
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: catalin.marinas@arm.com, lorenzo.pieralisi@arm.com,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 24 May 2019 18:43:57 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/0a72ef89901409847036664c23ba6eee7cf08e0e

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
