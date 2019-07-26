Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C71877132
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 20:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MMGFwvICmBGzZlYymO1+j1osYlpP8yLvAVLtPhXBAc=; b=MI+4DREoBF4RYH
	6ZN47d7RtRiW7wB4cWpLh/XLAIkqR7FwL7PuiQQ2g/NHmFtOZn6MxL8YozoM/1fagf8Q6ptcCVaU2
	/EOQIEFc9iXjiFnGzgKTqZdPoaA5OksQpdrL6DqdWKtuTgyKcmMSLef8D9yYqtKjw25qluvp31FV3
	uhi51pbtCZi6KboKAP5wXEVjgAewNQSdj9BaRNlg9XPb+akGIwzpH8qt97V15Gpg+pOzyjEfjAsME
	wOA+ErKlPeGfuY0VTocwv1ofAFFWdmuV54+GQw8oU9Kav6vh0EH2l/Cy7/zLHYdMgNyRFUQLdQJZz
	4uxK93/ASExv8EUEF+Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr4uQ-0007Ll-8O; Fri, 26 Jul 2019 18:25:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr4uE-0007L7-BM
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 18:25:27 +0000
Subject: Re: [GIT PULL] arm64: fixes for -rc2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564165525;
 bh=ycXJxCB7TjsI3Gy8EgMha0covz94YKyIcyPusNT6Tsk=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=llRfxGgWUrU2sqaFNrXnrSS9IssQ9JFadjG6WvfHjVJg6LKcGcKiVhSHNjp7W2N1Q
 eA8K9N8tGUBXkMzLQQ877sxJEUyKoo6ZldkmQMTlRrdir/JU9oR+1/KwdlcLdgVHFB
 dW4mNtI7dCbA4MiCw8u9b0we6Hua42QYhXr4d1tA=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190726131215.2dqryzjvxfyqefuw@willie-the-truck>
References: <20190726131215.2dqryzjvxfyqefuw@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190726131215.2dqryzjvxfyqefuw@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 5a46d3f71d5e5a9f82eabc682f996f1281705ac7
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 0ed288665686a52781c0ff04ddfe402c7a5397e1
Message-Id: <156416552538.19332.17458620883704995487.pr-tracker-bot@kernel.org>
Date: Fri, 26 Jul 2019 18:25:25 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_112526_407709_83473113 
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 26 Jul 2019 14:12:16 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/0ed288665686a52781c0ff04ddfe402c7a5397e1

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
