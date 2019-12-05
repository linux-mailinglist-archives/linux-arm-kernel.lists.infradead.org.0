Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402C811485A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 21:46:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwpPA9p75DMreOlppsiv7ODvRVnsihkmlCpfx8ZxLY8=; b=kByHptqsCk9Lk6
	d5Ax3fHOxB/aU8/d/GFCnWttOfvP19iKmEacbp/gOAMnJYiQ4BOubIOsf6KSJ5yyKRNMNz2EgXcjg
	UmE3OYvkUBo9L4WVLaIokPnKO4QK7k1dep8IBk/A8iXCcur93pzldodn3FEb3h+jqt55IS2y73ugw
	F+X7MFRUKaYsqIF4XpArJimcMq5pkP2OLCO00F0NzpoGHZfSczCKlsgnW2gGFB71KCU1LBqPz646b
	whqdWs/9pNiIjWRO8YoJr6Q0F5lkMS6YNE6LGY2rSfBJX+6FexaNcXuGHDXc7xNdZZXV8fel+A2/K
	qv3pfpoqfdf/fxmmsXTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icy0s-0001K4-G4; Thu, 05 Dec 2019 20:46:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icy0D-0000h5-1h
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 20:45:34 +0000
Subject: Re: [GIT PULL 3/4] ARM: Device-tree updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575578732;
 bh=u16P2/XJo2OgS2ZOrQ1/YVYJNndftz8g2Q9KrGlGUe0=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Akp3nAxx5CbA2r+F62QNgWkd+bkmr4zfC7eEieTcdz2nFj0960BWrBZSTs1mCD/12
 JDXfHcgzIsn8LNCdARv6c5w4rorhyCsC5LTWhgAPvJaFqFavF4A1dXkoL6NRDiWeBL
 eoIUDv6sqCMu3rny6ZensSrAgMKqxMaV0Ht0+E7o=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191205180453.14056-3-olof@lixom.net>
References: <20191205180453.14056-1-olof@lixom.net>
 <20191205180453.14056-3-olof@lixom.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191205180453.14056-3-olof@lixom.net>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-dt
X-PR-Tracked-Commit-Id: 5f1f15283419ded3e16617ac0b79abc6f2b73bba
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: eb275167d18684e07ee43bdc0e09a18326540461
Message-Id: <157557873271.26858.15713238410843879060.pr-tracker-bot@kernel.org>
Date: Thu, 05 Dec 2019 20:45:32 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_124533_120182_4E0A62E0 
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

The pull request you sent on Thu,  5 Dec 2019 10:04:52 -0800:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-dt

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/eb275167d18684e07ee43bdc0e09a18326540461

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
