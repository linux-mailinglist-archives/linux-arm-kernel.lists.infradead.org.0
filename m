Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73840162F6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:09:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yenbSzc0mBh+5ZtsCcc/trwCf2gRrgcD3YkCeWx0dtc=; b=FRd27DF/JI7YZ+
	8BaBL4o6MgXMd2bn5qugfhghM6yrAc4eYCEtsPJdRaCnc1U9Wg4a1xm6fjp3yqxB5t7qFW4kgVh4i
	gi+li5itm51bQHJTuxu2M008OymiwV4AUVt2oOkkK2UxUD6mAPXNvN+eBCw3d3sdAXbSK7j1uTOO1
	4jp8hLzv90w/ljgBe7QPnpq2xoOvhmuxsWGpqggozpxbaXVcTpthkh0DiccqPJ8rpmScG0NkS/wNn
	9Yk+1wp07ehTDLrfyAPudyHaun0/PL/eotAStxCaOVhp7rkDHeKZgRD/bizpvSya7cFVXOlcKz3VD
	NMapraCv0VJUuhBJZ4FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48FS-0004J1-Si; Tue, 18 Feb 2020 19:09:34 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48FI-0004IA-6A
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:09:25 +0000
Received: by mail-lf1-x143.google.com with SMTP id m30so15319855lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sgC+KcoeEeyex6eD3mMv5OuL0TkVAKrfj+D1k7Ogeuw=;
 b=B7SdNIl5IuU5K9WpPsBZx8JhLBx4fcihbbhrLKIvbz4QwExJuv3DWqhoiGC8ZIT2N+
 0+7CBvSyOSHs+Yyomv29TbnfyH343iJX6GdGiK99hbWfXVocIxGU5HUhSc8j6xlgpi3X
 A+bGtseJKGz7F8M1cOwlu3ZTZZQUei37cDAigXu1DclhFt6dPQbkmfO7iKpoypxLBrnr
 IFESohfOEtq5Mrks2mPKYXZT66lsu8tofpUq3DUj06Sm5LpNi7B2OUUcKq2PxEEivKGt
 Otcy+/SdZdN6nV01wu62lRZWFz4mjBSXBphXpOInkHduve4r8pp07P7dXYcDjftabJ/D
 aogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sgC+KcoeEeyex6eD3mMv5OuL0TkVAKrfj+D1k7Ogeuw=;
 b=PpYp0sJW24sY3xXe1+gJNxHm/JMYdCVfqS/GQ579IXgxrMM65SWM7T7tGoX0sMDDvz
 8MloQHREh/4NjjdB+lu2P+EMRBAEV0F9F++Tb3PbcvoKmYt4auzr3LusCQ4hwpyhzFnu
 Eff1dAh79ZNr5r8uUGQoQtsi39I0KjKZSqZCQOJqQKh6gQPVA7wbFqRaCMlyNbbC72MG
 K5gip221XiMMsCBajlZc0rMHn+Y+Bm5BHzqFF8lZ4u6gwmz+c6Fz1tqQ4eqdvSbUc9ZF
 wX9ME9MpuWMD//z+xFWatxwj//QROzldLBNBqoStjaoBGwnYXX3QQYpS0CPhOvT4UMBy
 nXkA==
X-Gm-Message-State: APjAAAX/9YRh8fZTFiY56rUBPd8hV1UqbN2CoQhSUxVR/7uqbERHKmG9
 KgElqgfKNaXUaSfEk0meE9AXA1VVj5AwIfeJRTzdzw==
X-Google-Smtp-Source: APXvYqyQa7SCnKGAund4lr/pos/r4SSc5cZAOL8kfuir0DSmhrrLVzgnRx9UUogyHTUSI5sPAqW9V3GBHuZN4nZBbgg=
X-Received: by 2002:a19:dc14:: with SMTP id t20mr11044121lfg.47.1582052961407; 
 Tue, 18 Feb 2020 11:09:21 -0800 (PST)
MIME-Version: 1.0
References: <20170821192907.8695-3-ard.biesheuvel@linaro.org>
 <1581728065-5862-1-git-send-email-alan.mikhak@sifive.com>
 <CAKv+Gu9W0v9owp85hkAatwCvu-y9z4BZxvbKf92N-s_nnD910Q@mail.gmail.com>
 <867e0o6ssr.wl-maz@kernel.org>
In-Reply-To: <867e0o6ssr.wl-maz@kernel.org>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Tue, 18 Feb 2020 11:09:10 -0800
Message-ID: <CABEDWGxDz6njYYQN879XnGmY2vxOKvbygeg=9nBK54U6WP8_ug@mail.gmail.com>
Subject: Re: [PATCH 2/3] pci: designware: add separate driver for the MSI part
 of the RC
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_110924_259759_7E44BE32 
X-CRM114-Status: GOOD (  25.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Graeme Gregory <graeme.gregory@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci <linux-pci@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Leif Lindholm <leif@nuviainc.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 15, 2020 at 2:36 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On Sat, 15 Feb 2020 09:35:56 +0000,
> Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > (updated some email addresses in cc, including my own)
> >
> > On Sat, 15 Feb 2020 at 01:54, Alan Mikhak <alan.mikhak@sifive.com> wrote:
> > >
> > > Hi..
> > >
> > > What is the right approach for adding MSI support for the generic
> > > Linux PCI host driver?
> > >
> > > I came across this patch which seems to address a similar
> > > situation. It seems to have been dropped in v3 of the patchset
> > > with the explanation "drop MSI patch [for now], since it
> > > turns out we may not need it".
> > >
> > > [PATCH 2/3] pci: designware: add separate driver for the MSI part of the RC
> > > https://lore.kernel.org/linux-pci/20170821192907.8695-3-ard.biesheuvel@linaro.org/
> > >
> > > [PATCH v2 2/3] pci: designware: add separate driver for the MSI part of the RC
> > > https://lore.kernel.org/linux-pci/20170824184321.19432-3-ard.biesheuvel@linaro.org/
> > >
> > > [PATCH v3 0/2] pci: add support for firmware initialized designware RCs
> > > https://lore.kernel.org/linux-pci/20170828180437.2646-1-ard.biesheuvel@linaro.org/
> > >
> >
> > For the platform in question, it turned out that we could use the MSI
> > block of the core's GIC interrupt controller directly, which is a much
> > better solution.
> >
> > In general, turning MSIs into wired interrupts is not a great idea,
> > since the whole point of MSIs is that they are sufficiently similar to
> > other DMA transactions to ensure that the interrupt won't arrive
> > before the related memory transactions have completed.
> >
> > If your interrupt controller does not have this capability, then yes,
> > you are stuck with this little widget that decodes an inbound write to
> > a magic address and turns it into a wired interrupt.
>
> I can only second this. It is much better to have a generic block
> implementing MSI *in a non multiplexed way*, for multiple reasons:
>
> - the interrupt vs DMA race that Ard mentions above,
>
> - MSIs are very often used to describe the state of per-CPU queues. If
>   you multiplex MSIs behind a single multiplexing interrupt, it is
>   always the same CPU that gets interrupted, and you don't benefit
>   from having multiple queues at all.
>
> Even if you have to implement the support as a bunch of wired
> interrupts, there is still a lot of value in keeping a 1:1 mapping
> between MSIs and wires.
>
> Thanks,
>
>         M.
>
> --
> Jazz is not dead, it just smells funny.

Ard and Marc, Thanks for you comments. I will take a look at the code
related to MSI block of GIC interrupt controller for some reference.

I am looking into supporting MSI in a non-multiplexed way when using
ECAM and the generic Linux PCI host driver when Linux is booted
from U-Boot.

Specifically, what is the right approach for sharing the physical
address of the MSI data block used in Linux with U-Boot?

I imagine the Linux driver for MSI interrupt controller allocates
some DMA-able memory for use as the MSI data block. The
U-Boot PCIe driver would program an inbound ATU region to
map mem writes from endpoint devices to that MSI data block
before booting Linux.

Comments are appreciated.

Alan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
