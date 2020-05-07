Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF111C97ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLEbCOVCucLw+GFyml/3NMjwNXQU56bXzMCLSQfrrMw=; b=Q8j2mfYQ6x7uXg
	H8/VgmGdjJoM2Bk1i9OdLDFAznE0hYm1uBSvpColxOU4P8BTAcVRWpFVYOaz2+xfvfj/v/lCcx7Sf
	KD4tEVB52nKXPXAMkjY48G1j9R8dIwnkxoo1uTE/Er382FlLZfbbSbLte8+XmXGK1k3Nu5T6hzMV/
	oG8QZckgd/1ScEt0h4/8NVcrKVjfI0GlydmNF48FI5ENotCpXC3Q/Z1m6ytY8aNVfqpCxW68K5F46
	m32xHw13gZqe+ow8zoWW+46K6bvKFH82WKD4hs8ZYoXf+ojtX4paAxFOoCfZZ46hur3ahuUC5tGl+
	Lv/FsCc/MYZRCakzOhmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkQW-00086C-Uo; Thu, 07 May 2020 17:35:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkQM-0006zj-Ox
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:35:08 +0000
Subject: Re: [GIT PULL] arm64 fixes for 5.7-rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588872905;
 bh=pNvybinVXhnLApEYIsATDA6ow4V7vidIFGKxLR60T1I=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=0MRyfyijVYgrRS+zGknQwqukXy473QDY59v4keVrs/+VVlezEJ5kcldXNHl20w6mx
 GRQxasinAZiWiWVi3Df+Ch1UTTsVwn9YV7/oYA+v9fIrvTh3F3HIcFt2d4zsSfsgNB
 Q10fMjh5QkWqqSbfKlHQrmR3AiNwACamkN335zxk=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200507163108.GA17399@gaia>
References: <20200507163108.GA17399@gaia>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200507163108.GA17399@gaia>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes
X-PR-Tracked-Commit-Id: 027d0c7101f50cf03aeea9eebf484afd4920c8d3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6e7f2eacf09811d092c1b41263108ac7fe0d089d
Message-Id: <158887290554.22656.8225125558948373624.pr-tracker-bot@kernel.org>
Date: Thu, 07 May 2020 17:35:05 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_103506_854559_BC65C1C6 
X-CRM114-Status: UNSURE (   2.20  )
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
Cc: Will Deacon <will@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 7 May 2020 17:31:10 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6e7f2eacf09811d092c1b41263108ac7fe0d089d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
