Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201AA1E8994
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 23:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzfT1Bd+OMHX0UXgO1CBp8u60QY9n3TH101mrFgYx8M=; b=AU9FMIB6bUz1Pm
	JXljiLR+FHxMAgEdFBHjTwBeSBEGpy1p4gzSTXxEqIDOdOhB9YPDaWTtTDnK26Nf2WLC/yfDv0Zuc
	mrnVuk3DkudNy8AacU0BSNfKFxZ5XQWDruCeSAUch2BzNNm/bh7hcaKHfbMZulODmefdfp+0rXcmA
	nOJoGzSdU6QqkYN+vcswBaALMmWYHY/Zqjozr7ckzo3d8wtXaVqeH2bro0N/jfDJGzahY6tKDsyW3
	pUudLOuATUo8TYLD8qOgEb7Z50AL2BK6cn3phQdMovfWtJ9Dy4P2OHxTfcpPbUC/1m4aKRwkKndOW
	mpO94KmlG5MIfaZmVFvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jemGh-0001Sy-4l; Fri, 29 May 2020 21:10:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jemGV-0000Ph-2z
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 21:10:08 +0000
Subject: Re: [GIT PULL] arm64 fix for 5.7-rc8/final
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590786606;
 bh=w6g+nha7VpDKf+ZVCuuZOQyb+qhp4yYZ4xyYjzEbmf0=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=uKwPie6xtjQyUBowjhwdgrwhpSvUd2lpPQB50s7hJ5869xGZMlFlce902XuFs/8ZS
 yD/W+LSzdvaxNsusc5iJRprU/YZKMUKb7slCY0JoXHZotA2y+Be5W16IXF43l1itWV
 s05XVLUsLUryrzpiP3H6+N+GKQlM2Ti2TWhZpRaw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200529172055.28307-1-catalin.marinas@arm.com>
References: <20200529172055.28307-1-catalin.marinas@arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200529172055.28307-1-catalin.marinas@arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes
X-PR-Tracked-Commit-Id: ba051f097fc30b00f6b66044386901141351a557
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4f23460cfa867aa560119e18a73616e784d3cd66
Message-Id: <159078660614.32003.16409266128818344436.pr-tracker-bot@kernel.org>
Date: Fri, 29 May 2020 21:10:06 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_141007_163111_7D9DFE5F 
X-CRM114-Status: UNSURE (   2.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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

The pull request you sent on Fri, 29 May 2020 18:20:55 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4f23460cfa867aa560119e18a73616e784d3cd66

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
