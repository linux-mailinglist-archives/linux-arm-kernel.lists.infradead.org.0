Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865E458F21
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 02:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6zgqQ7v56PLXop8lO75sd092Pmeo4fM9L3UtPRMKT4=; b=e9NencTp5CKS0E
	kr4j6HDKrhXUMaLWigbW6YCZ0tbq4DQh24otHQXt7hd5FV5/+ZLwh2EM0H5HmM3YAyAM+p+i3B7mg
	UScRWlowWvmGY212MdYkcLNW9+cwP6s48mNa6PCzuPuOSSxU3fZmBY5azqLdqsBZpGEE+nW2bv9Wi
	jomcZ0RzSWErhkH64SuVTqjCzz7WLL0aobSVH4x0QhsKpNmC9BToEA+d9H0hH4k/REZgXPKQbtdQn
	Xfrfx+wpMrThswFqYwpUo425Q+8CGEZzFDV2Nm2ri7qiDevne+v3RLiO1FJsxDUbC6YcRIkFU6hwn
	wdxzcpjSgCEaGpBQadRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgf1d-0007uP-UH; Fri, 28 Jun 2019 00:46:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgf0j-0007TU-FO
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 00:45:06 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561682705;
 bh=5zHfczyHjUWu/83GxABVcJZO5nIACC3newO9jZ0LBnQ=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=nKTB+ODBeRztbeI1TXFWU9Lt/zhWxu4iDLSIGx/unZpvs0kS8H73Hmmf36g3y1odo
 ZE+q+H3P6M8icdKhBxRKlwION+i5Oh80O8W2htRgwfvnEo8dxTc+pD2XrAIIWwKzAs
 de5PvTyD11kynOAIgiEsZp1Dr+llmyupHSLuGFxY=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190627024508.x5opgsq4tjk32m6j@localhost>
References: <20190627024508.x5opgsq4tjk32m6j@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190627024508.x5opgsq4tjk32m6j@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: e73f65930f8880fafaccf2cc1e5c44272e9523ec
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: fe2da896fd9469317ff693fb08a86d9c435e101a
Message-Id: <156168270520.1895.4863534535075761015.pr-tracker-bot@kernel.org>
Date: Fri, 28 Jun 2019 00:45:05 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_174505_623617_7F9AAE9B 
X-CRM114-Status: UNSURE (   1.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: olof@lixom.net, gregkh@linuxfoundation.org, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Wed, 26 Jun 2019 19:45:08 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/fe2da896fd9469317ff693fb08a86d9c435e101a

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
