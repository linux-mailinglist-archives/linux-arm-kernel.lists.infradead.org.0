Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E8F1DED76
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 18:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wH4iF+gati0x236nQxPXWyBmRJt1Mg0+SlAfhp75xzs=; b=FmltCT7b3XWdXg
	8foR8CNJR6U408XK9CrqF9QLlQqKAlpGF93Ig7MQUNLhg1zMCosiht/AhC37SfZeeadRzMjNmF1AQ
	Avt6bznr7fYwWoN5urD73rqq7f6CAF3BroHY3+00TxBba33OkK3vZQ88TlfZ2pR9Eo+w5ChAzuq6b
	aEEUEyVhW5G9J9VciGoXxiT3H+F90Xf8+7BvYbxlBdxENfijo8VzWHcI3ewssZdVGgLq+0GZosm9Q
	179++cYneMyvWLXE5qqvb0DxOd8w2NeOQQi7rFwSBqMx9qf8xe2hituVcMkHsfynMisrwXPMLYky2
	poPEjDMc2o4396hmqCaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcAic-00073O-9W; Fri, 22 May 2020 16:40:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcAiK-00061j-UP
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 16:40:06 +0000
Subject: Re: [GIT PULL] arm64 fixes for 5.7-rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590165604;
 bh=HlMsY2TCnZZkKkInPKLHL5tZipWUDQ/YJ0xYqIon3TE=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=vX4RQiLyOqAvIsM1AJbzkoKKepYyRLzwzpqNJ2H1VW+AzS1gv+2M/dn8WIiKsf0hf
 CjZhBwN6WXqFPF6ffkBs7FB6AIGljE6+F551xsSYUs6BBqi6gj8GOX2Ce9lfMCUSzF
 kKh1vam7/9XgWB8X5gpJ6eHkLKsGktNIci8MgjvA=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200522162815.GA20565@gaia>
References: <20200522162815.GA20565@gaia>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200522162815.GA20565@gaia>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes
X-PR-Tracked-Commit-Id: 8cfb347ad0cffdbfc69c82506fb3be9429563211
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4286d192c803571e8ca43b0f1f8ea04d663a278a
Message-Id: <159016560417.11923.8720349875291559683.pr-tracker-bot@kernel.org>
Date: Fri, 22 May 2020 16:40:04 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_094005_007755_131BCE02 
X-CRM114-Status: UNSURE (   1.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The pull request you sent on Fri, 22 May 2020 17:28:17 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4286d192c803571e8ca43b0f1f8ea04d663a278a

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
