Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 680EA15775
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 03:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDKjGahrTeEmDEwuCgikj3p+J/+t+etf+nKjxq/MiAs=; b=SyaECrWdSvTB65
	uifMRQQ9um1znuYMtPg3Rqa+LnMSjdXemc35rSmUPTLn4Ju8HN9VfipONuwcLnMUhuuRvabn7KV/f
	mLT5d97sXoACEg7oRe+ZM8oovpnuZZSfR/eOBNvKMfOLNjGOLTJjFe6dB+kwnO9Qcz2rM+Kehe0pP
	D5c8xTkn0rPoHd4rExsFwkMzvYv5qoCj4MZuzzJgtrFZo2MoAIp4FZ7v9919ryvh3cAERVYnB3TQl
	YQsPh29VYXeXuF0+asEmiM5OvaGY3Cdi+fq/oBx13F9RwK9OQMZQqIZOUol2F2IKHvoF/SkTCBiDE
	8Nu0m4PyZZNgJkF/PNFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNpK5-000102-LL; Tue, 07 May 2019 01:55:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNpJy-0000Vg-HF
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 01:55:07 +0000
Subject: Re: [GIT PULL] arm64: updates for 5.2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557194105;
 bh=ZNBcidNlVwZptX9Lyt06Klcg26mCxSciTp3dGjgqvf8=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=XyZS1z83Ypd5Enf71TPKNHy03S1HfzlJwAQlCSNQx/11ZvMTc0Prb+BMwugVzsfX2
 KjeYsJpbaA3mKd7sHd1vfmfS0sTsxOu/i5jtcxWfwJqKEt3bfhqnJCcihwYVpSLIXd
 L/KIakggHc/e+WsAtL9n52OFZOb9sw3jDx3k9VYI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190506181122.GC2875@brain-police>
References: <20190506181122.GC2875@brain-police>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190506181122.GC2875@brain-police>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-upstream
X-PR-Tracked-Commit-Id: b33f908811b7627015238e0dee9baf2b4c9d720d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: c620f7bd0ba5c882b3e7fc199a8d5c2f6c2f5263
Message-Id: <155719410565.3542.4447338603353960187.pr-tracker-bot@kernel.org>
Date: Tue, 07 May 2019 01:55:05 +0000
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_185506_594014_ED598D5A 
X-CRM114-Status: UNSURE (   1.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: marc.zyngier@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 jpoimboe@redhat.com, tglx@linutronix.de, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Mon, 6 May 2019 19:11:22 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-upstream

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/c620f7bd0ba5c882b3e7fc199a8d5c2f6c2f5263

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
