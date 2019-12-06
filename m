Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E48115951
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:25:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IX1AKFSbMmDM1Jw/U+7Hh79Eu9MUmIBwjNQq6m0titM=; b=AeVxHGiaPKPn0u
	0Bq7RtVC0KaCfLRm7uc5a5tXn4dUdfoY3oWQXIrofi62hrArqzmZoY2gHcQxv3iUWpp+KdK99fcpG
	04SzAyxGbwGewiqWcge0PUoLuekP8r2SCiX/TKNK8ocGJa3eRXuMll6yngsLiUMlaw2cmhNtZdPwY
	bk4uHsp4io1breo6UN2JkHONDeMrV1pSa+6+ui0sqbtGxftx4sGxCWIx+ztOa6w6JQoahTTxXimVY
	uwjHxWlzVen7JcQVvgU2YTBl+AtCkKilrhrD/GN/0WJp/GjydBsd8WISzzeh5TRT9XxnesKoTkSpk
	nRMbCSxim4DBEFVwF3Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idM2g-0006eE-F5; Fri, 06 Dec 2019 22:25:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idM2P-0006VS-ND
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:25:27 +0000
Subject: Re: [GIT PULL] arm64 fixes for 5.5-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575671124;
 bh=jKAdyHgaAIP/KERssKZ/MaqpNmUNwdOx04I20fLPgsg=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=LpCh6FWuEcrBQ3MQbPDVkj+7C26QnD8vtNFvcR3VH40F5xg8iHzdRkmN49VMCkSp0
 lFW5G5wzsdU6fbMJ6BrC7sC3CDLd7cAlZvHR1NcM+3VOrPs7F7KWoaVvJI3AnWqRmk
 PLHdGam4OKtDUMIEAIRdoWlZ0uJfKxDKU6NvpoBo=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191206154602.GA53116@arrakis.emea.arm.com>
References: <20191206154602.GA53116@arrakis.emea.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191206154602.GA53116@arrakis.emea.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-upstream
X-PR-Tracked-Commit-Id: de858040ee80e6f41bf0b40090f1c71f966a61b3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 98884281027d07b93f062b7c5e7aa01e76ba12c6
Message-Id: <157567112420.16568.760474811253048283.pr-tracker-bot@kernel.org>
Date: Fri, 06 Dec 2019 22:25:24 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_142525_771787_F27038E5 
X-CRM114-Status: UNSURE (   1.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The pull request you sent on Fri, 6 Dec 2019 15:46:04 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-upstream

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/98884281027d07b93f062b7c5e7aa01e76ba12c6

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
