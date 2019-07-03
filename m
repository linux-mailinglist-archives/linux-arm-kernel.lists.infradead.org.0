Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4EC5DFA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9uMlbfd6z6Wlhvorg3m8mYgQFm4PhC0hDtqbwuxfQw=; b=MpCBR9cEX/QjLz
	VEqQOOmwN8TjnLkVrmaAP2+oO9iWrDCjuKQH+lVFWYlLCeHtf8/9AxbGq/VaS6u/en+IGVXsVd+aL
	gRzBiOjJFTgiVev+tKxmmd/ODnJoproX6fk+Nexd9XOkxZKpa3S8kT8PGu4aLLEvVw+5+LxZL0Vj1
	l6TLKBKcnfaYjOvJ3aXkgdT5i4+z6IGv79d8mLuGT8bMY9owoTl5sLOQCHGGAFf0y73jkSxUWWaXR
	Zq9wI/mrlJIGfbk7C4OvCnzhdSssKBoJuD3PTceaSQn5c4IDlFRz3XNQ4a7X4m0TSA8peEWFNAX3z
	zpIIiGvQFUxxV2YjIOuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaV3-0006oO-15; Wed, 03 Jul 2019 08:20:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaUm-0006Hq-LC
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 08:20:05 +0000
Subject: Re: [GIT PULL] arm64: fixes for 5.2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562142004;
 bh=MVzVJpInDUh/t/Kb8aZnmgv6ClflOSu5uyQi6/Lcuog=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=u1BW0RZ9SK+zQEhM1AhIMQG7IZzWK5f0r5dowdJ0REZi6qW/pqlUIuTGUefLi4uN7
 cBk9VC4naKZwGqoV1E6m4lvFx45+8/NezHhaayBgjEH9efEzbgariPPDZDon/KcCiw
 v0XM7gx49OW266s8qNaEF0UdjI4RgTeShvdmUTmI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190701130212.ifn7d7p2mqvquq6u@willie-the-truck>
References: <20190701130212.ifn7d7p2mqvquq6u@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190701130212.ifn7d7p2mqvquq6u@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: aa69fb62bea15126e744af2e02acc0d6cf3ed4da
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4b1fe9b58e9d20f23f6b07d1c2e0dbd921da67bf
Message-Id: <156214200394.4530.7499382598792922115.pr-tracker-bot@kernel.org>
Date: Wed, 03 Jul 2019 08:20:03 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_012004_719832_57C0B423 
X-CRM114-Status: UNSURE (   1.71  )
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
Cc: catalin.marinas@arm.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Mon, 1 Jul 2019 14:02:12 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4b1fe9b58e9d20f23f6b07d1c2e0dbd921da67bf

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
