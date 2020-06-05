Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C291EEFED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 05:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxLIahT1yt3UGf8dz41hy/6KQ3JuPM3H55mUiWR43FI=; b=PFB0LHmA8783qZ
	LxwAznXO74kVC5O4fzuwrBx9Tbt/6f+Y7w0eMFqdentcdwhe7IPSetUHns8Nq0jbx9UNopUulIF8e
	gvTPkX55Olvh0G/KfI6Y1vAWKHs8wZmzYAVih7ehnQNQMG2ncy3zwk0ES7K8qRIe+n3atCiSjTtQN
	D746YoMzDhWjxt5KBcPJfX2hMowIYv59+zzkfoIEYeN2AR2zyFeilQgTsc5TG8MrcFXXDp1bbtGAV
	f6vH2LsXF5NJ3RaDbVo2tOCnUfHpR0fNivHR8LliLJLRnmGnwKDObBOMj3n/3KZ+9fYr+IoaFwEIl
	Dy1b10SaH0iolqsN9Ttg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh344-0004dI-LX; Fri, 05 Jun 2020 03:30:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh33f-0004Fu-7O
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 03:30:17 +0000
Subject: Re: [GIT PULL 2/4]ARM: defconfig updates for v5.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591327814;
 bh=FBsp/rnSifa43pomkmMpZHYDfQIXDv4pafhXck6E+R4=;
 h=From:In-Reply-To:References:Date:To:List-Id:Cc:From;
 b=pDLZjFWhjSTGB4CK1GNo43kwL2Pp4h0IFv5J3KDpkQ3eR5EQP8REXOtN8WrAMzBch
 a0IJKMErWJ/gGQ1B4aRA8vl4SMOesLyp2x8YwjJ+1vE1wBTkMPDPM3hBDMQ3IV3dkV
 uzkGKpUX7ZzmBUuYCm/ITEQu/kcZQ/n2AbRQwx5c=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a3w4euZfDQPt7wqWg9w4uf7SM4NLeA2CyOMmgNGPAdQaQ@mail.gmail.com>
References: <CAK8P3a1dmaiYR5Oxkc0CQcxTm=rAHSx6R+xtf4Wup29JqXNZsA@mail.gmail.com>
 <CAK8P3a00L4n3b=X+PQXe1pxf9CHryZTes9L1MD5i2+0RLXprfw@mail.gmail.com>
 <CAK8P3a3w4euZfDQPt7wqWg9w4uf7SM4NLeA2CyOMmgNGPAdQaQ@mail.gmail.com>
X-PR-Tracked-List-Id: <soc.lore.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a3w4euZfDQPt7wqWg9w4uf7SM4NLeA2CyOMmgNGPAdQaQ@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
 tags/arm-defconfig-5.8
X-PR-Tracked-Commit-Id: f11d7cb47f157b6af61cea8e4c571c8f81d670b4
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 298743c193bb50b5d65b9285eb7206ffb31d412d
Message-Id: <159132781489.11934.9483188031538763494.pr-tracker-bot@kernel.org>
Date: Fri, 05 Jun 2020 03:30:14 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_203015_316649_ABB7C5EC 
X-CRM114-Status: UNSURE (   2.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: SoC Team <soc@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 4 Jun 2020 22:52:48 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-defconfig-5.8

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/298743c193bb50b5d65b9285eb7206ffb31d412d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
