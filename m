Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2C16ECFC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 02:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWhELZeMtXHJnNKxslrjWEyfggGjHs+4cYXyAyCcCSg=; b=R/V5pdvERH9D1h
	s/AZfTQkDLQMBQLSkQOukJVxkqGfP6HKsAcg7nUAsC6PmXTIB4RBAcvom9tXIDnAm7va9ndxVMHbH
	xXKqcUhqgwNO3XayiDWEVvez/rIclV+53tYLukeO5qcIIeIiwfNOrEeoHtfeo75Vg/nIWLP9OvPIM
	AvFW2BwdNFVS1VcrptpCQF3zkEwvY/c8knVrDP+5RY9C80Or8jDdcG3bBqdgMZPdf37xkHQjamnHq
	oFYYOfrAYTNMOj9AthZzS2wyPkkDO05RQc2FlUUCCRWhLlQyl0RNwru8tngnBImMHCJr0CItS2WfI
	8PJ5G5IwVQpf7aaNiDAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hodGo-0007a6-FG; Sat, 20 Jul 2019 00:30:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hodGZ-0007YL-Tg
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 00:30:25 +0000
Subject: Re: [GIT PULL 1/4] ARM: SoC platform updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563582622;
 bh=1c7B0+Qqk9SCZ5GilmZEzCp+lhLyyQB3B2Nt5Jvl2iI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=VSu72xMQTLNZbyUqmbJOWtOKjn9Qk8vEhNjLPX2pMUGr691esLd0RcSja6gIjF1Gz
 hHhmkhMzuVDEf8cYO5Th19CzOCfBvLPrKAGSItqkbEev8hQ+HNTe23anE/PU6Wb+U0
 JEH+U/k1oH12HhmGs79HWBXKMsHrjoCdfGCX04/U=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190719235434.13214-2-olof@lixom.net>
References: <20190719235434.13214-1-olof@lixom.net>
 <20190719235434.13214-2-olof@lixom.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190719235434.13214-2-olof@lixom.net>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-soc
X-PR-Tracked-Commit-Id: 7e8a0f10899075ac2665c78c4e49dbaf32bf3346
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 24e44913aa746098349370a0f279733c0cadcba7
Message-Id: <156358262253.21220.10268942999565602929.pr-tracker-bot@kernel.org>
Date: Sat, 20 Jul 2019 00:30:22 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_173023_981476_6F372F67 
X-CRM114-Status: UNSURE (   1.63  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 Olof Johansson <olof@lixom.net>, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 19 Jul 2019 16:54:31 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-soc

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/24e44913aa746098349370a0f279733c0cadcba7

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
