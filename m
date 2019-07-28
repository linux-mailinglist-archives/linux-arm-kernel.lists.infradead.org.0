Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F032780A0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 19:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTrS/uLaXbfYuqXgMawtiTfkUp3GY6d9xAzHSj6K3ds=; b=E9cDC8Ya9tTxrA
	WGUdCebC4aaDl6NYS1Y14962uWo4pdyorJcfLuk57p900J3KF82R4U2R3hbS09yx2eFWYseOXC1gz
	tSKgA0GhF5Wi9mkfbqaB7Ak1hXAVB9HsF0hUFu/Ik/SKdq0YQwZrjx4KvRjcHjqZszatFJK7fYhHN
	q+2cBHY3RbcvmNWarm0PNj7Jo52KwiWvrgk6Bn4dWx/lQfXbZW1sFO6WiTkJVgMZlMzEpOjXPM8H4
	8FJ5xhk0aFTHJK7vXaXgvpIH+n6EsqaH9HJHIpBwsp0ZxT6WqFuzeg+pw1rH1QNH+ph9IUjxLUpGe
	cWLtbDbv0ZpOSI0vajbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrn0A-0001QD-5x; Sun, 28 Jul 2019 17:30:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrmzz-0001P7-Ro
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 17:30:21 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564335017;
 bh=+Fb/AstsPPb/152WXJWNxzWcmSDViHx0aDjW5JyAh1I=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=xW5sXgtPF3C8w/K4sek/7TH4b2Ltnorn9QHKTPxCx/vWTbywSL5q9DPw8AH+DYGyy
 33AyrJJOOeYe6L4tn3d4bYJfmyB9Jcst2golfHZFTJyr/EG/EbhDV3kkFmsRKb01fk
 NoFAo/uZDx9K4WUkNjB+1D7Ew9JWh3pKoCDTl5lw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190728063715.ensdmo7jyimrsez4@localhost>
References: <20190728063715.ensdmo7jyimrsez4@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190728063715.ensdmo7jyimrsez4@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: 7bd9d465140a93c0a21ba2d2f426451c78bfcc7d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 5bb575bcc6d1564340f969c5aa2bff8a500b239f
Message-Id: <156433501738.9558.9696751081969592633.pr-tracker-bot@kernel.org>
Date: Sun, 28 Jul 2019 17:30:17 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_103019_922692_E573CCF2 
X-CRM114-Status: UNSURE (   1.50  )
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
 olof@lixom.net, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 27 Jul 2019 23:37:15 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/5bb575bcc6d1564340f969c5aa2bff8a500b239f

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
