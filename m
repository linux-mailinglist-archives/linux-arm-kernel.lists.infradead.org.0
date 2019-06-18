Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80987498B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 07:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yTtKNnc0d+CC8gu1+p9BGp9sV8rs7lqZbq9nUobHMEw=; b=KaukLCz+EghoO0
	z5hAzM2CZZZUW9SlebSqjhqsgm6nsLUv/cAKK2MmC3ZMlBRq60NbtBns4MXt8iQ+H2wq3zez0IhBV
	wvTVjZrRGiT878arl+txdtiaaKX+JQu/dv88YQlDyB9Lv54DsBEWt2sNHtu3aS7MBMpMf6qwx+q6G
	LkHx5Xdh1buGvOjKG+4jZdbtaiD3jlCBHG8bm2wmepNbqvrwEE7xldI1DvxPqhzjG1Bt+MYrUPbel
	097LUsJsBeu+Pf/0e2iDzqC62Dm9s9tA93ey3IqVwyBD5MoYlQH9mwMyjxCyjFcNhbhLRQ+f5nwA4
	FS3OxExV9Zfhi0JobFFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd6sW-0004ad-98; Tue, 18 Jun 2019 05:41:56 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd6sL-0004aA-Dj
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 05:41:46 +0000
Received: by mail-pf1-x435.google.com with SMTP id x15so6983629pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 22:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=cNzM2YMgB5QeOFqcE5XWudMdVUdieIunz+pw2P2nkps=;
 b=aHxwffp9j1MuUtfKW9XicOHm7mPw/i8Dm7DrqoJfs0QQJhFSy9piSmKPw2fRGqaCuT
 FJygeuUaisRAmeI6dI6mA2O7CBRKaMX0cALjItDW567ZxjdyTPNmMb08qVvPSCUGgT7Z
 S57CNfTHcNt+WD885RoBDwLz13vcgo6D+DQOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cNzM2YMgB5QeOFqcE5XWudMdVUdieIunz+pw2P2nkps=;
 b=Hm02qUGdyzmRnOP132Ixvm/Wt6Z604CJ67ok1P4DpsmcXW5GvunjUDFDadGJQzsRJZ
 QoF6mW3oIyi7V9+hnrsDYLYcGM3gstafTV1OQuJJnHS6/7KvYQcEGNkbibz97UZi2WDV
 cTMBsz/XT2zwTf1voguCF1LM6svnm07JtI3cVgbjK+4WaXmZq7saAT51/6nq2lna5vpj
 fD+aDqYX02cbEUL8ZTee9H19YhHa5bUJBjNCYg5kHy+rV3WKSa5O9vLSjMMb7/W5op/p
 N2VgYLHr00+gR55i5Bh2HdzVl8YnZLT4lnPpaZSR4zCfux1lI+D89sT3Df8OHc0jDkdZ
 W0GQ==
X-Gm-Message-State: APjAAAWH6DZFu3UQmk/IDJY+akwGXf1EBdGRUqnve4uNbHbVHAGVQ1h3
 LsE6QvNVqzDlFaWTdn7WnT/ehw==
X-Google-Smtp-Source: APXvYqxn5zv7Vekhs0XYFSBVPMRKfnBoqvJIOiHchJjuRLxEyoQhCqoP/ayzffUK9jSqUj3vSTcjZg==
X-Received: by 2002:a62:6303:: with SMTP id x3mr101686139pfb.261.1560836502925; 
 Mon, 17 Jun 2019 22:41:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id u20sm12277118pgm.56.2019.06.17.22.41.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 22:41:42 -0700 (PDT)
Date: Mon, 17 Jun 2019 22:41:41 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [RFC] Disable lockref on arm64
Message-ID: <201906172233.F753B92@keescook>
References: <20190614095846.GC10506@fuggles.cambridge.arm.com>
 <CAKv+Gu_Kdq=UPijjA84FpmO=ZsdEO9EyyF7GeOQ+WmfqtO_hMg@mail.gmail.com>
 <20190614103850.GG10659@fuggles.cambridge.arm.com>
 <201906142026.1BC27EDB1E@keescook>
 <CAKv+Gu_XuhgUCYOeykrbaxJz-wL1HFrc_O+HeZHqaGkMHd2J9Q@mail.gmail.com>
 <201906150654.FF4400F7C8@keescook>
 <CAKv+Gu9-rZ16Nb9t3=knzW0BHu0eNxQoPwWS4c8UMMm=2iqiuw@mail.gmail.com>
 <201906161429.BCE1083@keescook>
 <CAKv+Gu_8ibO4D01DZv6KjL2GnvKuVBVnt=doxkN0w=4utJ7NvQ@mail.gmail.com>
 <20190617172620.GK30800@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617172620.GK30800@fuggles.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_224145_498948_4B66A943 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 06:26:20PM +0100, Will Deacon wrote:
> On Mon, Jun 17, 2019 at 01:33:19PM +0200, Ard Biesheuvel wrote:
> > On my single core TX2, the comparative performance is as follows
> > 
> > Baseline: REFCOUNT_TIMING test using REFCOUNT_FULL (LSE cmpxchg)
> >       191057942484      cycles                    #    2.207 GHz
> >       148447589402      instructions              #    0.78  insn per
> > cycle
> > 
> >       86.568269904 seconds time elapsed
> > 
> > Upper bound: ATOMIC_TIMING
> >       116252672661      cycles                    #    2.207 GHz
> >        28089216452      instructions              #    0.24  insn per
> > cycle
> > 
> >       52.689793525 seconds time elapsed
> > 
> > REFCOUNT_TIMING test using LSE atomics
> >       127060259162      cycles                    #    2.207 GHz
> 
> Ok, so assuming JC's complaint is valid, then these numbers are compelling.
> In particular, my understanding of this thread is that your optimised
> implementation doesn't actually sacrifice any precision; it just changes
> the saturation behaviour in a way that has no material impact. Kees, is that
> right?

That is my understanding, yes. There is no loss to detection precision.
But for clarity, I should point out it has one behavioral change that is
the same change as on x86: the counter is now effectively a 31 bit counter
not a 32 bit counter, as the signed bit is being used for saturation.

> If so, I'm not against having this for arm64, with the premise that we can
> hide the REFCOUNT_FULL option entirely given that it would only serve to
> confuse if exposed.

If the LSE atomics version has overflow, dec-to-zero, and inc-from-zero
protections, then as far as I'm concerned, REFCOUNT_FULL doesn't need
to exist for arm64. On the Kconfig front, as long as there isn't a way
to revert refcount_t to atomic_t, I'm happy. :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
