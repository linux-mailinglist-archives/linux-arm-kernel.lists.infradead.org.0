Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCBD6ED02
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 02:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CoAE27YK7/lGwwvpfEOyXUAm3oMNYzPoAauBZ4kHvmw=; b=d1o2w+WE5g4Grg
	+SJjo364qQ1v2QpBi9ovU+DkYIytPPBbd5KBgbgYL7UwmZVI+M7kUyc7kWUY35KTyVGXkJhdbAw1V
	jNDkUZiBTtrwEjGdyYtG0k2k9deShQhILs+R3PWdQOmo80lfeDyHbD9iTW7dAF1MLYKPXzMfHxe5Z
	tuI4iSo72fjN1LD9uAmpPSWkqpvLdZET8ZInhn0AVIMOGxxXh1G7/rDnk1tYIxrSHNYrALWwHmMKM
	ZlVAbW21x6jaVy3ZE2lj8MzzihGMxlQ1p+zRtJdHmQzlZQrGkwHcjwdkMoSk8IBnfJwAmxZk1ZuyD
	qHZkyVNQgE9eZjf26fxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hodHS-00083V-Gi; Sat, 20 Jul 2019 00:31:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hodGb-0007Yz-9N
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 00:30:26 +0000
Subject: Re: [GIT PULL 4/4] ARM: SoC defconfig updates
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563582625;
 bh=Sxa0VBHpmdtm9OoRCaS0A8HU/bL24Gv5LnqL+DI7Vso=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=ym5TXIxsRr9cO69z6BPCDWduvFXaN6I+d6ROZXmlbzG6PL9/aq/l1oTAnHtyyvkE9
 pQ8OZkyTUbLjgoOw5xKv4PHXSgL+rvvAVjq8DHJ38x+FgWjCcYaYaVPifu28L3HqB3
 BHqRhw4+OmwlJhaXT0L2rrAzFmUdVILJGCs8bU68=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190719235434.13214-5-olof@lixom.net>
References: <20190719235434.13214-1-olof@lixom.net>
 <20190719235434.13214-5-olof@lixom.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190719235434.13214-5-olof@lixom.net>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
 tags/armsoc-defconfig
X-PR-Tracked-Commit-Id: a151f27537250cf869c8d1c2549ccbb77dcbec2f
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: abdfd52a295fb5731ab07b5c9013e2e39f4d1cbe
Message-Id: <156358262502.21220.16666747632654064413.pr-tracker-bot@kernel.org>
Date: Sat, 20 Jul 2019 00:30:25 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_173025_357635_E15DD184 
X-CRM114-Status: UNSURE (   1.52  )
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

The pull request you sent on Fri, 19 Jul 2019 16:54:34 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-defconfig

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/abdfd52a295fb5731ab07b5c9013e2e39f4d1cbe

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
