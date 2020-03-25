Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2285019299A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 14:27:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5unV7ipsC3VTWOL1Zbjsug+M206zl8RRd8nmQtHYA+o=; b=mFZPgq6dxzrPV5
	J5/ibHHhSIi53c3LNS1KksxuItLVlUPQLGM4FHseOLJ4avQtLkZu4iVxtmkKoIERqarVuLukkCgJi
	2IxvArStQzx2ZzN5LYS8qpWZiQ1AO1s5dffhzd0jawxiCuP1QVSVgSLvk+jurUlM9vBB1xjST68py
	cyNhxxcrMRW5M5wAWwQQBI4z7Z7bwOgEEntrw3OFFrebcaNXBtmCl9tQIQr8PgaovTDsCnuDEb5uX
	fekQVNctBEibBVrpYxpCPppo/pOtEZiuK/wA9z5iHPiWKoQe6q4caI0fcWj7MZOLPZ7wm4L1q00xT
	ORD2fb0eeW7tFkdqmBbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH63r-0004kH-H3; Wed, 25 Mar 2020 13:27:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH63j-0004jg-6C
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 13:27:04 +0000
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A29B8208C3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 13:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585142821;
 bh=cRMnzJlM4MdOZf8WiPCh3JhbOveFjpzO8YOajpEZfpg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OgIPvmzTk4N1npPOWL5bcGi2a7i+MyFgimQ6JHIYVPGweGlDz/dOIEUriP3NZ9OBq
 RnOJ40lEreYinOKH/3Klk2gtPy489OK+Cs2Ryyt5eRbMmmoA8lNdMyzGsGgCYgfwj6
 v9hdgsgHd27Urwhl5k26J89ks6DXa5gErTZXLOE8=
Received: by mail-io1-f42.google.com with SMTP id h8so2199863iob.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 06:27:01 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2HtNQdlNVvd5M+Yrro63VQEiJH8GgpmDjiB66EUCXcIBCwZazH
 m17p47JdeGBVLBQ4yE8+NqznR+GLLvT162qmBRk=
X-Google-Smtp-Source: ADFU+vvbZyOfNa3XDJibw7rhJIu4kwtdKxFTqoEjWnue8LN0T3U3l29HitkV76a3j2CJp0OgtS4/8EuZII8BRZFIrig=
X-Received: by 2002:a02:5489:: with SMTP id t131mr2869139jaa.134.1585142821043; 
 Wed, 25 Mar 2020 06:27:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200325114110.23491-1-broonie@kernel.org>
 <20200325123157.GA12236@lakrids.cambridge.arm.com>
In-Reply-To: <20200325123157.GA12236@lakrids.cambridge.arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 25 Mar 2020 14:26:49 +0100
X-Gmail-Original-Message-ID: <CAMj1kXH1OC0hqnP5hWUVMK8Z5CrWp+XFfxAyufXY4bKwN2U2xw@mail.gmail.com>
Message-ID: <CAMj1kXH1OC0hqnP5hWUVMK8Z5CrWp+XFfxAyufXY4bKwN2U2xw@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_062703_257728_4CA46837 
X-CRM114-Status: GOOD (  15.31  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-crypto@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

,

On Wed, 25 Mar 2020 at 13:32, Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, Mar 25, 2020 at 11:41:07AM +0000, Mark Brown wrote:
> > Since inserting BTI landing pads into assembler functions will require
> > us to change the default architecture we need a way to enable
> > extensions without hard coding the architecture.
>
> Assuming we'll poke the toolchain folk, let's consider alternative ways
> around this in the mean time.
>
> Is there anything akin to push/pop versions of .arch directitves that we
> can use around the BTI instructions specifically?
>
> ... or could we encode the BTI instructions with a .inst, and wrap those
> in macros so that GAS won't complain (like we do for mrs_s and friends)?
>
> ... does asking GCC to use BTI for C code make the default arch v8.5 for
> inline asm, or does it do something special to allow BTI instructions in
> specific locations?
>

I think using macros wrapping .inst directives is the most hassle free
way to achieve this, assuming there is no need to encode registers or
immediates (which makes it slightly messy - refer to
arch/arm64/crypto/sm3-ce-core.S for an example)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
