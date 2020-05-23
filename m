Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733EB1DFA62
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 20:53:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Bw1A3QXWrAz/QARmY6V92QtWPzs4s0Ao1ewodV0Ft0=; b=TTSvQT2p81QMg1
	hAc+59SHImhyrjHZqS1xvrHVqqTmHs+xAssKU0FBU4H/1eQ3dHcbPqvjqrXj0dEVC9/tXsyfJSLwO
	Ow8RcPoK2IdTgkiR3idU4YI8kg2hCqwhKusUXw9PHyZ8g1rd+28xtC8um5o1znq7AAY0s3hbN3qkJ
	QiR8yDbyzhoaNzCYczQvD/aJidpxG7fjfg3CB03FNwzBAwbHBiG1+b3JYu1FLx6ucQvwZrN+GS5mc
	qJ7oR91jECiE959QAls2wv3XX2zNek194+YAt8cONDflveGJHktBCK5GNr+UKEjH7hjyZdIft93/m
	nM4gn/41xSKTTyiYcf2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcZGY-0006sZ-HD; Sat, 23 May 2020 18:53:02 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcZGL-0006sA-Ma
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 18:52:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1590259967;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=n6sVyRgBLjvmg0LOaMebZv0GmcvjtJpEuoZM7jrzuU0=;
 b=iaDUrxO8tKdRlqESp2o2D+rnTAZ83p+Xn4qRCMmubOmjNa4WPGWbHgRtFolDTBgf21
 Hh8SeZIm4QZ3eqky0709bu1+c4uh8wpe/LsU9izJp+OkNw+O+1/3aNhek+PlbVbiGhXu
 vaeEeB/cu2+x3Nn9MT8crKvihfm503t1pC7H04B/R3isrIu8eDllEHsJnVhOboeMTopb
 frtREs+xWbyPffOEYBakcaDksTijepq3bmVz0yoQsVhbvMZxctKH/ginfc28Oepl0RrI
 5PNH6YLvEkXla4YdjBe1967M19Gdp84IoZ/uZTbn8EFV538xrLIH+EwpxXmq0ujaYs1A
 493g==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPbJ/SdwHc="
X-RZG-CLASS-ID: mo00
Received: from positron.chronox.de by smtp.strato.de (RZmta 46.7.0 DYNA|AUTH)
 with ESMTPSA id k09005w4NIqlI26
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Sat, 23 May 2020 20:52:47 +0200 (CEST)
From: Stephan =?ISO-8859-1?Q?M=FCller?= <smueller@chronox.de>
To: Gilad Ben-Yossef <gilad@benyossef.com>, Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
Date: Sat, 23 May 2020 20:52:46 +0200
Message-ID: <9730423.nUPlyArG6x@positron.chronox.de>
In-Reply-To: <CAMj1kXFJJcg-YeSw+_FDfyOvjQTJ6w1YyKqWaxCWSjDhRLEDoA@mail.gmail.com>
References: <20200519190211.76855-1-ardb@kernel.org>
 <CAOtvUMc8PhToLDVO+Y4NVhVkA6B7yndp3gbaeaQZJtrW_NSzaw@mail.gmail.com>
 <CAMj1kXFJJcg-YeSw+_FDfyOvjQTJ6w1YyKqWaxCWSjDhRLEDoA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_115250_336052_689CB2A2 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:7 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Am Donnerstag, 21. Mai 2020, 15:23:41 CEST schrieb Ard Biesheuvel:

Hi Ard,

> On Thu, 21 May 2020 at 15:01, Gilad Ben-Yossef <gilad@benyossef.com> wrote:
> > Hi Ard,
> > 
> > Thank you for looping me in.
> > 
> > On Wed, May 20, 2020 at 10:09 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > On Wed, 20 May 2020 at 09:01, Stephan Mueller <smueller@chronox.de> 
wrote:
> > > > Am Mittwoch, 20. Mai 2020, 08:54:10 CEST schrieb Ard Biesheuvel:
> > > > 
> > > > Hi Ard,
> > > > 
> > > > > On Wed, 20 May 2020 at 08:47, Stephan Mueller <smueller@chronox.de> 
wrote:
> > > ...
> > > 
> > > > > > The state of all block chaining modes we currently have is defined
> > > > > > with
> > > > > > the
> > > > > > IV. That is the reason why I mentioned it can be implemented
> > > > > > stateless
> > > > > > when I am able to get the IV output from the previous operation.
> > > > > 
> > > > > But it is simply the same as the penultimate block of ciphertext. So
> > > > > you can simply capture it after encrypt, or before decrypt. There is
> > > > > really no need to rely on the CTS transformation to pass it back to
> > > > > you via the buffer that is only specified to provide an input to the
> > > > > CTS transform.
> > > > 
> > > > Let me recheck that as I am not fully sure on that one. But if it can
> > > > be
> > > > handled that way, it would make life easier.
> > > 
> > > Please refer to patch 2. The .iv_out test vectors were all simply
> > > copied from the appropriate offset into the associated .ctext member.
> > 
> > Not surprisingly since to the best of my understanding this behaviour
> > is not strictly specified, ccree currently fails the IV output check
> > with the 2nd version of the patch.
> 
> That is what I suspected, hence the cc:
> > If I understand you correctly, the expected output IV is simply the
> > next to last block of the ciphertext?
> 
> Yes. But this happens to work for the generic case because the CTS
> driver itself requires the encapsulated CBC mode to return the output
> IV, which is simply passed through back to the caller. CTS mode itself
> does not specify any kind of output IV, so we should not rely on this
> behavior.

Note, the update to the spec based on your suggestion is already in a merge 
request:

https://github.com/usnistgov/ACVP/issues/860

Thanks for your input.

Ciao
Stephan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
