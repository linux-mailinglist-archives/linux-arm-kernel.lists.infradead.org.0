Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A201EEFEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 05:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nALphd3zQD2o7lDmrjBEyI3HKU/rpbMvRakIDSnfIE4=; b=PTG1A3ESGPDWIA
	SRsjv4AIO17vGgjtD9bWQDMqCaIAZcjrebMlSkl/RkUtSlqBf7KhaRFyE3zxdkuIv339oAiYV+l/L
	OXfIOA0a0bmku6eY8jKtXkZyiaHxp89E9bn3NMqPRp9p0I7Kp3t8oOgJ+oII0fRglAW6liJ7515SR
	6SUVgjlZCSl/erafrBcPiiHtsyOKcuxznD7kRX6JgsPFLz6Sw7s3aZrMj4QqZO0rttSX6BGJHvfB1
	woBcsHe59ICkV6nccFSVP/OQzQjBFs3h5HmIoKNtt09aoud38v9V2ZsRm940edzucm5AKOMSPYC35
	S80NJSyKmwU4gBGj9ZSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh33u-0004Ld-Mx; Fri, 05 Jun 2020 03:30:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh33f-0004F0-3D
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 03:30:16 +0000
Subject: Re: [GIT PULL 1/4] ARM: SoC changes for v5.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591327814;
 bh=tm2ZMuE7QCmDWLskCDZ8RD/uc0sFBINQwfB+TokC03Q=;
 h=From:In-Reply-To:References:Date:To:List-Id:Cc:From;
 b=A354kd5EfP5iHU8CQJncHE1jJppDqAJ63qyzu3ETN6U5waKKmrskZYlEyvP6dmJ+S
 52OR19iuAkmz1tU4mwOvdfATkpoJ8LlB+1JDLhOd0xA1dRL3zGVE6vLUYbAs5lwEd1
 Lg5De1kbhhp3mOdcG1ikATDRsqLMmDlI/DvVJmFQ=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a00L4n3b=X+PQXe1pxf9CHryZTes9L1MD5i2+0RLXprfw@mail.gmail.com>
References: <CAK8P3a1dmaiYR5Oxkc0CQcxTm=rAHSx6R+xtf4Wup29JqXNZsA@mail.gmail.com>
 <CAK8P3a00L4n3b=X+PQXe1pxf9CHryZTes9L1MD5i2+0RLXprfw@mail.gmail.com>
X-PR-Tracked-List-Id: <soc.lore.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a00L4n3b=X+PQXe1pxf9CHryZTes9L1MD5i2+0RLXprfw@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-soc-5.8
X-PR-Tracked-Commit-Id: d2353bad2c1eef7a1228645fbb21e7887c633d12
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 694b5a5d313f3997764b67d52bab66ec7e59e714
Message-Id: <159132781395.11934.3266402506158153257.pr-tracker-bot@kernel.org>
Date: Fri, 05 Jun 2020 03:30:13 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_203015_160157_80161B71 
X-CRM114-Status: UNSURE (   2.71  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: SoC Team <soc@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 4 Jun 2020 22:50:34 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-soc-5.8

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/694b5a5d313f3997764b67d52bab66ec7e59e714

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
