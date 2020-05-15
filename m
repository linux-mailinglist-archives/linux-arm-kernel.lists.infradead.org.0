Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EF41D5A7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 22:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7Z0923pKSp7a9cErLvoeV01LbTH7TK3ZGVkNuD+xQI=; b=pgR1HjkcFQ9WDn
	0ot+KTiWzndfLIlVfFb3eBhsh7iPlqqvistCUsSQ0IW8WoqGSzl3KhHQtkW6xo2G6VkQI18Co8IsP
	eH4J2GoMVhYTxSUs7nZs3YLIygOWl0D8fekePmRqAtB5NfY2qkVwjp8ONgoKhWxWFZX219+qtQ3fN
	qqNp7zy+qmyIBb72BNCR/N7ykZhL+PWr6ACkl3SatINM0ssqlsKgrTHHvMV3Zm5C4EnWViZb0Ohzk
	5ijca73+jVPwhYn7qgoLV5sZwHrxz9VzYm2bzA1y0lBvB5RFn+0pwM8Uw7ci3hXuWWrmMNoo2wl01
	gSZ95W2KMt41YvwhkEgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZgVH-0002XC-EL; Fri, 15 May 2020 20:00:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZgV7-0000eK-A2
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 20:00:11 +0000
Subject: Re: [GIT PULL] arm64 fixes for 5.7-rc6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589572803;
 bh=J2hQQdonB1mfSuob5lmfj7Jr07cc9xJKDDPV1suGu1Q=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=MChrpSSy+AAalNqZ1sLNbQERfkKAX+/nL8xHhx/WnmbsOfcAJL3H15XcnHtVpmkkI
 sZs8XFGjaX8+wQHtc9v0ECAzBHzkyV5Q2VK25f/E0NvwZw3+Ff4t3nvmvr5+BzYi4u
 kbsA65OsQsx7ygAqnTHmLaB6kYGHr4AHtZRlnl+I=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200515172443.GA1749@gaia>
References: <20200515172443.GA1749@gaia>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200515172443.GA1749@gaia>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes
X-PR-Tracked-Commit-Id: d51c214541c5154dda3037289ee895ea3ded5ebd
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 01d8a7480304a2f0e196459eb4061e171d9e9922
Message-Id: <158957280369.8762.11385200558117584905.pr-tracker-bot@kernel.org>
Date: Fri, 15 May 2020 20:00:03 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_130009_386739_009A40C0 
X-CRM114-Status: UNSURE (   1.81  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Will Deacon <will@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hch@lst.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 15 May 2020 18:24:45 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/01d8a7480304a2f0e196459eb4061e171d9e9922

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
