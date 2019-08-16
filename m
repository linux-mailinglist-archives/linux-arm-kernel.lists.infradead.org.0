Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3846090774
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 20:05:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxQEyOOhpVUvamieuS0M4/PUmX46B3fc0l8ik48CLPg=; b=kKBwrY+4GlZUcf
	nP8g8Q3nCI28yYn37Z/b3n3dUNtrCAktZGhGcO95+FZ516ljWyl1vvdCBruhiNf74JRf/oPaISmiH
	hxtrJ0fcyqY1awCwCNclBjlusyQ8R607KLEIYsZjQyuFXS9qZ9SVZzt814OA1Q9iv01oQsE2ikQfK
	sMK/MPPRI+KGZkLL04HckqpWXVV4of1GdwMRJEj37LYVWG+yA/n25h+xKds8JI4fSY0ne1bR5/pTm
	c61XZY/VwxyDBIhC5j+h6sCiwc+/We4Vl+lOfYL8B1gZc0Kq2G1mOuedBlbSXIU9sNgeqau6TVq7j
	Yl17qyOfHv7HCfl0LFRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hygbd-0003zS-BX; Fri, 16 Aug 2019 18:05:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hygbQ-0003z7-BM
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 18:05:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7830C20665;
 Fri, 16 Aug 2019 18:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565978727;
 bh=ATa8fe0CxhAbQASCjl6IYhzQjKdSYeQNhdmBcA2ZRlU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yclaVWCYpQyvh9OaGQPrYfiMYsvcW/o5PkOIV7eQUmhstIzpx2ZZ0sSjiKcxqnMgv
 7z+Jikxzq4/ZIHpHnEO2nuFXbcvpn1v46HdwXjYNwayNZxp8x1aicBOflxg1CSeLTk
 vayH5O/ix+LVeWKI9G785+H8RXwq5z7rEAqzMsfo=
Date: Fri, 16 Aug 2019 19:05:22 +0100
From: Will Deacon <will@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 6/6] arm64: document the choice of page attributes for
 pgprot_dmacoherent
Message-ID: <20190816180522.gocqeayajlbu4gzp@willie-the-truck>
References: <20190816070754.15653-1-hch@lst.de>
 <20190816070754.15653-7-hch@lst.de>
 <20190816173118.4rbbzuogfamfa554@willie-the-truck>
 <20190816175942.GA4879@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816175942.GA4879@lst.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_110528_413342_539DF6AF 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Anastasio <shawn@anastas.io>, linux-m68k@lists.linux-m68k.org,
 Guan Xuetao <gxt@pku.edu.cn>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-mips@vger.kernel.org, iommu@lists.linux-foundation.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Paul Burton <paul.burton@mips.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 07:59:42PM +0200, Christoph Hellwig wrote:
> On Fri, Aug 16, 2019 at 06:31:18PM +0100, Will Deacon wrote:
> > Mind if I tweak the second sentence to be:
> > 
> >   This is different from "Device-nGnR[nE]" memory which is intended for MMIO
> >   and thus forbids speculation, preserves access size, requires strict
> >   alignment and can also force write responses to come from the endpoint.
> > 
> > ? It's a small change, but it better fits with the arm64 terminology
> > ("strongly ordered" is no longer used in the architecture).
> > 
> > If you're happy with that, I can make the change and queue this patch
> > for 5.4.
> 
> I'm fine with the change, but you really need this series as base,
> as there is no pgprot_dmacoherent before the series.  So I think I'll
> have to queue it up if we want it for 5.4, and I'll need a few more
> reviews for the other patches in this series first.

Ah, I didn't think about the contextual stuff. In which case, with my
change in wording:

Acked-by: Will Deacon <will@kernel.org>

and feel free to route it with the rest.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
