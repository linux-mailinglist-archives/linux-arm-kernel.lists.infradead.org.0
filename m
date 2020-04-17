Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C811AE3F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tlxig9g2kdwErajnlHZiHKxUz9bvxBjUKxqkOjPIvA=; b=rpgksaeQnP09dn
	b/XxBMWwPMprUKfFgdIOBz/riK9XZKLbCyFJb1kYQjProOF3Aan8B2fUA27cDkxhhFxX5yzHf5fhl
	hpQ6xQs5CymvZA+fu2WcdamcuKSDGA+FfX0rYqQdf6la6bkRzlFD+dii1Z+zm5etdkBnn55XlDrH5
	5FmgiCmG/6MGS/qBMqW2BjSqqw5oAsGk3x6q2vrFzOoozrzCsN8Sz8UCToxvyhGPwIv4W0PgabrGD
	l3zI50jSvDKQhU90x0Q5ChSp/tri1lvwQORpVm6W0HCxswpIs1SMEwywsip7Qs6CIWYuWKaeVv2au
	uplnHhCyvlmKNcFkgR5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPV3X-0000B4-3S; Fri, 17 Apr 2020 17:45:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPV3O-0000A7-DH
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:45:27 +0000
Subject: Re: [GIT PULL] arm64 fixes for 5.7-rc2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587145525;
 bh=qQZ4VmgPb13B1MumQjGBjJ+Nq7/wGRSP2jRWCGe7/W8=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=gVVbOLKPUkNvT1wBw3uHK1AeJUe3BEXF9mgmfRuiNvHnI8ZTs+cM8nRRTnzvEV47f
 Vr3L591BPOSTypIvxYLW3AR6nJlE3gBO9JT1wMh5uzpyRX2jCXH3u4P3/Y81MY3YgB
 N2yNkM6eJgXLEk29Xt5TXEBKpyhrpmIOvDMbk6Vg=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200417170403.GA15479@gaia>
References: <20200417170403.GA15479@gaia>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200417170403.GA15479@gaia>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes
X-PR-Tracked-Commit-Id: c9a4ef66450145a356a626c833d3d7b1668b3ded
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 95988fbc7c314ef6b1e174dbb9b87a34283208da
Message-Id: <158714552563.1625.16210298337980327660.pr-tracker-bot@kernel.org>
Date: Fri, 17 Apr 2020 17:45:25 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_104526_469955_DC8C3C9D 
X-CRM114-Status: UNSURE (   1.76  )
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
Cc: Will Deacon <will@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 17 Apr 2020 18:04:05 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/95988fbc7c314ef6b1e174dbb9b87a34283208da

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
