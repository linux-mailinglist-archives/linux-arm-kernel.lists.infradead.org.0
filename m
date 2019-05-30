Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B022F8AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 10:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6q7RX93NMgqQejDl3ggSS+iYqlFETlDvK2fs4nGlt0=; b=ZOJvg/h2U7A8fX
	kNoqunUtBpW8cO4hWx4ZvGMhDJweiTxeC71ILXdiUIHM253+jK2QIRMvRxonOfeS4WpfXZNpSfwJL
	UKuoBxQ6JIDaXpz40FKsDlLFB2VOUyQ/LHf1OxRiQ8GPmIsDeTrezlY97wuaBI3a8EcUk7xsNujfE
	WT892sKl9Am6tOPWn5+Ws0pIlAdBRxN23wdd1rWkuoCWr6DA/AgJdmE/YeRR94UdJFzMFVyk2IqnK
	SpnCkbQUv0XIjLFj06fU7zziHsnaAxe5F2uHrQT6xu9lL35+xf3kATuVYGro+hnC2plIuQwgM/ZdG
	0/Ae/EEFFF6RIEdPgHqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWGbc-0007pv-TG; Thu, 30 May 2019 08:40:12 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWGbV-0006fL-Ig
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 08:40:07 +0000
Received: by mail-io1-xd43.google.com with SMTP id k20so4335786ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 01:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0yPOg5CsdvGUDXMEkqmczrpkN4gx0yc0jrVSpMWadHY=;
 b=skt9pOoxVg5bz08kvzYPH+Sq20Aln9bZ/ovReyUuE/+HDsuhO0Qt2B0LD0S7s4ByOI
 izEBdLjHgPCp/QKLiDrvk68h9hbP9wZNN+v6mzeJYVA7l9DYmJPfCBXX0Hi3wzMekQIp
 OlHDcRn9yNTwYc77evcd7meq+kQh/Bw3UdOZtH8cztWPG1AoxRcNgSUKAnpIic36ek4/
 zGpUWhXUC0cbJRwzstNpWiNghfWmlO0hxN3un22Spmo1i2/hrt0HVzZqZkqbkXOZO84g
 dn1RzqBvFyu45CSK/mWO/BtXvkxE71pjg9buDToHlmBG6DHoZZbeFH4CrbIOs4kUM8+E
 uEyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0yPOg5CsdvGUDXMEkqmczrpkN4gx0yc0jrVSpMWadHY=;
 b=cWPxqqNJLreeJO+OpURMEnYZFzHxzu784Gta3XeKqf5D+DOtENo9KT4qGLfDecqhse
 oOHk/I4dIOXQ0RY4yTl/7WHJ2nqPuHTFT0F2+XTWsdKxCV3GPnBFifujQfM//F7ZuN+D
 M1K9J78gfQIuJIkLY6TbFU0z4u/R5v55uKAGfpGTLJua4ztkKaZ2sPAlrNBma5wvWIrW
 mWhVG5MAW6+TEB0ftDulZAcZ2N5rv8RLLxkKsrmNmx0XeRXnbvJE/jGhNNDtJNutcNWJ
 HZpED04/QF0WiWcpaxX/lyfJ96OJRlMwtjb/+SsJpdxdySNjKKBBOQfvg3QQCJGexN9l
 o9SA==
X-Gm-Message-State: APjAAAXM8L97TZLxWn18jaAiNFicPkWjDe8o2TvboatIluGUS8fdTso/
 neGKRDNj7VK65hGl5IYJmzAxQ/FRAaRpHr/EfJeaoNAw
X-Google-Smtp-Source: APXvYqwTcw6c0hHTlL5qLbImZc4WYUWeS5wGNpP/zFlXddWkKH7XkJNWOVlQic8DzKb68X5KYJOuurVxln769g86IOw=
X-Received: by 2002:a5d:968e:: with SMTP id m14mr1766407ion.49.1559205601412; 
 Thu, 30 May 2019 01:40:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook> <20190530072507.GA9955@brain-police>
In-Reply-To: <20190530072507.GA9955@brain-police>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 30 May 2019 10:39:48 +0200
Message-ID: <CAKv+Gu-frM=YQAjxrW2vmhnXKC=-qd4usTtuX4JTg843_PmNrA@mail.gmail.com>
Subject: Re: [RFC v2 0/7] arm64: return address signing
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_014005_678942_BF311813 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 "Diogo N. Sampaio" <diogo.sampaio@arm.com>,
 Luke Cheeseman <luke.cheeseman@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 May 2019 at 09:25, Will Deacon <will.deacon@arm.com> wrote:
>
> On Wed, May 29, 2019 at 08:09:23PM -0700, Kees Cook wrote:
> > On Wed, May 29, 2019 at 08:03:25PM +0100, Kristina Martsenko wrote:
> > > This series improves function return address protection for the arm64 kernel, by
> > > compiling the kernel with ARMv8.3 Pointer Authentication instructions. This
> > > should help protect the kernel against attacks using return-oriented
> > > programming.
> >
> > Can you speak to whether this feature should be enalbed in addition to
> > or instead of the standard stack canary option?
>
> Hmm. That's a really interesting question. Given that PAC is optional in the
> hardware and behaves as NOPs on older CPUs, I've have thought that we'd need
> to continue enabling stack canaries regardless. However, that then raises
> the obvious question as to whether we could patch out the canary code if we
> detect PAC at runtime, which probably needs compiler help...
>
> Then again, perhaps there's benefit in having both features enabled.
>
> So I think I agree with your question :)
>

PAC only protects the return address, which is arguably the most
vulnerable piece of data in the stack frame, but not the only one. So
one question is whether we should take the hit of protecting ourselves
from stack buffer overrun exploits that manage to overwrite something
else in the stack frame while leaving the return address alone. I
don't think doing that adds any value. Or if you are paranoid, you
could argue that the stack protector also protects against a leak of
the PAC key. And obviously, you need hardware from the future to use
PAC :-)

So while we think we should retain it for the single kernel image, I
don't see why you would enable the stack protector on, e.g., android
images built specifically for SOCs that enable PAC in the kernel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
