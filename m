Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3DC18D584
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 18:15:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAxBs0gQBOg6KV2XM/aVtZW+Eq8cX4FBCEsC6K2XawM=; b=M5DReeQ+oBLkiQ
	+e5rR7aUagGLkjvNDP20SRx4YfIGIaDBJcJ/DhlQXiqZaw4w68VbhHDPIFz1SmJpHUGy/Kdr1YKat
	0Fc61GUEUw9LGZ7TcokF8qR2POk2vSXbLVn9CtCQ8oVx4+h81MfLCD34kNrk9A488YAa70D22mGbh
	QFywEcDbw0MPZ/8AFhb0vDwsstQBkSEZ7k471MS5VHhs4McHeZ3J1IoUFBgE8jEEpUhYQ4cXNp3sf
	cwrVacQ+J5E/KL0hcG9tc/yoom6jZ8ub900qyIkSMPfzQEQDRz087MYRt/K+/H/Gd/p79ewtLOPSf
	OTA6IdERQJ4Bzr9gLXsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFLFF-0006Uc-JW; Fri, 20 Mar 2020 17:15:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFLEo-0006EW-1i
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 17:15:15 +0000
Subject: Re: [GIT PULL] arm64 fixes for -rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584724510;
 bh=lODxS3uudQQhdXOmNALVz/qlf6Z0aEsuFX6lLXlYJNs=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=W8hxsSUMgI6mb2uPUZ/F57N0WKV1I7HcLIOzOl8iJtagbfEiXvrMTy+HDaGIzgZBe
 y8m89VrWtdXxQ/e63tC8zEAWW67m2Gh7ywVHM1BssyNrbnjoMRpci+3MWsMXEXKZDy
 eabG3PL5Kmf2DRwGP/Rl1lQATK3EHj3keAvGgaP0=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200320153508.GA6815@willie-the-truck>
References: <20200320153508.GA6815@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200320153508.GA6815@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 3568b88944fef28db3ee989b957da49ffc627ede
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 5ad0ec0b86525d0c5d3d250d3cfad7f183b00cfa
Message-Id: <158472451088.23492.17342377231579410811.pr-tracker-bot@kernel.org>
Date: Fri, 20 Mar 2020 17:15:10 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_101514_122149_9C64856B 
X-CRM114-Status: UNSURE (   1.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-team@android.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 20 Mar 2020 15:35:09 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/5ad0ec0b86525d0c5d3d250d3cfad7f183b00cfa

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
