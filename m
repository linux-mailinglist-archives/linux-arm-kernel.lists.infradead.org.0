Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B8F102D2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 21:02:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=251hUpVIEXEp5AD3v/orYENbOhAkKVTto7Mezh7atSs=; b=Z5PjHyPFfP9I61
	OtU2rNxphP2JJy2nPBoGIfyWZDz3kd61w6D2IOMRRHNmhZ/r+dBD7ZAvFAJI2z3qE7yfW1u4MFkDS
	Iwhiox2+j4w/Qp7TcO4rnfHAb3jjr+0ljzTrDKZgmo1+g+ocLflbCphEddlC2xK5F77Nn/A3ji34Z
	zs+TkNEXX6RXxTxH5m3mHy6cY0CzWdtlrqsoBf8TLCNXE61Sw4ptysnTvmlaKmpMO0LPMDCBXrY8q
	rSYjb1psD++Fcia+chuprllBmdoCu9crHz7mHst8VI9idVqQVexoEtXBTttcguFY0FP9oHq0jmToS
	/MCpzKZ2OQsqydgMvTog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX9hX-0005uO-Bn; Tue, 19 Nov 2019 20:02:15 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX9hO-0005ty-Ee
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 20:02:07 +0000
Received: by mail-vs1-xe42.google.com with SMTP id u6so15160171vsp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 12:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q+kgeC423PEmiXE54P456kmvClusHVqDZZQMf6Wfq8g=;
 b=LAYqXYJmg3/nUPp2KkicyNn045+DSy+qXZ69cpU3O7SoqBK7jbFkPKBinM1rx16+R4
 91xiJTO1WqhfYnv5n6OUtt1t2cg9YZP+j/dt2z8V+cOsGkYFGKFW4Cs2k66ETJ8Sw6vK
 h2mYSM+2qxLS4HeVa5Hl6UooSCyvJm2WLZ9NhMrotAQSOsLE8Arx339mnaJ+EdbOX5PT
 mOGLU9xKkjpQamXuUFolfgvZ9Oc1Ok80gB1T0nWbbJjHNdCxPMgf/KGWgblI4kc4AOlJ
 UpLffBeGi/UAB2yJHAQnvh2Gp8Mb8vto1564i8T1PczukVwHCjZ7xiCJ3xS0NkPY3K2r
 9WmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q+kgeC423PEmiXE54P456kmvClusHVqDZZQMf6Wfq8g=;
 b=MQ2mr4FWiswaiRQuha5UEHRjrB/CyWi2cBWcbsQ28ql9+F/7dleDZ8Sb7FaOl/JxKB
 LH6IDFqUtH+M0ABZU6QDvxBU/0c9yRgkg5AmDNN2fbLaHq5KtCIlhqlEVwJDgdBU3s2F
 h2Pbab5H/CKjOd73drldhHvc/cccoxrJQzH+8BxkY6dXV3kejs7G7P1gdeRM0FPTuZRf
 z9OrXNQ2zs/4C4obUjn3R8O8k5I+KFC+BO+0l710skJYEgPfoROQg0AhZZ57qnGEOeMI
 o7AshRmymYTtiZ41bwQyfUNG7cSpZMCuOPU/6gfUI0Vpyn5BmomBg+ef8ondIfU53xZM
 qigw==
X-Gm-Message-State: APjAAAXzh0/xl11Hpe35NTM8Y9hpc1oW824CzQn3bk6Wi8UlDHEQkjZN
 KVlG2R6jsPsWR89LYjwpnOCOl93ZhPNp3+ovRyqBUA==
X-Google-Smtp-Source: APXvYqzcRdtEp6THc7+OIwZlRAkM2IozUimYlwR67GM90nMnCXw4ij3J6M+8GvqPD08ArQNVwEdRuTBT0xp6TrRbhp0=
X-Received: by 2002:a67:e951:: with SMTP id p17mr18570219vso.112.1574193724307; 
 Tue, 19 Nov 2019 12:02:04 -0800 (PST)
MIME-Version: 1.0
References: <20191112223046.176097-1-samitolvanen@google.com>
 <20191114225113.155143-1-samitolvanen@google.com>
 <CAKv+Gu98uOZz7ZrG66gQerBq+hmwHmL4ebz5oDL16hxg=Y_YvA@mail.gmail.com>
In-Reply-To: <CAKv+Gu98uOZz7ZrG66gQerBq+hmwHmL4ebz5oDL16hxg=Y_YvA@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Tue, 19 Nov 2019 12:01:52 -0800
Message-ID: <CABCJKufNpaYEFC0dNVFMd+4puPn9EW4r=UNW-gzn1y0yxYzY-w@mail.gmail.com>
Subject: Re: [PATCH v2] crypto: arm64/sha: fix function types
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_120206_518028_17FD3BD9 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Eric Biggers <ebiggers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 3:32 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Thu, 14 Nov 2019 at 22:51, Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > Instead of casting pointers to callback functions, add C wrappers
> > to avoid type mismatch failures with Control-Flow Integrity (CFI)
> > checking.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  arch/arm64/crypto/sha1-ce-glue.c   | 17 +++++++++------
> >  arch/arm64/crypto/sha2-ce-glue.c   | 34 ++++++++++++++++++------------
> >  arch/arm64/crypto/sha256-glue.c    | 32 +++++++++++++++++-----------
> >  arch/arm64/crypto/sha512-ce-glue.c | 26 ++++++++++++-----------
> >  arch/arm64/crypto/sha512-glue.c    | 15 ++++++++-----
> >  5 files changed, 76 insertions(+), 48 deletions(-)
> >
> > diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
> > index bdc1b6d7aff7..76a951ce2a7b 100644
> > --- a/arch/arm64/crypto/sha1-ce-glue.c
> > +++ b/arch/arm64/crypto/sha1-ce-glue.c
> > @@ -28,6 +28,13 @@ struct sha1_ce_state {
> >  asmlinkage void sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
> >                                   int blocks);
> >
> > +static inline void __sha1_ce_transform(struct sha1_state *sst, u8 const *src,
> > +                                      int blocks)
>
> Nit: making a function inline when all we ever do is take its address
> is rather pointless, so please drop that (below as well)

Ack, I'll send v3 that removes the extra inlines shortly.

> With that fixed (and assuming that the crypto selftests still pass -
> please confirm that you've tried that)

I don't have a test device that supports sha512-ce, but self-tests for
everything else pass with these changes.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
