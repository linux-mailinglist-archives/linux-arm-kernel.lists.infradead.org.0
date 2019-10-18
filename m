Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4B5DBA7B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 02:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dwTdfLIdO5DNatf67QB6T06AqY1IS4nwzuqtVuYoIRU=; b=Epuk1PZgnh8Fvz
	ma3TreBPIsOaXiSjKJEq6WNNSCQX/nSDgCyHBz9bjQWNYpaSPH1LLv55835cp6vjQypIY4m69A98I
	92YBjwasYp0hSi4n85L64wsVVMpG+Agyg8dR2xKICCUzJaanYzEJ7VsgpuxQ6tO9e6gwy8jDisgN+
	eMldyHBxsBE2od/C1EMngQx7sGmwTt2WdIJHrVcEsn9wCXjfalOIJIr91F6HhuD82Uvh7+LU1k4Fc
	eblqgD9Ugq185YCGSDyMzIHuA+u14YMc5B1ZKriTqCRxvFYyDAFXP/CH4521dlhqFaGa1z6fCIzwz
	moU84ccM/fch7et/CnOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLFvI-0007Gl-SS; Fri, 18 Oct 2019 00:15:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLFv8-0006kM-7r
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 00:15:07 +0000
Subject: Re: [GIT PULL] arm64: Fixes for -rc4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571357705;
 bh=soPDvfWZzCOiWR8Dc2S8JX5kOP5xHAukB2H+7IlVZ/M=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=BYBJnn6/CXgYjA1V2eIuGeqQT7SMdv9SdZw8uOwBw1C717umZ9oegwwG3oTZEfkJ4
 yO3PiwgW2NThhEhZSOlnjR8/Ty6odUy0orF7Vi6stgwKIqZgqc6Fm5ivh6EMZv3J2p
 g1QimGEDqZf0+tkzclrYu4QwN99g8pypKS+DpvyE=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
References: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 777d062e5bee0e3c0751cdcbce116a76ee2310ec
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 0e2adab6cf285c41e825b6c74a3aa61324d1132c
Message-Id: <157135770556.19677.2191598282446582691.pr-tracker-bot@kernel.org>
Date: Fri, 18 Oct 2019 00:15:05 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_171506_322325_3A6E6669 
X-CRM114-Status: UNSURE (   2.36  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, torvalds@linux-foundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 18 Oct 2019 00:43:49 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/0e2adab6cf285c41e825b6c74a3aa61324d1132c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
