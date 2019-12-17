Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CCE121FFF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:55:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xuQSre9TTGR9vrBzY8o6fr2gESAgkuAZdi/FRqhdSBE=; b=BPXhBtmRz1ckFf
	XlqGrfWbA/0IhP6CjL5wk1wBlbAIJrrEJVNcS6mOIgCr+qEj6ORlr+4fziq8dOOwB6eggimEeU5Fw
	w9qrVRsM6MtOsjxTNdqOvZmIHrcGwYapCIDg6ESUlFlrY1o9ZiqZvB+jLWDVqbRqgGjA3MMYoj2w0
	SGOsVUhzpeNbt8hkNlS4z9+RHLHEQUH/PDrQbRVPI0XytSFJ2QVVoyNoFZes4FtrdsoDVcauRqbwS
	10y/Uz8g9HF0Hja0d5A4twzF1xze5hTEkK+NPa6xH19BNHVbehQxkNKk8/2OPlT4t4KNIFx8Vw/Q7
	hlkNPaBNCI5ZUuJRlVVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih18z-0001VV-87; Tue, 17 Dec 2019 00:55:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih18p-0001Un-SE
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:55:13 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576544110;
 bh=m6hVQe8WURdeNVv8WpGJ6FgnxA+hW/x7FkFdnmQoEy8=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=AT51RbhfddUZAFLHZne1purg3rhYWDIHGFKZN2IDgMc7tRto6UOhmloKyQh52P4PB
 Z0mX7UzYKxuULmttiOIdne2rluum2V2lbYSBQwvIdiAG/r8EvX63zEDK3mNN+GoJfo
 bBp0itxfZqhP5glGvWauPa3jBgtgnduhXlyGTJXA=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191216215320.li7x45fhkrkolvbk@localhost>
References: <20191216215320.li7x45fhkrkolvbk@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191216215320.li7x45fhkrkolvbk@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: e3992af1256a4fe0b83ac790d4caa58ff731609d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: ea200dec51285c82655e50ddb774fdb6b97e784d
Message-Id: <157654411012.23539.5840718912186133096.pr-tracker-bot@kernel.org>
Date: Tue, 17 Dec 2019 00:55:10 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_165511_933726_EBC70B42 
X-CRM114-Status: UNSURE (   1.73  )
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 olof@lixom.net, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Mon, 16 Dec 2019 13:53:20 -0800:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/ea200dec51285c82655e50ddb774fdb6b97e784d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
