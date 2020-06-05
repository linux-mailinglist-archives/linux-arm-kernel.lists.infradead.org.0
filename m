Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7E11EEFEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 05:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t4Ukb3z2lD4GhBhW6V0z3WJFoRArqicpxzuWDM/zRsY=; b=H06GPxNJRHtdbd
	vP19Dbsfya8hu/vfN5+ulDnBfUaEmI4FC9AQFQz/WML0ke2LZQOiTdO7IqN9nF66Pni+KVeQhq/dc
	TrOlY8NH8m+Sx6tn5laNXZ15fmziEsqE8EnxRSE2sFN8hnqc+vmpCjHsAvwlgFpnCh5uUDZ/V973a
	2A+Oqxt/1TSg0xAybneTM9iXg3JG/j6WDv9PsJ8QmL1VRLBgPDvxQ/HsuLB/qwlg3RYirJh08pzLi
	YnPSSuXyUUFOEurAR+irBA7/vLZ5jUL5moTLHNydOWjBY8xWVHF4Lk9CrCHKIApwsyLc0cuaSKxrF
	7XuP5FZHRRe98dzSYtlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh34K-0004ts-9e; Fri, 05 Jun 2020 03:30:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh33g-0004Gv-5T
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 03:30:18 +0000
Subject: Re: [GIT PULL 3/4] ARM: driver updates for v5.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591327815;
 bh=0stI0VFOiakSK1FLD8a6V+lwYnDI092eJdD7ktQD9vQ=;
 h=From:In-Reply-To:References:Date:To:List-Id:Cc:From;
 b=r0mlhBau3u+ktqMWz0z8oXXlX6g4qVCR0VysA0QE+pKnBBkMm9CzuukCXC+BIzQGh
 jXX7seg1iXoLYqHIqoiOvGRtMLg5Qep5hDh007NhRu45FLpln5smFE54YYAWWJxEqH
 MzG0UWboP7mAlnBxiwsrQPfcqeVnLgxp5BpzoT0A=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a2fCyYgoexi6NiAY2cch5C-7EEkNGy6PJGxjJ-2yMndLA@mail.gmail.com>
References: <CAK8P3a1dmaiYR5Oxkc0CQcxTm=rAHSx6R+xtf4Wup29JqXNZsA@mail.gmail.com>
 <CAK8P3a00L4n3b=X+PQXe1pxf9CHryZTes9L1MD5i2+0RLXprfw@mail.gmail.com>
 <CAK8P3a3w4euZfDQPt7wqWg9w4uf7SM4NLeA2CyOMmgNGPAdQaQ@mail.gmail.com>
 <CAK8P3a2fCyYgoexi6NiAY2cch5C-7EEkNGy6PJGxjJ-2yMndLA@mail.gmail.com>
X-PR-Tracked-List-Id: <soc.lore.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a2fCyYgoexi6NiAY2cch5C-7EEkNGy6PJGxjJ-2yMndLA@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
 tags/arm-drivers-5.8
X-PR-Tracked-Commit-Id: b5f73d47f34b238221ac771b5fe4907df621d7cb
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 828f3e18e1cb98c68fc6db4d5113513d4a267775
Message-Id: <159132781583.11934.10423069233982978235.pr-tracker-bot@kernel.org>
Date: Fri, 05 Jun 2020 03:30:15 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_203016_236908_412EB55B 
X-CRM114-Status: UNSURE (   2.82  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: SoC Team <soc@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 4 Jun 2020 22:54:31 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-drivers-5.8

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/828f3e18e1cb98c68fc6db4d5113513d4a267775

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
