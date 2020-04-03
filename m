Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB47B19E118
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 00:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVmWvJ0o1fbYQLoIGimLmXzng6qeWEPc7CihcTAwIYU=; b=njgbxqM/Wmzc5r
	0DN84v9ZUmg3OTMnZohwLvpaMfJNRX5bGOlWkrJg+FnzeKZwghJ+tisevUyME98WbovzRS9b9ITHu
	0faugdF/eWA+/YA53nLI3ciM5s68WR/o/jJwYJUY9x2485bIySC6ExgTLmtbezTLtqaxTm1BJYttu
	mp8VFasfwJVfD2tS4oWj9m1VNmb/3q0bdGltEljZYkmMDabdn3tTcC2KScggn0Y4O9GWiif6Ceju+
	GU3d9XIzKkQUTks28G8ZkkeObQrUmjcwy59UVR02j8cVG8cmy2+oN9MXWyUWn6QdhrVH+mO2ZpSMs
	D3zN4Mouf5IzflKEowEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKUqN-00006e-25; Fri, 03 Apr 2020 22:31:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKUpW-0007kM-5L
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 22:30:27 +0000
Subject: Re: [GIT PULL 4/4] ARM: devicetree updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585953025;
 bh=538ksjSVlArzzLpz8HK6DNndksnKqpsGog5TZzkS7Qw=;
 h=From:In-Reply-To:References:Date:To:List-Id:Cc:From;
 b=PRcfzqlM1gfb/D7nPEdcrJlP/0Wz/uccBl/PjeAusuMQ5UbqasqVswo5LHtNLyL4j
 7M2IX7gEAeo94ZtDAyjhf0sjDlciLiZvmMKkT7pzYeqRwISrdfSTtIOQq3q+dVEN+8
 y7watuCZGM9ZqhAE7WyjxKBzqp78Jw5kbIgAiDUs=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a3iGtudeWTwufBYYM29jL5b_FRkqzU2QZiQRu0B2NhyZg@mail.gmail.com>
References: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
 <CAK8P3a3iGtudeWTwufBYYM29jL5b_FRkqzU2QZiQRu0B2NhyZg@mail.gmail.com>
X-PR-Tracked-List-Id: <soc.lore.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a3iGtudeWTwufBYYM29jL5b_FRkqzU2QZiQRu0B2NhyZg@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-dt-5.7
X-PR-Tracked-Commit-Id: 8bdbf169084ec00833bff61cda0014b7fbdf15ac
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 854e80bcfdafb8d99d308e21798cd0116338783d
Message-Id: <158595302575.19263.14281888443114617089.pr-tracker-bot@kernel.org>
Date: Fri, 03 Apr 2020 22:30:25 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_153026_252330_296301AE 
X-CRM114-Status: UNSURE (   2.67  )
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

The pull request you sent on Fri, 3 Apr 2020 23:45:56 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-dt-5.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/854e80bcfdafb8d99d308e21798cd0116338783d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
