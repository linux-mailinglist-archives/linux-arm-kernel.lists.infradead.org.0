Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244B980323
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 01:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUumAwHxYkbGqOZDYBmKgf8aCJFs8eVHJjuSp1FIlqY=; b=VsJa2pPPDSahP2
	DO2IXPrumC06Bkd90vejvoQKQzhihK6ciCzK+Qxe/NC59iM4+nU6JRNjoawDfK2gWGxKsqbYbeGD8
	Qmr8CfHUwD1aFHgZH4fkMW33PJDxcTPcemTbmEcGhvkeqsxgd2CpOqmZxgnoLpZVPCwvonMOyWw8A
	KohYNojFzmxN11C/sKt/6YGYc3jteo/ECUxzjCblpvqepawyBI5Cy0uOvuTTyUJvwWfPmwvT8qGJx
	JfOpCiTju7kw5jHydQsFceSatnkS7Idp699pOiykQ5ib8AoL4W8/x6LQGKSwAXpM8l9yWQZauRaV6
	DLHiO935d8f0RNMjo0zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htgqT-0002e7-PI; Fri, 02 Aug 2019 23:20:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htgqJ-0002di-Mz
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 23:20:12 +0000
Subject: Re: [GIT PULL] arm64 fixes for 5.3-rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564788011;
 bh=LfMe/LP1XQpulbVoTGCWR1T2AUQcB0TRmW8CX98Osd0=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Q597yPeAPWIzRQwPGgi9IL7tqwRicsvaiP9skNifBV+NH6qY0Fh0BtnA25RIl5/op
 KfXKN5oHqFi4cS5bLdWssJVJg4xoZ9tVwRdghVHVUAB4Jk5YVqsazmrPzljbvijJto
 ctXNfwNMKBR8vbnT3GvgUX9g6QHxOOv+28LjLqss=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190802171753.GA56033@arrakis.emea.arm.com>
References: <20190802171753.GA56033@arrakis.emea.arm.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190802171753.GA56033@arrakis.emea.arm.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes
X-PR-Tracked-Commit-Id: d8bb6718c4db9bcd075dde7ff55d46091ccfae15
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: a507f25d1c2048c136f6834f10966510b62af987
Message-Id: <156478801127.22769.4583603959266745119.pr-tracker-bot@kernel.org>
Date: Fri, 02 Aug 2019 23:20:11 +0000
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_162011_771486_1B2ACADA 
X-CRM114-Status: UNSURE (   1.82  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: will@kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 2 Aug 2019 18:17:55 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/a507f25d1c2048c136f6834f10966510b62af987

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
