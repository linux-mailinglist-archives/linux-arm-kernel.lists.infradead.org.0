Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD53C1EE103
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 11:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZRyRNP9SMiZ8bVUyfppiptWfX+R10qtuLFTLpatMr8=; b=iSwcfhpZ1UpgLr
	C/HNXjyu3FAkrboRbfUotVtlsMqX6CG0AIKFHRzgEBF2Li80WFI4PRu8ZWBhLuuHr7D+PtuXWrKGz
	Uh75mKWuQhDt3eeUhIFLRNowNxpjIEryKr6ZtIJRiVbcSSRy0HQUgILjynbZHqQx2YrsoXM8oEjIs
	zXgBAka2WihWPGq10JVzQ7HNeUSUvWqLLtG8PbMwRLe9Jyw4kFIYOSLxv9gqwI/RT/0vh+bNUAbJo
	B+UZQ1cfShiJy63pzMSFYtDMNxdoP0AAc+8JvsUToplQf0OLHferCoc25FS6lSuEpBcIBtC+jx6Jn
	clBSfb45z7l8X+6Wznbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgm0U-0000wq-GM; Thu, 04 Jun 2020 09:17:50 +0000
Received: from smtprelay0020.hostedemail.com ([216.40.44.20]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgm0L-0000vi-I6
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 09:17:42 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 7FBE8837F27E;
 Thu,  4 Jun 2020 09:17:39 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:968:973:979:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2693:2828:2911:3138:3139:3140:3141:3142:3354:3622:3865:3867:3868:3870:3871:3872:3874:4250:4321:4383:4425:5007:6119:6755:7903:10004:10400:10848:11026:11218:11232:11658:11914:12043:12219:12297:12438:12555:12740:12760:12895:13149:13230:13255:13439:14093:14097:14181:14659:14721:21080:21324:21450:21451:21627:30054:30074:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: lock32_040a1d426d96
X-Filterd-Recvd-Size: 3759
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Thu,  4 Jun 2020 09:17:36 +0000 (UTC)
Message-ID: <2aa49a543e6f48a6f428a37b63a06f9149870225.camel@perches.com>
Subject: Re: [PATCH] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()'
 which is unused and broken
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Linus Walleij
 <linus.walleij@linaro.org>
Date: Thu, 04 Jun 2020 02:17:35 -0700
In-Reply-To: <20200604083120.GF22511@kadam>
References: <20200531073716.593343-1-christophe.jaillet@wanadoo.fr>
 <87h7vvb1s3.fsf@belgarion.home>
 <a2e34c9a-676f-d83f-f395-7428af038c16@wanadoo.fr>
 <20200601183102.GS30374@kadam>
 <CACRpkdasbS-4_ZwC-Ucm8tkSUW5tAQdUrXjxHXQ3J0goVYfgHw@mail.gmail.com>
 <20200604083120.GF22511@kadam>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_021741_658941_294D3547 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.20 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-06-04 at 11:31 +0300, Dan Carpenter wrote:
> On Thu, Jun 04, 2020 at 12:08:49AM +0200, Linus Walleij wrote:
[]
> > Fixes means it fixes something that was wrong in that commit.
> > That's all. Whether syntactic or semantic or regression or
> > serious or not does not matter. It is also not compulsory to
> > add it is just helpful.
> 
> Fixes tag should be compulsory for actual bug fixes.  We had a the
> Bad Binder exploit last year because commit f5cb779ba163
> ("ANDROID: binder: remove waitqueue when thread exits.") had no Fixes
> tag and wasn't backported to Android kernels.

Fixes tags IMO should be exclusively for actual bug fixes
and should be mandatory.

Perhaps:
---
 Documentation/process/submitting-patches.rst | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/Documentation/process/submitting-patches.rst b/Documentation/process/submitting-patches.rst
index 1699b7f8e63a..285a84ae79de 100644
--- a/Documentation/process/submitting-patches.rst
+++ b/Documentation/process/submitting-patches.rst
@@ -636,12 +636,14 @@ idea was not posted in a public forum. That said, if we diligently credit our
 idea reporters, they will, hopefully, be inspired to help us again in the
 future.
 
-A Fixes: tag indicates that the patch fixes an issue in a previous commit. It
-is used to make it easy to determine where a bug originated, which can help
-review a bug fix. This tag also assists the stable kernel team in determining
-which stable kernel versions should receive your fix. This is the preferred
-method for indicating a bug fixed by the patch. See :ref:`describe_changes`
-for more details.
+A Fixes: tag indicates that the patch fixes a "bug". i.e.: a logic defect or
+regression in a previous commit.  A Fixes: tag should not be used to indicate
+that a previous commit had some trivial defect in spelling in the commit log or
+some whitespace defect.  The Fixes: tag is used to make it easy to determine
+where a bug originated, which can help review a bug fix. The Fixes: tag also
+assists the stable kernel team in determining which stable kernel versions
+should receive your fix. This is the preferred method for indicating a bug is
+fixed by the patch.  See :ref:`describe_changes` for more details.
 
 .. _the_canonical_patch_format:
 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
