Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BB110E4AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 03:50:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUiuF/z/rI5IhH8Phgm1B6gsqgGIG/0djrEm24JDGOM=; b=Gd0Z2Qd72Qei2U
	yimnrJjKozr23/CxLbUuyBlcpjrG8Yp6UUudR6HBKRH0b+X5WY/igUC5OhzkqrSpTy8YFs4ErykDh
	ixVvrl8rYviX6TQK/FO2XpypZ7zl2gRpW6JhhTOOX45xb1vQ1g30aSo8I5KAA+I/e+ytoIIn7FMrD
	OZ5G6JbxADauRWIIkg766HKnTAvRoLUt12ezXvzr7gNB14Y0A0wN+OCSTHUTKUo1x+N/jRMqNtJod
	omUSZ7S2kv0yy9WgTDrSYdzWJmaiF0dnWrj9os74gmUP691vPQMJGDRhHLxGKMcSzFuuQpIH0syqH
	/xnuH0JQsirgVXmkEdTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibbnI-00045P-5C; Mon, 02 Dec 2019 02:50:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibbnB-00044j-L9
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 02:50:31 +0000
Subject: Re: [GIT PULL] Mailbox changes for v5.5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575255028;
 bh=4wmDVoz/B+au5fCYnJjWlDzgVoBSXzzCWrwAfnWzI2I=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Mzi/gbOfVQJ3UyGxZMY8Yuaf8SKK2/5aQB7SVIHR6xVThucoPEXPDIRB8Df3qK4JV
 SaAVBNUmE0xE3cukeF5mtKtkEjJXhtsxn20E9vofT0U29qIlFu6XJXKAQex3lYc6lE
 YSIjtirV22qr8fvnwmnlejF803dlGwiStC55dV3Y=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CABb+yY1dtWjRW4Wi3jX178Zyd+yNW_bGCwVm3DD4mNYz4ozd-A@mail.gmail.com>
References: <CABb+yY1dtWjRW4Wi3jX178Zyd+yNW_bGCwVm3DD4mNYz4ozd-A@mail.gmail.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <CABb+yY1dtWjRW4Wi3jX178Zyd+yNW_bGCwVm3DD4mNYz4ozd-A@mail.gmail.com>
X-PR-Tracked-Remote: git://git.linaro.org/landing-teams/working/fujitsu/integration.git
 tags/mailbox-v5.5
X-PR-Tracked-Commit-Id: c6c6bc6ea9fce31baaca053befc31215cfcb3dd9
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 43fd4bd72c85c1e8dac0f23dce16f0277791dcdd
Message-Id: <157525502822.1709.2747899209773989664.pr-tracker-bot@kernel.org>
Date: Mon, 02 Dec 2019 02:50:28 +0000
To: Jassi Brar <jassisinghbrar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_185029_711142_9E54B459 
X-CRM114-Status: UNSURE (   1.97  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 30 Nov 2019 23:38:58 -0600:

> git://git.linaro.org/landing-teams/working/fujitsu/integration.git tags/mailbox-v5.5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/43fd4bd72c85c1e8dac0f23dce16f0277791dcdd

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
