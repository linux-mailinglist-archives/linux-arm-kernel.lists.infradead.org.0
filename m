Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9421736C9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 08:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5slJsnJcEe8Yg+4v4V3sD2R5jyqbulEehH1+6Z4ZfDg=; b=k4HsiE3kW9jA61
	MKWCe8uTrfQJVrCNVrXusui1QmJ2VlLIg8CcokY6c792RYS9OR2VyuhiQOaZmx/1oLww11DBTbZAl
	q0MX5jz5PtczVwByaNiDjL8AGSS58JAsNfLp9MI7wKhmSeOxsA+hPnystHGz8JARZB46DxRDl/4d+
	1whUQHMZG9JZ8R3n9HT8eTUfSvi+M+F3hjyW0CZb9OzxbzkUIEgVSRKLHJ3OVLajKnKXVJT3/cLMw
	uZ/dcdBl0xJZ3OhkydaOlCXIwYeJR7+y8XQ5vbrH973OfPN1w8KUy7rKamH4Nv0zAikZ7q9APTgaR
	zN4jSWPnZkOcRlhMymEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYmHn-0001GX-OQ; Thu, 06 Jun 2019 06:54:07 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYmHg-0001Fs-Ml
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 06:54:02 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hYmHZ-0006xN-RD; Thu, 06 Jun 2019 14:53:53 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hYmHZ-0006kr-4v; Thu, 06 Jun 2019 14:53:53 +0800
Date: Thu, 6 Jun 2019 14:53:53 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH] crypto: lrw - use correct alignmask
Message-ID: <20190606065353.ur5ljwzceiofbzzs@gondor.apana.org.au>
References: <20190530175308.196938-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530175308.196938-1-ebiggers@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_235400_889841_33CDED57 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stable@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ondrej Mosnacek <omosnace@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 10:53:08AM -0700, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Commit c778f96bf347 ("crypto: lrw - Optimize tweak computation")
> incorrectly reduced the alignmask of LRW instances from
> '__alignof__(u64) - 1' to '__alignof__(__be32) - 1'.
> 
> However, xor_tweak() and setkey() assume that the data and key,
> respectively, are aligned to 'be128', which has u64 alignment.
> 
> Fix the alignmask to be at least '__alignof__(be128) - 1'.
> 
> Fixes: c778f96bf347 ("crypto: lrw - Optimize tweak computation")
> Cc: <stable@vger.kernel.org> # v4.20+
> Cc: Ondrej Mosnacek <omosnace@redhat.com>
> Signed-off-by: Eric Biggers <ebiggers@google.com>
> ---
>  crypto/lrw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
