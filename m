Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB0AEC741
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 18:10:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GRHv5TqdvWaBlBXhJ1vyJehbUaVVKdzYmnPEO0vUgg=; b=ksYjYt0LqLVBm0
	bs6o1oozWK/9M3Jz/O5iGN0E8fZL7/EA2MPZH11A3WvQd7HsAe5/C4vLmN9ZD3AwVX3NrXoTUomIw
	DHtB0NpGsZoM1pe31a1sC2U2foefS1CxWWLonInqvO4QAr3KeCwTLNGER+zwxQoKHrikhptrw8jP1
	ZrdYL2CzE+nR3Ighlo46r1Fuy/73OnQa1aYKokML+e5F4ib8p/z5Dpv4YrmjOLBCz2HudgbXfgklc
	Bv4nJjj0AFtPu9mHWQjm+5ZT3a9yotD61ew5FxF37TPY/h4MMg+WqCscC/9jvQfi1L0iY6moOOJSI
	2PZwoy8XQx2hTdd/ooBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQaRC-0003Ob-5Y; Fri, 01 Nov 2019 17:10:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQaR5-00034s-GY
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 17:10:08 +0000
Subject: Re: [GIT PULL] arm64: Fixes for -rc6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572628206;
 bh=ugqay8BEMhqxfTYOYOlMOv29oKO2IDJWEcZJTSqh9XA=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=NPYjA+kLd/+WXxKj9xtdez21YHyEUJ4bD2Ooe0slsSUOxvbEqwTYRTI9Mum6jcwNC
 rJoVs2QaIK0kuJrd/qsEOrcONub0mfZjTQ2KZsZixIAJ6HiSIC15gvxX3jyo/yBr31
 +STfzgq3ClP83lr6C7FQ4uUecI/tF04E3VCTSyUk=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191101143240.GA3287@willie-the-truck>
References: <20191101143240.GA3287@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191101143240.GA3287@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 1cf45b8fdbb87040e1d1bd793891089f4678aa41
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: d540c398db780271a81690eeb2bbc61876c37904
Message-Id: <157262820650.11375.14637444805249233372.pr-tracker-bot@kernel.org>
Date: Fri, 01 Nov 2019 17:10:06 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_101007_581541_3E2C1EAD 
X-CRM114-Status: UNSURE (   2.47  )
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
Cc: peterz@infradead.org, catalin.marinas@arm.com,
 torvalds@linux-foundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 1 Nov 2019 14:32:40 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/d540c398db780271a81690eeb2bbc61876c37904

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
