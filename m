Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29951BFD09
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 04:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZ1NuSp8oYceMHhruARzMfpux2spZMAvkdJ62zeuaiA=; b=IXCHdjtiT/c0Lf
	MG0Imq6JztFZvX47pTnC9oQdgPELW0Zg3FZAIt1V94K5DeIwPG/khZ3JPVnWcK8pslNU6/Rr2HBSb
	gt2JeeoAQfyjrxNyCBzedH1f/X/mKLjRPf6C3y3g6GYrEXIVJQmfe0EDgktMpO98NLc50SmdrRudX
	OSNy+P0baVTF/ce6Bcn4f+685ujZCzOrlCYzI5wLoUwTyzs3IKYmUPf5EbIspW5XsABlO8QHTm67V
	dM4yeUmo9UfgulBqXTFDJ1IB917TEYlJvLvZQLHrSfhuuGvmPgYEZFzRmlKaXLQoic8cpXHfNMUVj
	5xj/FZLOQkoPdygkPelQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDfeb-0006qP-E7; Fri, 27 Sep 2019 02:06:41 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDfeP-0006oD-Cs
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 02:06:32 +0000
Received: by mail-lj1-x244.google.com with SMTP id q64so846829ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 19:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OJh6hczbbMF+hVrPwQo82LrMWLXXhdgwuK2FQy+UbcU=;
 b=dG5VU4yCxZ8kISwmVBqfUikv8VNBMtH2elKShBQTmWjuKMM73DSlWccxnyNeoSUOF/
 lFxW4MbHMqpQ/DSN8ak25pchuhkYPCnX3aOQK6JA8/4ZONpKbxQ5es1cZkl+MFK61p4f
 NrJM8OX4525vvN+QzOSqhkmHv67y/TWGtra18=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OJh6hczbbMF+hVrPwQo82LrMWLXXhdgwuK2FQy+UbcU=;
 b=XOwH0LFAmxEXrIEa0NrR04CpQ5L0M/nd/Ak5cFsc4f+6HwwxxYRxYa9noO2Xg2thse
 pixXEHTxF+xSi0Zz8w6WwKNofFCALrcUwV1m9RhIF56kmwDI+329JSkgpSRGN4exec3+
 PxTWoa3YktCfFLMJJVfBzA5JNJ4r52fyLF6gUgDqcinMwshvtTC9qEl6JhHsavcr5yb+
 KhQ3DfA+S9d6Xe47eXApn+uwXvIjNuRB5BSukT06RCXDeKJG3uD1z56aPZXgRvAC17Ub
 EJaFE43GunhCv99igVAYPPVvkwihcUuRS0Nh6/LZa+ifOBbbs3ODdT20gI1sX/4/GbA9
 K2Cw==
X-Gm-Message-State: APjAAAWcy/i6uBPHab1qYrdwiRnMLPy+FFXi3tKxMKah+5ivhe25nN25
 ZZRV1MS+3LYwEv5V82NEB+9FdoLlDLk=
X-Google-Smtp-Source: APXvYqzu7YpAy2MR/qprLY/NeDcZt6G247P809pXDH7Qvv85myXaq9W7eGnVs3G4DeKtX15P1Hv3Kw==
X-Received: by 2002:a2e:5b9a:: with SMTP id m26mr999329lje.183.1569549985778; 
 Thu, 26 Sep 2019 19:06:25 -0700 (PDT)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com.
 [209.85.208.179])
 by smtp.gmail.com with ESMTPSA id i6sm185692lfc.37.2019.09.26.19.06.24
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Sep 2019 19:06:24 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id f5so867305ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 19:06:24 -0700 (PDT)
X-Received: by 2002:a2e:9854:: with SMTP id e20mr1057382ljj.72.1569549984094; 
 Thu, 26 Sep 2019 19:06:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
In-Reply-To: <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 26 Sep 2019 19:06:08 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgu5-Wj=UY+iU+x=RcKN_ceUsKdfhsv2-E5TNocELU8Ag@mail.gmail.com>
Message-ID: <CAHk-=wgu5-Wj=UY+iU+x=RcKN_ceUsKdfhsv2-E5TNocELU8Ag@mail.gmail.com>
Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_190629_456047_4A4AF98D 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 5:15 PM Pascal Van Leeuwen
<pvanleeuwen@verimatrix.com> wrote:
>
> But even the CPU only thing may have several implementations, of which
> you want to select the fastest one supported by the _detected_ CPU
> features (i.e. SSE, AES-NI, AVX, AVX512, NEON, etc. etc.)
> Do you think this would still be efficient if that would be some
> large if-else tree? Also, such a fixed implementation wouldn't scale.

Just a note on this part.

Yes, with retpoline a large if-else tree is actually *way* better for
performance these days than even just one single indirect call. I
think the cross-over point is somewhere around 20 if-statements.

But those kinds of things also are things that we already handle well
with instruction rewriting, so they can actually have even less of an
overhead than a conditional branch. Using code like

  if (static_cpu_has(X86_FEATURE_AVX2))

actually ends up patching the code at run-time, so you end up having
just an unconditional branch. Exactly because CPU feature choices
often end up being in critical code-paths where you have
one-or-the-other kind of setup.

And yes, one of the big users of this is very much the crypto library code.

The code to do the above is disgusting, and when you look at the
generated code you see odd unreachable jumps and what looks like a
slow "bts" instruction that does the testing dynamically.

And then the kernel instruction stream gets rewritten fairly early
during the boot depending on the actual CPU capabilities, and the
dynamic tests get overwritten by a direct jump.

Admittedly I don't think the arm64 people go to quite those lengths,
but it certainly wouldn't be impossible there either.  It just takes a
bit of architecture knowledge and a strong stomach ;)

                 Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
