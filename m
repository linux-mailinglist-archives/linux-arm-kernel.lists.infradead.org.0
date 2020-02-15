Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA5C1600AC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 22:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tT/G9xSBPo3NUBsnT80bcfd9hH0vT6XY3fgN7OmaLQ=; b=ROisvF51rbhj2N
	76o17X9ra8Om5yIgWuj3tgYSpdeHqEL7P0oFmujLlbZsOguLuYHMWKuh8QdTnlSedAli1QGJn3Y1n
	EkPoY3Pfpv0WDVcwXHOapH4N3jrBtBWdGnlU2WzTB1eG9+CYsdf8UI0nGaYJa4AbjwPnvMOOUevco
	yLcOmz7zYHt1C9THePBcrt2jPLXYmzIg1AmtmgzCfZI4Iv7kyIgfRPhMF/z6Way31s6UW3iZRu7mr
	BOgwNgWGnoh+aLML06RvC4zfYtbe43GhFXTFCPsGCWBPtIcA313CreGZZz0GoXhqLbjfIAHe8hem3
	FKPUHAObBSxEzub5mT+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j34wM-0002CP-Eu; Sat, 15 Feb 2020 21:25:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j34wE-0002C1-Uh
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 21:25:24 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581801922;
 bh=zJBT2YqubCCCwgBU575p+pJ4sIMFEAC0q80GVBIJxPw=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=PpBgJIs8+2D+BFWUweMwxmcRIcsBJmLMTpeYs/m6/fNdxAJkP4eo9625ONWWuqf2L
 Rigmwk2tDXooFl8IsFqz+XBwSmC3WdmIMYDLb6ckP6S5kCEeIbGmmsVYDRxKDzCI1K
 h1Bo1MtoBdGrHUk1ipzc1UAAxANg8Ns8YmYqROXg=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200215194910.jmvolzk6xsngpcbr@localhost>
References: <20200215194910.jmvolzk6xsngpcbr@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200215194910.jmvolzk6xsngpcbr@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: 3bf3c9744694803bd2d6f0ee70a6369b980530fd
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b719ae070ee2371c37d846616ef7453ec6811990
Message-Id: <158180192212.10388.582319674379439182.pr-tracker-bot@kernel.org>
Date: Sat, 15 Feb 2020 21:25:22 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_132523_010863_CDF4F1EC 
X-CRM114-Status: UNSURE (   1.85  )
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 olof@lixom.net, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 15 Feb 2020 11:49:10 -0800:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b719ae070ee2371c37d846616ef7453ec6811990

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
