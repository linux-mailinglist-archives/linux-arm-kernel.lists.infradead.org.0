Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72791DAAF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awVV//4+Fp3Sep1BMSTwdtyWGxhWbIYMjpNbw7Co1tE=; b=nYCGao5zBKbfFY
	FNjMSJQ4ZQWtv3I+M1lYBecqnXHDpy5ySA1nQIld82btEesye/Zq06e0BcWHYvAHDDlrI5Qo8Jm6a
	3nJ9K0iDausLatEXAYfFCY0L2Q5BCLP3LGYO0YW7UStdJJ9IQMpOA3l3y25hmUrseS8mhOiu/fm7s
	c2kZQ19TsR8VaqCeV5wnt7Gy1VY5+lZVdVQre5qL70fd23Lz6bdC4atC3WPgVSj2/3SThvnvPEYGX
	hf/1oxslAuGYO4DZ3G2ET/2iA0ZRv+tsgWBbP41pdXGiSVt59anpuxzWaG+m1TRnXFOPfFc9qjNbP
	cLbsWW3MYVvc8AnUNV0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIW8-0003aE-BK; Wed, 20 May 2020 06:47:52 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIVw-0003Wv-3c
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:47:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589957258;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=7Bptyy9dxCdFVwdRa4JBhNQsRKOJ/eD+RxAuL10DQGo=;
 b=U3Z/+3sHPB5mo9fbCKj8RlSOjJUbVCElkerVnzC64+zMaCo8mWTjhcT9JU1co8jcZn
 EBLZGnt1AEW6nLORNqtXaHtFKkMowiO9k2VDR7ohpUSxh8AIDeQ/KThbr/Qz2/wr3qf2
 G/MCEf2vKiBRSOkZyNDG3KsOLi9iw3md5cGi4wqJ0bRvNKxk9Kbch+fE2ioOWiL2bWUT
 nCXYVswL5lpwkBqZZcnyhJmD8eOYWdq+CIWsmUxGh3VkFb4SiwZh9AAoPNvgLMwQuzg8
 +owIlClohCsZJ5JtXWK+WsQ4z7O6XX9mhlJbX01A2Yream3UAgjxLdLNpsDZlUxDnusE
 I29A==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPbI/Sc5g=="
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.7.0 DYNA|AUTH)
 with ESMTPSA id k09005w4K6lc3Bz
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 20 May 2020 08:47:38 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
Date: Wed, 20 May 2020 08:47:37 +0200
Message-ID: <16394356.0UTfFWEGjO@tauon.chronox.de>
In-Reply-To: <CAMj1kXFDcHncnb=aUkWnX22Co2r4g3DSM+wug0FQ231Gv7J01Q@mail.gmail.com>
References: <20200519190211.76855-1-ardb@kernel.org>
 <16565072.6IxHkjxkAd@tauon.chronox.de>
 <CAMj1kXFDcHncnb=aUkWnX22Co2r4g3DSM+wug0FQ231Gv7J01Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_234740_736104_B15B8748 
X-CRM114-Status: GOOD (  25.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Eric Biggers <ebiggers@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 20. Mai 2020, 08:40:57 CEST schrieb Ard Biesheuvel:

Hi Ard,

> On Wed, 20 May 2020 at 08:03, Stephan Mueller <smueller@chronox.de> wrote:
> > Am Dienstag, 19. Mai 2020, 21:02:09 CEST schrieb Ard Biesheuvel:
> > 
> > Hi Ard,
> > 
> > > Stephan reports that the arm64 implementation of cts(cbc(aes)) deviates
> > > from the generic implementation in what it returns as the output IV. So
> > > fix this, and add some test vectors to catch other non-compliant
> > > implementations.
> > > 
> > > Stephan, could you provide a reference for the NIST validation tool and
> > > how it flags this behaviour as non-compliant? Thanks.
> > 
> > The test definition that identified the inconsistent behavior is specified
> > with [1]. Note, this testing is intended to become an RFC standard.
> 
> Are you referring to the line
> 
> CT[j] = AES_CBC_CS_ENCRYPT(Key[i], PT[j])
> 
> where the CTS transform is invoked without an IV altogether?

Precisely.

> That
> simply seems like a bug to me. In an abstract specification like this,
> it would be insane for pseudocode functions to be stateful objects,
> and there is nothing in the pseudocode that explicitly captures the
> 'output IV' of that function call.

I think the description may be updated by simply refer to IV[j-1]. Then you 
would not have a stateful operation, but you rest on the IV of the previous 
operation.

The state of all block chaining modes we currently have is defined with the 
IV. That is the reason why I mentioned it can be implemented stateless when I 
am able to get the IV output from the previous operation.

> 
> > To facilitate that testing, NIST offers an internet service, the ACVP
> > server, that allows obtaining test vectors and uploading responses. You
> > see the large number of concluded testing with [2]. A particular
> > completion of the CTS testing I finished yesterday is given in [3]. That
> > particular testing was also performed on an ARM system with CE where the
> > issue was detected.
> > 
> > I am performing the testing with [4] that has an extension to test the
> > kernel crypto API.
> 
> OK. So given that that neither the CTS spec nor this document makes
> any mention of an output IV or what its value should be, my suggestion
> would be to capture the IV directly from the ciphertext, rather than
> relying on some unspecified behavior to give you the right data. Note
> that we have other implementations of cts(cbc(aes)) in the kernel as
> well (h/w accelerated ones) and if there is no specification that
> defines this behavior, you really shouldn't be relying on it.

Agreed, but all I need is the IV from the previous round without relying on 
any state.
> 
> 
> That 'specification' invokes AES_CBC_CS_ENCRYPT() twice using a
> different prototype, without any mention whatsoever what the implied
> value of IV[] is if it is missing. This is especially problematic
> given that it seems to cover all of CS1/2/3, and the relation between
> next IV and ciphertext is not even the same between those for inputs
> that are a multiple of the blocksize.

I will relay that comment back to the authors for update.
> 
> > [1]
> > https://github.com/usnistgov/ACVP/blob/master/artifacts/draft-celi-acvp-b
> > lock-ciph-00.txt#L366
> > 
> > [2]
> > https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program
> > / validation-search?searchMode=validation&family=1&productType=-1&ipp=25
> > 
> > [3]
> > https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program
> > / details?validation=32608
> > 
> > [4] https://github.com/smuellerDD/acvpparser
> > 
> > > Cc: Stephan Mueller <smueller@chronox.de>
> > > 
> > > Ard Biesheuvel (2):
> > >   crypto: arm64/aes - align output IV with generic CBC-CTS driver
> > >   crypto: testmgr - add output IVs for AES-CBC with ciphertext stealing
> > >  
> > >  arch/arm64/crypto/aes-modes.S |  2 ++
> > >  crypto/testmgr.h              | 12 ++++++++++++
> > >  2 files changed, 14 insertions(+)
> > 
> > Ciao
> > Stephan


Ciao
Stephan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
