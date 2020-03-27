Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5292B196029
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 22:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWpOGlPwD+YiZYu8s122WVSUkpyXWp9Q7gvyvyk6Hq8=; b=bDODzs237xX0pA
	uRJ5ojEDJXMC7aXVZYt5tnlkTSU6ECiqlAwaoJO6cVCzshh3gEO2VhJf9Ab9/NthxPe0wmEdsHlJo
	2S5xs7ylbhfvcf41B46rrE6d5cnWVUaDLh5RGTGZucuMKIjKp1F+89qoVMqoy/ONPhsryvOR0ez6b
	EYzehArKMGfCKuYVTGxwxSI+PoihNcxuTiIWzXgaSNukabT4sFkvQ0kDj+ruYw/walPZjENhr4IWn
	9aeM+TguEWdZWf5kAb9FlbrEP/gxkjHK932F9SReDVfwdnvdmY4i00bf73XXp8G1nB7NZL5kUOtt8
	msHjOL7xngiP8WDu9CuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHw5R-0005B5-Dw; Fri, 27 Mar 2020 21:00:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHw5J-00054T-GI
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 21:00:10 +0000
Subject: Re: [GIT PULL] ARM: DT and driver fixes for v5.6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585342808;
 bh=979pSAxy4HN3Ax6YtrExOc585Eb1BLLE3r1XhPAHdo0=;
 h=From:In-Reply-To:References:Date:To:List-Id:Cc:From;
 b=1EvrGKH+pf1Yogo0yWVJEclIs/Dq2EjR3Ud+Qt+pYxw5EdAcw2TQnzxHylTr/mDX7
 f0DaKljn9TbtwB+6p8Isn269nopau6tT2PM6zcZRvuSq4hTb147bAob/2Ja4fHfUnV
 31KzxyjqbOx0Hz/GQQ44KfJXzxCptzKSHfWWhBQQ=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a1j=uNUWvb7Req3H88FmUH4GNA6RcD3Zderrj-UstfiWA@mail.gmail.com>
References: <CAK8P3a1j=uNUWvb7Req3H88FmUH4GNA6RcD3Zderrj-UstfiWA@mail.gmail.com>
X-PR-Tracked-List-Id: <soc.lore.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a1j=uNUWvb7Req3H88FmUH4GNA6RcD3Zderrj-UstfiWA@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
 tags/arm-soc-fixes-5.6
X-PR-Tracked-Commit-Id: c8042d1e5cb3e654b47447229ace3cd092a8fc27
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 32db9f10d52c97ffc407c7dad81c6fafcad730b2
Message-Id: <158534280877.17018.14738051278980966175.pr-tracker-bot@kernel.org>
Date: Fri, 27 Mar 2020 21:00:08 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_140009_576234_0384D9C1 
X-CRM114-Status: UNSURE (   3.33  )
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
Cc: Tony Lindgren <tony@atomide.com>, SoC Team <soc@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 27 Mar 2020 21:33:51 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-soc-fixes-5.6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/32db9f10d52c97ffc407c7dad81c6fafcad730b2

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
