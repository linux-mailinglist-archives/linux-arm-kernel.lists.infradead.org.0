Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A2A19E113
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 00:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6lsOhZGR4pIpT2Q6DFIH6XOrtsw7iG2r51aT14+l9E=; b=fLT0tgK408MIC1
	u6ZVTbTQAD11ek55xPelvANQiLSwC6CXj3cl/vSkjDQu0PrftBl76whiyliFIeXdkYb4wpb8hkSbO
	rHm8k5f4dhwQnl+Lf5HM7+yIn/e+TuLAYyEkNN6XV2hvN7sJIN2HtkX1T8DGVhs4doTO+OHdhWaEk
	8V/6tqvzkGM+lhIYh9LErVEu/Kf9NLv8LodGfM5SZwO4h2ZsavtE2sbg+DzEuKnjDZEv4pOKkUhVy
	VF3IdQhPv0Nfdhfs1qY91uGDoEyOQ/lXj4SavUCWYZbim4Py+o01zCZS7sL3hqXGwM5naG8JDqR+c
	oTWypxURJITsXftDOvUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKUpu-0007uC-9e; Fri, 03 Apr 2020 22:30:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKUpT-0007ik-Py
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 22:30:25 +0000
Subject: Re: [GIT PULL 2/4] ARM: driver updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585953023;
 bh=ysPd+VaMxeQaFNzETB5fv7/dfrvjNu7FaSZK5EKc++s=;
 h=From:In-Reply-To:References:Date:To:List-Id:Cc:From;
 b=k0Dd4B4pV8fNvxHsj/mSQmnmvBh24MlP4W2TJvAvlzNyYhc5McfattUSVKFDMnIDm
 wOiEueeOr2tmLnNq1zhrbWPGLA03+DDQlfD1eH6DaI+vN9S7FIbmNrO2OY48lLItH2
 4h1l8f+iQqVYEQI/e4wUa7DEbW+G7+1WHIQdFtek=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a0Z7yj0wgMkT2YsWBU56557O66rLGLzGSJSuC+8nWx1zA@mail.gmail.com>
References: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
 <CAK8P3a0Z7yj0wgMkT2YsWBU56557O66rLGLzGSJSuC+8nWx1zA@mail.gmail.com>
X-PR-Tracked-List-Id: <soc.lore.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a0Z7yj0wgMkT2YsWBU56557O66rLGLzGSJSuC+8nWx1zA@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
 tags/arm-drivers-5.7
X-PR-Tracked-Commit-Id: cedb414aa8c31ce2f178ea9dc29b6c0200b9893f
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: d18292dc07dbaaacef040a23a5e5e65c6ea61803
Message-Id: <158595302352.19263.10439446222459673652.pr-tracker-bot@kernel.org>
Date: Fri, 03 Apr 2020 22:30:23 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_153023_864652_D3C51815 
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

The pull request you sent on Fri, 3 Apr 2020 23:35:09 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-drivers-5.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/d18292dc07dbaaacef040a23a5e5e65c6ea61803

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
