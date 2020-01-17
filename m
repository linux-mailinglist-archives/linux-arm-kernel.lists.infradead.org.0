Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7ECE140282
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 04:50:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RD81CaZAJKTrzia59SXg6K7xNsv6kmKnGFxnt8zF0E4=; b=Y092iGnovRjL1L
	KlUcWk+CQokFhZO2Ifp5UkUZp+vP4Bc0xiE9engPN7gh8BNl8RMIp5yTnG635DA4NeMXg4HVV8B/O
	owIvydojxhH0tO6d34i8WmYcpqlDbiurzEgOS+s2tbXm7yQL1gIVciQqIu5h9ZXLOyQlIAEms6g95
	z+lS61rHYTxlJ/kyZgXJIJEweASo9PnYwBmrW0q6G5NHBrOHyl8W/X2mJHAwgNhlzxW1cC3QBhYA+
	pHIjW+ZMqOGQ+e0g7FsJ15oUrWCyiNHYFmxL75iwhpw4iT5NpIDs+8KYLRYYSnWH6ZQG9PTCkVB8k
	0zDLNkhwVRqse6ye6+Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isIeF-0002Az-FB; Fri, 17 Jan 2020 03:50:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isIe4-0001Wf-IC
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 03:50:05 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579233003;
 bh=no0a+AT2CvpfOB5DdKXjn3tkmD8/Bmsl9wC8XUkQRqg=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Jcv4bjFWjIOfXoTMza14X6aLq92NnjER+eGnS3Hk42euYXxPU56VwGoB1SA9lDbH7
 255MFrIhJKu76hIQTLTMyh4uKC9O/ij0+u8RFo5K6CkyqR/f7MxmlS3wMzp4cyLjRE
 HqWuWQgSROi3qcB17JqCPmYRU6rIs+sfzaZAwSYw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200117030040.5m3qqibo5kn6x3le@localhost>
References: <20200117030040.5m3qqibo5kn6x3le@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200117030040.5m3qqibo5kn6x3le@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: 70db729fe1b30af89e798d16c1045846753e5448
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 575966e080270b7574175da35f7f7dd5ecd89ff4
Message-Id: <157923300325.26828.10401510949428319820.pr-tracker-bot@kernel.org>
Date: Fri, 17 Jan 2020 03:50:03 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_195004_639324_A7B2C483 
X-CRM114-Status: UNSURE (   1.89  )
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 olof@lixom.net, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 16 Jan 2020 19:00:40 -0800:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/575966e080270b7574175da35f7f7dd5ecd89ff4

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
