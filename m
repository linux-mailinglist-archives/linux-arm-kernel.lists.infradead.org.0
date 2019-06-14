Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 023A7463E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfwx3rijCW6Tdg5kt+ooQ+4ASAu2VX1G5iqq21ZTHdI=; b=PzR7YADzk+YQD8
	r7BdtcDaeMTD7Jbu9M4NI0FDD4GyBilPJubp82WAUgIQKxnxT4XfQrn0/90krMDZF38Cslb21kdUI
	Azg1g0YzgZLi1+FfE8wi8bQmq5IE7BePJU5v5hU72bn6EHDfzvOvMZPbXvWMzFd7KJdJMrmWuy5ht
	os9rqU1ZYltkMRA4YkGod909qS+ksF8hqT+PUayteKTvj8zpEI9vqaLMyZ6b2cFdh6pxN4mrtdI+h
	Ih5cgFmGVBdLu4Eo0FHMH/Pc1KJo4nUj3V14p+oQwTeUf7cQRgS1SSazxqQ6vhocf6amu0yP/yYGi
	Q2qKBJz2wBWeR/PNrhPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbow3-0005FH-1d; Fri, 14 Jun 2019 16:20:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbovu-0004td-TU
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:20:08 +0000
Subject: Re: [GIT PULL] arm64: fixes for -rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560529206;
 bh=YSjErc7PG0zYq9LWy32CF1nC6yzHgA3XMXyS3+NrZzU=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=THxE7Y0ZBeZdlL9DlgYmmOGEe6VsBHxjzQ15etYEMSHVOaY7voqY6EtDIuMOtbWIy
 3mvSAe9Xpr6eU8QJu3ZHcUm4yVK0vuDvOY/WBJpvAcCLZeXFkLAX9F5Cq6P6gZ03N4
 5yqomUActKDQOdZKP+pTc195UzO5LR8/RJW/LwK4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190614150259.GC29231@fuggles.cambridge.arm.com>
References: <20190614150259.GC29231@fuggles.cambridge.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190614150259.GC29231@fuggles.cambridge.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 41040cf7c5f0f26c368bc5d3016fed3a9ca6dba4
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 72a20cee5d99d231809ee4d3d2c09a96a25451e2
Message-Id: <156052920631.12738.3532002147631387577.pr-tracker-bot@kernel.org>
Date: Fri, 14 Jun 2019 16:20:06 +0000
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_092006_977276_EF659A7A 
X-CRM114-Status: UNSURE (   1.52  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: catalin.marinas@arm.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 14 Jun 2019 16:02:59 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/72a20cee5d99d231809ee4d3d2c09a96a25451e2

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
