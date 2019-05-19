Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02977227F1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 19:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PC1vux+7F0zxXRbGnII4ZGxvVaFZTs6JOe41FGiWjeQ=; b=JqJdwPFe79CB91
	JZD8oedgxZyRtACJbjgVwq4LMjEOYowrSKF1J0RAR5lRWwlTWrTOOFI31MJZu1wnByk+5Tkbj2WrM
	8BkdE2oHon+HMtBzVObsmXD4cmDa2+cI/olqFQjmxuVhNKUy55qwgzZyVZgy2PTsILuIWSjGCikB7
	YHt7On7+osOPe+HYrYZizhPC7zGO+kB1BSrrFSRgdWoUbnE0s8VZ25fj2PEE9i636PuK96GKmvXoC
	UBFy92yIlcfWsdrubKRvSzoX6a9wmrawlvq7xDjelRm145wSb8Nqxl4kDsa2DPGLn/DwYVnrHqIBh
	9qKvqchZm2N7q16L6Xeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSPsK-0002Fb-2v; Sun, 19 May 2019 17:45:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSPsC-0002Du-CF
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 17:45:25 +0000
Subject: Re: [GIT PULL] ARM: SoC late updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558287924;
 bh=MoNXTYz6i+euRRmk0nVceC9FrohJKxerQySlZ0GDsXI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=w07eRgzDCL/nHX2FmuO3WuTs020SZZ6s/v9K3HJ8HThPv1aYj5JPXwdbKi2fvRRVZ
 fkv0lZSaSZMdvJjF4+uLPFa7bw4pfBL8UO8+sGpmV+3Ny79EasrzSGqv/BNewxS7x2
 fq2G3NyZU0Z7mB1itvZSqb5Ed0kwzmX0i8kZOpK4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190518225131.2lyysevggfbyqfl6@localhost>
References: <20190518225131.2lyysevggfbyqfl6@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190518225131.2lyysevggfbyqfl6@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-late
X-PR-Tracked-Commit-Id: 15d574fbd3f8ec7705896ed14b74eae482cadd4e
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4c4a5c99af7f479a14759196f8df9467128f3baf
Message-Id: <155828792401.9186.2206996596396816768.pr-tracker-bot@kernel.org>
Date: Sun, 19 May 2019 17:45:24 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_104524_429755_E077FA45 
X-CRM114-Status: UNSURE (   2.36  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: olof@lixom.net, arm@kernel.org, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 18 May 2019 15:51:31 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-late

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4c4a5c99af7f479a14759196f8df9467128f3baf

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
