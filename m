Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31231629A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 21:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGqUu8sKM1LgsdlvJDDSb9dYyoUVzpx4GBGbZwYYRcY=; b=nMUG50p5vC6mkc
	Io4+CQ/Xx8pX7t+f/hLxEiYCG0itnzEXqLNwXQyVb/a4r7sb5+IxNaJJC73KMPsT3g9fIEGDVNoaf
	ld3zm+yKkbU8/q/RPAPnupg1kCRnKN7d0+DhvrMqeVJL8wXhD+X3aqZE/wfkPfB95UFl28GWUWDUk
	3kgKPPyrMqIVwYbqHbkJRK3HwiOHlwjrSJ/JSqQnewERlwQvj4mZvdo0i3zDtgSOUxfjJr4dEq/oo
	I6zPq5NMg2eI9SoHqbn43yAoc/ssHr/bxETWPIsVOIOBP/zkB847Rl6OVvmEAGWkMfm1duLE15jc4
	jAhEeVilCB9/x4emMbSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkZL9-0007uP-9Z; Mon, 08 Jul 2019 19:30:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkZKw-0007FD-Oo
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 19:30:08 +0000
Subject: Re: [GIT PULL] arm64 updates for 5.3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562614204;
 bh=8sbn63pqkRiDKrKnxaa6n9trIH9g8Gb6r+wHxF2/KDw=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=UxYftCNCilU9sK20yDlutMZUYtlgOZXZEdhA5+Xj24S/9IP9AUFH8XvFNgRFVEx7C
 te64iJpoXxsuL9Cde3g3UdGyQGkW+I1Txs2HKZox9B2+rZP6z7DENm+fGS0R5qNVfL
 UMLzFXH+kbgwMg2rjqfiw1uQOudT+NNs/6niorG4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190704155427.GA48571@arrakis.emea.arm.com>
References: <20190704155427.GA48571@arrakis.emea.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190704155427.GA48571@arrakis.emea.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-upstream
X-PR-Tracked-Commit-Id: 0c61efd322b75ed3143e3d130ebecbebf561adf5
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: dfd437a257924484b144ee750e60affc95562c6d
Message-Id: <156261420489.31351.3939506764284702102.pr-tracker-bot@kernel.org>
Date: Mon, 08 Jul 2019 19:30:04 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_123006_840473_F60C952D 
X-CRM114-Status: UNSURE (   2.07  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: will@kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 4 Jul 2019 16:54:29 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-upstream

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/dfd437a257924484b144ee750e60affc95562c6d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
