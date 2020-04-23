Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED7D1B6132
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 18:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIhVVVKG5BNqvvWnLyq8jZnTXZSqcF/d/BbMJiEM47g=; b=VRlvBQq3dWX74S
	xal1E5zBaPQ/PPpMFwpR/Rhu+5TnfIBjL91GJqWfOe5mFDqiumOuisabFvMhsMbpLt06f4muBQ2RM
	eVCsElhpi56YvoEM0P0/pdhptczQCmhGbSC+pz3AImrCFpDVj/EZ8BR4egQf9vWp56uiMSNs/kNp3
	whmM+R+vZyLJfAqjTkeeUw0PdThi6YNj72gBE4w5J+ThYvz5rvY0fqx3HC0ztsvffpe3QR8m3px2l
	5mZ++X6gOSr9ajcCoan1R6fQ1+XUMFSl0mRBkSVYSIy8RdOxW0ExWKLrPJywYe3PRwUcO1NYxDM9E
	J3XQi7ZYKoD+zeV4dWcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jReyd-0006jT-Sw; Thu, 23 Apr 2020 16:45:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jReyW-0006iP-8g
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 16:45:21 +0000
Subject: Re: [GIT PULL] ARM: soc fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587660319;
 bh=UxmiadY5/1/nXSqL2i6vNbML6AIEPRZGx01a0m+F9PY=;
 h=From:In-Reply-To:References:Date:To:List-Id:Cc:From;
 b=R9qrPDbPEs0HcETTN/uctoLFxG4ACsch98kLtjvalMuUw4/afXxGI0mUd37Fb71Ck
 ge8hD5zW9jdPQDYrQZSh7MM9aohgfj3sv4nrVKLKRiJ4cBeH/yuOL28eAtK5yK4LT+
 gESPQMMVHLn4MgtD70k+AKb7tHywC8n728qpinKM=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a2rtR9y15Vx1Vgsv2xpaQyf7eNgV8JsCCOYaWTWZhMNAg@mail.gmail.com>
References: <CAK8P3a2rtR9y15Vx1Vgsv2xpaQyf7eNgV8JsCCOYaWTWZhMNAg@mail.gmail.com>
X-PR-Tracked-List-Id: <soc.lore.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a2rtR9y15Vx1Vgsv2xpaQyf7eNgV8JsCCOYaWTWZhMNAg@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: f42ae4cd4cae92408bffec2c0a4c110447e908e0
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7adc4b399952f439cfd43ee041ec9451ad9f567f
Message-Id: <158766031948.20212.3552818210049714017.pr-tracker-bot@kernel.org>
Date: Thu, 23 Apr 2020 16:45:19 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_094520_325484_64114570 
X-CRM114-Status: UNSURE (   2.83  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The pull request you sent on Thu, 23 Apr 2020 17:17:57 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7adc4b399952f439cfd43ee041ec9451ad9f567f

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
