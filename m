Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4FD15680C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 23:36:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLZpN7mwP0s8CCClcIbUQkE+T8xpigouO3uveoZwhog=; b=oCI7LSt8ybT8++
	hdU8PS7BhPthVCV4TBs7ZguBZL9f+sXo52NJ1Wvng/0KIt/iZ/xMv0ZguODLkZXEg68CvpGqYk+bj
	DOm6VtWywjBqadca41gukEZeHpkGbG3iR3Vyq0kLje15q02vR2fos0doYion/i+i7wpi9ruTPXzs/
	OLn/nZw959r/4oktS7j0i/xSNWqGRa3gsHK+eplk0DlxIARFYyzeHwotIeWqGqHneYLJIz/lg1Irr
	EAFqy/8K5gRRnAOYfjsu/cWNlFGMipyuqJJjSrgLPhNNVVe8s2Gk9lIB12iNzVb5T+5frp3KDfmyx
	ggOtVRFLgDwX1AGlNBnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Yhv-0000kR-4G; Sat, 08 Feb 2020 22:36:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0YhE-0008W3-Ir
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 22:35:30 +0000
Subject: Re: [GIT PULL 2/5] ARM: Device-tree updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581201328;
 bh=uoy4aMayMWm+cmGu2cQq5t8+/Xttsr8RpTy/J72Vp7M=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=ypVEx9saVK6+d9fc/8AA4kLOvr3/99TuXImYTVWLO1xiX611vEKkGRtckdciSaQpC
 g8cZUzvIMW/egw2odlwQ7GJNDhbcN228OqgTM7aJruSkgZcAFkU+V/hB2uT2Xr48qk
 tm0vuDVpE/HgnnvUXlT+KsoUR8bj6pEiGiKeZmEQ=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200208112018.29819-3-olof@lixom.net>
References: <20200208112018.29819-1-olof@lixom.net>
 <20200208112018.29819-3-olof@lixom.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200208112018.29819-3-olof@lixom.net>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-dt
X-PR-Tracked-Commit-Id: d030a0dd01306d45569c6a4449dee603f994744a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 1afa9c3b7c9bdcb562e2afe9f58cc99d0b071cdc
Message-Id: <158120132832.28764.5136893287459921934.pr-tracker-bot@kernel.org>
Date: Sat, 08 Feb 2020 22:35:28 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_143528_635058_956FEA47 
X-CRM114-Status: UNSURE (   1.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 Olof Johansson <olof@lixom.net>, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat,  8 Feb 2020 03:20:15 -0800:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-dt

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/1afa9c3b7c9bdcb562e2afe9f58cc99d0b071cdc

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
