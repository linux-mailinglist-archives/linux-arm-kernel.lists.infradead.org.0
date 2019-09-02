Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5C8A5096
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vi+RnMELxK9KVAIz4sLaM97ofVZlbUM8XpearERPlgA=; b=SnVzL9YTmgZo0y
	DrczcjE87u8OXwkF58dxATHjRPt2hrACuFTH1r7q7+zYelHkwUXt0FRee0djFxddQFNfjMVJKSpu8
	qL7f9Sg59qtqvWv5WgLc4OhsDDXb4XY3T71V9Omn0dR2G2sdyMI2FapsfdHIR3HqpQZFCTkKj4y8N
	yJ/O2UKoGyCW/u7907w2pnuj2KXyhbWxzP8N6UNS+Ocw4G2Ag6x5H7vlya5MTztOTpuUkogUBR7iL
	Zm8UDFDG70PIuqp6X05W+A3KwFDQ91oHSOylObBiDITL2qDN20aw6TiT88QYpOQOb40QigLc7ySUs
	8yjlOl1SH9/WpNkrlONw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hHS-0003a3-Gu; Mon, 02 Sep 2019 08:01:42 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hH9-0003Y7-45
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:01:27 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 154AA227A8A; Mon,  2 Sep 2019 10:01:18 +0200 (CEST)
Date: Mon, 2 Sep 2019 10:01:17 +0200
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 14/26] asm-generic: don't provide __ioremap
Message-ID: <20190902080117.GC29137@lst.de>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-15-hch@lst.de>
 <alpine.DEB.2.21.9999.1908171357180.4130@viisi.sifive.com>
 <20190830160404.GA26887@lst.de>
 <CAK8P3a15WV-iNqTJxqgo_EYmTOp8HapTKrd56q0wziKePPMOtA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a15WV-iNqTJxqgo_EYmTOp8HapTKrd56q0wziKePPMOtA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_010123_310938_29DECCC0 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christoph Hellwig <hch@lst.de>,
 =?us-ascii?Q?Cc=40lst=2Ede=3APaul_Walmsley_=3Cpaul=2Ewalmsley=40sifive?=
 =?us-ascii?B?LmNvbT4sIEd1byBSZW4gPGd1b3JlbkBrZXJuZWwub3JnPiwgTWljaGFsIFNp?=
 =?us-ascii?B?bWVrIDxtb25zdHJAbW9uc3RyLmV1PiwgR3JlID0/VVRGLTg/UT9lbnRpbWVf?=
 =?us-ascii?B?SHVfPTNDZ3JlZW49MkVodT00MGdtYWlsPTJFY29tPTNFPTJDX1ZpbmNlbnRf?=
 =?us-ascii?Q?Chen=5F=3D3Cdean?= <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 09:47:45PM +0200, Arnd Bergmann wrote:
> On Fri, Aug 30, 2019 at 6:04 PM Christoph Hellwig <hch@lst.de> wrote:
> >
> > Arnd, can you consider this patch for asm-generic for 5.4?  I don't
> > think I'll be able to feed the actual generic ioremap implementation
> > to Linus this merge window, but if we can get as many patches as
> > possible in through their maintainer trees that would make my life
> > much easier.
> 
> Applied now, I missed it earlier when I was on vacation.

Thanks.  I think the next two patches (15 and 16) should also be
fine for the asm-generic tree for 5.4.  For patch 17 I'd rather have
all arch patches in first.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
