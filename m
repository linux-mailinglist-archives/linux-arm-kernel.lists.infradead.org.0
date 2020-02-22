Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00263168ADD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 01:16:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkaBf401J7Sw8tlUHlZgfOP4/8LZdnXeKZkBFd/QAtk=; b=BIfRSsasFeaJIZ
	z93SZkXUoUeKoMvHvKwvboqTmGVnQw3tqFPQPuaAzkO5XtcvSaLnBk0Dy5bNZKgXFjTB6jcs9ytQY
	ZLvjCx0T80vKbiiDwWGSH0ziKduPw6oQSCeCKLJyjJEKWdE0He0lCUz5P+RBIaI0rnR4wLx8cnp9X
	rdCKqX8XaKqaPxLEo0IH0FWMRKWTU/ARbHoOFYbvFAc5+j7fQTyshwx9ynV6hg6nOdCbjymJopGZi
	xAPjj10ldjexefWlkdtp+9GZMcePuNKQ00nmOMSIoG6U59D8SP9DTqYWq5FvewDQRxXPbt93dPrLd
	ZSs1PU8IGMQsLRvn9Fgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ISY-0006yd-1U; Sat, 22 Feb 2020 00:15:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5IRu-0006Ta-3j
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 00:15:15 +0000
Subject: Re: [GIT PULL] arm64 fixes for -rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582330513;
 bh=J6Cc2gYzrzZWbZXyYPz+cfI+3s684n4iE2XGXd/G8nQ=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=xy3ImlQNzf6cj2X1XyP0B4fbtrR4IDe/zaCFTlMkxXLh6E0kIVdCO0ZuyDWvDpmFE
 4+BfgmUiyVaqDx3pMYly87f+N6+pHOQz00NhzYxD+Ug7TSlDWQjLR6OgkI5TFLR0aA
 Tg/715V1qyakIYhW5an6piohWtmFbG8TplZWbOL8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200221160126.GB19330@willie-the-truck>
References: <20200221160126.GB19330@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200221160126.GB19330@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: dcde237319e626d1ec3c9d8b7613032f0fd4663a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 63f01d852c75366fb4d15ce217d12c48b69a4bcc
Message-Id: <158233051320.15315.16901615049793407371.pr-tracker-bot@kernel.org>
Date: Sat, 22 Feb 2020 00:15:13 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_161514_171016_3BAAF91D 
X-CRM114-Status: UNSURE (   2.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, kernel-team@android.com,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 21 Feb 2020 16:01:26 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/63f01d852c75366fb4d15ce217d12c48b69a4bcc

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
