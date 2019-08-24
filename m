Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45499BF5C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 20:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zusacqYjAkclx5iUN7M+VPZLtLncbvPiW343v+bIVA8=; b=NELEE4iaMXS5et
	QyTKixbFxgD7W0b+0nlaY4ZbLRJ+/bwUOUeQkOT/kivV07Dr5rSfThiofl1og/KIFeRqfnnl2UYgk
	p1QChVHDLt1CxiTP9s2XqiIX4C9feit+SvpYBR4XLvJnpioXkjtDEscWTz0pipFsTBEvNG/H83q2G
	qok7Pcu1GA82ZsHaKcc25x26eHunF/GFZZU28fjZ5sbpZ9lwrAapE3R9w/83ldevDapIx5gnM2Ktd
	9FwIgPbGZUF2uKT+xXM/r74KlEsDI8bkxqK3DLZNuWTAU1jnjavPc/O4yomoNd7/eP9Br9GOMcn8F
	G0UExr5JtDA3uaO/eG6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1b2Q-0004MT-Mv; Sat, 24 Aug 2019 18:45:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1b2D-0004Lj-1D
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 18:45:10 +0000
Subject: Re: [GIT PULL] arm64: Fixes for -rc6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566672308;
 bh=7Qs4bkWflVG2mFrf3I3eozRzQTQ5YMm/Ki/3Id1X/AI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=nIAB4BxMmxWEosyKv10E7oJVldQ05MeERhSeCglIKLgjWljr2Wy5JQY1UX+ndUgn3
 85W+dw4yr9dwMkmlTWdwamz5jUpmnBygOpzNglxppFzcLo+q912QCdTpN1keUHwAiy
 1qqAgCYxQsCP+OOZr+dEFbmf7yhi9qeIoQBh2hQQ=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190824121255.ojqt7tjlzfp5a3nw@willie-the-truck>
References: <20190824121255.ojqt7tjlzfp5a3nw@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190824121255.ojqt7tjlzfp5a3nw@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 087eeea9adcbaef55ae8d68335dcd3820c5b344b
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 0a022eccf7c468efcb8aa5192b8d13e20127bbac
Message-Id: <156667230824.2337.2969578272613309440.pr-tracker-bot@kernel.org>
Date: Sat, 24 Aug 2019 18:45:08 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_114509_101686_4B1D6A0A 
X-CRM114-Status: UNSURE (   1.37  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kvm@vger.kernel.org, rkrcmar@redhat.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 torvalds@linux-foundation.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 24 Aug 2019 13:12:55 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/0a022eccf7c468efcb8aa5192b8d13e20127bbac

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
