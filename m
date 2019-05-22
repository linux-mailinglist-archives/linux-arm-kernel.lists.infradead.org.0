Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1964626798
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 18:00:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebwfyRC88S8VdSY1rkq9Pn9twEkuRJAkd6m/KxBlGzY=; b=qojudwprixvJhk
	bjX2xdwQtMW5lUPJglAmnDIiZLPy1E0YCPGGdH6rLlcEVG3Dq9ASyXfOWPFzZE+hf9too5IEDlrqN
	YaIiuLbiLf4RXXDffVTr4xJPF9QV45ct8pmnoM3dAgFL5M8bxfoIcFJMxxY4cuQMgYtc7fg5O8uqo
	k4RHn6+whJarAIqi4H9u77Wodgk6TUsmSakIQsZdVKN3I8oih5Hs+Sq1DmjwNg33A1l6H1uy63S78
	VQUX04F6NXlHe7eyWrMWg6vImzUaYxrbfhjj724r0eAhfJADVyUyQcqJ3QmvyDTY/E78rKzixG6am
	V6ZlOn4008lWXmBI/kIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTfN-0001nf-R7; Wed, 22 May 2019 16:00:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTfD-0001m6-23
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 16:00:28 +0000
Subject: Re: [GIT PULL] arm64: First round of fixes for -rc2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558540820;
 bh=J3PVro+tz2J/mbQeKKrLnaYAPBOBsv0SCaa0LR4beHo=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=2TBjCpcWH97BGuwRPp4pu4Euue4R9o1GoAtLspzNQAAD9y4fzEh/QG8eZPih4U2Fj
 4QORouZbOFCDmSMdjeTtMQVzyQwpVtWywvPbrlqMeNXTMzivmlWTV7NjhF/cNUQz7p
 Az/TV/QBcFyzUrrK5L0WuHKK2j80/O1i5XSVpIYo=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190522131102.GC7876@fuggles.cambridge.arm.com>
References: <20190522131102.GC7876@fuggles.cambridge.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190522131102.GC7876@fuggles.cambridge.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 7a0a93c51799edc45ee57c6cc1679aa94f1e03d5
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 54dee406374ce8adb352c48e175176247cb8db7c
Message-Id: <155854082049.3461.9141870673021713606.pr-tracker-bot@kernel.org>
Date: Wed, 22 May 2019 16:00:20 +0000
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_090023_118410_754EA405 
X-CRM114-Status: UNSURE (   2.06  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin.marinas@arm.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Wed, 22 May 2019 14:11:02 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/54dee406374ce8adb352c48e175176247cb8db7c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
