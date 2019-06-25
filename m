Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C9855112
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XU5PPPyqmWCMMUkAZ2VRwBvNU0pfcFRCNXWeHN9t7ts=; b=cnn8QHozaZ0RNI
	D1lFJMPzgyZ+PNUxZyFg1cF2eV6bZMyVrklgVLIpcLnEqPkNXcfiEXHL5pcI+iYBBer5vv085ujPo
	vbpOWktfqknPAwS3DWIqmfL1D+CH50sFpXkLESp+LZn/hhbqID/PYwB8TPiZqnbVlJhc3DXYf6chy
	a97pK0WwOIn9xNbglCRVDz161lRax/LUEGp25euJzc0AqaVbc0LKa34KmEZxegiui/gdX82im/IeB
	m0KlQmFFXRGNzz/7vsiGulABNrDss1mp0XwhpYS65ZxsfQAuyLlaoucKVjqw41cfkboufkS7Qm2K4
	yzsewJcKnXz2Z25wkrew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfm6e-00008w-Jq; Tue, 25 Jun 2019 14:07:32 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfm6U-000087-CT
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:07:23 +0000
Received: by mail-oi1-f196.google.com with SMTP id g7so12596345oia.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 07:07:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xu5K3cSApgyQCIPbxwida3cq6je8e/cZ02vCwRG1d+w=;
 b=KbjGDnuJSBw4EyODM1PW1b/2pKAo4oQnmqGe8HVXczX280ogMBDym5FAR1Bb5/fhbX
 CNI3kqA6Ou55pL5xSJ9YyTI8lQYulBKzpTOqeo/Xy0xm4JDUX8hBbHDM8mRaEDp8SNCI
 2ZEJU9rENW0Rl1cVdpcDYO2i/m4cy5ldP5DUC9edhI+lD6etXZ/Jny9ojDPWA4dSJwTN
 1HSst5QE4b7RgkHLkPO3ik89VVeY6NRvuK+2nt/Sq4AOsBSyKJTKI9JRocyykwmyFPHQ
 YvyIzlS5aT7ljlRX3yYX9MJ0uQ6dqH240FNtLMBk3VF6CgN7Arz91UpbjI19R/nrdm4D
 sT4A==
X-Gm-Message-State: APjAAAXrq8sZqRWDnB0+EHpPCTCBAKUp9ONuFKfyEEgd5ykmBLH4ylwO
 alSQ1yqpqb8Ml5DdkP2g2XLWZ5OnOlL15y3L0HvYLQ==
X-Google-Smtp-Source: APXvYqyhnHU3+3QLCRUz5Xg9saeFMZSdaOUxzK0ZU1+6c5QvjPo2LeghnD2BWPn5f41xuge8lDam212q25TqBdTMzss=
X-Received: by 2002:aca:a853:: with SMTP id r80mr14442083oie.156.1561471641232; 
 Tue, 25 Jun 2019 07:07:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
 <20190624165641.GB211064@gmail.com>
In-Reply-To: <20190624165641.GB211064@gmail.com>
From: Ondrej Mosnacek <omosnace@redhat.com>
Date: Tue, 25 Jun 2019 16:07:09 +0200
Message-ID: <CAFqZXNvE2YaanvjQJq41AdcQh8qeY3=idng29GT=8Pt61PU_uw@mail.gmail.com>
Subject: Re: [PATCH 0/6] crypto: aegis128 - add NEON intrinsics version for
 ARM/arm64
To: Eric Biggers <ebiggers@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_070722_421789_A0E37F62 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Steve Capper <steve.capper@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-crypto@vger.kernel.org,
 Milan Broz <gmazyland@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 6:57 PM Eric Biggers <ebiggers@kernel.org> wrote:
> On Mon, Jun 24, 2019 at 09:38:12AM +0200, Ard Biesheuvel wrote:
> > Now that aegis128 has been announced as one of the winners of the CAESAR
> > competition, it's time to provide some better support for it on arm64 (and
> > 32-bit ARM *)
> >
> > This time, instead of cloning the generic driver twice and rewriting half
> > of it in arm64 and ARM assembly, add hooks for an accelerated SIMD path to
> > the generic driver, and populate it with a C version using NEON intrinsics
> > that can be built for both ARM and arm64. This results in a speedup of ~11x,
> > resulting in a performance of 2.2 cycles per byte on Cortex-A53.
> >
> > Patches #1 .. #3 are some fixes/improvements for the generic code. Patch #4
> > adds the plumbing for using a SIMD accelerated implementation. Patch #5
> > adds the ARM and arm64 code, and patch #6 adds a speed test.
> >
> > Note that aegis128l and aegis256 were not selected, and nor where any of the
> > morus contestants, and so we should probably consider dropping those drivers
> > again.
> >
>
> I'll also note that a few months ago there were attacks published on all
> versions of full MORUS, with only 2^76 data and time complexity
> (https://eprint.iacr.org/2019/172.pdf).  So MORUS is cryptographically broken,
> and isn't really something that people should be using.  Ondrej, are people
> actually using MORUS in the kernel?  I understand that you added it for your
> Master's Thesis with the intent that it would be used with dm-integrity and
> dm-crypt, but it's not clear that people are actually doing that.

AFAIK, the only (potential) users are dm-crypt/dm-integrity and
af_alg. I don't expect many (if any) users using it, but who knows...
I don't have any problem with MORUS being removed from crypto API. It
seems to be broken rather heavily...

>
> In any case we could consider dropping the assembly implementations, though.
>
> - Eric

--
Ondrej Mosnacek <omosnace at redhat dot com>
Software Engineer, Security Technologies
Red Hat, Inc.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
