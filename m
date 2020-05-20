Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1B01DAB38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 09:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0couDBYkZOovPkpRE8qXqFmfkPJCLXkdGIHIxNMWWhE=; b=u0VLiILhzsFmR2
	uqy5RMXNxk9J8aFeChxUsBISEWq+ySxq1reLX9ixmmE2iqYjGgRncyccCbcc/dnlKO7OU+5Vz6bdG
	R2HyFbz/2U6rj2NRVwpXURhYohUTMyvMv4401zOkXtj3M/HikhiJop8MOwaCxR3bFW3cYF2Nbjkvb
	zccJCFgpCzlMG/05bfdDoiEcn+Au7dlYk5Bu1Gcqd9kF+K0VIxKcBCQPn0TQbI9zJjY29sBRmfH4j
	MRblxNbFF9mghA8YasWjRwkpycpN3vYOsU2smTScQn8tEh8SQMZ4+2t0WhaQkbeTlbolarw1m9Dn2
	GdUryfQ2z70vKCWEUCdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIj6-0006TW-B1; Wed, 20 May 2020 07:01:16 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIiw-0006Sf-3q
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 07:01:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589958064;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=ZXbdSR51vsexYPQyO6+XHaWV+/YRvrsTI2dhYbAFkWE=;
 b=kSiQO8lco+6O8JInmIR1847diWn3w8daT+EijRodtmDgkYlPfDJfj2RiZ/gaY5LBHc
 gl17jXe1ojHO0nbwgh5FccxYqFx5GAd4D9VNnAKiLzBnXeNkDeEdixsB2AiUyvoDZJ2/
 vPdoyXNNWewZd153Kp01rq1qcoD3O36kQBsSgYOI0lgj+P7gbN+bQJhTjic7Z7jQ3lTS
 rlmjqCB2ZfjOqutiSGNwK+c5qr8lG6tx3IVmoDngFJXGMtQ8Z+Ne3J38tRTSdsUeIi8z
 hYw7fgSlqqF7MxOfA0vMHJ9JYvVkDPc6YqV5etzMgv7gygTAi8EH11lAwyop3VOJ7UIs
 ZfiA==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPbI/Sc5g=="
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.7.0 DYNA|AUTH)
 with ESMTPSA id k09005w4K7143HY
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 20 May 2020 09:01:04 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
Date: Wed, 20 May 2020 09:01:03 +0200
Message-ID: <2010567.jSmZeKYv2B@tauon.chronox.de>
In-Reply-To: <CAMj1kXF=Duh1AsAQy+aLWMcJPQ4RFL5p9-Mnmn-XAiCkzyGFbg@mail.gmail.com>
References: <20200519190211.76855-1-ardb@kernel.org>
 <16394356.0UTfFWEGjO@tauon.chronox.de>
 <CAMj1kXF=Duh1AsAQy+aLWMcJPQ4RFL5p9-Mnmn-XAiCkzyGFbg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_000106_748556_4333F719 
X-CRM114-Status: GOOD (  32.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:9 listed in]
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

Am Mittwoch, 20. Mai 2020, 08:54:10 CEST schrieb Ard Biesheuvel:

Hi Ard,

> On Wed, 20 May 2020 at 08:47, Stephan Mueller <smueller@chronox.de> wrote:
> > Am Mittwoch, 20. Mai 2020, 08:40:57 CEST schrieb Ard Biesheuvel:
> > 
> > Hi Ard,
> > 
> > > On Wed, 20 May 2020 at 08:03, Stephan Mueller <smueller@chronox.de> 
wrote:
> > > > Am Dienstag, 19. Mai 2020, 21:02:09 CEST schrieb Ard Biesheuvel:
> > > > 
> > > > Hi Ard,
> > > > 
> > > > > Stephan reports that the arm64 implementation of cts(cbc(aes))
> > > > > deviates
> > > > > from the generic implementation in what it returns as the output IV.
> > > > > So
> > > > > fix this, and add some test vectors to catch other non-compliant
> > > > > implementations.
> > > > > 
> > > > > Stephan, could you provide a reference for the NIST validation tool
> > > > > and
> > > > > how it flags this behaviour as non-compliant? Thanks.
> > > > 
> > > > The test definition that identified the inconsistent behavior is
> > > > specified
> > > > with [1]. Note, this testing is intended to become an RFC standard.
> > > 
> > > Are you referring to the line
> > > 
> > > CT[j] = AES_CBC_CS_ENCRYPT(Key[i], PT[j])
> > > 
> > > where the CTS transform is invoked without an IV altogether?
> > 
> > Precisely.
> > 
> > > That
> > > simply seems like a bug to me. In an abstract specification like this,
> > > it would be insane for pseudocode functions to be stateful objects,
> > > and there is nothing in the pseudocode that explicitly captures the
> > > 'output IV' of that function call.
> > 
> > I think the description may be updated by simply refer to IV[j-1]. Then
> > you
> > would not have a stateful operation, but you rest on the IV of the
> > previous
> > operation.
> 
> But that value is not the value you are using now, right? I suspect
> that the line
> 
> IV[i+1] = MSB(CT[j], IV.length)

Yes, such a line would be needed.
> 
> needs to be duplicated in the inner loop for j, although that would
> require different versions for CS1/2/3

Correct in the sense to specify exactly what the IV after a cipher operation 
actually is.
> 
> > The state of all block chaining modes we currently have is defined with
> > the
> > IV. That is the reason why I mentioned it can be implemented stateless
> > when I am able to get the IV output from the previous operation.
> 
> But it is simply the same as the penultimate block of ciphertext. So
> you can simply capture it after encrypt, or before decrypt. There is
> really no need to rely on the CTS transformation to pass it back to
> you via the buffer that is only specified to provide an input to the
> CTS transform.

Let me recheck that as I am not fully sure on that one. But if it can be 
handled that way, it would make life easier.
> 
> > > > To facilitate that testing, NIST offers an internet service, the ACVP
> > > > server, that allows obtaining test vectors and uploading responses.
> > > > You
> > > > see the large number of concluded testing with [2]. A particular
> > > > completion of the CTS testing I finished yesterday is given in [3].
> > > > That
> > > > particular testing was also performed on an ARM system with CE where
> > > > the
> > > > issue was detected.
> > > > 
> > > > I am performing the testing with [4] that has an extension to test the
> > > > kernel crypto API.
> > > 
> > > OK. So given that that neither the CTS spec nor this document makes
> > > any mention of an output IV or what its value should be, my suggestion
> > > would be to capture the IV directly from the ciphertext, rather than
> > > relying on some unspecified behavior to give you the right data. Note
> > > that we have other implementations of cts(cbc(aes)) in the kernel as
> > > well (h/w accelerated ones) and if there is no specification that
> > > defines this behavior, you really shouldn't be relying on it.
> > 
> > Agreed, but all I need is the IV from the previous round without relying
> > on
> > any state.
> 
> So just grab it from the ciphertext of the previous round.
> 
> > > That 'specification' invokes AES_CBC_CS_ENCRYPT() twice using a
> > > different prototype, without any mention whatsoever what the implied
> > > value of IV[] is if it is missing. This is especially problematic
> > > given that it seems to cover all of CS1/2/3, and the relation between
> > > next IV and ciphertext is not even the same between those for inputs
> > > that are a multiple of the blocksize.
> > 
> > I will relay that comment back to the authors for update.
> 
> Thanks.

Thank you for your ideas!
> 
> > > > [1]
> > > > https://github.com/usnistgov/ACVP/blob/master/artifacts/draft-celi-acv
> > > > p-b
> > > > lock-ciph-00.txt#L366
> > > > 
> > > > [2]
> > > > https://csrc.nist.gov/projects/cryptographic-algorithm-validation-prog
> > > > ram
> > > > /
> > > > validation-search?searchMode=validation&family=1&productType=-1&ipp=2
> > > > 5
> > > > 
> > > > [3]
> > > > https://csrc.nist.gov/projects/cryptographic-algorithm-validation-prog
> > > > ram
> > > > / details?validation=32608
> > > > 
> > > > [4] https://github.com/smuellerDD/acvpparser
> > > > 
> > > > > Cc: Stephan Mueller <smueller@chronox.de>
> > > > > 
> > > > > Ard Biesheuvel (2):
> > > > >   crypto: arm64/aes - align output IV with generic CBC-CTS driver
> > > > >   crypto: testmgr - add output IVs for AES-CBC with ciphertext
> > > > >   stealing
> > > > >  
> > > > >  arch/arm64/crypto/aes-modes.S |  2 ++
> > > > >  crypto/testmgr.h              | 12 ++++++++++++
> > > > >  2 files changed, 14 insertions(+)
> > > > 
> > > > Ciao
> > > > Stephan
> > 
> > Ciao
> > Stephan


Ciao
Stephan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
