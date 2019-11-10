Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE124F6BAC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 22:45:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiTlSpO6UWCRm7lgJ3AEmPOUBxKuYY7rWV8qwsXXEYU=; b=nW2wht6rPUS+No
	Y2DrfN2XPrIzmDEB2SvPgdcpRKB4vQN4evx4qOI2D57BjaVPV7whYRwacJ0VDUI9yatmvKYV/5mBO
	2Xbw0CIIAMWpuCU83oluYja8iRWVB2DyUyNLRSV4kyGMXoGWJSD9lbF2q3Sgu40LnO6WwGcEdtKx+
	AcEwxDPGc9eXK+dFgtngmv7uY4Y2dEMftBpmQgQzdS/RunhninDBzZ29rTifbndkSfTlOhdIuxk2u
	iidia0Ii6jhe7+9aaECHUhiy2HkLY+Uz7/d/PbNwBuUNA9I5m2Y8mvCHjiWk22qQjf7lGBKtEMs0m
	ABeky/kdHG5+zCat6/VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTv1J-0002Uy-HK; Sun, 10 Nov 2019 21:45:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTv1B-00020k-OI
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 21:45:11 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573422306;
 bh=6ztCkRLgUdLXLrPFiMrkTkRl+X/swTXQkXHriYk06lo=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=wnKx7IGC6AE9osQ8BEpJ34GvsqZJi8eoE0y9hVGUIYpGEe27tpp34kNLtWon9pDYn
 LYCUZh2LiGhDxKm1hV2s5bghEFGwcsD98ewKZyjBap47EXftTps6M2R/9Qr1DW/yQg
 p5dr1phjUYHMGBdrRHWVE5NzHjuS6hcn/pl/JNO4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191110182506.a2o7r5nyoqaz27gc@localhost>
References: <20191110182506.a2o7r5nyoqaz27gc@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191110182506.a2o7r5nyoqaz27gc@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: 002d3c65ee81a604430da61e20de7a5b32a0afd5
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 44866956804eb0904f733d8436bfb56245578870
Message-Id: <157342230601.7021.10139790143615521649.pr-tracker-bot@kernel.org>
Date: Sun, 10 Nov 2019 21:45:06 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_134509_813469_7D202517 
X-CRM114-Status: UNSURE (   2.29  )
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
Cc: linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 olof@lixom.net, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 10 Nov 2019 10:25:06 -0800:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/44866956804eb0904f733d8436bfb56245578870

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
