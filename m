Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BB5F5301
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:55:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4DSkvXLNKG5aAomcmf8ufy1ROzw1oLfi/XoZKTRWRYM=; b=oPkyKGkB1fGFlD
	48/nIZT7fQbqnuCmuMJt0i16q3qgSVcpCvqC1BwOmCAOrZ8Cp+gDEyqY/+41q3u1bGCFvEKi2LXEE
	oIJrvppAIpWTHsAwJQYOMjzgW68GSyoCw+ZQGQUXeYPCu46EMGwUFMm5LraOulLNvJzjOplsjoVw7
	7yqRWu8d9shQeWFOkR2dyGKLeg92kOrPI2yGZB3RHJkYtqulnvRoWeCjDx+pMKBYmZ8mDbvtqFnPb
	xw0etEaH9IkX0hwd7ngnf2MNvPwjKWtRtvytNprtLXT6gKilNsnDdh6b6z7wNE5QmUmRHxVvtU9f5
	PoJO5psBKMs9ZoPDxfcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8Te-0007xd-4o; Fri, 08 Nov 2019 17:55:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8TW-0007t1-6k
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:55:11 +0000
Subject: Re: [GIT PULL] arm64: Fix for -rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573235708;
 bh=LK9hwZt3VZD34A6IiTFJNZvFkBUGyeiapHGvJoTWu94=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=pheZ+s1Blf6seTLqZeoLwcIUBGt5PfktZzLZmFmJCRqIRCIIy03mF/bbCkFVPosnp
 mqMOWI4aODD91K88QoPbLwda5L6QF76EVmR/ELjjwv5AGoQBBSBzdD1iuEjPHPcyE9
 Dffa5QTB2fel1Ue644OAO0lpYWnnajwgtnpTzn1s=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191108103231.GA19153@willie-the-truck>
References: <20191108103231.GA19153@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191108103231.GA19153@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 6767df245f4736d0cf0c6fb7cf9cf94b27414245
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 9e8ed26e6062e4f585fe831fba362eb567648881
Message-Id: <157323570813.12598.9228674931391309121.pr-tracker-bot@kernel.org>
Date: Fri, 08 Nov 2019 17:55:08 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_095510_267606_8A4C7567 
X-CRM114-Status: UNSURE (   2.07  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, torvalds@linux-foundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 8 Nov 2019 10:32:31 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/9e8ed26e6062e4f585fe831fba362eb567648881

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
