Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E69A1A25F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 19:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qkpct6m7l0YsFGfp313/GQt+5+gGTyuTc3P98IkuGVA=; b=DQNu4/GMbd6TfR
	P9ggel0Dz8jjhbte5RQJyyoHngHUkY1z9ORaC3AggO97bgeo6obx4dFOpK6S2LwurNOFd9X3XgWa0
	ajhfHPcyyi14USCoJTUmFAWsKIrMZhuUfro9h1/kvXjjvnUPE+gxbxT7pERz0+Rw8tVTCEQ+RfkVl
	RBi83AJQvwXuxlQuTejUY6FdYoxrZeObmNX7/1LIl+Rm5wsSSy7oYbXurs+gSfeJjrHqnm3g8ZUl8
	AAMLBiZkdV1zoiKQRjVUI6LYoeoAQ98izbh3ARpNHkThxnXuBAf04gzXbCOiSgNMp7+P4j3RnPLGx
	oNoynrwW3NeLq5fuUsiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP9QZ-0001j1-Lf; Fri, 10 May 2019 17:35:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP9QS-0001hy-Jv
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 17:35:17 +0000
Subject: Re: [GIT PULL] Mailbox changes for v5.2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557509713;
 bh=3iDpQ0zrwJ51S/xQVUe7au2ThKA46IuvuXI7x+yUDLc=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=F7SDZPz3Ijnn68B//wBIrNQAEroaDl8Xszir5wTJjSkK/5a3gfRxXWyOG7SbyFEkM
 BAJO6SrNQd0yy+RUP9itbJORDizd/uOXkfJIdybSQPFc7Xnqpwvu6Bha/f9AnkQPFR
 F9VceTOcp0ceRuem1U/V+9bNBupMzMVVNjeIIqbI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CABb+yY2cJiXMVaPX+r7TS_mFa=o-dj9HEOjZ2+8GEbs8kUX1Xw@mail.gmail.com>
References: <CABb+yY2cJiXMVaPX+r7TS_mFa=o-dj9HEOjZ2+8GEbs8kUX1Xw@mail.gmail.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <CABb+yY2cJiXMVaPX+r7TS_mFa=o-dj9HEOjZ2+8GEbs8kUX1Xw@mail.gmail.com>
X-PR-Tracked-Remote: git://git.linaro.org/landing-teams/working/fujitsu/integration.git
 tags/mailbox-v5.2
X-PR-Tracked-Commit-Id: 8fbbfd966efa67ef9aec37cb4ff412f9f26e1e84
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 15500c0a506e256976a81c858e33844bb0781e02
Message-Id: <155750971311.27249.14786266789867232105.pr-tracker-bot@kernel.org>
Date: Fri, 10 May 2019 17:35:13 +0000
To: Jassi Brar <jassisinghbrar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_103516_675424_27E93A24 
X-CRM114-Status: UNSURE (   3.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

The pull request you sent on Fri, 10 May 2019 02:30:42 -0500:

> git://git.linaro.org/landing-teams/working/fujitsu/integration.git tags/mailbox-v5.2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/15500c0a506e256976a81c858e33844bb0781e02

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
