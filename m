Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7723FA3DA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 20:20:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iA8imO4/hPi2KUInHq5qH5sc4ZnbzVvEjnK0cdc6ZJ4=; b=iJULM8qK9DrHs7
	f2G8+undHiEFJ6zJjD5jL4Sqq38NjEgM/fifomgl1OSetvZ7PTihSEBoRXyVbaqyNu6Waoh4K5w9h
	52fXnsyN1VHi4edXdRNMfnECYcTEuslKdqTGCHefbj0dYbHLRIRmBijva+uRlqQEmfACogVNfm/6y
	fVpZg8EKTXk9VO/fFs5cIpz07+NSEMSADTrk7C8WmLGSH896EI5dCnDhCWHPA6ysSNe0o8x3g/pXm
	1ago/Ot/6GHs2sauEmQ8bZS01FmF4hYdsPvVK+PGBzzTjV2BF4N6Mx1ARKKolMjwkhl2oh6lGIPu2
	JadZd8961Pwh+x4CDc2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3lVT-0006O5-Ql; Fri, 30 Aug 2019 18:20:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3lVJ-0006NK-Be
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 18:20:10 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes for Linux-5.3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567189208;
 bh=N9y441JIopSKRxwCR9lDEIsSFrRVqdjLn0qGDxU4AuE=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=ojjwe9vifvRZzf6W+E1JmYKF0jUTSuahx4jPVovVYAu6PFeQP9UCrziQ8tlvSs/qe
 vRpWArlnu91dxw1kG+XqyMwL1KnWadLcQMXmuM5ZrryAbcn67KpQYdbDNlMoheCNar
 jDuq61p4SZpUZPdg9URJ3ZjzQyFu52DzYgm7fjIY=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a2OZPybUQ=2xXcF4Qft-Gpe3a1mvgPncJZugETnaOxsvw@mail.gmail.com>
References: <CAK8P3a2OZPybUQ=2xXcF4Qft-Gpe3a1mvgPncJZugETnaOxsvw@mail.gmail.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a2OZPybUQ=2xXcF4Qft-Gpe3a1mvgPncJZugETnaOxsvw@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git armsoc-fixes
X-PR-Tracked-Commit-Id: 7a6c9dbb36a415c5901313fc89871fd19f533656
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e8d6766f3cc8318e8fcaa5ef2d1af4d2d9903af3
Message-Id: <156718920798.24554.16156068086247893929.pr-tracker-bot@kernel.org>
Date: Fri, 30 Aug 2019 18:20:07 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_112009_448863_BE82E5D9 
X-CRM114-Status: UNSURE (   2.75  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tony Lindgren <tony@atomide.com>, John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 30 Aug 2019 18:25:52 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e8d6766f3cc8318e8fcaa5ef2d1af4d2d9903af3

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
