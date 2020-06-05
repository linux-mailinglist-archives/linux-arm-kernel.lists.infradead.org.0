Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B661EEFF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 05:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sE/Dylonh8hKa/S3EZaDVJyZRbrp3HrdygtNi8kSLQ=; b=fzyo+6oTOiC+1F
	g9LicoN+ITcfw0NgwAxePcwdtAcO7FZEr/q2ngWp68p7rXqj672BmOvMIeQtnjEMTBnmTG5xfM7vJ
	ypz9/buZshb3JU/tllGAEjIHj+8szVsPoVZK16q2YjlZLL5mEUNJmNo7fgG/OlatoENo4Mt2g4G1m
	to3159d+gEiBIQFmLgbYeutn93R7s9KyLMyi4Oh4hpCTRPgoXyrV+wcXFEmVZ1RhK+SvsElXZZoGx
	/E07PoR5MyUM7fDhAcZqrBTwK+GkevmRAHMyWgvHvy17eRRd3DSOp2kvFZwDbzDtVf+8W96oEak+P
	CYfrO7cACJtEegwd90Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh34Z-0005F9-4w; Fri, 05 Jun 2020 03:31:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh33h-0004Hy-1K
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 03:30:18 +0000
Subject: Re: [GIT PULL 4/4] ARM: DT changes for v5.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591327816;
 bh=FONwoaoT9TA4XXW46XkA+i+3olcbOSo0NbRC5060/o4=;
 h=From:In-Reply-To:References:Date:To:List-Id:Cc:From;
 b=AT38Zh9+9bhsKB6JaEwCvvkeAVpjzt4+g/JV8LC4cjziSDSfm/dCvoaII0wgGHxet
 NaY2tz+V1p8lDFpcC8J01jBxlTwlGoxu3RjAIy1+b8K6v82DKcw+I+diAivvw7BkPx
 f0Z/jaEglaP/Nu7D+2rZL5yTNDoSpP7jHNdtrY74=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a2WM_iT+zPZjDeoih-qZwSJbjZfVMvqpG3Sa1aDqgHwPA@mail.gmail.com>
References: <CAK8P3a1dmaiYR5Oxkc0CQcxTm=rAHSx6R+xtf4Wup29JqXNZsA@mail.gmail.com>
 <CAK8P3a00L4n3b=X+PQXe1pxf9CHryZTes9L1MD5i2+0RLXprfw@mail.gmail.com>
 <CAK8P3a3w4euZfDQPt7wqWg9w4uf7SM4NLeA2CyOMmgNGPAdQaQ@mail.gmail.com>
 <CAK8P3a2fCyYgoexi6NiAY2cch5C-7EEkNGy6PJGxjJ-2yMndLA@mail.gmail.com>
 <CAK8P3a2WM_iT+zPZjDeoih-qZwSJbjZfVMvqpG3Sa1aDqgHwPA@mail.gmail.com>
X-PR-Tracked-List-Id: <soc.lore.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a2WM_iT+zPZjDeoih-qZwSJbjZfVMvqpG3Sa1aDqgHwPA@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-dt-5.8
X-PR-Tracked-Commit-Id: 9ad249abe7b8f6f0d2d876bde860b1c511d71d7b
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 9d71d3cd9ef040c284506648285915e9ba4d08c4
Message-Id: <159132781673.11934.12721502041839399909.pr-tracker-bot@kernel.org>
Date: Fri, 05 Jun 2020 03:30:16 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_203017_097501_EBACC7E4 
X-CRM114-Status: UNSURE (   2.61  )
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

The pull request you sent on Thu, 4 Jun 2020 22:56:12 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-dt-5.8

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/9d71d3cd9ef040c284506648285915e9ba4d08c4

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
