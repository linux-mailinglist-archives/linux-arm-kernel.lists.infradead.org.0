Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 672CF115950
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:25:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npIet+/d0oSp2rCpjnXLoktoupbjcOvg0xbizUObUVg=; b=BBnaiCfx1S2/Uy
	J6CRNjY7slKU4LRfQWL/QJVyZDrV4/5axCrjzrx1KMuubqMjELAnn3VOCThJ8fDMkgNEXzxNnYOT7
	3Ug3kX06elXTWW4otl2ZJXskmX9wabudFFhTkmYFDzr+LiBWYKtdI782RIf3kl6yuaOP6F3lf5mV0
	SMXrxj53j01m3QIVf+KQ5lBEbBdZbgBB1Mg3DZ1/bP9xgri8Y1l41GZzr/J+yTR7CzW/Xa+QGwO6y
	5KrqwLAXgqIEU2084dLzCizYfhYbyIn1IIz9tEQVOyzdcTexzSocqqQr8cg20CUa/geUDCf2H+HA1
	yuDCfp/T/7F5jmqaXiGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idM2X-0006WL-T0; Fri, 06 Dec 2019 22:25:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idM2P-0006VU-Md
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:25:27 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575671124;
 bh=eRxapAbelD6uKe9e77ymR6p/MCG0vsyIirL7CXLY+NA=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=HteRva5oDvFc2otlfSu/xLl0cragRHX/sMP59CoSe2r+qe2LrL+wmrjQHIzX220na
 /Lsetmf9/XN5jzsa4MHw3udpnsHY01YoHm/zRA9pBYynf+ntoELqAnQ15L33vDn+5D
 Wfn9AC8lmXjxgsq6G3YSvVFXjo/fRnMeBNmxVc/I=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191206205358.aifwgtflryjf6iao@localhost>
References: <20191206205358.aifwgtflryjf6iao@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191206205358.aifwgtflryjf6iao@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: 30f55eae47e4ad1b64d692865e6a4277447a33df
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 347f56fb389012e8ba7b391d35d109eb16773e3b
Message-Id: <157567112489.16568.3382904736188437778.pr-tracker-bot@kernel.org>
Date: Fri, 06 Dec 2019 22:25:24 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_142525_760487_5A8C7A0F 
X-CRM114-Status: UNSURE (   1.73  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 olof@lixom.net, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 6 Dec 2019 12:53:58 -0800:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/347f56fb389012e8ba7b391d35d109eb16773e3b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
