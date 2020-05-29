Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0009A1E8BD8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 01:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USLcWplqCS+UDVfBe8wGAXNpGIoNUyphfjmjW8iJLFM=; b=DQnlIzZTr3Sp3o
	LN3EoezZIZMJehHxyk3do0S2ag6NOJQI/UtHBtgrNe+qUaM+qBLzo3YqTO1zuw3c9dAZ/roB0U5z5
	nfcIMsU2VfpOy+4DImgA4LvS9XDkSmbM44LV60to90ZiRbis2ERSvCkHPYK2bPOym7X0my+QXwvD2
	oxwtGmW/prvc3crZAJt5iLOu1k7gwqHfCwPnT0gAo/dOz/4gSwQhAvi/+nxKfTPRwUUg9HSVCrC0J
	TEXZOh6kV2weoE/IIuLzt/omcxUOqi0+47mv6/uqPMtKfmdA7MT4xSTKg6qBEkqCAFaibAGKk/LLR
	M8X/BYqWjNxtwsOJ438Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeoIU-0007oh-V0; Fri, 29 May 2020 23:20:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeoIF-00070f-Bi
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 23:20:04 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes for v5.7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590794402;
 bh=SmpGnk1e3H/eBNuNInMjR3K+Hid5CJ+i9D/8vqRVVKc=;
 h=From:In-Reply-To:References:Date:To:List-Id:Cc:From;
 b=QmKJWLbSyGiEGFlVUCL1CMWzU3stsZmhqX2kNBURaNCEAMrnvm/4SaZDKV9CaMUpZ
 ybeU9H+96+Sza6JUZ5e4OJte2fl1raPSw1cBVVz1/L3x6KP9WD7NPU8TYnuEw2OsTW
 R41uoYJD2pk0grhxodgErAMs17znFZimJmDbECM0=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a05i=j3xh6bGti+-pkQWFid5=Em_NCprz1J9Jp9TDmTeQ@mail.gmail.com>
References: <CAK8P3a05i=j3xh6bGti+-pkQWFid5=Em_NCprz1J9Jp9TDmTeQ@mail.gmail.com>
X-PR-Tracked-List-Id: <soc.lore.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a05i=j3xh6bGti+-pkQWFid5=Em_NCprz1J9Jp9TDmTeQ@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
 tags/armsoc-fixes-v5.7
X-PR-Tracked-Commit-Id: 99706d62fb50486eadb4441eaed311491fd7addf
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 86852175b016f0c6873dcbc24b93d12b7b246612
Message-Id: <159079440285.17741.11956133340419679856.pr-tracker-bot@kernel.org>
Date: Fri, 29 May 2020 23:20:02 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_162003_454849_F5AB19EE 
X-CRM114-Status: UNSURE (   3.24  )
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
Cc: Tony Lindgren <tony@atomide.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, SoC Team <soc@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 30 May 2020 00:24:13 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes-v5.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/86852175b016f0c6873dcbc24b93d12b7b246612

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
