Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B5F1097B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 03:15:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJi0yZoYxxEKd1uFYH2Ys3kcShJ024roQW7ydJ2FQDw=; b=JDbVTYdn3tErxW
	xMpLvhzBcTYH+nAzgOyRiqpZGIM/KxlCqZaxCIE19UrBAiTMUDT57/ZIqMWm4C5T6WXc5GczZIKlY
	FfLrdrpnH3XimDzq1SBLmRny4+rRgmKcI/NNHGoqopDyxznEY7IZM5dZS0KycItN3ewE9ZsVDdQGD
	YMlKeqK7Befv+staAllL1lcZx3/eM+r7hADau8QHGVKrNDPN2fZo/K06ZeMWs57mtiWYobwKB0nmZ
	hSzE1SC/9CdbVCFu6Tm8bSriSGt6YVN1/2y+WMH4Ewt0PVdRFXcvRfZVjGl5V7KDEGfE68a8jJVrU
	I8jLPxPuptLTe1K/hdQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZQNm-0002vp-1B; Tue, 26 Nov 2019 02:15:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZQNe-0002Gv-0v
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 02:15:07 +0000
Subject: Re: [GIT PULL] arm64 updates for 5.5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574734504;
 bh=xqVOCJ/WVWb4zVZQzDnH1QPsDpkxwaF73ez1zhIf1Zs=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=fHzyAb/7XhXExmt+wHFtSqegCg6K5h4maEIEsGWvshORSwn+yrpLpdk3heS2VjIdt
 9nQNeG/TrGjNMWg+sTJW3rOpWefw2K8utyixN7aeXgQHvQaQAlXW7mgIxrAdb83h46
 PUkzoWnlybC6/myuve9nNYAN1IwGikvwn9Mrp0io=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191122184806.GA3422@arrakis.emea.arm.com>
References: <20191122184806.GA3422@arrakis.emea.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191122184806.GA3422@arrakis.emea.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-upstream
X-PR-Tracked-Commit-Id: d8e85e144bbe12e8d82c6b05d690a34da62cc991
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4ba380f61624113395bebdc2f9f6da990a0738f9
Message-Id: <157473450478.11733.10274137800769893426.pr-tracker-bot@kernel.org>
Date: Tue, 26 Nov 2019 02:15:04 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_181506_126489_BBAA1466 
X-CRM114-Status: UNSURE (   2.43  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 "Kirill A. Shutemov" <kirill@shutemov.name>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 22 Nov 2019 18:48:08 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-upstream

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4ba380f61624113395bebdc2f9f6da990a0738f9

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
