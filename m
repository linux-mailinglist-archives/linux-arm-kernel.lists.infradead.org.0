Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF70B1F6E46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 21:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wj+IrwCHCU7xPpv4GalSCTkkjVCdGiAh3AY+w7u1z94=; b=tl6YjbZLQEdepY
	RVEb7XSoYkkQqLy8xA+OBUxRoxDnh+b45RcHm0DO49Sys34sd42m+pApNXtVMa8E8KA+03IfByXMt
	H+DrHGVbg1QEjICGBRZQ7HHugrZXc+JxXj1L0jjOmL4uufQCqR4BXG1N/AjsQBsPRHhopTHGJfbR3
	Szl64Uwi0jf/9O651gE2QYNqVzkTjkDnK8oix2phNPwTnrJ2mjQ2zO0Ou/usypj1DcRPe/6kUh7Rw
	oKmkWE2qz72UvD+/U/Z5IsqoIcyorm1tvPZCi75aiFqInsb0dRKIyInfO0Yp6lGn9ymWs20MKIxMS
	+6T2Ig9NGNv4tDQ9Bc5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjTDd-00012D-K9; Thu, 11 Jun 2020 19:50:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjTDW-00011P-Qw
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 19:50:28 +0000
Subject: Re: [GIT PULL] Mailbox changes for v5.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591905024;
 bh=ycRWFcfPZWkCuruOMA8U5Rj2A8LLaNpfTbIAsFi7BNk=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=OTyh5GnzHSJ+5Ieuh3AZu7DFhrMgeMMWU0jplIcBRNjDBoVjTJfynwzqX4ZMQYof+
 Oy4bJDq2dvn2p1fVtKLaECetTBxiV6LuDqcoQSyQCbOCdoqj//d6uh0b/S/neHB8+y
 7C87tzOWP7LA+hOcVWOZ6asaFt4w+P67cKJdy8ns=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CABb+yY1q3fTJkF0zOBJ6y8u-707-tVax9Vn_TR=vgq35=7j83Q@mail.gmail.com>
References: <CABb+yY1q3fTJkF0zOBJ6y8u-707-tVax9Vn_TR=vgq35=7j83Q@mail.gmail.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <CABb+yY1q3fTJkF0zOBJ6y8u-707-tVax9Vn_TR=vgq35=7j83Q@mail.gmail.com>
X-PR-Tracked-Remote: git://git.linaro.org/landing-teams/working/fujitsu/integration.git
 tags/mailbox-v5.8
X-PR-Tracked-Commit-Id: e9f901dc05c09c4f89183cadcb2d93177f3100cb
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 2dca74a40e1e7ff45079d85fc507769383039b9d
Message-Id: <159190502460.20905.8006768909883247389.pr-tracker-bot@kernel.org>
Date: Thu, 11 Jun 2020 19:50:24 +0000
To: Jassi Brar <jassisinghbrar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_125026_892285_A122CC3A 
X-CRM114-Status: UNSURE (   2.40  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The pull request you sent on Wed, 10 Jun 2020 23:10:56 -0500:

> git://git.linaro.org/landing-teams/working/fujitsu/integration.git tags/mailbox-v5.8

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/2dca74a40e1e7ff45079d85fc507769383039b9d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
