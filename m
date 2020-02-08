Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DE8156806
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 23:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLz76iuo6h/doL32YGaaUmCsljz37i0Arj9zkia3kWc=; b=mIS/HYmAHxga2w
	9zkbaH06WRlk5WTTV+qNjJdZpSYVi+6ANaCsA/zRDtBmHvVMS5ozrlXkU2NeQda5pbn1gDSkVl7LM
	d7vyqAumbvc3ZcEy629pgyrlPVwGEVgJ0xrb6QARcF4MvuMUlLO2NEHHsWc/X8IqGgqv7K6/TSjfv
	KDwG7PbkwTnJvwW4UGGf48he6/mI2q4nyMm3gGB+//fK0T7+YktoQcxBqAHKwI7IuHuqm3AzPH5Qx
	VOajUTMLW3SrOSJoOB8H1l0k1+vdttQhlLrNZJQ0qkzzlc8Qi+brpcK/4aBYG6yTU8jLvuO39dqMn
	a+nulByg9n+hhHkYNpOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0YhK-00005B-7K; Sat, 08 Feb 2020 22:35:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0YhD-0008Ur-Hi
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 22:35:29 +0000
Subject: Re: [GIT PULL 1/5] ARM: SoC platform updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581201324;
 bh=95bgp/FJSy1suZkLPYmOT9HNlhKF8Rbr2gd1zOes0LM=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=EWD1HjZqXlw8Ct9ldL/nr08vgtTEv9mO04oppG8ulDU4wt7nFTl3O2EXD4kMDBun1
 zIl/Ur7y7Epzb6HsOucbMap5g1DttfcY9RjAIGhZ99nzVnEs8VnOtzKTyRYkzlvMlj
 EUowyGyUTWFC/0DktV7U3Yvzf8VPdgROltd6sZ8c=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200208112018.29819-2-olof@lixom.net>
References: <20200208112018.29819-1-olof@lixom.net>
 <20200208112018.29819-2-olof@lixom.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200208112018.29819-2-olof@lixom.net>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-soc
X-PR-Tracked-Commit-Id: d8430df172118336d050aa61999fb82e55102641
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 469030d454bd1620c7b2651d9ec8cdcbaa74deb9
Message-Id: <158120132416.28764.6873422176640008189.pr-tracker-bot@kernel.org>
Date: Sat, 08 Feb 2020 22:35:24 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_143527_610680_A528674D 
X-CRM114-Status: UNSURE (   1.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 Olof Johansson <olof@lixom.net>, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat,  8 Feb 2020 03:20:14 -0800:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-soc

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/469030d454bd1620c7b2651d9ec8cdcbaa74deb9

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
