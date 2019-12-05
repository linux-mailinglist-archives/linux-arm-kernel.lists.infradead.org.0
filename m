Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B5611484F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 21:45:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHk/fmpHg7tL7ieC+DMC8wB9l0xEq25SGb7EeCsKe+4=; b=DJ04AZlzAwK7se
	SmUqRIYffsRgGXmy93Yf9xPIG/EgWGCe1S3vA5gwlKvw2sB503Oi3Rj9kkpDO/cTzdJnjyvXxP/XS
	TT0JNzIeUpVJ9S4Njch4E12O+3TvlrdSmVmoy51K6Ot9pEsoRrzqGb559Y3aFQE/4v3zVigv2KA+d
	fExRvUcodoHSOMYtjqiNPgjGN7Mf02z0Myq6UazNZqwD4Ed5Frk7SNejO9wUUFMigw8shPA1MGAsw
	fmrwXB4kLow6HvvqQjD0UZmLqt+4c8xNE6fgXpPY/NyGB8GtDqaTYLSlUuwzpXonAtpjHnJNOQFGg
	vM269DzaFw8T9bosYPyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icy0H-0000eh-Pl; Thu, 05 Dec 2019 20:45:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icy08-0000dU-IZ
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 20:45:29 +0000
Subject: Re: [GIT PULL 1/4] ARM: SoC platform updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575578727;
 bh=03Fu5fYuvqvbhxsml0+DONIAkc1U6XblV9t9frUBEfw=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=FMfDN/RxzAOYr8tz+UGqAPJwzIVCTogL4i4Qj0VB1ipXYY2nc7Hk9psP0rgh/KLyU
 g17U5rKDVlKeqrwtMdTwW6gof19agEGaT7nzrPkPyfhXQgZ9KCl7EAi3psiMf76SJq
 NuSbraKP+/elg/XB20qoc/4GdBeTcVZE6cA12Dg4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191205180453.14056-1-olof@lixom.net>
References: <20191205180453.14056-1-olof@lixom.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191205180453.14056-1-olof@lixom.net>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-soc
X-PR-Tracked-Commit-Id: ab818f0999dc73af3f966194d087e9f6650f939f
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 38206c24ab09b4f4c2a57de5c1af0bb2e69cf5b6
Message-Id: <157557872789.26858.3675924643438407119.pr-tracker-bot@kernel.org>
Date: Thu, 05 Dec 2019 20:45:27 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_124528_633456_E1EE4F46 
X-CRM114-Status: UNSURE (   1.66  )
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 Olof Johansson <olof@lixom.net>, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu,  5 Dec 2019 10:04:50 -0800:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-soc

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/38206c24ab09b4f4c2a57de5c1af0bb2e69cf5b6

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
