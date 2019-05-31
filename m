Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2430D307C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 06:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73X7+yg0uJ9sM+WOsXBdq9RTeagVbPTHe14Amn2Ndjo=; b=aNUQM3ZqQZPqVm
	LYEkhMezm6+RCl+0mWN4cAkTCtqIHghFvWm/T7//fbu0sKgrnbtmkmRlusChywrVoKqhKUgLJlLNT
	XL1XNdgm85qLKTU7RmXRIy1apqOhoqjP13E2YxH+oOliFW1JYgaFKcA19YQG5mi/UsWs3/ThBoHdw
	cveQTMtR3YbLMQ2BEzd5A3g9xFK26D6nYfaZ4J3A8m/oShC0E/GwsYA3LjGqK+piTZN0O9+PydyZB
	vbl9WebdzyptHsQ9umE9ovqTkEn7lsCbS+ns7TpiEtyKFC5CQbqpKKSyUKqBTyWJSseoVfKT9ICLf
	bf7eC54+XgB1fkgrfEvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWZ6a-0000nz-49; Fri, 31 May 2019 04:25:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWZ6S-0000nH-8z
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 04:25:17 +0000
Subject: Re: [GIT PULL] arm64: fixes for -rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559276712;
 bh=t9/y1ITY40z/T8C2kwC1Ud11fTEficOcI/zNCGUtbD0=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=J6itRnKC2xdXDl4JQ2LxKhXsA3J3asTIfTtKuksfi7eOeJuss7a6pYXILLTU1WMG+
 rF15D5ZkMTk/R6noZAkpVh+ayyFTUvy2Y5EObNUW8BQYWHxukeGSXSsTaLmE8JD0GV
 XFPFjL64eZ9zzQ4ozZW69KuUgOnDOcHsOnFyhP3Q=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190530161126.GB16230@fuggles.cambridge.arm.com>
References: <20190530161126.GB16230@fuggles.cambridge.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190530161126.GB16230@fuggles.cambridge.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 1e29ab3186e33c77dbb2d7566172a205b59fa390
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: adc3f554fa1e0f1c7b76007150814e1d8a5fcd2b
Message-Id: <155927671265.23225.14504311744693326939.pr-tracker-bot@kernel.org>
Date: Fri, 31 May 2019 04:25:12 +0000
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_212516_362398_61D08C65 
X-CRM114-Status: UNSURE (   1.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ebiederm@xmission.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 30 May 2019 17:11:26 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/adc3f554fa1e0f1c7b76007150814e1d8a5fcd2b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
