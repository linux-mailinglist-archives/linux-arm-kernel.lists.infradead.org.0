Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E892F1A3999
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 20:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNoppij27NzYRboFoUn2BJU/IQXsjfBgV0y7XNJq68M=; b=lXZWXt8XqCIQSo
	T6jSFccUEUjyH3pq3gJmqxgrVoU5rl/tXmrODAPwlAH4/WzCIRnkICLsITlYPLMG5UO7qiRCeT0lI
	1fhTV06ZyAh39T7AMNVszvdQmIX/msFFgIH5JLMjwgthPG7b9KSYbp8EJHbZ0v7faoNehNsckTGjv
	s74j8oO355a6OtVDDG3549ESu5B+gLQ1F5a/j4OSSSRC5l6OQOhr6ykn//G3GL7cn0WReIRTiFJXx
	zRLj33tOHusujejzNSiNtp6IJ5E3Xxa87H70BbcdqudDXVqmTXsHB6LBSFRFGjSCjJAnsNI06K1ud
	5Vv7tR7CbIkFAFxCm2TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbdO-0004Hz-6N; Thu, 09 Apr 2020 18:10:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbdF-0004FU-Pi
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 18:10:31 +0000
Subject: Re: [GIT PULL] arm64 fixes for 5.7-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586455829;
 bh=zfk9UF4E5Hw/Yt7i3ELzwvn8qWsEFSoq8wmnU0APKrw=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Va/I7ipEJAQbQ81thbY0ExY0/e1Bkn7+g4IphgMIbNtw+ABxSP31W/c3LUmEZ2KP6
 bphHHangdBomYA47iAy+eGEJ6MgOTgFqsf+LuaFALeX2xB7pkr2ybJ5WHsS1oCsn36
 sNoP8BYFNkEzS+Rbllml1gT/mTJDqJQbITnhCx3I=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200409165049.GA872@gaia>
References: <20200409165049.GA872@gaia>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200409165049.GA872@gaia>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes
X-PR-Tracked-Commit-Id: fc2266011accd5aeb8ebc335c381991f20e26e33
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 87ebc45d2d32936fb1c8242032eb0b9bcd058858
Message-Id: <158645582947.26793.13263026472469961418.pr-tracker-bot@kernel.org>
Date: Thu, 09 Apr 2020 18:10:29 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_111029_859593_5D859292 
X-CRM114-Status: UNSURE (   2.00  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Will Deacon <will@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 9 Apr 2020 17:50:51 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/87ebc45d2d32936fb1c8242032eb0b9bcd058858

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
