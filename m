Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034DDB8361
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 23:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wq/mYyeiPodzcclk7lnoHj3VhMmBfHYtJ2xU49nQea4=; b=m7rRo6qu8qsVcw
	hVgcem+Cqxs9SL1PGAA3ubfLcoEEkcWh+pUcnok0XaPHbIDhXoGxycXWWmBKFU3Twf2aj8vVpGGvx
	rB0lPvOZ5MAkt/J1bcPPWyiKfx6V76jeZ0txflTEaMxJd0fqna/NL5tMaA39RwG2Eq1mtR4/NPA5x
	9I/lBB1FA27vYRT5BWuRj31RSd90H2DIxYAP826M1Qw0hKH/Ho3y6bUg48toXTgFsuxcal19Txoqy
	4KzheHiCeyh/B+vTUjcWEoY0saZFO7mjrtH3rV5qOYLe3s04Cee5L1j20g3N6s/cA8wAr+xeTJdMl
	poYKhJjFeke/sPzmuSTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB40j-0001cG-QD; Thu, 19 Sep 2019 21:30:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB40V-0001bU-3f
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 21:30:32 +0000
Subject: Re: [GIT PULL] Mailbox changes for v5.4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568928630;
 bh=7QLoY0TmVf5TxqnRKSt0gr657YgnCczDsDlWsNpHq6I=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=NafkI1t4rxJ/tuDwle5AQacC81y3YCyQPl7bqmyxlYaylFByX0BznKgDRb4SGgHNx
 KaIfuccbrVEWtdQST55pFuyKVttSuVynVPa2AksOSCoZq/wRI8WLSh04B3AfFuvDXD
 mIjQYi7mzrDdF5wKIadkCdG3chTcbVGvvk4EP4/I=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CABb+yY2AFK4G8i765--h0D7h1xcsrhSP2fKzWmcza9OcrdT22g@mail.gmail.com>
References: <CABb+yY2AFK4G8i765--h0D7h1xcsrhSP2fKzWmcza9OcrdT22g@mail.gmail.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <CABb+yY2AFK4G8i765--h0D7h1xcsrhSP2fKzWmcza9OcrdT22g@mail.gmail.com>
X-PR-Tracked-Remote: git://git.linaro.org/landing-teams/working/fujitsu/integration.git
 tags/mailbox-v5.4
X-PR-Tracked-Commit-Id: 556a0964e28c4441dcdd50fb07596fd042246bd5
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b682242f6012dddf81ef94b7ce5d2ec5ac8f8047
Message-Id: <156892863073.30913.11510470179158516843.pr-tracker-bot@kernel.org>
Date: Thu, 19 Sep 2019 21:30:30 +0000
To: Jassi Brar <jassisinghbrar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_143031_174548_5156F3F1 
X-CRM114-Status: UNSURE (   2.50  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Wed, 18 Sep 2019 11:00:28 -0500:

> git://git.linaro.org/landing-teams/working/fujitsu/integration.git tags/mailbox-v5.4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b682242f6012dddf81ef94b7ce5d2ec5ac8f8047

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
