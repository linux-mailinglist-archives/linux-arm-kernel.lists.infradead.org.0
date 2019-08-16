Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA4F9075E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 20:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jeYTF052PnAQxuHoOxT5bam1DTWC6GB7A5p/LDqVMR8=; b=iHABJ2cHitIVFv
	51vcCaeHR88TdhWsXikgeTE6BfGVfE/ItHWh7Ho5Za/2t7kHm9N0qVCbciZO3hRi76RqRaHc8/jaT
	9p7fK72u1uXL9OBsoyurib4ImdYNgIxOy60evPYc79rf+O4exSYIPa5BTtCETMd031HEl1GCre4l/
	XIRR0+3rL6+ZM33LWFs5kkMzr571yFBfFB+d4lyRovWKWwyqnAicxdm05EZi7alOtjcR2M9P8guPP
	tBvzlKma/Sfoj3xBp9+V0wVjvuAZmWFdFaGWb/b1tp44obmy67Ksu/OUNbStv0nx/gsPC09WdPvLy
	0cEgArAwqpCAwLxYiXKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hygWa-0001ps-Fj; Fri, 16 Aug 2019 18:00:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hygWE-0001Nl-UC
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 18:00:08 +0000
Subject: Re: [GIT PULL] arm64 fixes for 5.3-rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565978406;
 bh=dW5YFHRW8xSZ9ngplk7KwCK0vlp2/MMykcr/x8hk9xE=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=pEKhVKy6rw7zfO0pMPjmx0UgKYMqaxYg/IblUm5ytPMQ8DRpJfsaneDUiV60CT/yq
 tV6TmrGbcGitjI7Wg292TtnXvrtzfQ8Uw3VaGE4U6lbwpRyKu8PVFzIASROboUeMqw
 cH/00iqsKK6OwTMw0EmfIO0SOVKMTuq9r6aXhcws=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190816172411.GA36979@arrakis.emea.arm.com>
References: <20190816172411.GA36979@arrakis.emea.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190816172411.GA36979@arrakis.emea.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes
X-PR-Tracked-Commit-Id: b6143d10d23ebb4a77af311e8b8b7f019d0163e6
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b7e7c85dc7b0ea5ff821756c331489e3b151eed1
Message-Id: <156597840617.938.7117793658442703288.pr-tracker-bot@kernel.org>
Date: Fri, 16 Aug 2019 18:00:06 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_110007_140674_BC496765 
X-CRM114-Status: UNSURE (   1.84  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: will@kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 16 Aug 2019 18:24:13 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b7e7c85dc7b0ea5ff821756c331489e3b151eed1

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
