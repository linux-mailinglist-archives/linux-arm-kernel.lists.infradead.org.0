Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB90815CE38
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 23:40:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zP14wjA7MDHtnr3JK21bEyYSBHMUquLcHyew7OLouY=; b=Mf8Dqk5khAscrZ
	V8N4UCPlbvjix9uvSIqeemrmHpQaBj126v2z9j+CpPBgJ1/bTfQSTI5yL/PeEt8AUsiZL3RfwrSjR
	Mhd+8xpPe9MRKiXDoDHnTH8g9aDYdw4It/PCT/+biThWxVDGFptaemYBiNWDl5fEg6Dvmse/7lW6/
	is+eX8vHa1eaebAjJwCz6bglzsUB39TuQHP6R68fG8aqvlFrS9Xx0860EIglqpNY7NndW5Qu9pkVR
	h4QU04SWbxV3QNmdoySR2hK8rsLDT977+EUq/EZpj/sKp/h52qCTv5U8QchEYR20XD/BuS86CncOH
	Ic8GSmoslg8rd3pEFy0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2N9q-0005ab-H6; Thu, 13 Feb 2020 22:40:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2N9j-0005Zt-0z
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 22:40:24 +0000
Subject: Re: [GIT PULL] arm64 fixes for -rc2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581633622;
 bh=kC/SDpY5De9yokxEyUSinIMRIxy5yB5SfLn1zQSH6kM=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Jp2MzqMbOzIp70gOQZ9pU/2dtvi5AVTByXTz5mpLmzeKVpwXmvoHLwyR0+DdcJ6tn
 Et6UhgNDooNnE5o3yE2xY3BIHK4Gj7KvBjTGXRCf6pnSkiihdhSuRkXID7Z6VYJbIR
 l3i+p41b8EzONBK2ZCO4+BgeZfdzVehEmAJI/CGU=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200213171002.GA8807@willie-the-truck>
References: <20200213171002.GA8807@willie-the-truck>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200213171002.GA8807@willie-the-truck>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 tags/arm64-fixes
X-PR-Tracked-Commit-Id: d91771848f0ae2eec250a9345926a1a3558fa943
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b19e8c68470385dd2c5440876591fddb02c8c402
Message-Id: <158163362239.23424.5154244625306292960.pr-tracker-bot@kernel.org>
Date: Thu, 13 Feb 2020 22:40:22 +0000
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_144023_089935_C3E517C1 
X-CRM114-Status: UNSURE (   2.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, kernel-team@android.com,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 13 Feb 2020 17:10:02 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b19e8c68470385dd2c5440876591fddb02c8c402

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
