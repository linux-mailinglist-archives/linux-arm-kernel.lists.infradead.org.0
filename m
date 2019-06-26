Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A4556DE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 17:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CH9oHTRsWpwJWPWywyxn0+JwuFdYD+QcVDprlfFKiE=; b=W26EvzspzB2bEV
	r7RcmaG0FSxw8Y6cZ8TiF1+13FYDKIwkS+sSmusbWK+rFkr5vutJWvziAt3h9MEWGM/FIDRC7IOoJ
	M1DLmNx6H8gJX+bGbVX8mGBAOK+rz+z72i+r3iIAI+L3acKogGR9nU6J5Wui+HLj74FSW9BAlo/zC
	9AawDmfOoelaUoawTC2atwK3l9MxbRvnl3z/5MKaKKxYP4kMQiy+Sdt6543jGWwvis5NVplVNgTQe
	u1q5XPKQVMCH0PkA3kIcV6t8Y2mmJlgcVpdCJ/zShZV2F1GhreR/tE/D+x60k9yh/H4cCZCBXPXb9
	Uw8tA/Qk3jCoEkqnBg2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgA0P-0006RU-PG; Wed, 26 Jun 2019 15:38:41 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hgA0D-0006Qo-QY; Wed, 26 Jun 2019 15:38:29 +0000
Date: Wed, 26 Jun 2019 08:38:29 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
Message-ID: <20190626153829.GA22138@infradead.org>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
 <20190626123139.GB20635@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626123139.GB20635@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Michal Hocko <mhocko@suse.com>, anshuman.khandual@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, linux-mm@kvack.org,
 Jason Gunthorpe <jgg@mellanox.com>, akpm@linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 01:31:40PM +0100, Mark Rutland wrote:
> On Wed, Jun 26, 2019 at 12:35:33AM -0700, Christoph Hellwig wrote:
> > Robin, Andrew:
> 
> As a heads-up, Robin is currently on holiday, so this is all down to
> Andrew's preference.
> 
> > I have a series for the hmm tree, which touches the section size
> > bits, and remove device public memory support.
> > 
> > It might be best if we include this series in the hmm tree as well
> > to avoid conflicts.  Is it ok to include the rebase version of at least
> > the cleanup part (which looks like it is not required for the actual
> > arm64 support) in the hmm tree to avoid conflicts?
> 
> Per the cover letter, the arm64 patch has a build dependency on the
> others, so that might require a stable brnach for the common prefix.

I guess we'll just have to live with the merge errors then, as the
mm tree is a patch series and thus can't easily use a stable base
tree.  That is unlike Andrew wants to pull in the hmm tree as a prep
patch for the series.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
