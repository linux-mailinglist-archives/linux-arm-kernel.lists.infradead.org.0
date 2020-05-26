Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 157371E2524
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 17:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vC7T4XP8KmMJMHN6XglgyE301rSTO3PsIEYyn2DfZ/E=; b=UHjvYfvv1zIKde
	O2ZwurZrFd/c8rzaHu14o4B5gmJm/QaDlxd4kc7mEaKvf7QrXwTUdrTvOc7zl2Obfa/T2TGqTTVwW
	EjejenuU+0FMEbTzf1ZAQ6jMArf0JZcNGtKnuSJlJTI2K9yOORO9Tjeet3hGdmAb8wdPPvzTtTYFO
	WjfBNs1qOCQE34bOobjPh4j2Tn2gZgJi9Rvo24dFW8AaIM6tl2xN/kqJaW3qRldS4babrxHd9NyFo
	GAZoJQHosBp6t8vkmapOchoNv/2ioIsClHMSN2tMPTCtrbF5G5c2UrbCEdjkRKZi0GDWENb79zmJE
	ysy92vDTvAlPpU6DUcDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdbGX-0005ZO-Pd; Tue, 26 May 2020 15:13:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdbGL-0005Yu-SF
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 15:13:07 +0000
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFFF92086A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 15:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590505984;
 bh=mLAN8D6oIJoa3xggwgfTsbQUrUGKyiAShX7jqMOfqpQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TwwVC+24PxfZ9n8pI3uZo1gP7BUT14m+GVWVUjEuzJ19b989LBWKZjSDjv/kPV1ex
 L6uQJSmJPjTj8IXOAE5zqwykadOzOqlPyc4fH9x/KqRNyGBVD62xdvunQ1MvXvKizj
 2XBl6a+OPGFq6NlEgOuIG4xeKo2Nm0kKRMRoalz8=
Received: by mail-oi1-f179.google.com with SMTP id y85so18861877oie.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 08:13:04 -0700 (PDT)
X-Gm-Message-State: AOAM532iLhfXkZNrT4QkMqRKnvpb/nok0J6zilAWn9xmMqosN8KrEPAq
 zcHiyx6/2I9BBEW6Urz4JAFSCOSPwmRKox90Kw==
X-Google-Smtp-Source: ABdhPJxnWdsB33/h+eNDJFncCR1n3OmMuD+wbzq8824aW+7RwYNdy8Fq+5CjchUFaYrWK3vesXy9roYP9HkRJfjTDcY=
X-Received: by 2002:aca:f084:: with SMTP id
 o126mr14928427oih.106.1590505984103; 
 Tue, 26 May 2020 08:13:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200522033631.32574-1-kishon@ti.com>
 <20200522033631.32574-4-kishon@ti.com>
 <CAL_JsqJjXUUgTbSAi83w4Eie-sVTrkLLMGh_PRQsd8k2vuua4Q@mail.gmail.com>
 <df29309d-8401-4040-eb1e-90bb3af93a82@ti.com>
In-Reply-To: <df29309d-8401-4040-eb1e-90bb3af93a82@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 26 May 2020 09:12:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLy9T8O81stSW8RHpsUXFFjon80VG9-Jgync1eVR4iTew@mail.gmail.com>
Message-ID: <CAL_JsqLy9T8O81stSW8RHpsUXFFjon80VG9-Jgync1eVR4iTew@mail.gmail.com>
Subject: Re: [PATCH v5 03/14] PCI: cadence: Convert all r/w accessors to
 perform only 32-bit accesses
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_081305_953381_60F83CFF 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, PCI <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 24, 2020 at 9:30 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi Rob,
>
> On 5/22/2020 9:24 PM, Rob Herring wrote:
> > On Thu, May 21, 2020 at 9:37 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> >>
> >> Certain platforms like TI's J721E using Cadence PCIe IP can perform only
> >> 32-bit accesses for reading or writing to Cadence registers. Convert all
> >> read and write accesses to 32-bit in Cadence PCIe driver in preparation
> >> for adding PCIe support in TI's J721E SoC.
> >
> > Looking more closely I don't think cdns_pcie_ep_assert_intx is okay
> > with this and never can be given the PCI_COMMAND and PCI_STATUS
> > registers are in the same word (IIRC, that's the main reason 32-bit
> > config space accesses are broken). So this isn't going to work at
>
> right, PCI_STATUS has write '1' to clear bits and there's a chance that it
> could be reset while raising legacy interrupt. While this cannot be avoided for
> TI's J721E, other platforms doesn't have to have this limitation.
> > least for EP accesses. And maybe you need a custom .raise_irq() hook
> > to minimize any problems (such as making the RMW atomic at least from
> > the endpoint's perspective).
>
> This is to make sure EP doesn't update in-consistent state when RC is updating
> the PCI_STATUS register? Since this involves two different systems, how do we
> make this atomic?

You can't make it atomic WRT both systems, but is there locking around
each RMW? Specifically, are preemption and interrupts disabled to
ensure time between a read and write are minimized? You wouldn't want
interrupts disabled during the delay too though (i.e. around
.raise_irq()).

BTW, I've asked this question before, but aren't PCI legacy interrupts
level triggered? If so, isn't generating a pulse wrong?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
