Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C9720D35
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KH4aGrmaOXSkEH4w47WYlm4tTQbVaxh/MzTb2TH31fs=; b=PSYWLs17z0R41j
	VpMZkSbxJbEq4kOVq+21+XvF55LcJXSKpBsWENf3gX8MDYCK3+bQEYn5oPDnEmriSNyPYpVXZXSGb
	BT0Uth4+j8srJkZDMi9dxhNWPB5gqcyE2tFY8yEeG3gRpNQGQppJEfT9syWAQqBMg+icvqN297vfs
	ODoya8mUBohENQgmnHIMiJA6z7oht3Pg/eq5IPzW4wMV/QQfR1HMzxj4/mO/aYS4+qsFzANWZS4j6
	+D9mtEWSSriDeq/XfrCwYVvmASC8T/1/GKNBirsIwNGgmLvVOp/eOSHXSkirDT2Cl3TQd0/R8gXZM
	YsTaU/XOqc9ZiSTzQ14g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJQw-0007AK-OL; Thu, 16 May 2019 16:40:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJQb-0006vR-Nh
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:40:23 +0000
Subject: Re: [GIT PULL 3/4] ARM: SoC-related driver updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558024821;
 bh=6RhDvkyGscL0Pnfdw/X1wRzhSqReFlcWpE0FSRPy3Ts=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=UYq3lHqgJJ8nRcv45axMDXGavlZ/xfa2ugdZBkqMq6WajQA0qsffpOHSs4RDi5jCU
 /FXSCjdEmFaP+3/akCKqozeC4fl6TPTssRbi4WGV+q/gYc3d7l2SOHlje7zH2q0Zwt
 t2FsTNkfCK3YT47KVBf7iA+IDKtls7I76on9MbAo=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190516064304.24057-4-olof@lixom.net>
References: <20190516064304.24057-1-olof@lixom.net>
 <20190516064304.24057-4-olof@lixom.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190516064304.24057-4-olof@lixom.net>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-drivers
X-PR-Tracked-Commit-Id: 80d0c649244253d8cb3ba32d708c1431e7ac8fbf
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: dc413a90edbe715bebebe859dc072ef73d490d70
Message-Id: <155802482146.32664.5210951355749631063.pr-tracker-bot@kernel.org>
Date: Thu, 16 May 2019 16:40:21 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_094021_784982_D2AA471C 
X-CRM114-Status: UNSURE (   1.92  )
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

The pull request you sent on Wed, 15 May 2019 23:43:03 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-drivers

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/dc413a90edbe715bebebe859dc072ef73d490d70

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
