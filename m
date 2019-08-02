Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2294E7FE16
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 18:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBmT7jExiY0ddbJ2PDIq77QsTOkSPKS/bP8Fvqu7k0I=; b=MCAUtKzx8FiXCz
	B57fAWSBpXoleq52ZQD/3CiafS6XBV5+b2QcT4aZBB0ypscoYCFxgH/ae+pcjNTAayE/L3Q3/ZXv2
	9+pfX5tPfeSAxe5pl6ES0jIJA05IATsWN9u7SXA2aYiz7y0CpVuCRfLEHuRFRcTIv5Ky7E3elVF+V
	W2Iolud71QQ+Z+myK55O1nBVmqFiUYm7XLGYgyMWEIlpjvT09PTpCX0ddC1ZDKQ4SSDdcieBEUPzS
	Rf8iPstLbsqxtPTx/FuqsRLesyD7tS6q5GflHuHvnMNdLI7VQxick99vG9hw9023WdvIMrEVZvzAv
	j12QAlVTiARDOHu40wXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hta3U-0005rQ-Lp; Fri, 02 Aug 2019 16:05:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hta3L-0005mK-PQ
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 16:05:13 +0000
Subject: Re: [GIT PULL] arm highmem block I/O regression fix for 5.3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564761911;
 bh=igOIKq+ei4WvgHi1Gds5jsfkB5shN0k2mShOFzB380g=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=jRVohKBXeeWNbS0W3As0dvqjmdj0qIYL5CFkx8sJEGkCu1COe4jQWrJhZz3s60XXC
 e03tJGP79djfnsLoXSieyAftA7sEJE6URVamcP4bTmYJ5NakXLH20fGQTl0ZsXFjso
 I9tlAWUzZJ9Mi8SYIMHRbAP8G1gxAXwJeQcn22yA=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190801164702.GA26365@infradead.org>
References: <20190801164702.GA26365@infradead.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190801164702.GA26365@infradead.org>
X-PR-Tracked-Remote: git://git.infradead.org/users/hch/dma-mapping.git
 tags/arm-swiotlb-5.3
X-PR-Tracked-Commit-Id: ad3c7b18c5b362be5dbd0f2c0bcf1fd5fd659315
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 234172f6bbf8e26fa8407c4bbbf2a36da30d7913
Message-Id: <156476191100.27663.8840208654309225219.pr-tracker-bot@kernel.org>
Date: Fri, 02 Aug 2019 16:05:11 +0000
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_090511_877430_ACA03F21 
X-CRM114-Status: UNSURE (   3.05  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Roger Quadros <rogerq@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 1 Aug 2019 19:47:02 +0300:

> git://git.infradead.org/users/hch/dma-mapping.git tags/arm-swiotlb-5.3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/234172f6bbf8e26fa8407c4bbbf2a36da30d7913

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
