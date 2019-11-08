Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4657AF42EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:15:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLb5J8JnYcLaMW1cDbcUNieJGcSt25gfow00dJ8+qJo=; b=sLRw3HScpPzt0z
	DYzjCk1Shwo0By9/qq68Za0e5Sxm6CzX9G5FrRVApb1xOUcAnFxSwdyOFaqYX1PPQHVUeIlF731S/
	vvk6YJOW85Mj04Wht2rLtyb0qPgGYT17uODsMoB3C+1QwXAeZUG2gvjYcc8QC6rJ8mGdFmjUI1fTL
	2rniTtirwYuNWtzffM0S0nbgR2TEx8K9i778Y8wXSoaH3TeaQzM6gjEySuJSzZDwyU2sEmwphFGMb
	TBSp1/8YbNOxgFYoBCGPROkjpQMdQ3Sa7xgdsd+njN6NIcQUk0DSNhmSrxNgXHjVbQDgun9GWBfP2
	PCOU8fW3EHjPs9ckJgVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0Mf-0002nS-9D; Fri, 08 Nov 2019 09:15:33 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0MX-0002mH-SE
 for linux-arm-kernel@lists.infradead.orG; Fri, 08 Nov 2019 09:15:27 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iT0M4-0001zl-6I; Fri, 08 Nov 2019 17:14:56 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iT0Ll-0002Ku-4Z; Fri, 08 Nov 2019 17:14:37 +0800
Date: Fri, 8 Nov 2019 17:14:37 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v3 25/29] crypto: qat - switch to skcipher API
Message-ID: <20191108091437.kkpx3top6slrueuh@gondor.apana.org.au>
References: <20191105132826.1838-1-ardb@kernel.org>
 <20191105132826.1838-26-ardb@kernel.org>
 <20191107112616.GA744@silpixa00400314>
 <CAKv+Gu8TNmpmHCaKd2V=0oKTsrRufgUWc8S2bFN146kdN_jdcA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8TNmpmHCaKd2V=0oKTsrRufgUWc8S2bFN146kdN_jdcA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_011526_538125_6BCF6428 
X-CRM114-Status: UNSURE (   5.78  )
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
Cc: Giovanni Cabiddu <giovanni.cabiddu@intel.com>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 12:34:04PM +0100, Ard Biesheuvel wrote:
>
> Are you taking this directly, or would you like me to incorporate it
> into the next revision of my ablkcipher series? (assuming we'll need
> one)

Please squash it into your series.  Thanks Ard!
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
