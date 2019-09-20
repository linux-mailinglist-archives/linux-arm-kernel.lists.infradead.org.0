Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF21B9797
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 21:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4dix3+mwul44oD8u8wDboAO2FB79F88lOSTEpNodaU=; b=RiRTJQhD7GAzpW
	cbW364lm6RsjjVkmGn0lnKFqeOqmD4Mg7cYeNY8cEN2O0Og5/c46ORRKD+gNv/eXCU0HsSH8wiHtX
	RAeHCLc+b1Q55wXD2wmOhsPfDr33IdBi3KU6ZD/DiukRjcohPHQK5zeseFMprLKf+irzurTEqBzRy
	hXQtcV11cvK0vr/G4c2CVhcrO/XHe5aihMPzvgzJmRJ6R/mDeU6K94i9DjS2SnTRXxATFQb/b3Jjo
	rC8Fw7ITwH1A6GkZiFkFVP53diQnIT+hAHkBJBcyXaLj/FU9zaSikcvzU7/EvubzkVaekvAb/p1hv
	/cBMVwYHBbm0z4Uh1L7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBOIh-0007Jy-7j; Fri, 20 Sep 2019 19:10:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBOIZ-0007J7-Jj
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 19:10:32 +0000
Subject: Re: [GIT PULL] arm64: Fixes for -rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569006628;
 bh=pT4cIq+qbYDvYC6eSboDOcSlbJFd/dK46BWKrrQuBVg=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=AfobFpd5wnOH68p49BwHvrCu65OSX5Y3A7MSvqPVOfRin99GT4AXtjqG3ZewXiCJd
 /4JH5BaDA4AY8vCPUZZf5HzECe2Xif7b5qc1flLQ0bxeQI0KfWSzhs60co9KyqbiTt
 ItxF+IqWV1nbJ8ZjVjN9RHqhD6NbzcdAvbqbTudE=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190920133703.zor3t4dvwam6uyqj@willie-the-truck>
References: <20190920133703.zor3t4dvwam6uyqj@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190920133703.zor3t4dvwam6uyqj@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 799c85105233514309b201a2d2d7a7934458c999
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 8c2b418c3f95a488f5226870eee68574d323f0f8
Message-Id: <156900662888.23740.6256981181910647860.pr-tracker-bot@kernel.org>
Date: Fri, 20 Sep 2019 19:10:28 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_121031_672415_01BA1B4A 
X-CRM114-Status: UNSURE (   1.43  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, ndesaulniers@google.com,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 20 Sep 2019 14:37:04 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/8c2b418c3f95a488f5226870eee68574d323f0f8

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
