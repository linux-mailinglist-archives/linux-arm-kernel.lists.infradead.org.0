Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7F7A9D9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waSoEv3aso4LG2jlWMrPbpVpjT8wpWxdzgX9vWJmg0Q=; b=qo+2bqIcyubREN
	/MPmkvDre/SBl6L/E6RkiBEy1WLxQvngjLEdgmno+FgTv9ilNz9oZ0EMDD7fuDQ5Z0Qi3qFZmaJeL
	uqxJWQRIsb2/pzGRvgIPZnQKjhvWWWxx+83Ov21W7JdAPn3faX76x0X0WNbZGTXnyiE7F3atDRqZ0
	phImLvKlJkQo1B6DZaEU9l7QnxhBdQSjfkgT3VpB9iJyhsnoOzeggk8668hSy8hEbf6pO1aAw7feu
	yQ8NsfGyXajSKeeDYOkEYwhZNSlwJ/amRwQrlNEvmgHgy1aO2wsqR+MYReDbrW58VVKWitu11kCV0
	sGkQO8I1brJ6gygONcHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nZl-0000pg-QD; Thu, 05 Sep 2019 08:57:09 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nZZ-0000pI-Ji
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:56:59 +0000
Received: by mail-oi1-x242.google.com with SMTP id v7so1177440oib.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IaZJ01VOJ44Z6Y9Qs3oUQiygt2Sy6fVI1ZsDthTYEac=;
 b=jMQkaaRRxSCpAfa0GGbTxN8sdW3BCz1aSdR6b+EoXx/Ue0KZCOzdiDMjAbfR7+eunv
 kx6XBxSzt7twCIJybPMD0h4eaU9yCitmULNsKZtsM1dUaTLn0IRFZwSO/spnqaAIn/WK
 smp1BnN01ssm7CCtza47yOcSEOeIXZ1ZULlSTfRZOEsNqdrJ7B42GvgGl8dAkW5Gxttk
 u9esLSmQOOsONHcK/RUZ141vgbuInB0YtTAbMwB/kfkNXGOaqNn3qNIWIPfg6k2EvkkU
 XJaDvfUoQwhTXwEmZVrsd8airEaBOdhwLNIkte996VruPPflokhLzMWXcXhvYQ73j8Px
 FatA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IaZJ01VOJ44Z6Y9Qs3oUQiygt2Sy6fVI1ZsDthTYEac=;
 b=SSCqe9qdyMympf5fHGRqs4AyjjxEim8eJtEII+Ac2T4FVeteMlMieIWR493rwfaNn0
 zMUcX+XZAgbM9SpUr/qaAX0RhV2XNtOhc4Nc17ijoFzzuQjFQuC6uaBnt73N+HkH7lYg
 CqjE+CeebkJOlYD40ieYhOWmgzP8hrotU2gitwICtTZfW5AbXeLaMau0Z66lTvL+YGrq
 41duMtPQjhqxKIzFOBM1iQA6WU9gwskPtoOyn+thO4m79bd/8TLl9wKMLglOQL2dZZ09
 0R6b0kTPbTywjyTjknKuwbusrX6fSSViGKYRdryetYZUkB3SDGAM1nuphKL2qfTI60q9
 S+0g==
X-Gm-Message-State: APjAAAXWRlDA20xmTXGP6J2NW9Uf2rwyEVWOfq0t59r3ZhLPX0u02m12
 SEO7+T3HH/xvzfVBAREKqlWK1pg3qwvJSOIQsf14rg==
X-Google-Smtp-Source: APXvYqwoy7MTqB4H3mDdtS3aRDNvVJhhOoQARzpS77k98EfHG9CbyovynxJ3OmaOX9n7dO2thM4lg6LAw11dh4CzMMw=
X-Received: by 2002:aca:f54d:: with SMTP id t74mr1740404oih.170.1567673816212; 
 Thu, 05 Sep 2019 01:56:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
 <86mufjrup7.wl-maz@kernel.org>
In-Reply-To: <86mufjrup7.wl-maz@kernel.org>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Thu, 5 Sep 2019 09:56:44 +0100
Message-ID: <CAFEAcA9qkqkOTqSVrhTpt-NkZSNXomSBNiWo_D6Kr=QKYRRf=w@mail.gmail.com>
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_015657_654215_2A462A96 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?Daniel_P_=2E_Berrang=C3=A9?= <berrange@redhat.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Julien Thierry <julien.thierry@arm.com>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 5 Sep 2019 at 09:52, Marc Zyngier <maz@kernel.org> wrote:
>
> On Thu, 05 Sep 2019 09:16:54 +0100,
> Peter Maydell <peter.maydell@linaro.org> wrote:
> > This is true, but the problem is that barfing out to userspace
> > makes it harder to debug the guest because it means that
> > the VM is immediately destroyed, whereas AIUI if we
> > inject some kind of exception then (assuming you're set up
> > to do kernel-debug via gdbstub) you can actually examine
> > the offending guest code with a debugger because at least
> > your VM is still around to inspect...
>
> To Christoffer's point, I find the benefit a bit dubious. Yes, you get
> an exception, but the instruction that caused it may be completely
> legal (store with post-increment, for example), leading to an even
> more puzzled developer (that exception should never have been
> delivered the first place).

Right, but the combination of "host kernel prints a message
about an unsupported load/store insn" and "within-guest debug
dump/stack trace/etc" is much more useful than just having
"host kernel prints message" and "QEMU exits"; and it requires
about 3 lines of code change...

> I'm far more in favour of dumping the state of the access in the run
> structure (much like we do for a MMIO access) and let userspace do
> something about it (such as dumping information on the console or
> breaking). It could even inject an exception *if* the user has asked
> for it.

...whereas this requires agreement on a kernel-userspace API,
larger changes in the kernel, somebody to implement the userspace
side of things, and the user to update both the kernel and QEMU.
It's hard for me to see that the benefit here over the 3-line
approach really outweighs the extra effort needed. In practice
saying "we should do this" is saying "we're going to do nothing",
based on the historical record.

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
