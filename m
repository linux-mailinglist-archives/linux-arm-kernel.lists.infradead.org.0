Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A919105B26
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 21:30:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+lFKqf+OBPNzBjNIl+wGndbIH3fvwb86NlrVIZV+Dr0=; b=SfF05pMwdsJ4Qw
	b3/KTWVEU6GNpgzkUN5WbU4oWxb7QVf/iRjPeDGY4Lkozlvj3NbOUjoFjq20JsNV+RS7fLDj/Tdm/
	OWjDJLUzuN2gabNNYIBU+de2pzmfXiulsPqvjNbki2h+8T8axM6kdJlsw2bzvn0bnIvHnrcvo9EyX
	oSR6Nmsdrtf2vOuHlPjC1YuDi/aYa/MX7lRIaTg6dxygVH3RsFPMMSWPQyM2gh/i76fcI/i6pW+SP
	TQYtO9VimFDV7/0s0zus9KJFAUYxTnE2IpMWJTUT03MKimw8EK+dDupB5yFXHOUGIXFZQ6r3TOo88
	y7bhbGCk2iVrI8Op+49g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXt5l-0006mH-0K; Thu, 21 Nov 2019 20:30:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXt5b-0006Dv-OR
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 20:30:09 +0000
Subject: Re: [GIT PULL] arm64: Another fix for 5.4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574368206;
 bh=cE4tG0jmKDl2wngVhg9RGGVBji9cgxX7tpUSU2NQU38=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=ZLnrsVGSV1mrdy5/2G+PIDh/HNSu4Nn0mGVE1uBI3Ez2b6JSBLLO5Q/CqzqMw5OQa
 Kcq5clcYDL6x52tmTteGbhIqJ5ZvN5WNBcVV2MJW3RuyHkaePjT8tR8PNf0MdskE91
 zE/OmWHXOkl0YzSZo7qrgfW/iylcnzqoKAO30mRc=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191121144408.GA3751@willie-the-truck>
References: <20191121144408.GA3751@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191121144408.GA3751@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: e50be648aaa3da196d4f4ed49d1c5d4ec105fa4a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 81429eb8d9ca40b0c65bb739d29fa856c5d5e958
Message-Id: <157436820592.3070.12039964483555520125.pr-tracker-bot@kernel.org>
Date: Thu, 21 Nov 2019 20:30:05 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_123007_824358_5BC74DD2 
X-CRM114-Status: UNSURE (   2.40  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, torvalds@linux-foundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>,
 gregkh@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 21 Nov 2019 14:44:08 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/81429eb8d9ca40b0c65bb739d29fa856c5d5e958

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
