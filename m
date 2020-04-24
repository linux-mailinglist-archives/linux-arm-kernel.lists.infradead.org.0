Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC181B7E00
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 20:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzmDxpX2PHxnA67ed+4urwtoQFZVaq+eYhIsgZ5CqZM=; b=kRxmSYgdGYtZTz
	hN3K6Sm3jHCnlh+WP2WwaFwjs2CvXMkt72w/pYOOJyoQBLqPsgot+ptaC5nwhJ3kBoZGOzjL9DVFg
	eHLZCxKxEE4aHAZKhVgpLf8hYxB6B8pNll8ictYnftHMj5KHf6jn9G2rZnpPCqzXaX1+YydTQhw1E
	IRd5lO5HIyMz+1cigZfyjFnyrHcZVkEXwHUPLOwDVIMPRk67+SRr8+lVRGM7lId4G/vVE8VLd8YVw
	rdOnTMJVkipABUWWjgWTF4aSMPk1u5Oxq2ujHC5nm420TxeYr9jJerupuRzstOT2KmT/X3IbL/HdI
	Pdt7i7qyGwZWj5RjwyHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS3FW-0006Gn-Gm; Fri, 24 Apr 2020 18:40:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS3FO-0006Fq-4D
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 18:40:23 +0000
Subject: Re: [GIT PULL] arm64 fixes for 5.7-rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587753621;
 bh=XMHfIkXrfaPqnQ4CRxrw3tUHPN9cUoylQyWVU5X+sc0=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=hE+octv3R7mBpFsh1sG84qTHjvJ7seFwa0b24D4Or+rImymdJKG74x0qEQolW1rQi
 1Ot/vcss8IeZ7qFyNzKj1rgW2lcBWyrGFX7XC/2o6aUC5bjVbnP1MgkqWB9sHr/Giw
 qe/0uMrGppNKJEa9NXpVN23w7pv9wxPlr4sUL3w8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200424170440.GA29363@gaia>
References: <20200424170440.GA29363@gaia>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200424170440.GA29363@gaia>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes
X-PR-Tracked-Commit-Id: 59bff30ad6cec6b5babc8132eb8dcb48f1c82be0
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4544db3f848f1d5d0f48d39c22c9636aecf73cf6
Message-Id: <158775362098.26557.2207011730746868688.pr-tracker-bot@kernel.org>
Date: Fri, 24 Apr 2020 18:40:20 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_114022_181396_20C105B3 
X-CRM114-Status: UNSURE (   1.75  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Will Deacon <will@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 24 Apr 2020 18:04:43 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4544db3f848f1d5d0f48d39c22c9636aecf73cf6

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
