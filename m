Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FD1681D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 02:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jcPG0m06of9WjrqDlM9gm6QBGAKUCexCichWQZnf6w=; b=HHk1rq48ZnFMiu
	P2BpPXBE3wyWb36WjuOqEvvRnlfgJEelVIgexa9tFzT4JgYGNdwX96Tm0UjGzdq/cDB/LvbTYhU4V
	OrZAkZuPN+XPpHMAGcYTQ0GmAaaX1CcOE7OxDZmjN+30EUeHYoucPH8+CCkHbcyvgL0k6BX4B6h7c
	YWCfBvPJuoOe592Bu2AUy6gAyC1nOudhSIGvQKd/sipgknO0vqMDEOAi64YkIkhUCYU1y81P3HHFd
	odxv324gWXwK4ODCib24VjX6kA0I5KG0foDFuuBXwZPDT7hBD4K5EQD+bVRY5TX5sLe8sxirL35zb
	9dEAdeyFg031u4ktxfMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmosu-0007en-Sw; Mon, 15 Jul 2019 00:30:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmosi-0007dh-9Q
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 00:30:17 +0000
Subject: Re: [GIT PULL] Mailbox changes for v5.3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563150615;
 bh=Zv9ABGaIYknfQkHdDopZFT0SK//Gi30nPBOkIjIoGuk=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=SBY5FEPL53OjVxOKUpBhx0tuO5F39iLFENBxUAr/Qsjl2wwDAuIXFNthTOpAcB/tx
 kiJ2AA97xDPR9ewDWpJtoWnuFAxMjRsJ/avVRbF2ts3f7pMWUhD7VhXcfUTwOjD+3m
 HGX4+I9Sihr4tMifm6eNMyQ4dIFzwnUUXzi+wjhc=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CABb+yY2RWBW0054fPLyNMAFX4BQ2FqV2NeAvHe7aHhAuH46dcA@mail.gmail.com>
References: <CABb+yY2RWBW0054fPLyNMAFX4BQ2FqV2NeAvHe7aHhAuH46dcA@mail.gmail.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <CABb+yY2RWBW0054fPLyNMAFX4BQ2FqV2NeAvHe7aHhAuH46dcA@mail.gmail.com>
X-PR-Tracked-Remote: git://git.linaro.org/landing-teams/working/fujitsu/integration.git
 tags/mailbox-v5.3
X-PR-Tracked-Commit-Id: 25777e5784a7b417967460d4fcf9660d05a0c320
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: fde7dc63b1caa6dedf9af7cbf79895589629bc95
Message-Id: <156315061532.32091.8291765980394649849.pr-tracker-bot@kernel.org>
Date: Mon, 15 Jul 2019 00:30:15 +0000
To: Jassi Brar <jassisinghbrar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_173016_345759_924B63BD 
X-CRM114-Status: UNSURE (   2.21  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 13 Jul 2019 18:41:55 -0500:

> git://git.linaro.org/landing-teams/working/fujitsu/integration.git tags/mailbox-v5.3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/fde7dc63b1caa6dedf9af7cbf79895589629bc95

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
