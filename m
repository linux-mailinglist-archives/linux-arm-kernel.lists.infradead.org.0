Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55965FEDE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 01:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yyDP3UlobMM8+ty598PJxBUhc0oZY53jdhLOxy47Tbk=; b=LNN
	tV/RTfRkimJdDmP7DJp6g+jfeGoUr800xme/4c2fJj4EcAdTBKnFovaG2HIu5T7QIIhVjeXPtySn+
	DXKdwQ7jCNWYb8wfi4Nj9etKcBvHsjJ8JZqSipepsl/9BGTvSBy5xh5QFtK+YflErwVDdPGzrJQCe
	DEb0zMvl1Wvqi11hChK4mbUwjK95HOUMPlD66YKqBU7l7br5VNczGXAB/PgIzl/nTzn6z/ChB4Qer
	NkBTNdS1TWQlalF2wVXZP0hobfmK/5eb4V/4gWZz1p6PpUGuAIfK3W0lWCd6t85XzHsGr98DI4RFI
	8V/damE7pqG7a6TvFJPqfjimhhIPXjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjBcF-0003HV-1O; Thu, 04 Jul 2019 23:58:15 +0000
Received: from smtprelay0087.hostedemail.com ([216.40.44.87]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjBc1-0003GD-IE
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 23:58:02 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 1896C100E86C0;
 Thu,  4 Jul 2019 23:57:53 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::::,
 RULES_HIT:41:355:379:541:973:988:989:1260:1345:1437:1534:1540:1711:1730:1747:1777:1792:1801:2393:2559:2562:3138:3139:3140:3141:3142:3352:3865:3866:3867:3870:3871:4605:5007:6261:8603:10004:10848:11658:11914:12043:12048:12297:12679:12895:13069:13138:13161:13229:13231:13311:13357:14096:14384:14394:14581:21080:21451:21627:30054:30079,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: girl52_61bbf4fecba19
X-Filterd-Recvd-Size: 1739
Received: from joe-laptop.perches.com (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Thu,  4 Jul 2019 23:57:51 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Dan Murphy <dmurphy@ti.com>, linux-leds@vger.kernel.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-nfs@vger.kernel.org
Subject: [PATCH 0/8] treewide: correct misuses of strscpy/strlcpy
Date: Thu,  4 Jul 2019 16:57:40 -0700
Message-Id: <cover.1562283944.git.joe@perches.com>
X-Mailer: git-send-email 2.15.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_165801_680041_899F4398 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.87 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These are all likely copy/paste defects where the field size of the
'copied to' array is incorrect.

Each patch in this series is independent.

Joe Perches (8):
  Input: synaptics: Fix misuse of strlcpy
  leds: as3645a: Fix misuse of strlcpy
  media: m2m-deinterlace: Fix misuse of strscpy
  media: go7007: Fix misuse of strscpy
  net: ethernet: sun4i-emac: Fix misuse of strlcpy
  net: nixge: Fix misuse of strlcpy
  tty: hvcs: Fix odd use of strlcpy
  nfsd: Fix misuse of strlcpy

 drivers/input/mouse/synaptics.c             | 2 +-
 drivers/leds/leds-as3645a.c                 | 2 +-
 drivers/media/platform/m2m-deinterlace.c    | 2 +-
 drivers/media/usb/go7007/snd-go7007.c       | 2 +-
 drivers/net/ethernet/allwinner/sun4i-emac.c | 4 ++--
 drivers/net/ethernet/ni/nixge.c             | 2 +-
 drivers/tty/hvc/hvcs.c                      | 4 ++--
 fs/nfsd/nfs4idmap.c                         | 2 +-
 8 files changed, 10 insertions(+), 10 deletions(-)

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
