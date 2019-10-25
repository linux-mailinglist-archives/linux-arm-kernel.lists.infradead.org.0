Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC91E55F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ox2LPhNqcGAjcbVbWDXa3oP3NzCDaJWJk2y5h3HzgDw=; b=DLIfnGCWmzFL8D
	TCUS0Xo0xmloH9qApFKk3JsqDt8DOUKzQ7BIxJbPJ7odBSGR8vgPrK8U6smk4eJdq/HEpvfiN2Fn6
	to7mgELLSomqhRd9rqt3Vkwyslk4LDdO3OvggO0+v89mtADoWD7h44ICMbDA4jFQKbFRGOAaj2F7p
	hAPGWw/e9VdRD0XfKjkYbcw3BuaPCJgbS4rumFEf88kphP+upLRGcE+a8nJCwOuaMzkn/WmdmQrZ+
	esva0LEwa6ZTq9DqC4es85xq44XXeyiY8hTZK6xSb2VuNOHNN4U8Bsb6RfAAt2BP37WX8M8cvOme+
	7KGHvhJfyLE3K4d+45Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO7Ew-0004Ip-4h; Fri, 25 Oct 2019 21:35:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO7Eg-0003h8-Lh
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 21:35:08 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572039305;
 bh=kIBRFC+WzLvHnyuivCbAm9UXp/nf0r1cY6JZlUeqvfs=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=myXHvwEQusb9e1pq+lpzNES512g/Njno0IKgiCxzkGFSkpeqVjs4FB1Y0JUog3EPb
 gZG3F996Iys2X5z9+CjUcYVAQyA1vlqXMtxOEWTU/wUr9GM5AYMAdPrIJBDOnSaWkN
 fVymj1cGS1BfAjZtYvT7u+rEkL4NEmQnJbt5luow=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191025153817.rtj6hh6jmr5asfto@localhost>
References: <20191025153817.rtj6hh6jmr5asfto@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191025153817.rtj6hh6jmr5asfto@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: 86ec2e1739aa1d6565888b4b2059fa47354e1a89
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 63cbb3b364c0c2500e59d24a6cde92c8f2ff1c18
Message-Id: <157203930573.23557.14092448668609979344.pr-tracker-bot@kernel.org>
Date: Fri, 25 Oct 2019 21:35:05 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_143506_774227_3FC42D1B 
X-CRM114-Status: UNSURE (   2.09  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 olof@lixom.net, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 25 Oct 2019 08:38:17 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/63cbb3b364c0c2500e59d24a6cde92c8f2ff1c18

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
