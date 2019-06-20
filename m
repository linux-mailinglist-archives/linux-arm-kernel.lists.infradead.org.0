Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0004D9FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 21:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1u2LeO/H5DzPe9iom9CYp2PR97JznF0TkgI0o/rg2Q=; b=Oi1Et9v6UV8Nb1
	YFiC9p/kkz4DBz2CppELEu/k6uftVaxSVn66XNcl5XJuNFGMOhRKhVzypAdRePSEpDbRDWEhuYN6L
	awyjzLGKFKS12HeI+ntraePniYvh3Feeu+GjUjBmLee2c4ernxwJf5zFIDqfddomk2VAFsD2NIIOc
	M1jEwoFyyx5UktnGnoA8DoWL9YU+gBVJmsTSGYheFAv0IZmmYWy01Emf9/iPo74SExBXyoIydz2/a
	fAMZ5Er+Y7n5GljvQVmqK0sVjTEcJek0mD8JC5mJPAE4mgvqadad8WRowwGWbjsBPzo5hrl4TKn3Y
	4NVNz3cnQRuwnnktOV4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2Rv-0008Us-Bv; Thu, 20 Jun 2019 19:10:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2Rj-0007sZ-05
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 19:10:08 +0000
Subject: Re: [GIT PULL] arm64: fixes for -rc6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561057805;
 bh=mLnyONor8YwKu0lQJZYf617exsgcRJjfEH8DZTdJwDU=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=ZdTWmd5PAjyYveR9hc9Mebl+oshrauBIiQESas+U7NK/5O11my77W9JfJRQ9vT85s
 tN3vtuzlNRAnjQUNGZN9VkVhTQZAnTCAcY88OZU2LUb6GwFyK9UW0W1Yax/HuRc3Br
 mu4sZXVQzUgVIrYX3oKJJg18CHVjg8QtUrl2eons=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190620165916.GB24650@fuggles.cambridge.arm.com>
References: <20190620165916.GB24650@fuggles.cambridge.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190620165916.GB24650@fuggles.cambridge.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 615c48ad8f4275b4d39fa57df68d4015078be201
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e929387449cf631e96840296a01922be1ef3c832
Message-Id: <156105780497.22331.18365592459813742115.pr-tracker-bot@kernel.org>
Date: Thu, 20 Jun 2019 19:10:04 +0000
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_121007_063094_75F74119 
X-CRM114-Status: UNSURE (   2.09  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 20 Jun 2019 17:59:16 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e929387449cf631e96840296a01922be1ef3c832

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
