Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C339014980A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 23:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOc357Afo6wH16/iH9YKf0y6lw3X7E3COVVR3HXl9Fw=; b=bSdBfspJoBI25e
	RUEVF3/V60jRtpzbjMCRvD9lu0UMqu6UE3tQrjNCOEe/TGhngzpIXdEvmP2GVbC3+uAqrR2SZfPxh
	e5ge4DEqaZ+sSa+LKjQAxQ4IR9Xi+nm6ytTnt7ydEWGwi0rvBWzUlLT1y0XRCEPtRub1pxkSWTknQ
	RBImZ5j/aRB70Vs01EDVO5d2vMXKgLD4rWVJ5ece8uoyWn+KkYMy3gzrwrRq6I1zO7RclBaBdvkaW
	I0zrniRHVxarJSeffO5GHME9cMx9rJFIwsxMWrm1BKTH+FitiVCjOJsJrK8q0CpxxkraSCVO7DTys
	rXTzpeGfpOCYKLirNTNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivTi3-0004RW-H9; Sat, 25 Jan 2020 22:15:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivTho-0004Of-Um
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 22:15:06 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579990503;
 bh=GhNPpuFFe63ryKwLhxOo1y8u9Yc2z2Zv/GinOZSQoC4=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=mDsCgbC/L2/8TlDAQiaUFlHcBSDsun5vjO44ImovLS4nRPVmQbPdqZy7VrQmZWqW7
 Ugur0hyhS5r4wAB5nRB+AHq48+3Bv58GIu8DHJFJQ1dpFlsAg/aK3FAzlXf7WDyB+q
 z2IKx7KtICEUylRvfVIaiTfJnU5Fkc2l616fcxKw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200125213702.tkh5afxz6ao5rsw2@localhost>
References: <20200125213702.tkh5afxz6ao5rsw2@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200125213702.tkh5afxz6ao5rsw2@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: 6716cb162deb9d474095a57d7a515edc13926ea7
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: f041eadad7504b1364274494548b9716b2ed59ac
Message-Id: <157999050390.5823.11026600653641064716.pr-tracker-bot@kernel.org>
Date: Sat, 25 Jan 2020 22:15:03 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_141505_041239_AED79D0F 
X-CRM114-Status: UNSURE (   1.75  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 olof@lixom.net, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 25 Jan 2020 13:37:02 -0800:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/f041eadad7504b1364274494548b9716b2ed59ac

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
