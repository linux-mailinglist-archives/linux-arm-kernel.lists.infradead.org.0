Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAD51104E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 20:16:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=moo82PGFXNrR2f6TAoJ9qCmPHMvToYZ5W6Kqhu8pedY=; b=cai80BHWD76AGY
	fwFCERhHAReDCCDeWj/6gu3fe4FnX94ose54xfu4gMSoWyy5z43gRN+x2xv31bh/aCV5YLppsh9nK
	etIWcb0TyxHPppBQxtT/Vo2rxXsiUNZ8sEYprPg5hLArJdWAe8GbWn2paSUuWaylfCEOFNSiFwxhm
	iyGK+M9MxKrIprsRVHq11FidcNEhJrmV+0eXTQMeQvCA0YDIqnXA3vdR8SwFQkUhRqtIQx4ApXKzC
	QdExkXh4xDViZ7ZLX91skYv/83nYPVLElnc3Fl5I0MXrGyFSkRx+XrUd6ktS96VO6Xwm2CoQeQHpQ
	mqYhLfRFqijPXsyBAleA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDep-000542-Po; Tue, 03 Dec 2019 19:16:23 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDef-00053T-0Y
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 19:16:14 +0000
Received: by mail-yw1-xc43.google.com with SMTP id 10so1771367ywv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 11:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x3IfwNP0sCfGAbvjn8f54mShYm2apC5FWrLnuw7DlBo=;
 b=MZj1PeRkl6LWlHRFyDu95ZWAg7MxBphqh8u3eiD+4G1937p8EiogIJ2CKC0JhQXhxG
 7oJmMpHr8wT5tnHKIWtrR+4qVc7mGVpa9+3uhsQiU+OjlYHE3po5BCPfbwQDakXwZezq
 /faX6le0t+QIfyUcON9y7rXQSoKZxZLDi7fZqEFsmxaaOgfgHF4WRoiNGveUY0RTIOVB
 kjExs6PSipJC35yW9pvF4SQiPeql3I9Vgtx8V/wGbbTfPcntoYAPrDPPHi25rHl1OQJQ
 5HfYAZEu+onaJTKPC+B8L7E1ZfOs3tbyH/KYzlwvC3txF2vgnftag9SfCPg57hWr0QQD
 AUBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=x3IfwNP0sCfGAbvjn8f54mShYm2apC5FWrLnuw7DlBo=;
 b=k67rRebuU+BQARTnFC+lLTV9zHCmSN0MLg/mU5CVVNlCWAo5G92FDk4kbCXGoAWPX7
 XollLxko+iHgRlvdc6u7JWDl2uzUZIa3Qwo1N+LG/6YphNV/yNNpGkPjPiF/nUGOQPbi
 9eIJybGohiKu5wsZ7NCCc+BQ/ZMMtZZwv3Wne8P1lW1vW+Q/pY+DTLSX40UcJTAkpal7
 +mdUlxpfTdNazvepQhhPJU3yx5D6PWte068pWCw42R9oKs8aBmwxoRqFYFgP908c+Puk
 i78xttJbtXrsVhwM1KoR3IHusROY1VoTEliqTXJbwx92Xib9xwRmBOEfbMaWFVWBbIoi
 nh9g==
X-Gm-Message-State: APjAAAU+hy0tmoE4Ha9HvGIZq6i3v0yATPHLnKf9pxvmIJeR+HwD5oDU
 eGxbX6d5CTzglLy4a5/XXg==
X-Google-Smtp-Source: APXvYqwmGYiXrBrSZn1xsFKsBl1bcIaw8w5lLBcU+mBezM7fP3JZNwo2IF9k8omif4WKZjxAu9d/8g==
X-Received: by 2002:a0d:e107:: with SMTP id k7mr5352268ywe.399.1575400571551; 
 Tue, 03 Dec 2019 11:16:11 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id a74sm1950052ywe.42.2019.12.03.11.16.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 11:16:10 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id BE1ED180058;
 Tue,  3 Dec 2019 19:16:09 +0000 (UTC)
Date: Tue, 3 Dec 2019 13:16:08 -0600
From: Corey Minyard <minyard@acm.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: Fix compile error with KVM and
 !HARDEN_BRANCH_PREDICTOR
Message-ID: <20191203191608.GA2896@minyard.net>
References: <20191127181040.20012-1-minyard@acm.org>
 <CAKv+Gu-Xbpky-VN4WgSKJ5k_98shRdr_7aEcXJBV9uZqJrV7Jw@mail.gmail.com>
 <86pnhbywpo.wl-maz@kernel.org>
 <CAKv+Gu-CuNpu4jv7S6v2G9Z5dHCVOMX3nVX5VFYhoY4SfCK+cg@mail.gmail.com>
 <ab0d3eff89247f18d6edcb28b577d186@www.loen.fr>
 <CAKv+Gu9mS2BZj+YMemMTy-e=42wBdu7u3+Rp=w9cWZXMmbpt7A@mail.gmail.com>
 <8274815953233fb2d522f216b36d7247@www.loen.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8274815953233fb2d522f216b36d7247@www.loen.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_111613_079603_D6B8FB93 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tcminyard[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Reply-To: minyard@acm.org
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Corey Minyard <cminyard@mvista.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Andre Przywara <andre.przywara@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 06:45:46PM +0000, Marc Zyngier wrote:
> On 2019-12-03 18:35, Ard Biesheuvel wrote:
> 
> [...]
> 
> > OK, I have prepared a branch that carries all these patches in the
> > right order with the upstream commit reference added to the commit
> > log. I'll send this out for review first, before actually sending it
> > to -stable, unless anyone feels that this is a bad idea.
> > 
> > arm64: KVM: Move BP hardening vectors into .hyp.text section
> > arm64: insn: Add N immediate encoding
> > arm64: insn: Add encoder for bitwise operations using literals
> > arm64: KVM: Dynamically patch the kernel/hyp VA mask
> > arm64: cpufeatures: Drop the ARM64_HYP_OFFSET_LOW feature flag
> > arm64; insn: Add encoder for the EXTR instruction
> > arm64: insn: Allow ADD/SUB (immediate) with LSL #12
> > arm64: KVM: Dynamically compute the HYP VA mask
> > arm64: KVM: Introduce EL2 VA randomisation
> > arm64: KVM: Move stashing of x0/x1 into the vector code itself
> > arm64: KVM: Reserve 4 additional instructions in the BPI template
> > arm64: KVM: Allow far branches from vector slots to the main vectors
> > arm64: Make BP hardening slot counter available
> > arm64: Move the content of bpi.S to hyp-entry.S
> 
> My personal take on this is that it is *a lot* of code that affects
> a very critical path, and I'm not completely sure that it is what
> we want for something as dated as 4.14.

That was my thought, too.  I was just trying to fix a simple compile
error.

> 
> The only valuable reason I can think of (aside of the vulnerability
> mitigation aspect) would be if we need to backport more code to
> the exception entry path for EL2. I don't know if there is such
> need yet.

If that is the case, IMHO this should be backported as part of other
things that require it.

I don't know this code that well, but these changes seem to me more
setup for allowing other things to be done.

-corey

> 
>         M.
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
