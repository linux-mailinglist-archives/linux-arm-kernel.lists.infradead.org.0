Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FEA199EC6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 21:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bJdimf8ta5BhXCk4i+Vs5gB0IuYN9C9YIZD5Sq7EMo=; b=V7UsjGFDs4CZ4Y
	lNqarusnYlBLtkw247tTHI+WRuW11/4GMXa/8JCDoXwNm85TneClPP3vHMNJRdzrUtLVb8LyHeaY4
	3RFnrFxRy+6POZiWuwVNDVCPmvzxPPjj3qeOGhW1Vi5dDVHUp88a+aOUQNNygs7YbO6dnmoZDh1yF
	hRssoYAipOgFXdXzlv9SBOOyKOZ1CrxOsRey16fd1A51d8KqGNM+rQzFJ3Nue4BhDQ0ru7DvMnj5r
	h+ldsp8jt9rPD46olM9goBblmOYFgvquYA3bE19WfevYnfuSRrtnhOZFjweU13IJt9yvkDaN+2WPn
	WZLG81NP4zM7PT7iIiMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJMMC-0007zv-9G; Tue, 31 Mar 2020 19:15:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJMM3-0007yn-5Y
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 19:15:20 +0000
Subject: Re: [GIT PULL] arm64 updates for 5.7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585682118;
 bh=AAzPBPD0BcCQqi3lKKPQf6FDiD9SFkUUDJr4PJ0/p4M=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=WPZ+n40hcXTT6HcL6bN45SszxvqmHSOE141h+YrTTYACxrMn6ngwDmnspCK2kg5hv
 LwqAjYPrGIfsYoRwUmPpuEHmOJGJHfwuAHQ/y9Y1WSS7zws/ekASn0LSuKjJvw5sld
 aOJpS7Ku/PSuff70g9DfhUwXd8eO/vXWI/9Gr6tc=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200331151131.GA17516@mbp>
References: <20200331151131.GA17516@mbp>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200331151131.GA17516@mbp>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-upstream
X-PR-Tracked-Commit-Id: b2a84de2a2deb76a6a51609845341f508c518c03
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3cd86a58f7734bf9cef38f6f899608ebcaa3da13
Message-Id: <158568211851.28667.8169032528868959434.pr-tracker-bot@kernel.org>
Date: Tue, 31 Mar 2020 19:15:18 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_121519_229407_059E3F41 
X-CRM114-Status: UNSURE (   2.02  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Will Deacon <will@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Tue, 31 Mar 2020 16:11:34 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-upstream

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3cd86a58f7734bf9cef38f6f899608ebcaa3da13

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
