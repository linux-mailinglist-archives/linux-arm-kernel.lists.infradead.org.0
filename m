Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45ED615680F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 23:36:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DE2rteA4dvjgdcuURL+kN9VEQhZB5j6yi2lS3HjujIg=; b=Ejj6OjQ5nDCLLq
	7/swnwRNEMa0xFZYCt8qD944LHaHfDnlRV9Plz8nYgl/3UUFGWpwHE2b86ABxHCvUwodC4EKoc6YA
	yy2tkw7c1vU/tERGMkIpYYD0LwWl5YbnNHElhCB90uJVjjF2yTYQguK7QsV3JM/vDK4MOdJl73dcT
	/YPpCQTTB8bO6d/CzyMzd/oJF/tcJcZCRRZAl8TI+6umZDguJxa2htX3U1WvfmtMgLWnJRBbFsrs6
	Dxx+TL0UKO/PLh5G30FuNVaBI/PmsFTfSGm5QqwMgLsA4m+IC5yLRxz935uJDyxCVt2GdEwBPfMa3
	HjQLzi1zGNipj6o2S4KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0YiB-0000yQ-QX; Sat, 08 Feb 2020 22:36:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0YhF-000057-VP
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 22:35:31 +0000
Subject: Re: [GIT PULL 5/5] ARM: SoC: late updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581201329;
 bh=y/qqCZ+HKy7RKisAiQiEzsM1iapxTUgHLK7XD+oF1XU=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=xBXpJBZs1D+EzSa36WZyGUqfv8aEm6QcbZM5RgndL33sEi9Ubfghqt65cBsGt9FwS
 opoQU5jjTR8ck43pblO4D1zftrSWnz45kDWFe4M0MG8nVgB2tOtgGh/0+1fbnH+jQd
 evMesRDkd6w5PChvttx0BlrQ30uvPBmfmY285r1E=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200208112018.29819-6-olof@lixom.net>
References: <20200208112018.29819-1-olof@lixom.net>
 <20200208112018.29819-6-olof@lixom.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200208112018.29819-6-olof@lixom.net>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-late
X-PR-Tracked-Commit-Id: a832eb203ecd34e486bdde0042cf166e687eb227
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4ef1a30c6bd2555d4177fc9286df32e9166d58ba
Message-Id: <158120132971.28764.13683295178503395137.pr-tracker-bot@kernel.org>
Date: Sat, 08 Feb 2020 22:35:29 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_143530_029423_41729924 
X-CRM114-Status: UNSURE (   1.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 Olof Johansson <olof@lixom.net>, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat,  8 Feb 2020 03:20:18 -0800:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-late

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4ef1a30c6bd2555d4177fc9286df32e9166d58ba

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
