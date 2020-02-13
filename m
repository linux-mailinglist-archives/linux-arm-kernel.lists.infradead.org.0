Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4C215BCF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:39:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYDLT5LOdt/s6U68x/UXaPRHjdSXNX5ONOT6jCvL5xo=; b=l5C6m0MergS0O+
	s3seHzC5nft9mMi26XgNwZVxneNWHEnxBa4RzlxwySZ2+C5z2OvEEGPVE801p+DEWvvNxxPlu1A5O
	1NL+kLIugPKG1meosPZ5xHIG+8kvt5ya2RtdGp6oXFo7buYLrSV8gex/ZMlbABUizPMNLudl6p8Bd
	iU5LgbfMTiTZSzuuMamcXC4Mj+c1qJ6bOmfyDOIY/yP6hZWvN4jOmD6bfefVBZPxxd7Hy8SKoiWCK
	nJ9ukO5aAdR6DgJk8gIqLOM4Pw9ssOBn8BbLbVJ6huV6P13/8uiVDoPbDjYvzQ6EoN9uO11P5qRg5
	quofDWxztl2XMCM3IAGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Btm-0005cj-FA; Thu, 13 Feb 2020 10:39:10 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Btb-0005cP-8S
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:39:01 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1j2BtX-0004dU-3m; Thu, 13 Feb 2020 18:38:55 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1j2BtT-0006xr-LO; Thu, 13 Feb 2020 18:38:51 +0800
Date: Thu, 13 Feb 2020 18:38:51 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: Re: [PATCH] crypto: arm64/poly1305: ignore build files
Message-ID: <20200213103851.d26zufgvivamulcg@gondor.apana.org.au>
References: <20200203233933.19577-1-mcroce@redhat.com>
 <20200213092355.i77luefms23jkud2@gondor.apana.org.au>
 <20200213103444.GA700076@zx2c4.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213103444.GA700076@zx2c4.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_023859_441644_093ECAD3 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Matteo Croce <mcroce@redhat.com>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 11:34:44AM +0100, Jason A. Donenfeld wrote:
> On Thu, Feb 13, 2020 at 05:23:55PM +0800, Herbert Xu wrote:
> > On Tue, Feb 04, 2020 at 12:39:33AM +0100, Matteo Croce wrote:
> > > Add arch/arm64/crypto/poly1305-core.S to .gitignore
> > > as it's built from poly1305-core.S_shipped
> > > 
> > > Fixes: f569ca164751 ("crypto: arm64/poly1305 - incorporate OpenSSL/CRYPTOGAMS NEON implementation")
> > > Signed-off-by: Matteo Croce <mcroce@redhat.com>
> > > ---
> > >  arch/arm64/crypto/.gitignore | 1 +
> > >  1 file changed, 1 insertion(+)
> > 
> > Patch applied.  Thanks.
> 
> Probably makes sense for 5.6, no?

No this is too minor.  Only critical bug fixes (e.g., user
triggerable crashes) or build issues are routinely accepted.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
