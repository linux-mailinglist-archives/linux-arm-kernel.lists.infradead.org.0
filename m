Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 979D3CCD8A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 02:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLEOSb5MuYnnvqybUl8CqGDracSXzlB5yMwAmlErk/0=; b=MWkxFw4xGk3l9P
	BxqrK0l8kSsrVa9Ah4rV2aCX0TadmUs0HHzjk8p+Kxcyhs8llMCk1+IvYPKqSXIBXs4jTqfuQ6dYL
	dsE1Uhj4z5DfTN3UFXNiyLorBO7kwLDrAujR++oaU+BUFJH1wPea+bQn0NMRjHSw/sF6q12pguxFd
	MhYFfMvK6zoMFfdNs6ZWH7tdXyI8JQYNLaT7ACZbFPXyTPC0WebSVo6NOj2W9Ij1/KNV0hq+0pAym
	J+UzodsS5BILB4zf20XsedOzhowXjzmbRrvleDlrP+Rsn6yRhUG48uCgA3BOTuLQCi7rmjt3GwsfM
	X2EBmim5rS5FbgUQIdmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGuaz-0002nw-M0; Sun, 06 Oct 2019 00:40:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGuaq-0002nb-6K
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 00:40:13 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570322411;
 bh=NV2oGcs+ZsnXtOJyl6kBJvWNPIOMZjeh4TeEMe2g9Jg=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=PC+LCvXAXCErjwVJFHd+gx+WOoQdgkP3EHLhdqBzem1KkwcVtbFOPjHcolST+jcJE
 hDg4vcoHYVeKgVwJm5x/CuuH2e6E64FHlYZGJF4CtpIMN2exGsxhcg3dT+cpkuFfp5
 DWyAjkp7RV2df23L5V3NLzwkyS1v1HhqijuIf9e8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191005224104.qptaeg72tt2gzdyl@localhost>
References: <20191005224104.qptaeg72tt2gzdyl@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191005224104.qptaeg72tt2gzdyl@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: 60c1b3e25728e0485f08e72e61c3cad5331925a3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 43b815c6a8e7dbccb5b8bd9c4b099c24bc22d135
Message-Id: <157032241147.18164.1985437758135528075.pr-tracker-bot@kernel.org>
Date: Sun, 06 Oct 2019 00:40:11 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_174012_259219_BCC814B7 
X-CRM114-Status: UNSURE (   1.94  )
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 olof@lixom.net, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 5 Oct 2019 15:41:04 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/43b815c6a8e7dbccb5b8bd9c4b099c24bc22d135

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
