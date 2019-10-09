Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C79CD18FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 21:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a12/AA2LxaWwF/5J8o2sUZ07cN7O9hJeEWcmalfB0mE=; b=NsiD1hCU9IHNdN
	74mojISKVMZUdHCicv4MRPtlUG9/bDkneMWKIZIrQby/pxMUyeAC8Q7QAvAyZOrBBDO6wOgcsMn/b
	FlgejVOx6wyMH4SaIEQsLZlaTVZCluLN3Jb1ot0uxOgvEyeeu/VhM7IblTms16DdvalOTyGjytDRz
	2/Mz8aZKPEBCLn/dl6PPqpSSrc2sHUMA0Kr5Pwz7+RKRcQkIMWVuotrgJDTtnIJkRmB0nHzPxrdpe
	4fJ+4LfxiFWWPGdHXtEQZF2ckW1oa2trNQfGkhic0JRjh9VqaSB3PzxBxwmdNzQN/TMdA754hBW40
	VaiFuUmD9jUUiWdwEv0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIHfC-0007G1-9h; Wed, 09 Oct 2019 19:30:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIHf2-0006sx-8M
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 19:30:13 +0000
Subject: Re: [GIT PULL] arm64: Fixes for -rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570649409;
 bh=3yuozM4FLhSm+i6yEQ1YGbYeMOgWaz07K3LfwiSuah4=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=OCXIDH/uxYHRlXIF5Tfm07UizQk4ej6Ea89+dhYt7o8q+gFRAwKoDEw0janNMOmDw
 zhYnsVxevTQ+9WVUvJtU3Myvv6g0S4b4BmXrmTj5zoUft4aT4PvvSLVjjH4b5yX3UD
 sA4+jHB5qC/PwGOmuZeMSpGcluqHr076+z7eCS4M=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191009133053.p7bxzkub32x3mclb@willie-the-truck>
References: <20191009133053.p7bxzkub32x3mclb@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191009133053.p7bxzkub32x3mclb@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 3e7c93bd04edfb0cae7dad1215544c9350254b8f
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e60329c97b9cc07ce15e3c39fc42e57bf14add92
Message-Id: <157064940962.25372.13156786010603530011.pr-tracker-bot@kernel.org>
Date: Wed, 09 Oct 2019 19:30:09 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_123012_319321_591953AD 
X-CRM114-Status: UNSURE (   1.84  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Wed, 9 Oct 2019 14:30:54 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e60329c97b9cc07ce15e3c39fc42e57bf14add92

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
