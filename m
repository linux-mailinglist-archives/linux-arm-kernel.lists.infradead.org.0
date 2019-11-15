Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A80EFE41B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 18:35:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZctPkhONnNQF1XIGML05Osb2YE7cwYnygf7mIFT8I44=; b=WHcSSOuZltG6K2
	VlXPMkqaecKJtZXkhLGhDhX5i8mZrxjuCoouuoNX1pFeFiHaxw50SybnESmrn/aemIic+/Ed/hgbD
	jgEX6Oy0N3zrM3P1f5ynz2HIyu1W8u4l4Z+yaFAgynCrSJapYDRDGuGWI1+nT5/lz2Y9n7AEi5cHa
	hAcyX13Vq88asp3+j3JMb50Wj1DN5AJwSN5AKLGNBeg+xoMfDkJoXv3hOsPjTK72BDrTa54uBPW/z
	Azvbo6dkqLCd0mMuJ1E6cTSJ8psrwJpXt4+wXeSZFZRqdC6GvI9Lm1IatIi7Qr6On4vAIir1nSbSe
	2QJoaJZ/dzCi9YiqYIaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVfVC-0005N6-IQ; Fri, 15 Nov 2019 17:35:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVfUz-00057m-QY
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 17:35:11 +0000
Subject: Re: [GIT PULL] arm64: Fix for -rc8 / final
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573839308;
 bh=PDKDVr11QGsFBdtYJKssXSW4wAW2ppzsRivSXeLg6zI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=JLWscsKEY3Xde+uvJ15KwuSj/e1+4tOR9HrjMvSSquSmuJ/0STduimX1J/Sw6sao+
 yq+ZBzY9RNjrqVuiPD88k9+SpcZDDTQXtRNt2iVOC2kPL0cG01C63JZRvFwS+2FaGJ
 AvqdWs9DRwWvkoy2WY6uCDvX19EWMWMqRxZbuXz4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191115114622.GA12198@willie-the-truck>
References: <20191115114622.GA12198@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191115114622.GA12198@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 65e1f38d9a2f07d4b81f369864c105880e47bd5a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: eb70e26cd79da8068dc7a9d013cd78fbba483038
Message-Id: <157383930890.31249.554154588351507098.pr-tracker-bot@kernel.org>
Date: Fri, 15 Nov 2019 17:35:08 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_093509_900071_6E7A7B05 
X-CRM114-Status: UNSURE (   2.14  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 15 Nov 2019 11:46:24 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/eb70e26cd79da8068dc7a9d013cd78fbba483038

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
