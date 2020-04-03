Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2447E19E112
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 00:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fn/b0BeEBE/MZ31tbBz31/Mp+KbFLeytF2aVTzH8sxU=; b=n+I5rmOtoXtqkC
	dxlOBH/CNl8x/ucdnIZwBucsNVDQbSyxGGKzyyElM56zvpyiNJWUpfdlf59MWZpt8sW049/w2ZgmP
	ecWCOdhF5nQLFVyBpwy110pvpPnsPixZ9t5frpbt831eaA9jVmmrGPHrGM3x1kKIFeLFiaS3zuFe+
	avzzm3rBxD+gSc32S8UVg+UOo3CxorKulXydVWGmZ6D1NjP4+RrsT80ZW8fGfPV5NaVX25PD4MP0S
	AZgNuhrPjnl9cqeDfp7/oHmG/297+YQAbrkeIEEZ1xuNWcxmBs0aO5Nig8woxbT3BMcgxU8T5iHBe
	lzgIXHvjlL70TqSuCqUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKUpd-0007jd-EJ; Fri, 03 Apr 2020 22:30:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKUpT-0007iB-2U
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 22:30:24 +0000
Subject: Re: [GIT PULL 1/4] ARM: SoC updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585953022;
 bh=c0qmbut9lZdfOR4SN/Y7mhxk6AHMI+XQqYKbIkMsTFU=;
 h=From:In-Reply-To:References:Date:To:List-Id:Cc:From;
 b=osVFnQPXNZg99tpNoAWZzMV/x4sHPH3YBzImM1zGHZsxToP+rl0iyINdAKHk7mZ5q
 vXexfD34FKYx2YQ1W+8NK+LDnvDcJRPmK92rT7FoLhbO0hsRgfc4QNW30BujRioKWg
 EV6xEenWqUHZqmCZMcMEsjr4+ESO97bi9A+peF/A=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a39t9wZvLMOayx4RSGZ0N+bKjgVw=fwEB=u=UvfnnHHpQ@mail.gmail.com>
References: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
 <CAK8P3a39t9wZvLMOayx4RSGZ0N+bKjgVw=fwEB=u=UvfnnHHpQ@mail.gmail.com>
X-PR-Tracked-List-Id: <soc.lore.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a39t9wZvLMOayx4RSGZ0N+bKjgVw=fwEB=u=UvfnnHHpQ@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-soc-5.7
X-PR-Tracked-Commit-Id: f125e2d4339dda6937865f975470b29c84714c9b
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 0e8fb69f287bcf61fb93990f6bb1496ef0122499
Message-Id: <158595302232.19263.11872615417332158188.pr-tracker-bot@kernel.org>
Date: Fri, 03 Apr 2020 22:30:22 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_153023_131757_7E5ED410 
X-CRM114-Status: UNSURE (   2.78  )
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
Cc: SoC Team <soc@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 3 Apr 2020 23:32:06 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-soc-5.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/0e8fb69f287bcf61fb93990f6bb1496ef0122499

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
