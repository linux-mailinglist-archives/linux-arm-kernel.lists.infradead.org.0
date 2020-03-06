Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D890F17C766
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 21:55:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4RyCpcJ0RgFANUDKYjavs3Lkv/2nnC8y7v+3BLrmKg=; b=IbWIWJRqkNuYcw
	iIpdhrb1aXniDgrimffXxtINL7SBb5DS3IGZBvg8BLA48kfUz3qJx4jJO4YEthjYF/lwSKY53seMV
	FctyEcixYMoCgH6lhZ7xV2bWAiPJAGMVEOaB7exuEfN1+Ar/0NC6RCSkDO8CXhgJQO+saeBbZbEYO
	VRj0Y7gFIeApCoVCtDC1Y1ashBNyu51duc5VBs7FOg2n5pdJBGZPBR3iO5o3JAwHZNBB81adNOAPQ
	7wE/4+lQab6eDWPWANsIiC+7eQZJbS2+z7h8ZRfJeSoqLafCXQdXuM471VkI7eh0TZ4Kwevo7/ldY
	fIyGrJ7ybMERUf3rhWyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAK07-0005i5-Fr; Fri, 06 Mar 2020 20:55:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAJzw-00058Y-QE
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 20:55:10 +0000
Subject: Re: [GIT PULL] arm64 fixes for -rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583528106;
 bh=mVBXtZ7m4qGrI0tw4H8tDeDwn8YJqRyDIflDA4DNpVI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=aZyV9NGtxLsX+ksK/ggee+zZPfO2+N4KxBEEYmwnvrdHR22Gl0FaxAEvDp6OFB4Qz
 lroy5yI1ywMyRE/6L4hbTo43wUMXRsASmLXPatv4f8/2VFAhGNB9k7V57iCdmiesze
 1CQMOroMFVIyjt1suDF3Kx8j82NbjKsdYjyMRdGs=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200306151219.GA8409@willie-the-truck>
References: <20200306151219.GA8409@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200306151219.GA8409@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: 9abd515a6e4a5c58c6eb4d04110430325eb5f5ac
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: c20c4a084a878df35a7e394a7e646f303b505eaf
Message-Id: <158352810621.1815.11142669191874815567.pr-tracker-bot@kernel.org>
Date: Fri, 06 Mar 2020 20:55:06 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_125508_884629_67D8A09C 
X-CRM114-Status: UNSURE (   2.14  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-team@android.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 6 Mar 2020 15:12:20 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/c20c4a084a878df35a7e394a7e646f303b505eaf

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
