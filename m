Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8924E5192F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEAILstvKFzTCItVU8y4Ap+PK4izxghLjyKAwP582cU=; b=KRunEr1ghEz4Zl
	UhXeH7Fw7V09PepANlhqtxWQVzQdW+6iQTVoK8y64cONf8E9DB0RQfipxL4UaWOcs0JVJsqR4NO8P
	oQ3ZQn9N3M6poLvhw/k9p6bx8EcwzyDnQgSDopWZpCR8KcFt0ScpV9qDj+4mcvqh7wu+uJJrn3K8z
	UPiMgJayltgr+TQ3ZanpFO8LvtKurPo8tZQqS6xfVKsr4RQdZaSMf4bQhgenSIuKLoObczwx04eqn
	w1HsArsBq5DuuyHfqnV7tv/8Ql5ALEjG0Zar8WIHqO0gsa5xNS1Qrxw0pOLiBbCOGqwXrwMHLQu6j
	UmrjM18yIss8QWXNGOvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSH2-0001UW-0T; Mon, 24 Jun 2019 16:56:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSGr-0001U2-EL
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:56:46 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62B54204FD;
 Mon, 24 Jun 2019 16:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561395404;
 bh=3hkfTpC6rBigy8mkthNbeb4HOBKv55TtVfAodMMom1s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0uRYdpMHOhraNoygK/CwO+XJYTCqH/IF17KSJxeSmOhK7TbbEhcX7qumziczOhWUY
 KErUvZz2+FgahvGOqwJbF7L1pCHIreL9z2rsTSAXTfmfsvSP8P2+KtIxP2GmZ5quSY
 hRzbcNYe++IieiqZpqb8gJ+WFWT2926yp0+KHBX0=
Date: Mon, 24 Jun 2019 09:56:42 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Ondrej Mosnacek <omosnace@redhat.com>
Subject: Re: [PATCH 0/6] crypto: aegis128 - add NEON intrinsics version for
 ARM/arm64
Message-ID: <20190624165641.GB211064@gmail.com>
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_095645_501390_54B52FE0 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.2 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Milan Broz <gmazyland@gmail.com>, Steve Capper <steve.capper@arm.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 09:38:12AM +0200, Ard Biesheuvel wrote:
> Now that aegis128 has been announced as one of the winners of the CAESAR
> competition, it's time to provide some better support for it on arm64 (and
> 32-bit ARM *)
> 
> This time, instead of cloning the generic driver twice and rewriting half
> of it in arm64 and ARM assembly, add hooks for an accelerated SIMD path to
> the generic driver, and populate it with a C version using NEON intrinsics
> that can be built for both ARM and arm64. This results in a speedup of ~11x,
> resulting in a performance of 2.2 cycles per byte on Cortex-A53.
> 
> Patches #1 .. #3 are some fixes/improvements for the generic code. Patch #4
> adds the plumbing for using a SIMD accelerated implementation. Patch #5
> adds the ARM and arm64 code, and patch #6 adds a speed test.
> 
> Note that aegis128l and aegis256 were not selected, and nor where any of the
> morus contestants, and so we should probably consider dropping those drivers
> again.
> 

I'll also note that a few months ago there were attacks published on all
versions of full MORUS, with only 2^76 data and time complexity
(https://eprint.iacr.org/2019/172.pdf).  So MORUS is cryptographically broken,
and isn't really something that people should be using.  Ondrej, are people
actually using MORUS in the kernel?  I understand that you added it for your
Master's Thesis with the intent that it would be used with dm-integrity and
dm-crypt, but it's not clear that people are actually doing that.

In any case we could consider dropping the assembly implementations, though.

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
