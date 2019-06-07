Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0287239275
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 18:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REkMAWu0clgvwGtsZCkYVvrAOdOysnH0ETzxO0fzGYQ=; b=qNv3KCUMi02ttg
	ni/Eaq5KvoAuuHd/jGSmUyQ4o8Nbo6em8kBm2/usVIs4q5pvaYsJIUR2WTRddYUjDJYKSPojp60kB
	L415LMKrjLcTQcjRL6ALQas6X0qNiOdBva8sdqtVxlf/9giy6OSqGgqJ6KlfRA4L6TOUs3eHp8VOO
	h2LzSAz2lK7k2yypxLzcRa+RBemPvnPBP17xoh72D8Z1i8KhmfaDY/CFt/Reybl8xgSICh7Pa7iRG
	Po+zrmcb+d0hH3h/LLV7V1s362QlF6gz5j+13PFrZ4x6PlYEE06P+5lDv5uBE6clxgCFg9KPWEM2u
	8pWtpgtEbFV+NlGh314g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHzX-00007r-Mx; Fri, 07 Jun 2019 16:45:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHzN-00006Q-3J
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 16:45:14 +0000
Subject: Re: [GIT PULL] arm64: fixes for -rc4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559925912;
 bh=xHNLQKOgqwuG8+63U3xrvazYFXLVHXrx58xIhyZnOTM=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=lAdkBBwpj4Jm5PHEjNQlN7AVHASpYyOIzVHAcZds3Dwarz8PIPKSoZqS9Xgkvu37s
 2bRRs5iioozoqds6qlgPaPm8JsVsnFLhGqyycotVSfpLZEf40WYj1F6DV+2LOzvl7O
 sWRO2KqXw9BPYamcX7DWUl5Da8YjMftzF7PpNJ0s=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190607151316.GB19862@fuggles.cambridge.arm.com>
References: <20190607151316.GB19862@fuggles.cambridge.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190607151316.GB19862@fuggles.cambridge.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: ebcc5928c5d925b1c8d968d9c89cdb0d0186db17
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: a02a532c2a6c79a898cd6c430fe3ad011d9aece3
Message-Id: <155992591208.2725.17227157802689192114.pr-tracker-bot@kernel.org>
Date: Fri, 07 Jun 2019 16:45:12 +0000
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_094513_156746_FA4D0A51 
X-CRM114-Status: UNSURE (   1.43  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: catalin.marinas@arm.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 7 Jun 2019 16:13:16 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/a02a532c2a6c79a898cd6c430fe3ad011d9aece3

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
