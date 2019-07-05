Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4285E5FF9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 04:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7k4fXLfMkLwVaH3IwOf6BWmObvnPPraxfz4rAxy9dw=; b=Luy0VkyjTk8oPz
	bk3WR8tg+s97fZjNLcjA8s+9P7987p0mUIDhY8aEajJJUjHb16JGoEl41lheoWb0ghHbV7t0k4XXk
	radL48N0BYOj47Xav4mO+HZXVmquakcNuL1bJTNSAV+hnZpPDeUIDFevleNoLSL3kk5gvRPOYAQ8G
	AJCRohRd6TyQTAqurezcXdNV8lI0CzMngl0NE/I/I8Ff80m7RZpShBC1maIvWlm6dWdpEIH+RXaop
	0pnr66zln5w5osPDeE0sCheLDsPr1Wng+ui+bRhA/mkrqdpjdn1L2NFBOA8CnyepRw75eu7JPmV+o
	9KrvaXKO48tT9dqdmhfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjENh-0002V6-IT; Fri, 05 Jul 2019 02:55:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjENO-000252-B4
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 02:55:07 +0000
Subject: Re: [GIT PULL] ARM: SoC fixes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562295305;
 bh=ubec7ywyoQorfw3Qnn+xnNovpvxUzVu/hsZbOEAwmt4=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=mYyOIYgoyUrgQf/p+Rl6x2vgk/ax2wgo2e/5UccRRFSbeQeqibPaHFaFFTgBY23Vz
 Cek4BSZDPntaggYF77ssQxndK3mjCbiuoWpj9ORbWPycjSWzhu3Q+PKUWgvJ4w/q3+
 3fSpaahkmIG1ICiu10kElaZKpss+ED83lVcXd3So=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190705002223.wmc5ge5jszy4z6vc@localhost>
References: <20190705002223.wmc5ge5jszy4z6vc@localhost>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190705002223.wmc5ge5jszy4z6vc@localhost>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes
X-PR-Tracked-Commit-Id: 2659dc8d225c956b91d8a8e4ef05d91b2e985c02
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: ecbe5086adc2876b22c898987d8a20f932de87a9
Message-Id: <156229530529.12956.10924276549414473102.pr-tracker-bot@kernel.org>
Date: Fri, 05 Jul 2019 02:55:05 +0000
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_195506_424722_90427196 
X-CRM114-Status: UNSURE (   1.71  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, greg@linuxfoundation.org, soc@kernel.org,
 arm@kernel.org, olof@lixom.net, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 4 Jul 2019 17:22:23 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/ecbe5086adc2876b22c898987d8a20f932de87a9

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
