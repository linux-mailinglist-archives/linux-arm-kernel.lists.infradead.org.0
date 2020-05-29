Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D51C61E77C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 10:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iwqi4VSKbS00bgQJa5E7GczRWM/BPspPec027koYzVw=; b=pEEAVoTmZ2PFf6
	4k3SKti+GJ1TzuAYyrNG7QtCDSMybGfBBiFeeUAK7FpcNRISOB+cODvjzCvSB250w3gPuDlwFnLtx
	eFmr3Lla8r+5BfEv0fVZqcRRjYyBs3zGCekXPixm14Pt7M92GZqgYvt83Q+c0vBjjD63rcrX6Zi2R
	NfqkYrI86c9r5dWTW+Z8L/Jq3MjrtoCazcv8OwSUFPn8K4OaJhjK7+AQzmPucPcvqQ9ub9rExxngr
	w4LEvSPmsrVCFY9nXamzA91eoZnqMp7BMhBbojNsDKj2uD1jHrOpCkcTPYYyt9VFbJeyY5sDahfah
	2oVQHPurliR4phq1gOOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jea1M-0004ee-73; Fri, 29 May 2020 08:05:40 +0000
Received: from [216.24.177.18] (helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jea1D-0004dQ-8L
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 08:05:32 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
 id 1jea0q-00009x-S2; Fri, 29 May 2020 18:05:09 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 29 May 2020 18:05:08 +1000
Date: Fri, 29 May 2020 18:05:08 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
Message-ID: <20200529080508.GA2880@gondor.apana.org.au>
References: <20200519190211.76855-1-ardb@kernel.org>
 <20200528073349.GA32566@gondor.apana.org.au>
 <CAMj1kXGkvLP1YnDimdLOM6xMXSQKXPKCEBGRCGBRsWKAQR5Stg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXGkvLP1YnDimdLOM6xMXSQKXPKCEBGRCGBRsWKAQR5Stg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_010531_294553_CEC06518 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Eric Biggers <ebiggers@kernel.org>, Stephan Mueller <smueller@chronox.de>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 10:33:25AM +0200, Ard Biesheuvel wrote:
>
> The reason we return output IVs for CBC is because our generic
> implementation of CTS can wrap any CBC implementation, and relies on
> this output IV rather than grabbing it from the ciphertext directly
> (which may be tricky and is best left up to the CBC code)

No that's not the main reason.  The main user of chaining is
algif_skcipher.

> So if you are saying that we should never split up algif_skcipher
> requests into multiple calls into the underlying skcipher, then I
> agree with you. Even if the generic CTS seems to work more or less as
> expected by, e.g., the NIST validation tool, this is unspecified
> behavior, and definitely broken in various other places.

I was merely suggesting that requests to CTS/XTS shouldn't be
split up.  Doing it for others would be a serious regression.

However, having looked at this it would seem that the effort
in marking CTS/XTS is not that different to just adding support
to hold the last two blocks of data so that CTS/XTS can support
chaining.

I'll work on this.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
