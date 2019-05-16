Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E17B320D37
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRZ383U9L0LAN7ea/EqearwA2ZwEQTu1KD1a5Q1n6kQ=; b=JUpnZZSISKdKjv
	ySfhwnv/EUhG/5FB7hSw1yBZQ9vj09ntVRS+K4r2ggSzBINac3TL3iAIhFlM8sc1Icg+DTr0kLkgs
	KE5YizMfRnVZp56FdHfoSMF3UJH0aixw30fEdbyAZqC8ZHPe9gYrcAHmC1ZIrYz4qJQtyzlh9rTst
	EK7fOMU1W/BOSNPfQUW9YmqVyWJpaS8WYz17eSkSAAfyKLJEaH/1LmdUFTG6gmTkbGaiaWG1P4Bhy
	AJjH3KWrxoXC4Uv6HcFUxXcYC/p/om74zHj5bf+co7/u5b66PsQtXDCghsXxrbu1fOJ8PJcjNbUyj
	APvuKmZzc+YZHc7ryIPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJRK-0007d1-4m; Thu, 16 May 2019 16:41:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJQe-0006wr-FP
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:40:26 +0000
Subject: Re: [GIT PULL 4/4] ARM: SoC defconfig updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558024824;
 bh=HSbXc+dslqbRehQvNmd6HvHCAtZzf9jaMx5NK/KADaE=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=wBswkt7Neh0jKdBkv9e7AMTs9m9373qrNw7FMNEJtwy3cfG02kKgVx/hMFyzIJ2+1
 EJ2878m7YaxNyl8qVLS0evKn5DTjO2bCP5mxWvNuL2HFdk411aDmYQUM9B3h19V+AU
 rxEcC9etJlQ2Mgi3dzDAhu8QHo7+pnMibZNICbLI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190516064304.24057-5-olof@lixom.net>
References: <20190516064304.24057-1-olof@lixom.net>
 <20190516064304.24057-5-olof@lixom.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190516064304.24057-5-olof@lixom.net>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
 tags/armsoc-defconfig
X-PR-Tracked-Commit-Id: 85200317b324924be3bc72b7bfcce219020ced9c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: ab02888e39212af2d1dddc565cd67192548b9fd8
Message-Id: <155802482418.32664.15280046775737034960.pr-tracker-bot@kernel.org>
Date: Thu, 16 May 2019 16:40:24 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_094024_754515_D3268611 
X-CRM114-Status: UNSURE (   1.81  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Olof Johansson <olof@lixom.net>, arm@kernel.org,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Wed, 15 May 2019 23:43:04 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-defconfig

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/ab02888e39212af2d1dddc565cd67192548b9fd8

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
