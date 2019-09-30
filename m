Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB540C25C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 19:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=unOnfQQQVj+72iQXRch4oM2CWAKxipxLOTL3AN3gY5E=; b=bY82aNJL/GLMLi
	tUllC/7/lRFJkZp2X+KGWHjTrTeOpEmm/lmpgVnKUosKkYFLKAHpvxe02/p3VJ6DrC80vlY2Cdr2X
	CH7lxQEVWtesH8kd+fAUXuSGboyAFbuEh77wqCaWA4n4bK6pvNLeS1HUAqgQqTk6iTWxwsU2+w5Y0
	FCzxgJCB1cZYsnpWCza/MovzUxPPdVMDOh39hEhJQGwsjt7Gr70tAi+B/hAVq/nJtpZadUGjgfG0W
	01EhgEgWFLJeKgdBJLY8xjE6zGe6FOyS20x1wvFpKqW7mwKdAnIOPJ48pj5nIjVZ5RDJQCe9+TWJX
	bU7Pirq+iBAPrG3ILArQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEzVH-0000JL-NB; Mon, 30 Sep 2019 17:30:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEzV8-0000Im-4C
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 17:30:23 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569864621;
 bh=ISGTh9dgGBpBhIYJpYyDAoFazDXZXj3BesU55A6KALY=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Aw4Gp+WW8dgdC6Hjwq4tT3IERHv52UcjJxKvvCRBhhxQqHTT/oAzat7RD5DghvgKs
 SVd9CC8T1/lCIWco75nf1lXjQsnsd1vCb5mz56UybIkBW9ul0LdCvtt6/KhyAHBax0
 XUSRAn0VHvc1MabF+t/CGqnxc05ZqOghi5k20DHk=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190929183453.4sehzgovw3ouatdj@localhost>
References: <20190929183453.4sehzgovw3ouatdj@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190929183453.4sehzgovw3ouatdj@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: 9bfd7319e8d353b8b81c4cfd4d7eced71adbfbb5
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: cef0aa0ce8592f68fb093b2be0d341a568ff9890
Message-Id: <156986462107.9141.2777289664605265772.pr-tracker-bot@kernel.org>
Date: Mon, 30 Sep 2019 17:30:21 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_103022_187662_85F5E0FA 
X-CRM114-Status: UNSURE (   2.05  )
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 olof@lixom.net, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 29 Sep 2019 11:34:53 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/cef0aa0ce8592f68fb093b2be0d341a568ff9890

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
