Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B50C71283FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 22:40:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLXLMAP5VGFBIvOhqQ9wOVmajeY9DsdiIvw3jSR81AY=; b=c3PZ7istqn8YUk
	lDiQZfVF17a5zNC1MD7/9sjZO19UmMp5B8+ANr9UtMA5jy+VbDVqBvXy9pdWAS8s29kWf/O3x1En3
	52/TlEm7GkZEwtBsz7T/pGmdBqS9CHeQYYVWqbQnKU/ZdWRmzs3WuEA1NZyNIQbMzYHu2sLWGcJxY
	7ASwEyGejhYBFZjivGjIKh8jpwUS2A/DVbQgCqdRK5THhIQmmNPxXoi0JHWjfSFc6hbb/kBARUzJK
	sz5M0rcyMW2FD5pJuDqO+9H0aB0prjPChpYp02F8cmPc0zxSJlZ2/6jSus44Q02dtmaUx8d7dx+IP
	Pfw2VYDLtdtQk+FxhxMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiQ0R-00061V-RV; Fri, 20 Dec 2019 21:40:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiQ0J-00060k-Ks
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 21:40:12 +0000
Subject: Re: [GIT PULL] arm64 fixes for 5.5-rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576878010;
 bh=ds60W/4bN53y4yP49NRUS0ID15urrsKn8ZPE8vCr0w4=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=WVyqJbKEzw0YncW2dPqaMhyctOd8mYnT78BDlBKjLfTz5AnwGw+Dv+j9oVB1v7YCu
 0SpOrY+OK3RpJ2S+QSICPcMxSfdxgoUapyO7ClfAuO7PH+NcotsrjUsyEZFQLSkLWh
 fi+idsO4XBis6r8Z5WRIiIEy5NPVKG4pD955DpBk=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191220181456.GA13898@arrakis.emea.arm.com>
References: <20191220181456.GA13898@arrakis.emea.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191220181456.GA13898@arrakis.emea.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes
X-PR-Tracked-Commit-Id: aa638cfe3e7358122a15cb1d295b622aae69e006
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3939f2c8665721eef8315f42d4c57fb1272aacd6
Message-Id: <157687801076.11927.15792354963076329227.pr-tracker-bot@kernel.org>
Date: Fri, 20 Dec 2019 21:40:10 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_134011_706690_06C06882 
X-CRM114-Status: UNSURE (   1.39  )
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
Cc: Will Deacon <will@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 20 Dec 2019 18:14:58 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3939f2c8665721eef8315f42d4c57fb1272aacd6

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
