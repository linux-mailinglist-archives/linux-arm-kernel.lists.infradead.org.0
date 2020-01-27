Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F73F14A912
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 18:35:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uefjTYUCphmTeAHkhTkvXJeC/p6yngM2HCmZDUtQhfM=; b=hg7qNpsaoavULy
	X6/990UwIG1+MbPJP75Q/Ll8RZcvtT3FFUqsiUFgOyIm3nftRv1toKk3gtRfU/V8kAaF/UWNwHmVA
	3rtUG0v9x5KM3W4M7igklcAhkD9Ot0s+3IJDZrVVQ2lXbBAoS0Jpr0Jj5D0Ni0J9nhE4CU77PICtS
	2HgKPM8IobuA+6wqLm5r7Qkep8VoXv4fRFYvC1zZQrG0BOmvaS5wIzIW6i2MgUvtwsgvnhACU9Nx8
	Z4SB1Exd05JZGGhgTBTDJ8pmZzznSB5GThUKLOe+72DB8IvZFOP2dbIbTbn3sEsQJMyU6nWSHWSXp
	LT8Sjvlz2ldyQ6wL9ttQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw8I9-0000rg-GE; Mon, 27 Jan 2020 17:35:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw8Hx-0000IM-2Y
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 17:35:06 +0000
Subject: Re: [GIT PULL] arm64 updates for 5.6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580146504;
 bh=cjfur9AiQSYJG7/kuFMrRsyfZ/9CjVj9F15dx1YSkSw=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=ubphHoS/Ib53yM7z/q02rH95apGNimiTuD3eJy+dNdFeKeCuuceGu2eH1wtqPpcZF
 oYzA+G4dTbDXQuW7gGpWwixgUdbYE1nevq9nVhTK2Iy4Id5Dt43RhTIc3cmDVWO7/s
 bUxKkdq1R4XUBAFPTYKxNcNuJW0P5qrwMNtL9E40=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200123165828.GB20126@willie-the-truck>
References: <20200123165828.GB20126@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200123165828.GB20126@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-upstream
X-PR-Tracked-Commit-Id: e533dbe9dcb199bb637a2c465f3a6e70564994fe
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 0238d3c75303d63839ca20e71e4993fdab3fec7b
Message-Id: <158014650400.9177.7880650520096434822.pr-tracker-bot@kernel.org>
Date: Mon, 27 Jan 2020 17:35:04 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_093505_162644_4FB8B083 
X-CRM114-Status: UNSURE (   1.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, kernel-team@android.com,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 23 Jan 2020 16:58:28 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-upstream

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/0238d3c75303d63839ca20e71e4993fdab3fec7b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
