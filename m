Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A1219B885
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 00:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8GmfQC+DWpCA1SAew8e22RulKfTIyncD+NvRpVGBDc=; b=T8UBOUWJ3WRWvm
	bfzJzTFo1D1GLy05aQ6xEUFl2AMLNuWWtTBMWW0fO1WNCvU4L4zdwulyPzTW2Yybj53xjl47B4rzZ
	rW/lfMK1TPSEGaoKFwS9otq2vVrwfnoMfbpyOLUlppZqmrB/W+7ICDnZm5u6tOwCMEgdBqa35a59l
	AEDQJLRh6xoyVIeC1RT0EPKfWOSYpJLASlakdsOY9XOwXi7XqMZdA9DCGGgAP7kUS/IJyLHv4IiSm
	j6tMxiI/XOfZq9gbc/Rb8SZ/5o4zBcxJOjXjbkfLoWOKNlfAaKYYTKmeTIvSbxZHZg8aTNdIeZkPf
	giv5A0TZqL8MIAN45H5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJlxP-0001kz-9u; Wed, 01 Apr 2020 22:35:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJlxB-0001f3-9j
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 22:35:22 +0000
Subject: Re: [GIT PULL] Mailbox changes for v5.7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585780517;
 bh=ZlR4YxwcQrxBAKuDQ7x5NVYWynkwjauJ0dG963bqR5E=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=L7zSZwkf+nlc/vKaIXaTgQCys/3DfWO9qK1bMpw2qvBHpKaVpgRR3bpW1d7J/tYX9
 hM2X4do6vPlMm0FAGdsqF2GEMkOHaBq3nvjQje9/PkQ7bZlnMjugtvikdmWuSXwmO/
 UN8Fy4Vn8StYdvx9lIWwnWNSI0k1oxHy8s/eegMI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CABb+yY0-q+5+pqP-rBHCYpw-LmT+h80+OU26XL34fTrXhO+T3Q@mail.gmail.com>
References: <CABb+yY0-q+5+pqP-rBHCYpw-LmT+h80+OU26XL34fTrXhO+T3Q@mail.gmail.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <CABb+yY0-q+5+pqP-rBHCYpw-LmT+h80+OU26XL34fTrXhO+T3Q@mail.gmail.com>
X-PR-Tracked-Remote: git://git.linaro.org/landing-teams/working/fujitsu/integration.git
 tags/mailbox-v5.7
X-PR-Tracked-Commit-Id: 0a67003b1985c79811160af1b01aca07cd5fbc53
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4646de87d32526ee87b46c2e0130413367fb5362
Message-Id: <158578051756.24680.13640836559917741865.pr-tracker-bot@kernel.org>
Date: Wed, 01 Apr 2020 22:35:17 +0000
To: Jassi Brar <jassisinghbrar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_153521_366373_038F7757 
X-CRM114-Status: UNSURE (   2.87  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Tue, 31 Mar 2020 23:47:56 -0500:

> git://git.linaro.org/landing-teams/working/fujitsu/integration.git tags/mailbox-v5.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4646de87d32526ee87b46c2e0130413367fb5362

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
