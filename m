Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC6C1EB1CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 00:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92Z5UarQy/RxPvQcms61Odg9gPS7qSXx7TO35wykosA=; b=SayKPCe2WVr6x5
	EjXjSj9Q24Az96jZ0Zu+F9GM5monfFmZuNMm/DUOk5Gku3TLLJXdcGzN215lnbuoV/Oq8S2bBgZEB
	AWh+1V2FFFrClehRsqzaZPtpat32pg71miPas/U5y6OzKLPsbvF5qy9whDRP5RqoaoIym9hp17t8E
	kWmHMzkXs2kZT5h4rWuL6syTltIHid6zQI5nmPBYKx8gCnO7jOTfTWMPSd3qlfPhD5Q/0z+/S63p7
	/wqJ+3kfJXTUQWZPTs1QUpHD04zdDkr8bqywO7Tj0Vvh2Xe7kGZZUrMHBAV+kPEPKNayggbdtN767
	9PTDPfg0TSexfdbtbFEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jft6P-0000xK-5v; Mon, 01 Jun 2020 22:40:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jft6D-0000Ki-NN
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 22:40:07 +0000
Subject: Re: [GIT PULL] arm64 updates for 5.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591051205;
 bh=gTxqf9JYkRHCdaC7CA29uGi2NUJdUKzKDIuiUnlgB2U=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=TFqUVvsgJEMCNNownIBcwNG/tK6dL6P85x2GfXuKbEsf1AeUZa8+Ru/CMTYIMsN76
 lJFNXBqRC7El+QtRXhyAYPjzLu3S7z9vpQjGgnuAVnC79sQOpM7QVveeAG7ksnyES7
 h+/MiiuZ8r8/tMfh8+FLVWZA/dZx522yMD+sP6kw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200601171309.GA6390@willie-the-truck>
References: <20200601171309.GA6390@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200601171309.GA6390@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-upstream
X-PR-Tracked-Commit-Id: 082af5ec5080b028f7d0846a6c27cbb87f288205
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 533b220f7be4e461a5222a223d169b42856741ef
Message-Id: <159105120522.7127.9129325449911942435.pr-tracker-bot@kernel.org>
Date: Mon, 01 Jun 2020 22:40:05 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_154005_798202_63303837 
X-CRM114-Status: UNSURE (   2.11  )
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 bp@alien8.de, maz@kernel.org, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Mon, 1 Jun 2020 18:13:10 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-upstream

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/533b220f7be4e461a5222a223d169b42856741ef

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
