Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B8BA08D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 19:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBTV0gBvxYJgBwbKirG3NLmJ9pLuRhTNdpLTGH01k6Y=; b=E5zwLdPuxkxpoi
	rTWtJJILRX09rj7Gzp2GuW9tP7WN7gzWLkbVgvWTNjud2KYm+qdik5e+sX8jfH6yWk5Oy8661Uyq8
	QgsgMB+P/hHbykYpYmdPmLX07ValP3PchTK2PaHnXgdNV5EqRqF3y0LyWL/kUk96Um3CjfGF/8HMs
	Qnwg1KeeekKe7ioYgf624jUmV1f7bMbqhbPWqjFK9/8lvc0JEJ4LIW+sCBrprTkkLFX+l+rageD0J
	2x817oPYvtGkXssNzUGDH98w2clvjOlTFA06LsDtjFL2bvKsOjFeZ4J9daiHy0RKXnELUsw5pjlrc
	q4X3nZLVrPLz8ri568sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i320W-0004ya-4z; Wed, 28 Aug 2019 17:45:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i320K-0004s7-4p
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 17:45:09 +0000
Subject: Re: [GIT PULL] arm64: Fixes for -rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567014307;
 bh=hc0bjImHvnq/IxCT5s4NZI7gpFd6msv+Pulf0AYrCR4=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Oe2zFU4HpEJT04R+CubK1ZvFncH0jBu+Vkbguy2huLOriKL/CTUcTaDPCYgaKJKei
 XVVJ3CUe00SyErsxbyAewrvodXJBzCciVlNo6Q9/Q8x3yallMOeG/uPT2Uo9GHA5NK
 qqSIR8ONUMBj7/2inMxN8JMfs5yti7gQAUwK25iE=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190828173233.zqwm5nd4p5xa4jxi@willie-the-truck>
References: <20190828173233.zqwm5nd4p5xa4jxi@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190828173233.zqwm5nd4p5xa4jxi@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 82e40f558de566fdee214bec68096bbd5e64a6a4
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 9cf6b756cdf2cd38b8b0dac2567f7c6daf5e79d5
Message-Id: <156701430762.19174.2439398136739791001.pr-tracker-bot@kernel.org>
Date: Wed, 28 Aug 2019 17:45:07 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_104508_215934_A29BE7C7 
X-CRM114-Status: UNSURE (   1.69  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kvm@vger.kernel.org, rkrcmar@redhat.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 torvalds@linux-foundation.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Wed, 28 Aug 2019 18:32:33 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/9cf6b756cdf2cd38b8b0dac2567f7c6daf5e79d5

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
