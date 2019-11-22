Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BD4105DB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 01:31:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ULTo2zbnVGRQZa/WFYlmYX0uTI4oflQ7JuZb+ajoJw=; b=XzfkyIfsrmvkYl
	LSoM1oL2cKMYmXShHe4y6Rjp4qEVbyIW2WuQZ9PXMwcPJQbPTh2elekq9VdyvXcNCIylJ39AUfesn
	KqpoYBcgVmGFI/O+bod7UE2kpdN6tydk7cZNAg21nnxcxa5hldT7DK8gBNexzWclGQaJZ98v+YU9U
	G823bFEg/0zYoDL1oV1cjdurJE6abx5+BhCRId0k95TQNOT/5qrorvhVoWgB5MM0VfcH+q4UWogWI
	rW3WXzrZ5Bhp8Gd3xvLKBKoX6kyCuSEFI0LqmaenvQXRmMMjLm2GL6mUWm0lHkg4LFKk9uHZFU1Up
	ofBVTrx+gFVY/NkeG6pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXwql-0003ii-T6; Fri, 22 Nov 2019 00:31:03 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXwqd-0003i5-Qm
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 00:30:57 +0000
Received: by mail-ed1-x542.google.com with SMTP id w6so4425147edx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 16:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p8S5GRxfxB7MPCj+Eww2v+N3SSDa3SwY872hQxbGyeE=;
 b=SwDeNapr8C2hZtNWi6QBd3lpU7IbLJ10rTgPoY37OuwGIIHILjqN8ZXIj83SFbbr7g
 YzAi6ZwttEnHRQxMLHdr0KR362IBbLpoJ5EQeuCtrhGYhqHmbxJ2UblkssOkCiA4sPgS
 Rml0Bkr1b8tqWCIvh+G9oBFMyxor3gMwJDbS/53jn8rJ3kmsZTBXA1PjvNfIKfTdTwLC
 wF3jnFSC3C9BdMkjWYAGvnrnEMotMC0HvDkDZ3uMzOkU+lr7w1aQmLJPPyOQb/OkjBFA
 PHVlsE9Glij+peO87AM8pBwdkmSWP8tNYMCmSsqv0mrQedYRcQNccHHzELqAuMzRn8/g
 566A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p8S5GRxfxB7MPCj+Eww2v+N3SSDa3SwY872hQxbGyeE=;
 b=W4YhCkPW8PGb90Z4d4+VsLI94w6J7CRs59/uiljrDf8nW7IbG/4AlIHDoULnGK9Lq2
 D49ZkB3zDqega/gVEii5SuoOJ6f4J90Z9krVm7peFGGDSIKJJMCmFzdsRD2NgDpY5CX1
 wFrop9/rMAxQ+L527y8ABfRevvX7xHbaG9d9emmBaHb3mJWilm2h3arILP6U9gNE0fJ8
 RFIwCado9NMkeAG5N+pK+6Q+EswEPLDIzrirsYrDJGFEaJsZEKBfUby2eKoFBqaDTJS9
 u2Ky7oJC8uyIv8AzzOSUN7qQMmPUmMr3qrOiUgefXWhgLSYd+45UfyP8DFPUXbez4qov
 YgAw==
X-Gm-Message-State: APjAAAXiAPQqRLQrFTGfptngYkhaQGSBz/rwq+bVM2ENp6AG1xm8nKnR
 xdys0XUL1eg8g6/DRbXRou9D5tu/EADoshwUiLBnJg==
X-Google-Smtp-Source: APXvYqybAjsW4IBztIRMQztbxdt6s24fSxLSh87RJOD7czfT0URIvB2H9RrIUrGlfVNwROY40qStEmAhGA2156oOCE0=
X-Received: by 2002:a17:906:90b:: with SMTP id
 i11mr18003315ejd.109.1574382651825; 
 Thu, 21 Nov 2019 16:30:51 -0800 (PST)
MIME-Version: 1.0
References: <20191121184805.414758-1-pasha.tatashin@soleen.com>
 <20191121184805.414758-2-pasha.tatashin@soleen.com>
 <20191122002258.GD25745@shell.armlinux.org.uk>
In-Reply-To: <20191122002258.GD25745@shell.armlinux.org.uk>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 21 Nov 2019 19:30:41 -0500
Message-ID: <CA+CK2bDtADA2eVwJAUEPhpic8vXWegh8yLjo6Q6WmXZDxAfJpA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm/arm64/xen: use C inlines for privcmd_call
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_163056_015363_1F1920CC 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, stefan@agner.ch,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 boris.ostrovsky@oracle.com, Sasha Levin <sashal@kernel.org>,
 sstabellini@kernel.org, James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, alexios.zavras@intel.com,
 Thomas Gleixner <tglx@linutronix.de>, allison@lohutok.net, jgross@suse.com,
 steve.capper@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > +#ifdef CONFIG_CPU_SW_DOMAIN_PAN
> > +static __always_inline void uaccess_enable(void)
> > +{
> > +     unsigned long val = DACR_UACCESS_ENABLE;
> > +
> > +     asm volatile("mcr p15, 0, %0, c3, c0, 0" : : "r" (val));
> > +     isb();
> > +}
> > +
> > +static __always_inline void uaccess_disable(void)
> > +{
> > +     unsigned long val = DACR_UACCESS_ENABLE;

Oops, should be DACR_UACCESS_DISABLE.

> > +
> > +     asm volatile("mcr p15, 0, %0, c3, c0, 0" : : "r" (val));
> > +     isb();
> > +}
>
> Rather than inventing these, why not use uaccess_save_and_enable()..
> uaccess_restore() around the Xen call?

Thank you for suggestion: uaccess_enable() and uaccess_disable() are
common calls with arm64, so I will need them, but I think I can use
set_domain() with DACR_UACCESS_DISABLE /DACR_UACCESS_ENABLE inside
these inlines.

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
