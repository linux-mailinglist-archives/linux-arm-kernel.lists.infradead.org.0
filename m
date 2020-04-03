Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CD619E115
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 00:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PA3/C4hAt5FVdZnPg7vRZzCPmfFd0Qtyk0WyegFVwQE=; b=sMg4yBRGTw+bKS
	s5cyIBXgbCqnJ4KCLkzQ57LuVOooU6hTYVh0U0U0h3hag/hxa25DoVTGJNzDWfa3w08NCB6zKoox1
	ipUQ7KfCqsHEfDACd5CIHMd7W1WkJ8oLLqZdFSliMEHwcrEh8wWPUaLUQ9R5nFn6OjwNa16kShzlL
	gbkOBNtBtiYXOa7xj3Z3Ne6pRGB8mxyrE+gmODVR4c+rshO3z0uASUCRYk0DqdSemJQXJHv3mPbOr
	xvXXTBPXXHBUIFotZXXo9Vgp0l2ZCbfJl3AsT+HviecaWqt10NPmdOA8xNQ9pTPQjwadIqRrpLSlw
	ikvgtIlfcBVM9t6izMRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKUq8-0008HR-JN; Fri, 03 Apr 2020 22:31:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKUpU-0007jC-Ud
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 22:30:26 +0000
Subject: Re: [GIT PULL 3/4] ARM: defconfig updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585953024;
 bh=T0FoaMSGdG7svBhvawqfMqyq3Bxd62wVVshnpXoftk0=;
 h=From:In-Reply-To:References:Date:To:List-Id:Cc:From;
 b=NkM0xx4FoIo9BTl8CEtk7ctwZzo+7VtodC/ARuMJzcD5N/7tTHGDVmcSwj9g119VH
 LDFcoqphXE6VuOLEfxu6LQS390RdI7IaSOzyk11iP9aL1QIdQQmm9JHR/QAWJ7oqkZ
 Bl8zBtpOyR3j3c2VzHscFNrIOwJsHywO8yr1hYe4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a3OPgCzLxzd=7Ng=jregKB0HycLLrfA4xYd7-4Te-kHMA@mail.gmail.com>
References: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
 <CAK8P3a3OPgCzLxzd=7Ng=jregKB0HycLLrfA4xYd7-4Te-kHMA@mail.gmail.com>
X-PR-Tracked-List-Id: <soc.lore.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a3OPgCzLxzd=7Ng=jregKB0HycLLrfA4xYd7-4Te-kHMA@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
 tags/arm-defconfig-5.7
X-PR-Tracked-Commit-Id: a0705d3c042ad39fb9c5609612bb39ef4bedd284
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 9b48c8f132e0c30220ce509f72dd90da05245524
Message-Id: <158595302465.19263.9151621757049765186.pr-tracker-bot@kernel.org>
Date: Fri, 03 Apr 2020 22:30:24 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_153025_002289_B2528D4A 
X-CRM114-Status: UNSURE (   2.78  )
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
Cc: SoC Team <soc@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 3 Apr 2020 23:36:22 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-defconfig-5.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/9b48c8f132e0c30220ce509f72dd90da05245524

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
