Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883A8104A49
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 06:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqH7nRVgaYG0YFCXsBiWsm+5aq83z2hVxUngkHRJANA=; b=HGkM9p1ul0l/91
	qBOhCF3CCohrncC+eT4xhZXvpMykTO0uMG5S/NQMRnDojdVGVUJ4LppYyOm3J8ISwKaZCNy7b3N9p
	e8AJtXG5A/Vq2Yhf0OOSfamDZ1yGZpF+FuIGt4rdlgtAxIB10WPhuolgqMm9X/5gBWgEQFQ8nDPSr
	Dg6cURFTbs/LaOIqxe/hvsIEQH3rJ91KBCVhSWzCcsghxXObehLh9e6rguVqnnOdbQAWJ1r2EO1Lf
	f8hwoidz0J/Wr4o3GPn7THO1bqaCaQjEo1uRcXJWZ2lGwH6XCbKjFEuSFrSTz+nup85xMwzYjAZv7
	oTjjfh6yDG6sTzbOpfcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXf3q-00077x-8P; Thu, 21 Nov 2019 05:31:22 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXf3h-00076y-Ju; Thu, 21 Nov 2019 05:31:15 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iXf3P-0000vj-W0; Thu, 21 Nov 2019 13:30:56 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iXf3G-0002bu-Mm; Thu, 21 Nov 2019 13:30:46 +0800
Date: Thu, 21 Nov 2019 13:30:46 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v3 0/4] Raspberry Pi 4 HWRNG Support
Message-ID: <20191121053046.coobocevp4uwwugb@gondor.apana.org.au>
References: <20191120031622.88949-1-stephen@brennan.io>
 <3e78d01f-f7a4-b3c4-4d23-7be7d6ad764d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e78d01f-f7a4-b3c4-4d23-7be7d6ad764d@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_213113_799581_5BDE0B77 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Stephen Brennan <stephen@brennan.io>,
 Matt Mackall <mpm@selenic.com>, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 08:09:57PM -0800, Florian Fainelli wrote:
> Hi Herbert,
> 
> On 11/19/2019 7:16 PM, Stephen Brennan wrote:
> > This patch series enables support for the HWRNG included on the Raspberry
> > Pi 4.  It is simply a rebase of Stefan's branch [1]. I went ahead and
> > tested this out on a Pi 4.  Prior to this patch series, attempting to use
> > the hwrng gives:
> > 
> >     $ head -c 2 /dev/hwrng
> >     head: /dev/hwrng: Input/output error
> > 
> > After this series, the same command gives two random bytes.
> 
> When we get a review from Rob, you can take patches 1-2 through your
> tree and Stefan/Nicholas can queue patches 3-4 through the BCM2835 tree
> where the DTS files already exist. Does that work for you?

Yes sure.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
