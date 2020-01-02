Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2766E12F0E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 23:56:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqOsFQGVaJzXiB+j5qFVPdWzGbYcpOkmBSGIJqo96Ws=; b=PU8Z+PFxyb2tny
	HE8TYEdv56U/QkVZquLJjSIJDgml7dQEe8UHJf0qephxUuFDhRzI0eZfGx9wTnK3QY85XuMze/4kP
	qicGbuR0myM4T5csCA5xOTJzqVV/zk/pHPWPFJt28DtlsnXznMHw1J2UcRSAPHK4BVvzeOyiMW/It
	33rTQ8Kh8kUvcmX+ttbeTdkGg2kIZJmSwJfvZ86EhabQRhyqVPM/klH5X0V0cPyi4gBZunMqOsRCj
	0g0j5RYN+FMWKKqJGKUawulAbheCfmaptJ54nFAQfpE8gV4sXDGu0h44XE2jP0edNm0sFZ6Y1tGPm
	aYKhzVffr0Mc+7AgH7RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in9O3-0001Ly-DK; Thu, 02 Jan 2020 22:56:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in9Nv-0001LC-To; Thu, 02 Jan 2020 22:56:10 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B556724679;
 Thu,  2 Jan 2020 22:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578005766;
 bh=6Koeg/QpSh6SN7IsDtUD1Yw/jN4FQfOCYYp5OlkQg8k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BJyGrgJRAyAcMthsOmMVJk2/d9roLzBD5KeGqfyxfbX3KtZmnnxHXX0pyJ8akcsha
 K/iFSGYit7euv46SOim83yGJFkSBYf8D90gScmaaJtUv+dQKRJYtoCVXIxkXtGp8sR
 GDbQ6bO22fdQJ5Wf9rmFtnvZeSvKb4mLF6EU8dZs=
Received: by mail-qt1-f176.google.com with SMTP id d5so35742016qto.0;
 Thu, 02 Jan 2020 14:56:06 -0800 (PST)
X-Gm-Message-State: APjAAAWIbq0dYG9a6aSmX1wHCFsI6jEVgCCQ7AHwEa5KYLfXqmMlm+O+
 5i1itmBHkv0xg7nEwvsZRfP5p6tO+BdXRw1dQg==
X-Google-Smtp-Source: APXvYqwAbFfNGIM/JC1KIxuEbN03VDUjC5JsTAOv7Mn+H2Fs2ofR3ekjqd4fT38uPCQz6qNQ3qPQ9Hc0j9LyLmDrH44=
X-Received: by 2002:aed:2344:: with SMTP id i4mr63466799qtc.136.1578005765768; 
 Thu, 02 Jan 2020 14:56:05 -0800 (PST)
MIME-Version: 1.0
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAL_JsqLSYroDZGWksJJ=E+01X=3Tji4+GmK8s3i+d2BJphqiLQ@mail.gmail.com>
 <CA+V-a8uKBuVUQvkoJ9pJYX97Qy3JazTyLCy-2T35gOX77AP8vg@mail.gmail.com>
 <20191219233129.GA5484@bogus>
 <CA+V-a8vjwqkH5rYsy_rsHF93d91izsaEwmFXNpYqk3_=_Asd2g@mail.gmail.com>
In-Reply-To: <CA+V-a8vjwqkH5rYsy_rsHF93d91izsaEwmFXNpYqk3_=_Asd2g@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 2 Jan 2020 15:55:53 -0700
X-Gmail-Original-Message-ID: <CAL_JsqJPPuWaOZytWfFy+kwju0tMb2qRN5Ji-Leq2wZdbne_ig@mail.gmail.com>
Message-ID: <CAL_JsqJPPuWaOZytWfFy+kwju0tMb2qRN5Ji-Leq2wZdbne_ig@mail.gmail.com>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_145608_003223_7B7D50CD 
X-CRM114-Status: GOOD (  24.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Simon Horman <horms@verge.net.au>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>, Tom Joseph <tjoseph@cadence.com>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 1:44 AM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> Hi Rob,
>
> On Thu, Dec 19, 2019 at 11:31 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Mon, Dec 16, 2019 at 08:49:23AM +0000, Lad, Prabhakar wrote:
> > > Hi Rob,
> > >
> > > Thank you for the review.
> > >
> > > On Fri, Dec 13, 2019 at 8:37 PM Rob Herring <robh+dt@kernel.org> wrote:
> > > >
> > > > On Fri, Dec 13, 2019 at 2:48 AM Lad Prabhakar
> > > > <prabhakar.csengg@gmail.com> wrote:
> > > > >
> > > > > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > >
> > > > > this patch adds support to parse PCI outbound-ranges, the
> > > > > outbound-regions are similar to pci ranges except it doesn't
> > > > > have pci address, below is the format for bar-ranges:
> > > > >
> > > > > outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
> > > > >                    upper32_size lower32_size>;
> > > >
> > > > You can't just make up a new ranges property. Especially one that
> > > > doesn't follow how 'ranges' works. We already have 'dma-ranges' to
> > > > translate device to memory addresses.
> > > >
> > > > Explain the problem or feature you need, not the solution you came up
> > > > with. Why do you need this and other endpoint bindings haven't?
> > > >
> > > rcar SoC's supports multiple outbound region for mapping the PCI address
> > > locally to the system. This lead to discussion where there exist controllers
> > > which support regions for high/low priority transfer and similarly regions
> > > for large/small memory allocations, as a result a new ranges property was
> > > added, where we can specify the flags which would indicate how the outbound
> > > region can be used during requests.
> >
> > What are the flags?
>
> below are the flags which were discussed in first version of the
> series, but since the driver is
> currently using just PCI_EPC_WINDOW_FLAG_NON_MULTI_ALLOC flag I'll be
> dropping them in
> next version (suggested by Kishon) and rest will be added as and when
> required by the driver.
>
>  * @PCI_EPC_WINDOW_FLAG_MULTI_ALLOC: Indicates multiple chunks of memory can be
>  *                                  allocated from same window
>  * @PCI_EPC_WINDOW_FLAG_NON_MULTI_ALLOC: Indicates only single memory allocation
>  *                                      is possible on the window
>  * @PCI_EPC_WINDOW_FLAG_LARGE_ALLOC: Window is used for large memory allocation
>  * @PCI_EPC_WINDOW_FLAG_SMALL_ALLOC: Window is used for small memory allocation
>  * @PCI_EPC_WINDOW_FLAG_HIGH_PRI_ALLOC: Window is used for high priority data
>  *                                     transfers
>  * @PCI_EPC_WINDOW_FLAG_LOW_PRI_ALLOC: Window is used for low priority data
>  *                                    transfers

Looks like configuration or policy, not something that belongs in DT.
Coupling driver features and DT changes is not good for ABI compatible
changes either.

I'm hesitant to accept any PCI endpoint binding additions because they
don't seem to be completely thought out in terms of supporting
different usecases.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
