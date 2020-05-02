Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FD51C2205
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 02:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cSCirdp0olHVrHXMeUrQYRYeEa0CX+7EatqnJxjIZs=; b=kyYwtl6U249vnB
	7VQZuYfTc9CZh3DdgQz8Qhwsc74qgexay2ezIHqArP8kanWd0ZFsptFR8RZD1YOEiMJP+uJ9VbCXa
	ETTOscNyZrmHWBOpZzKpfh1qwNYMirUQ8ljCoftHWrINZGFg0iW18xxKWXDyWPfH1PmnGE0x9Qjje
	vDzPrz6kMmXNqNiLraUCEnLP4i+a2MuiqehhD/qD2O+PYzYSjPaCbdSH2EkkrAUrswxP7Z2FLkupt
	AGfbKlOMrGeRCCJttm2ZHTuZsOq8STzHssLQ3yctEfn9z0YLzmCaN0AtZMfMSvkuhJryZgDlCY0Cb
	HxxxGfZH+42OGclcehoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUgCg-0002Sw-M5; Sat, 02 May 2020 00:40:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUgCP-0001R8-1R
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 00:40:10 +0000
Subject: Re: [GIT PULL] arm64 fixes for 5.7-rc4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588380006;
 bh=keiy/L2cGLzzlwDBTazDNGSfDCaVDrLUlQ2vG+acV0c=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=QfZnvR33eTYsf+dmDKsjFVaW/HI1gWc6sxEcxpgO3ZSaDQZvkD8wia8ZuGrtZAxCF
 I3cX/6/j7w86yMuE5K9ASwjPHDf0EsHK0aH1jbF+5tjVySxJdsbaZmLEQ5YpgECF0R
 3135Pz9LV1EzHxx1SZ+lw7YHsLq+50IIB30UnvnQ=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200501192950.GA25365@gaia>
References: <20200501192950.GA25365@gaia>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200501192950.GA25365@gaia>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes
X-PR-Tracked-Commit-Id: 1578e5d03112e3e9d37e1c4d95b6dfb734c73955
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 42eb62d417e5cf22d6e305cb895fb54299862a53
Message-Id: <158838000685.10067.7730740235724641289.pr-tracker-bot@kernel.org>
Date: Sat, 02 May 2020 00:40:06 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_174009_110364_CC951CF8 
X-CRM114-Status: UNSURE (   1.90  )
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

The pull request you sent on Fri, 1 May 2020 20:29:52 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/42eb62d417e5cf22d6e305cb895fb54299862a53

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
