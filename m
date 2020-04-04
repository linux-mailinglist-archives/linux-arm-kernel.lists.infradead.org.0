Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080C519E6DE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 19:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DcfHwNk07x6GQRAST77bvOyr87c+vINA6pYnYADydsc=; b=Ae6CuEsV+7cCBm
	Y3+bN9EGLuL6MYWxgPbXLy4BIkZjfV1lDGuoO+3iTI7owDeYc2Vhyz52ST0IWwpLyI+51shUL7IoD
	XSukRZZn5ML6lYGdqL38dZU/MX8r6ie3W4HZOEgxLJZAMEEtadEz294HRPhQvtSai/g2mmQ+75cYb
	IyUuWD1OxhUjPAue2Q0ZIASKXXlbRAApaWyNGmZe/waLm+VO2BiN1b1++wzdMLwaUbVoi+Dc2551q
	lAM4kDh51jF/r9IUPvkn1iFj4Uq8DG35/AmLSAIFbzmaHnoXODN2aTl1ydS7LJDfyOnFo4rdJ4Vmg
	VHEMwaOmfISM0qZiccng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKmwD-0000Vc-Ge; Sat, 04 Apr 2020 17:50:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKmw4-0000UU-Sf
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 17:50:26 +0000
Subject: Re: [GIT PULL] dma-mapping updates for 5.7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586022624;
 bh=cKK4vs/ElMxlmbk52kFAcJUDROfeksg+vPch0uqr/Hw=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Pt0NybnfUbUjG+K9PWNQgx3n0++R+6EAhGcraUZ46TT5jqQIUzZ6K2vfl+h6WSzQg
 qS9i+ves0qvlDDPFgCwTNVS3Yb12Tjp35v8fXYdWYg2TNuaaCNitE4+9rMLTf3By5k
 TT5eLz1fI9VqCF6c6OL+l0rbzKkF4O3xqb2TjUKQ=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200404065855.GA656254@infradead.org>
References: <20200404065855.GA656254@infradead.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200404065855.GA656254@infradead.org>
X-PR-Tracked-Remote: git://git.infradead.org/users/hch/dma-mapping.git
 tags/dma-mapping-5.7
X-PR-Tracked-Commit-Id: fd27a526bb381f43dded6db30b3b016468ab0e6c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6f43bae38269a55534e1f86a9917318167de6639
Message-Id: <158602262410.31764.10662666727749617192.pr-tracker-bot@kernel.org>
Date: Sat, 04 Apr 2020 17:50:24 +0000
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_105024_947438_D20B413E 
X-CRM114-Status: UNSURE (   2.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: iommu@lists.linux-foundation.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 4 Apr 2020 08:58:55 +0200:

> git://git.infradead.org/users/hch/dma-mapping.git tags/dma-mapping-5.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6f43bae38269a55534e1f86a9917318167de6639

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
