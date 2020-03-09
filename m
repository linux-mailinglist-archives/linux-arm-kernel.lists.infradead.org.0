Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EA717D795
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 01:50:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6v17YhWLuIcWPYoptaRqQSmJFiZw/DHPOOOvfbzSlrk=; b=GbPFMOJhBBjNtu
	FaPPtvVBnvF+WeOfhswOYu0C3GeGNPEWSIWGi3L3GNautRNLjUbWu4DhtSg+M8K0k73nolHYIcOmA
	BYX3wQPSeU/EI+m1aN/t/6dPWa38dGx2BOIybmytOsnV60eatbzNsJ3YiGbmjRVY5kabI4ZMH4gn1
	YWHcwIr44VuwpR3W7HH3CRapU99+g/oz7eamLJY11zL3ZZJPHM/nKE14SYVRUdiBHDK+79OsNeVZ1
	GwaJsp8EG5lBfGwO+PMvRkxNozFnmoAkjg8uy8YnS1pmMrGnxCzXlwX96TDkltJo+wH5BYcsBVBzv
	gxRlQR0rE5q4UtqV1+pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB6cf-0007lz-8O; Mon, 09 Mar 2020 00:50:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB6cR-0007lE-MS
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 00:50:09 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583715006;
 bh=Kny6WzwVdUs/pHJuxVBBymVBJjZM96oRFcILUZXXYYQ=;
 h=From:In-Reply-To:References:Date:To:List-Id:Cc:From;
 b=j6TSuZBZ5EFIJE6g0wgGKgU9BDUG5ReIU7Ev5ZzqvnzZJCi2A1GatLnbHQv2hhPzp
 Ua5XASDGqFMWPIwexnvGoV144EmRauhBYdSMsEgepRq4sfi633EttoyGE4DSwrxH0O
 75dYDHZnoDcgDeqGrv3AteRhooXCa13Td0Brorgw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200308235842.gjmjv5ag4yma4exc@localhost>
References: <20200308235842.gjmjv5ag4yma4exc@localhost>
X-PR-Tracked-List-Id: <soc.lore.kernel.org>
X-PR-Tracked-Message-Id: <20200308235842.gjmjv5ag4yma4exc@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: d4d89e25fc7b4225211c217491e5525b00cf3961
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 62790268e4eda1deaac93264af69ac95b4afdf96
Message-Id: <158371500647.10826.4579308569767038575.pr-tracker-bot@kernel.org>
Date: Mon, 09 Mar 2020 00:50:06 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_175007_787524_208F3399 
X-CRM114-Status: UNSURE (   1.83  )
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

The pull request you sent on Sun, 8 Mar 2020 16:58:42 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/62790268e4eda1deaac93264af69ac95b4afdf96

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
