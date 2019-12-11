Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8573C11A798
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:40:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCROHfi58vX+gmu28wzMh3SdbNLN1MYRatyrnF8MK1k=; b=jt9hHtOnkUhe/B
	MQsE6A9T0pV3twOuO5OEV3ICVvssPLeCx0GWcqmXkT/mrqm3jYHwr+1sbfGef9X28TOCG3K77RacI
	gkPSVLUY0BMoXwDM/gwLjC/AQjC0OJbCC2OihkCBSuJU0hfsxmMp+aI8j/mE4s0ClcpjBYWh5y3Oq
	SLFRju6vCwtVRgbEBCUUnP/SY1gVmzCM0Yunjykkg8zZQGgrUj8yj7GEsB24/hl+u0jowadEoDRsF
	nfr+OomYdXc0G7cX9TnLlUVB1YKoseOC8hxXuuFJBRkVjlDPp2zOJ5ZRxYHPfZLRV3mxIeSJUciGc
	SzmUR9C9URwFZoyxEg6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyU3-00012k-EN; Wed, 11 Dec 2019 09:40:39 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyTv-00012B-8D
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:40:32 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1ieyTp-0000DT-VC; Wed, 11 Dec 2019 17:40:26 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1ieyTp-00071q-PC; Wed, 11 Dec 2019 17:40:25 +0800
Date: Wed, 11 Dec 2019 17:40:25 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4] crypto: arm64/sha: fix function types
Message-ID: <20191211094025.6gagdb5iwk7bcjr3@gondor.apana.org.au>
References: <20191112223046.176097-1-samitolvanen@google.com>
 <20191127235503.93635-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127235503.93635-1-samitolvanen@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_014031_440431_E526C7B8 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kees Cook <keescook@chromium.org>, Eric Biggers <ebiggers@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 03:55:03PM -0800, Sami Tolvanen wrote:
> Instead of casting pointers to callback functions, add C wrappers
> to avoid type mismatch failures with Control-Flow Integrity (CFI)
> checking.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> ---
> Changes in v4:
>   - Removed unnecessary returns.
> 
> Changes in v3:
>   - Removed unnecessary inline attributes.
> 
> Changes in v2:
>   - Added wrapper functions instead of changing parameter types
>     for the assembly functions.
> 
> ---
>  arch/arm64/crypto/sha1-ce-glue.c   | 17 +++++++++------
>  arch/arm64/crypto/sha2-ce-glue.c   | 34 ++++++++++++++++++------------
>  arch/arm64/crypto/sha256-glue.c    | 32 +++++++++++++++++-----------
>  arch/arm64/crypto/sha512-ce-glue.c | 26 ++++++++++++-----------
>  arch/arm64/crypto/sha512-glue.c    | 15 ++++++++-----
>  5 files changed, 76 insertions(+), 48 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
