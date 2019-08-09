Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B24A88043
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dI++E5JQQ+vQdPKs1KbCC+MzTNnQYByh6ZbWrw3Neg4=; b=bW7DcVx9UKFVKa
	FZYgtm89wqEex3ljqJ3ZBo2TOvCzP5ddqMSpQSsss8cqRlQyrl2XyeR2h8tMFOklBR6SIFAS1licO
	tJ4Pr64ogSe9jph+cnna+iTFvH0joNbUmQG3FL2ZiX3SyW5BcYXqXgRZPAsFuIzclCEaJY2ZpVAnU
	dOY88os5dXpHjzFEXWJK9FJH+q0q/UIIIJYtRhLQWeg+AyP8kM8p7ft+xRXNhoWTSytLPPoPdh9tO
	WtKVdyZwL3x7wE1RYdZB5mv+ZHkIdmIuQV65k2LXdB4UHzeTJuRTie2sXhMDaWaOx/3UuUPFkTj+C
	h548bxG4KprzVYIqr+FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7re-0006zo-Qd; Fri, 09 Aug 2019 16:35:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7rE-0006QV-H8
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:35:14 +0000
Subject: Re: [GIT PULL] arm64 fixes for 5.3-rc4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565368511;
 bh=419T7J4k04LmxtI6IPhOmUj3dbhoV69tdbHRuMz03Jg=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=jx6W+d++wIGb0nsUYq8WVk8lkMQ7Js5/BGWkyHBDFnJZtmxdiMHT6/SzKIHkIw5t6
 pTXJlwDfShFJ1OcP8fdddiLbkBEGSU9sgYZGIJPP/SstGpWPD4Cxg+RxTYq5sAGM/Q
 ai/rU/rczTpIzp7b+Jj8cAw8pLfEvPZs1D6n70uE=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190809161513.GA42536@arrakis.emea.arm.com>
References: <20190809161513.GA42536@arrakis.emea.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190809161513.GA42536@arrakis.emea.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes
X-PR-Tracked-Commit-Id: 30e235389faadb9e3d918887b1f126155d7d761d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 15a555a4b8be26683d77df8d5dbe8ac83f5ec3a6
Message-Id: <156536851143.6429.291425612357631279.pr-tracker-bot@kernel.org>
Date: Fri, 09 Aug 2019 16:35:11 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_093512_769763_2961AE33 
X-CRM114-Status: UNSURE (   2.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Will Deacon <will.deacon@arm.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 9 Aug 2019 17:15:14 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/15a555a4b8be26683d77df8d5dbe8ac83f5ec3a6

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
