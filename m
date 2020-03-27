Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC11195D98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 19:25:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIbhg5R10Xx3k/ww4e/v1GAIYrwUwzWH7zQkD6jld9E=; b=jUqeJogJgjgllg
	4p1qQr9Xlzcy3v6XG5U6OFoXydT0fYl0Da3661K4bVHhAQmO1a18xvHUlBGMpgMV9v0ZUUztjGCaG
	tbQC29xRLQmVNJJjwyQYeh5FVrEXVo0lfxnUkM3DSY1QlXpUmyGjR7U9Z7ku/JFUHGYpQsnZvNWcI
	A80gu8G9mH+KSP8GZ0h8imwv/PT1SUfztlByO+h77mk9fuhqc/aATjV6+nK2rLC5FJzQjab4wodPY
	Bemuopft0cK+yThoJyHR0DHvkEFNbTvB9yoSDXAWcZ2ZpYkEIXwY5DrOLRUDUHl2Ci7B6Uar9Xq/v
	JHiAvYMALrPRkiEYo0HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHtfS-0005xo-Dq; Fri, 27 Mar 2020 18:25:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHtfI-0005cb-18
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 18:25:09 +0000
Subject: Re: [GIT PULL] arm64 fix for -rc8/final
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585333507;
 bh=tCz41BqwHEwUUlDh+Nz7eMa26/KTYG03tKBx1/J95Ew=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=SA+mlEOvnph3AnVH3GqHBCUxqz44pqMR7G82jSfIn537g8nBywb0/L2Gt81aMGiHR
 Cxhp3TcFxk/Z2g7lEJmPutlef0OHrYH7IRy/FdixyefTRi4ouWNputOFheIwAHjUd6
 xr4OKl5vGEhtcCkJeayDQmVRaHtWRstaiKHUUO2o=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200327143655.GA6205@willie-the-truck>
References: <20200327143655.GA6205@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200327143655.GA6205@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 6f5459da2b8736720afdbd67c4bd2d1edba7d0e3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 1fa8cb0b7b11f3bbfe799d73f351e44a441903ca
Message-Id: <158533350713.5176.14800079996029245932.pr-tracker-bot@kernel.org>
Date: Fri, 27 Mar 2020 18:25:07 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_112508_104716_035ABE98 
X-CRM114-Status: UNSURE (   1.60  )
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
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 27 Mar 2020 14:36:56 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/1fa8cb0b7b11f3bbfe799d73f351e44a441903ca

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
