Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3F8182D58
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1sWV/1Q/hNsPbCMHrCbIAlAijpPq6a/TOKHDcEEZkbo=; b=Nyew5Iu/DjHbgB
	83UwVOp00XrMnyW/6CY4VUHB9isTZndPbMxDbSDQA6Cfa0jgcjHGBZ07Tan65ALjzu0F4+dMh86M8
	RU7+Qm8ex+QA2pC2HgF0zsFCotk+gz+3rgNuasT/s1PgKI16yrn687+uAfQ/da0Ln7feyN60Mi8T1
	Ky6xEl5KtMw5dWCxK4im6huIRHKcp8P7+v4E/jckQhWtmWbnSUI53Y96U0WZWbVPYOJfOnwWiepBR
	xIBW7N59xQFufBfH8kpzV6uv68q0Gxndmk6DZrRaqqRfQR+p3PrDxZmpUpHFSe18dH1iEHZWtdKSo
	MhaxrcllOUcsYSDqXdlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCKyS-0005Gp-Ny; Thu, 12 Mar 2020 10:21:56 +0000
Received: from smtprelay0137.hostedemail.com ([216.40.44.137]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCKyK-0005G9-Kg
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:21:49 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 5C1362C94;
 Thu, 12 Mar 2020 10:21:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3865:3866:3867:3868:3871:3872:4321:5007:6119:10004:10400:10848:11232:11658:11914:12043:12297:12679:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21433:21627:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: thumb39_48ee4dd62f451
X-Filterd-Recvd-Size: 1674
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Thu, 12 Mar 2020 10:21:41 +0000 (UTC)
Message-ID: <81bad451e9ffee6990ffc3571bc7b558c1c26bb3.camel@perches.com>
Subject: Re: [PATCH -next 006/491] ARM/RISCPC ARCHITECTURE: Use fallthrough;
From: Joe Perches <joe@perches.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Date: Thu, 12 Mar 2020 03:19:57 -0700
In-Reply-To: <20200312101130.GX25745@shell.armlinux.org.uk>
References: <cover.1583896344.git.joe@perches.com>
 <fb956ff22b89ac7a7f97489b29ecf13a32de8d06.1583896348.git.joe@perches.com>
 <20200312101130.GX25745@shell.armlinux.org.uk>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_032148_738561_97976CE9 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.137 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.137 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-scsi@vger.kernel.org, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-03-12 at 10:11 +0000, Russell King - ARM Linux admin wrote:
> On Tue, Mar 10, 2020 at 09:51:20PM -0700, Joe Perches wrote:
> > Convert the various uses of fallthrough comments to fallthrough;
> 
> And the point of what on the face of it seems to be useless churn is?
> 
> What compilers support this?

gcc 7.1, clang 9

clang does not support the /* fallthrough */ comment styles.

clang does support the __attribute__((__fallthrough__))
and the c++17 [[fallthrough]] weirdness.

see:

commit 294f69e662d1 ("compiler_attributes.h: Add 'fallthrough' pseudo
keyword for switch/case use")


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
