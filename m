Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A273B446D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 01:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GbE7+tM9Ao9hMb4kPdC+5WZUNmBGsRROeXYUl7QhXm0=; b=l1YMjplecKgCSi
	cLsXYTj6SXCXB2udB7XSIqFbfsEJ/EQ/SKFIvNhJulJ90LHiRO/7QU5jfITih3QBXOVrCCb5hr3ZQ
	WAg8O1FP7yDMYEEyeOv2zFN7TdIfDvY7T36W4ofh21JpZcyFrbpQEIudfiIGfxJMRpmDj6V+pWuyu
	0Iq4NCsNeKeTMPSJeLlwu27VA6X3+yTqaC+oKr7mQVjilxK141AcY5SR9v9y+Am6/vV45d975aJB0
	JZ7Duw4JKaUYxvGpZpkFSD/zf6b2PVAaA+jWC0yE5cgIUDNo7w7spiAbhb2B8V24CCCkCQ9NBy5pL
	XK1JK2MG4yKvi47si20A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA03q-0001GI-Qr; Mon, 16 Sep 2019 23:05:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA03Y-0001Fp-Dh
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 23:05:17 +0000
Subject: Re: [GIT PULL] arm64 updates for 5.4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568675115;
 bh=SptJ/ZIVVhHBVFYaNHYBsKO4gD6Eb3M+lYvRsBt4SfU=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=pRI9KLRzDxQd3xN5dcyoWdXOptNSTg0n0WkXxfEbG++xsn269xzb97L8FkYgvZ+X6
 88qrUpIizli1yjMAaZHHgOWyH3D/sP7a5Z6ZylZUxVfUyp6JHUHAwiB0DvkG+cLizN
 3fokBX9TTqSJRnJTg7e4tiSeRL7r9hcwSC4E0akI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190913102014.vi4cwe6mifbsmrri@willie-the-truck>
References: <20190913102014.vi4cwe6mifbsmrri@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190913102014.vi4cwe6mifbsmrri@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-upstream
X-PR-Tracked-Commit-Id: e376897f424a1c807779a2635f62eb02d7e382f9
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e77fafe9afb53b7f4d8176c5cd5c10c43a905bc8
Message-Id: <156867511577.30760.5402289724585423931.pr-tracker-bot@kernel.org>
Date: Mon, 16 Sep 2019 23:05:15 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_160516_485302_1751A6DF 
X-CRM114-Status: UNSURE (   1.87  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 13 Sep 2019 11:20:15 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-upstream

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e77fafe9afb53b7f4d8176c5cd5c10c43a905bc8

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
