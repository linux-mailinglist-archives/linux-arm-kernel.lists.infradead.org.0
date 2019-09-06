Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D129AC126
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 22:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8gTenT0j0xudyz93mxSqj1Py/eelUVUincN8QoSSuk=; b=DiGLAAgN82Frqq
	1xQpPCsEGbEYxgIGwJcUgpolqOhYalkYrA+JnzyAwaDm6E4zGE2ULhbryYPF6WTPbUqSFieOz2zP3
	YMQWX1V25s/ftBUXD4i4JVN/tNtW/dtk0mGHn979jOKx1kPbZgDSrUm6FbW9RALO+R+fdS0tOWGYU
	1gMEeXciwSY343PvgA5KPYYVju22+PwCMj6zYry5sKezYHfoU73apDJD6D1JXH380YH7J6ZobGw8C
	XnyKklTBMWBiRyl5xtTOqROWL/4sMIKQRlUML5nJlU57bfosqg6YQoj5bK36GlBJNqJOI5PMhyqVD
	zdL5f81kLH6W1sofdo/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6KP2-0000iA-KK; Fri, 06 Sep 2019 20:00:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6KOt-0000Tn-G5
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 20:00:08 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes for -rc8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567800006;
 bh=aXnq8dWmlHaG21Ii/CwHkn00sgBGKwAKF9SD9ypIcpw=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=qXGRVrU6UFTAuHu4GRLOACoe4Y3x5qwyVtnQd3V8tKDpOzzOcPxoFa6dJb/hxYZBt
 q1j4OH8Jntppxfy2HMxbAdmpyIrHpIynrMGPtAld8AwWDwuVcYsWddtpP8k1yBfxQR
 CAMTg4woqzbpXdAfmhxhvVarSwi7DLy3EDuuR9Yg=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a0MsTFjqChoz+DLSC8nVnBuvqQdYx6V0SuCybg7MZ79mQ@mail.gmail.com>
References: <CAK8P3a0MsTFjqChoz+DLSC8nVnBuvqQdYx6V0SuCybg7MZ79mQ@mail.gmail.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a0MsTFjqChoz+DLSC8nVnBuvqQdYx6V0SuCybg7MZ79mQ@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: 8928e917aeafaf38d65cc5cbc1f11e952dbed062
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 36daa831b55538dc2e4a906de20c5d91033ebb21
Message-Id: <156780000658.21952.10294077592758190884.pr-tracker-bot@kernel.org>
Date: Fri, 06 Sep 2019 20:00:06 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_130007_567961_3A95C134 
X-CRM114-Status: UNSURE (   3.89  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Lee Jones <lee.jones@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Simon Horman <horms@verge.net.au>,
 Andy Gross <agross@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 6 Sep 2019 21:48:09 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/36daa831b55538dc2e4a906de20c5d91033ebb21

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
