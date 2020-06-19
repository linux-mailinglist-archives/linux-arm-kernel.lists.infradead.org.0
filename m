Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 249CC201B3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 21:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFufDFL06bpCgTFarAv7QjavSXQ1fbO7F8c7bGhtNik=; b=SwDEvxVgAHXTae
	fDyqbtaX23GPzNWHDXx8B5Ckw8zErXzur17VcEpUSUj8moE0jpmQP63M5pTJPTw+X8+ELRVdv6oIC
	Zf7esuX/hzRc31z26eJ3/QmeZOouxOtGWqRUd68iY4J6jkBgCD6eFB2gBKvEvFjmzHS0avFNBh8ZT
	tzjDktHyytJZOteN6ALuOfdC20OkG/xK9S6KHgfP697atw+g1xfHurubk9UJRcpsd/Yd60FMZ1hu3
	awydUKzddczFNSsbpmMaBL97+RQ/+4UgXAJBaCIyXkzGELjHZ+bbAU1Br63kSQEJrYugN4h71Xzfl
	c55DPqBDL47gkMSLT0Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmMie-00056m-D3; Fri, 19 Jun 2020 19:30:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmMiW-00056F-DG
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 19:30:25 +0000
Subject: Re: [GIT PULL] arm64 fixes for -rc2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592595023;
 bh=GbYtQWwyn7CFpkEbNk3qKLdPXqNLZE/UCw4WDDQ3AB8=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=fvtfLi/jDcs+ImKWK9CSBCYCiMzjLCde9FYJWcQoUtNzQdGXeMcibo8tl699v4n19
 I5FFbbGMQi3EVQPNClRw7+p0G3/1cLviUMvzn3Kb/MGVhUkYaU9sSvq/Bu6qJd4aTp
 S5rWCo0YTnpS6e4rc6cYybEY3CyiPwVrHbwSKk+Y=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200619124318.GA6925@willie-the-truck>
References: <20200619124318.GA6925@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200619124318.GA6925@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 24ebec25fb270100e252b19c288e21bd7d8cc7f7
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 84bc1993e28b2d3cf6110bab0b625e8119825403
Message-Id: <159259502364.2705.14212792402012859293.pr-tracker-bot@kernel.org>
Date: Fri, 19 Jun 2020 19:30:23 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_123024_468069_D75A4319 
X-CRM114-Status: UNSURE (   1.96  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, kernel-team@android.com,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 19 Jun 2020 13:43:18 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/84bc1993e28b2d3cf6110bab0b625e8119825403

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
