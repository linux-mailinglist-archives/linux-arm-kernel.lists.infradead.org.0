Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF8B12E3F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 09:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSgbYayLKKQYz9jordQ+9gKYn/RcB+M7T8fKiAuXEr8=; b=Pnh/khKoYjtIVw
	ACyavD+aIPb3pgX4/8d4Btw7peUUaHto73K/fSv/GfObdXy1DhTZrGVb+gMtuH1iaVuWvW1KHuNam
	1bjfXMQ/CV6TCL/iXD7ssafxzURw5PRjJEkhjSYwKRMw2tIbBrLi9XTfTKSshcbb6GA49zV7VgZMQ
	hybHYn1qPQbjWxL4ZTrYTkSvOkbWldE7kn3a5dO8ec80R0LLILgeQcHhL9NB17XAS/B6Eti/rtj76
	xGcpOAs8b+qTMG0m0qEt8z88HhuvfVo9NluqM1KNUCzW4jFJlN3v5w3PLTsm077aS0w73UrmQmACV
	ioGTO/J4gWuZd9s8tLWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imw6D-0004Io-0y; Thu, 02 Jan 2020 08:44:57 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imw66-0004Ha-0D; Thu, 02 Jan 2020 08:44:51 +0000
Received: by mail-ot1-x341.google.com with SMTP id 59so56140525otp.12;
 Thu, 02 Jan 2020 00:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RJXFVlyRwTqj9HkStatG/uviJjFGvZJlZBeqka9UDNY=;
 b=gdiUCeOPqScjXzrbvIh+ShMJdMtOIFx3qiDxl8Rnx0tRID+ljoSEDWZXifZyy+UDoK
 ZbP+uX2yH0Lua7XN3AMGacK2rVrdEAdaFX09Pn8/uzG3t01jvXUKjmInkQIVS+QHIezD
 VXX6JM5ur/SC4XeH73Y6MZ2pf8t8dk3hLl6vy6PahZF9tKuqXwq53iy00PMcaIcImJvz
 a0qOXjUw9jKbNkcQk34Ejg4DCSj/O8c7yFs5z0bZaMFOy6CrljgugPlFvg6n+X9/iQEw
 F/xgEeo5JX2ZN4LVxKsTrzXDRQO8ty7llvBlWTz/fa7rkDg9PweY+jOm9fuFBl4kD2F5
 0bPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RJXFVlyRwTqj9HkStatG/uviJjFGvZJlZBeqka9UDNY=;
 b=cqgdHkmyGCDhxUBTKMfYsdpEn09nWvjQJiy71fssopQ1LEnsf3Vv/istn/5uwufC6E
 BMC03hQRUH41kv4xCtG5WpNkzbwPruqmiIImAfFDFpZg0IDQ9ItuxUtc6KwG8i2Oexrb
 f5uWEdQPYj9GPMp3ojtZRvtwrkGFYB91p+LFlgMShiPL97y2Rd450hQEGHl9SB1Pduuv
 b0S4Q6n29FoLFTItWHPdAEOOzBVGScYHVe0ZXzlOrpH/fECDU+eeOnocG7Rr1vck2bos
 VlPww2e6jdGsyDpv4epGTJ4lDtOHVGUZdoj1ZmMFFoHTV/arh1iWP4Q0rZhUTh4GHYrb
 8uag==
X-Gm-Message-State: APjAAAV7i58bi4eihmGCrRv/8DZtjcFoC+0haNwi0jKB0zRqHx7dKP03
 E9GIwlEe+LEUwjL0fnNaepHgSQVAERbxzcieRas=
X-Google-Smtp-Source: APXvYqzOhzS82AptAf2MZPwDekJw6thW0D54iQ6Qt4TuLUMBcVXdHaCHrtJnYpVCXcsxnGiGCP9GyLgDg6gsrK4LUGE=
X-Received: by 2002:a9d:5c02:: with SMTP id o2mr83617674otk.176.1577954688818; 
 Thu, 02 Jan 2020 00:44:48 -0800 (PST)
MIME-Version: 1.0
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAL_JsqLSYroDZGWksJJ=E+01X=3Tji4+GmK8s3i+d2BJphqiLQ@mail.gmail.com>
 <CA+V-a8uKBuVUQvkoJ9pJYX97Qy3JazTyLCy-2T35gOX77AP8vg@mail.gmail.com>
 <20191219233129.GA5484@bogus>
In-Reply-To: <20191219233129.GA5484@bogus>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 2 Jan 2020 08:44:23 +0000
Message-ID: <CA+V-a8vjwqkH5rYsy_rsHF93d91izsaEwmFXNpYqk3_=_Asd2g@mail.gmail.com>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_004450_046460_46E9744A 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Rob,

On Thu, Dec 19, 2019 at 11:31 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Dec 16, 2019 at 08:49:23AM +0000, Lad, Prabhakar wrote:
> > Hi Rob,
> >
> > Thank you for the review.
> >
> > On Fri, Dec 13, 2019 at 8:37 PM Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > On Fri, Dec 13, 2019 at 2:48 AM Lad Prabhakar
> > > <prabhakar.csengg@gmail.com> wrote:
> > > >
> > > > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > >
> > > > this patch adds support to parse PCI outbound-ranges, the
> > > > outbound-regions are similar to pci ranges except it doesn't
> > > > have pci address, below is the format for bar-ranges:
> > > >
> > > > outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
> > > >                    upper32_size lower32_size>;
> > >
> > > You can't just make up a new ranges property. Especially one that
> > > doesn't follow how 'ranges' works. We already have 'dma-ranges' to
> > > translate device to memory addresses.
> > >
> > > Explain the problem or feature you need, not the solution you came up
> > > with. Why do you need this and other endpoint bindings haven't?
> > >
> > rcar SoC's supports multiple outbound region for mapping the PCI address
> > locally to the system. This lead to discussion where there exist controllers
> > which support regions for high/low priority transfer and similarly regions
> > for large/small memory allocations, as a result a new ranges property was
> > added, where we can specify the flags which would indicate how the outbound
> > region can be used during requests.
>
> What are the flags?

below are the flags which were discussed in first version of the
series, but since the driver is
currently using just PCI_EPC_WINDOW_FLAG_NON_MULTI_ALLOC flag I'll be
dropping them in
next version (suggested by Kishon) and rest will be added as and when
required by the driver.

 * @PCI_EPC_WINDOW_FLAG_MULTI_ALLOC: Indicates multiple chunks of memory can be
 *                                  allocated from same window
 * @PCI_EPC_WINDOW_FLAG_NON_MULTI_ALLOC: Indicates only single memory allocation
 *                                      is possible on the window
 * @PCI_EPC_WINDOW_FLAG_LARGE_ALLOC: Window is used for large memory allocation
 * @PCI_EPC_WINDOW_FLAG_SMALL_ALLOC: Window is used for small memory allocation
 * @PCI_EPC_WINDOW_FLAG_HIGH_PRI_ALLOC: Window is used for high priority data
 *                                     transfers
 * @PCI_EPC_WINDOW_FLAG_LOW_PRI_ALLOC: Window is used for low priority data
 *                                    transfers

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
