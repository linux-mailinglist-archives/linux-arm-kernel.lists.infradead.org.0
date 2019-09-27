Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7F1BFDD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 06:02:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQykPyCOOcxR9BZWjEm5cKdRUKXAUWsFOzBVxXeDhDU=; b=MFI+vzae+0NokO
	Z+YAE6qduYw1KX5unvF7s8Z5zPKVQ4OwYHeXpToGcqVXAgNXS72X1wHkM7mBH7hzwNLgfRZXJQ0fV
	dbCrUd6iN6sdETXq8qDGU6fZCAcddBUN5QDtykIGl/qNT5DgmuwACVxFnKagsy+7Z+cF0Dz2TJ3LU
	EanRN0XufVN8pP63MtQ6UYt6GsAnUKz2XW36P7+sDIrSKdzLJIuRkCwHAiGH1JG0VrIkFtK11ipf9
	EuVDJaaWVFe65UahDOHoyK6gHN5yXoeyL+knu4Hyo6NH8XaE9KMhPBfeCc2xgr7BOo9JpwCLh+/Q8
	Rc2fEg0Bl1irXtHTzp2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDhSY-0002gj-PB; Fri, 27 Sep 2019 04:02:24 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDhSA-0002gN-JL
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 04:02:01 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1iDhRw-0001yA-0u; Fri, 27 Sep 2019 14:01:45 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 27 Sep 2019 14:01:41 +1000
Date: Fri, 27 Sep 2019 14:01:41 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Message-ID: <20190927040140.GA24370@gondor.apana.org.au>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
 <CAHk-=whqWh8ebZ7ryEv5tKKtO5VpOj2rWVy7wV+aHWGO7m9gAw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whqWh8ebZ7ryEv5tKKtO5VpOj2rWVy7wV+aHWGO7m9gAw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_210159_190961_4D704C85 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>,
 Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 07:54:03PM -0700, Linus Torvalds wrote:
>
> There's no "read_potentially_async()" interface that just does the
> synchronous read for any cached portion of the data, and then delays
> just the IO parts and returns a "here, I gave you X bytes right now,
> use this cookie to wait for the rest".

Incidentally this is exactly how the crypto async interface works.
For example, the same call works whether you're sync or async:

	aead_request_set_callback(req, ...);
	aead_request_set_crypt(req, ...);
	err = crypto_aead_encrypt(req);
	if (err == -EINPROGRESS)
		/*
		 * Request is processed asynchronously.
		 * This cannot occur if the algorithm is sync,
		 * e.g., when you specifically allocated sync
		 * algorithms.
		 */
	else
		/* Request was processed synchronously */

We even allow the request to be on the stack in the sync case, e.g.,
with SYNC_SKCIPHER_REQUEST_ON_STACK.

> Maybe nobody would use it. But it really should be possibly to have
> interfaces where a good synchronous implementation is _possible_
> without the extra overhead, while also allowing async implementations.

So there is really no async overhead in the crypto API AFAICS if
you're always doing sync.  What you see as overheads are probably
the result of having to support multiple underlying algorithms
(not just accelerations which can indeed be handled without
indirection at least for CPU-based ones).

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
