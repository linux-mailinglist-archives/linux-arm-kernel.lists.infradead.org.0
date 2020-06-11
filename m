Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825861F6FB0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 00:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPUN64x0RG7J8aY+LNr6ntEkRUz2htiHpGULm8V6TsQ=; b=ZsO9zsK6qx5i5B
	w1cpkufN4dDQ2ef8YM1J9RBz2zU55WWR9YMecRKiIdAnwTdnI7Inw3KaexX751fiqFUl36xzhaOAM
	+n6YW1QRIzSv7jqSLjRCyR9sZTuzYQ3J+Cdi8wCcrCEzGLrzpgcAhw3JThTxB1xojZZmeunulKPS9
	0rlR4iClQ3KBUhzJz9GO1Gm4lvHyzcq+rqhQgbr+wvJhgV07WjasMBXv4zY0B6uPCzUlejZ5IvFzR
	Hv2crEMJTbUKa817yDpaz7gyW0WGuVs0DjxKJV27TR2F/LuH7u5caqG4JCTdGoYpee0dUZKz24Grh
	5DpdO31mCqXL+Pzu2EuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjVFP-0004bi-Qa; Thu, 11 Jun 2020 22:00:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjVFI-0004b6-9O
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 22:00:25 +0000
Subject: Re: [GIT PULL] arm64 merge window fixes for -rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591912823;
 bh=ZmK8pfb+oDN1hKGoI5u7d/FI9HDq7ElXSgVCF+NMVfM=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=JMw/jV8GOn8CIGs6/R52uxBIyzB35huBTj1LOOjHIka8V2ihZsNkjDvQlNd437EjP
 4boGksdZIZvlelFRGR0kk1TQo0Z+woTiD5+ySpa5IZXL9NMAJa5kHuVPiwlKx8ENMp
 NPjUjbmxurOFK63W/4au2nrlCONQYdw7pq5HxitA=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200611173412.GA9575@willie-the-truck>
References: <20200611173412.GA9575@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200611173412.GA9575@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-upstream
X-PR-Tracked-Commit-Id: dd4bc60765873445893037ae73a5f75398a8cd19
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 55d728b2b05fb0377a9048af3460c375b54619e2
Message-Id: <159191282361.15411.4266634913208275603.pr-tracker-bot@kernel.org>
Date: Thu, 11 Jun 2020 22:00:23 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_150024_347146_27F64A51 
X-CRM114-Status: UNSURE (   1.88  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, kernel-team@android.com,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 11 Jun 2020 18:34:12 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-upstream

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/55d728b2b05fb0377a9048af3460c375b54619e2

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
