Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49771DAAC6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uB3FQM/jfT0VtsMQlzBFu2nKEPoiEsIlBIUYrfwGNqg=; b=rLTwXGHz01ZyxM
	Xe84u4bkX4tYDB7TSjTZW04O4TNHiDSp46foWPBf4usEk4NAgvoiC4PhQsMnO08hsQBADPSZWqr7v
	1zyTxM7wPeh4bippBmMYbZsZ5xaTiZAwlLEqE3Ct0aoCEkwrJgxu7ot7qovYoovhoeB/aKy+zzT+Z
	44/+XI9aIYiR+RCeolIUd1utCbM9JEPeHKDd8+DDvAw74oMNiShdNDUPCgdI96e/sisjUCmILeEwx
	Eje8iDSYlaMU5ODHFI4110KhJ8UHWXEeCxmGRDgsxtKcxpuEWERWl/9q5zt6AXZL0uirVcnj87gzb
	9YVShdBBmQqBqalnsaQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIPq-0007Ao-Cz; Wed, 20 May 2020 06:41:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIPd-00079I-Vf
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:41:13 +0000
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com
 [209.85.166.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5050320890
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 06:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589956869;
 bh=Qgzm5Omvs4oJc9LoBEHGrGceOiNpLpQNzEShzQPpyUs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kXcFH8JZtXdzrSYFxNlq8g9LexovFphnhDfbhrBRZnX3bkcK4xRqUTn2lOsBIleGh
 Z28d21cZdtn/+hjRN8RJHhKYASDR3xfo0/CHr2KLfYLS6g5RTzWUa1pBN3/BGzn6At
 y86M+Q3NyPJ7dN564oMywZcdcIyKOZ3Hpx8LNSXk=
Received: by mail-il1-f179.google.com with SMTP id 4so2043456ilg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 23:41:09 -0700 (PDT)
X-Gm-Message-State: AOAM532WooT7U9TQnrJ/dh+E6UYSLQlZCIaoNYd3enLFpT8FqbhQd39z
 OAC9abj9AQb87g5Jn2odpo/+si34WrI6oqD/0GE=
X-Google-Smtp-Source: ABdhPJzPt5lSpeelNjVE0xFeQuDqxigtSr4lzGDj5//CymV5Epryg8vWw0JB1CkAYuegIQ6uXoskKTXUFLfeUIgGVXE=
X-Received: by 2002:a92:bb55:: with SMTP id w82mr2552171ili.211.1589956868672; 
 Tue, 19 May 2020 23:41:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200519190211.76855-1-ardb@kernel.org>
 <16565072.6IxHkjxkAd@tauon.chronox.de>
In-Reply-To: <16565072.6IxHkjxkAd@tauon.chronox.de>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 20 May 2020 08:40:57 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFDcHncnb=aUkWnX22Co2r4g3DSM+wug0FQ231Gv7J01Q@mail.gmail.com>
Message-ID: <CAMj1kXFDcHncnb=aUkWnX22Co2r4g3DSM+wug0FQ231Gv7J01Q@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
To: Stephan Mueller <smueller@chronox.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_234112_490344_8C977B40 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Eric Biggers <ebiggers@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 at 08:03, Stephan Mueller <smueller@chronox.de> wrote:
>
> Am Dienstag, 19. Mai 2020, 21:02:09 CEST schrieb Ard Biesheuvel:
>
> Hi Ard,
>
> > Stephan reports that the arm64 implementation of cts(cbc(aes)) deviates
> > from the generic implementation in what it returns as the output IV. So
> > fix this, and add some test vectors to catch other non-compliant
> > implementations.
> >
> > Stephan, could you provide a reference for the NIST validation tool and
> > how it flags this behaviour as non-compliant? Thanks.
>
> The test definition that identified the inconsistent behavior is specified
> with [1]. Note, this testing is intended to become an RFC standard.
>

Are you referring to the line

CT[j] = AES_CBC_CS_ENCRYPT(Key[i], PT[j])

where the CTS transform is invoked without an IV altogether? That
simply seems like a bug to me. In an abstract specification like this,
it would be insane for pseudocode functions to be stateful objects,
and there is nothing in the pseudocode that explicitly captures the
'output IV' of that function call.


> To facilitate that testing, NIST offers an internet service, the ACVP server,
> that allows obtaining test vectors and uploading responses. You see the large
> number of concluded testing with [2]. A particular completion of the CTS
> testing I finished yesterday is given in [3]. That particular testing was also
> performed on an ARM system with CE where the issue was detected.
>
> I am performing the testing with [4] that has an extension to test the kernel
> crypto API.
>

OK. So given that that neither the CTS spec nor this document makes
any mention of an output IV or what its value should be, my suggestion
would be to capture the IV directly from the ciphertext, rather than
relying on some unspecified behavior to give you the right data. Note
that we have other implementations of cts(cbc(aes)) in the kernel as
well (h/w accelerated ones) and if there is no specification that
defines this behavior, you really shouldn't be relying on it.


That 'specification' invokes AES_CBC_CS_ENCRYPT() twice using a
different prototype, without any mention whatsoever what the implied
value of IV[] is if it is missing. This is especially problematic
given that it seems to cover all of CS1/2/3, and the relation between
next IV and ciphertext is not even the same between those for inputs
that are a multiple of the blocksize.


> [1] https://github.com/usnistgov/ACVP/blob/master/artifacts/draft-celi-acvp-block-ciph-00.txt#L366
>
> [2] https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/
> validation-search?searchMode=validation&family=1&productType=-1&ipp=25
>
> [3] https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/
> details?validation=32608
>
> [4] https://github.com/smuellerDD/acvpparser
> >
> > Cc: Stephan Mueller <smueller@chronox.de>
> >
> > Ard Biesheuvel (2):
> >   crypto: arm64/aes - align output IV with generic CBC-CTS driver
> >   crypto: testmgr - add output IVs for AES-CBC with ciphertext stealing
> >
> >  arch/arm64/crypto/aes-modes.S |  2 ++
> >  crypto/testmgr.h              | 12 ++++++++++++
> >  2 files changed, 14 insertions(+)
>
>
> Ciao
> Stephan
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
