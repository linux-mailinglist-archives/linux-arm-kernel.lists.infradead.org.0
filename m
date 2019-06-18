Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC69F4A962
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 20:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdkpZ7GUDk1Wny1SA+m9EanKmlMNvfXESG+0vHfWzFY=; b=nimu1hXCpsd4nz
	x3nbPjBzVHaTnQRgRYa0V7IM9oO3kNCO4p3+VIhDmA+TQz+94xBlasCYYxQiNGxi/kLG0uJ6zc5/w
	5Cesup1EWT3J9LveAG5mf25hmfKd4T9DDtXJXdYEdueh+usUUmdsRZVcUCP3Kps6SbGHDxVaRJp7+
	TWvYqJrnsjPiYiSKMnkIXjlToxc8KRkbgebOkb5ZDBjkObFmkLqQppwhOBs5RI/ZBgOfYPu0rQMLR
	Qo1fO09UBuVEGqdCSZTsZCpnsbi2MmOU2oBgZnEZ9bf3Nc9lgGTtJQ07OFbt7W93Z8h+JpSNVoA44
	b6Q0PN6euVcStIyR/RxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdITt-0004ET-Hq; Tue, 18 Jun 2019 18:05:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdITh-0003mT-Ck
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 18:05:06 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560881105;
 bh=EQC5nNuq+cKl8nOr1monDBXdV3ba18Q/Y2lGhpgzRFM=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=dh9XhyUmRoaFz7gLKkzNSov4vWXfk6nfIiZ/tuivC5za0TZSe5os4+x5YHsgwqxuz
 p7NeODW6b4lKCjxJABNgGdFrkf0N9Gh2Gb2y7NV4VlNt2uaGeu5/pnEAj/92491j8M
 4+5xlRy5FE9cnspT6vEQAGzRuLuIFhSm0YDyyGwE=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190618135216.u66gpj5s3kc766cp@localhost>
References: <20190618135216.u66gpj5s3kc766cp@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190618135216.u66gpj5s3kc766cp@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: cd3967bee004bcbd142403698d658166fa618c9e
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7b306892cc57e27959b5232c1b8415cf09b7571c
Message-Id: <156088110495.27164.7890225402146751866.pr-tracker-bot@kernel.org>
Date: Tue, 18 Jun 2019 18:05:04 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_110505_491490_1B6A783E 
X-CRM114-Status: UNSURE (   2.03  )
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
Cc: olof@lixom.net, arm@kernel.org, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Tue, 18 Jun 2019 06:52:16 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7b306892cc57e27959b5232c1b8415cf09b7571c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
