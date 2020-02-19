Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A6A163F99
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:48:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBqlyQxSSgqG7AQZzDV12aMvt3nGHhHm/qzlk4y3t9E=; b=AzpwjHA7y5lVhy
	kipWpJiK5HyrzKis5/4UAlYXOAE+umRebdyWPG136Xa5pProCYHWt4e+JoV+hc8W1Tiuwo/kM/Pzs
	pkJgbpHxDX/bTjUYPM79ar5zz2oMWHZtwv34QjFkF8Ry568vUqISfRW+likWUy4G0LsOiSvXjJrnv
	1XAEbXOInHWqcp+GA+O0Ue4WAbMcu9SycCrC2OJ5SuWWqUFNgKE+HC6GCTxrH7bNpekFgOORFAPZo
	AMn+c0z2f/kqyFf76xNBgjyewY+wUIJztLgNDn2xDIbI4NwXkWbdtaK1uKtrT41cevve3hCjZPbtC
	0ceWMOAmUXTt4nJ49oYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4L1q-00036g-KS; Wed, 19 Feb 2020 08:48:22 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4L1i-00036F-Na; Wed, 19 Feb 2020 08:48:16 +0000
Received: by mail-ot1-x342.google.com with SMTP id h9so22337625otj.11;
 Wed, 19 Feb 2020 00:48:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R08prwaXuvTYAVVThubWpAvz2VPPRFnMx93j3J6DFWA=;
 b=ZYDvn5yyYTUZAneLoxLh7tNN/BgyWo8q9Zz8A3QhxnB+c2kruqQe2yFxotIwq/UNMh
 pCX9UQZ7f/8WP6GBXFTNl/rpeNW2cboFPXLL3SPMvTq24KjAt1NSBUiOwyGmU7bkn5w5
 PyhJ/4m3EdSclk6A8bY7Z30e5cbYvRcpJ+pA06hZBbgmTJDggae1ejIOHxqPkyjDdZo1
 H09h5m2NSoRKlpBBOlxt0NT1qFVrrM6qoM6hrZ5ytQxh6o2QGakAqC2WABvzZgay7eUx
 YQ+V/YJk0myvKQTjayfxo95WPmZEaknEK6toa5xdgHgewiXXaYbX/4gOy6xH2JHIbaPS
 AOjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R08prwaXuvTYAVVThubWpAvz2VPPRFnMx93j3J6DFWA=;
 b=j92+RSfAhDJZ0ONPgIQUvupTgQxfIZGAol537gWl7nusXtTCSFUE+//Z2lDObOJm9i
 bF9AKqVS6Frv9j4YeXH9kBWR2UwSroVp/Yyir/GIOw50QppXfwZlMaKHnQoAO6R+2BIQ
 2uqikPYE9j/6aw0mmgzIboAkGBAutGX3WUWmFIXY8FeRcxlukd9atfI8Fk4yO9hndH0F
 IUFkT+GyBbjVQP/CawwbNpbzQHMD9m2tSLXItF47D2CtIe1GfLwr1sqeLkNgp+k2H5Ch
 J+Hjl3ykNoV0pnaZi97RSsoaQZnRRw5UpuNGEabxeTfANX58EF2u++norE0g87IsvYK0
 JpSA==
X-Gm-Message-State: APjAAAW5ql7NGH05w8n97OIsDeJeDZeyJzq5nZBQoF0MZmIUVLmlhtpH
 LNPIroy2TghHeezImMAhzd68osXiYDnJ039JzPw=
X-Google-Smtp-Source: APXvYqyJ+/2xM4/pRZqtjAw7TzJq3x97VyAVdB+hLIZ/Kwd+N1nBgR0qLGPwOHDKMHc8A7r6EXU6PhMoAtXdWTjZD4w=
X-Received: by 2002:a9d:d06:: with SMTP id 6mr19490799oti.176.1582102092752;
 Wed, 19 Feb 2020 00:48:12 -0800 (PST)
MIME-Version: 1.0
References: <20200208183641.6674-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200212140434.GA129189@google.com>
In-Reply-To: <20200212140434.GA129189@google.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 19 Feb 2020 08:47:46 +0000
Message-ID: <CA+V-a8vVaLpVofr=tp0AXwUzDMwCJ+Byc8VGtmmtOWVSs3GVvg@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] PCI: rcar: Fix calculating mask for PCIEPAMR
 register
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_004814_770506_CA7DE3B3 
X-CRM114-Status: GOOD (  20.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Will Deacon <will@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

Thank you for the review.

On Wed, Feb 12, 2020 at 2:04 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Sat, Feb 08, 2020 at 06:36:37PM +0000, Lad Prabhakar wrote:
> > The mask value was calculated incorrectly for PCIEPAMR register if the
> > size was less the 128bytes, this patch fixes the above by adding a check
> > on size.
>
> s/less the/less than/
> s/128bytes,/128 bytes./
> s/this patch fixes the above/Fix this issue/
>
My bad will fix that.

> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  drivers/pci/controller/pcie-rcar.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
> > index d5568db..c76a92a 100644
> > --- a/drivers/pci/controller/pcie-rcar.c
> > +++ b/drivers/pci/controller/pcie-rcar.c
> > @@ -71,7 +71,7 @@ void rcar_pcie_set_outbound(int win, void __iomem *base,
> >       /* Setup PCIe address space mappings for each resource */
> >       resource_size_t res_start;
> >       resource_size_t size;
> > -     u32 mask;
> > +     u32 mask = 0x0;
> >
> >       rcar_pci_write_reg(base, 0x00000000, PCIEPTCTLR(win));
> >
> > @@ -80,7 +80,8 @@ void rcar_pcie_set_outbound(int win, void __iomem *base,
> >        * keeps things pretty simple.
> >        */
> >       size = resource_size(res);
> > -     mask = (roundup_pow_of_two(size) / SZ_128) - 1;
> > +     if (size > 128)
> > +             mask = (roundup_pow_of_two(size) / SZ_128) - 1;
>
> I would put the "mask = 0x0" right here so it's all in one place,
> i.e.,
>
>   if (size > 128)
>     mask = (roundup_pow_of_two(size) / SZ_128) - 1;
>   else
>     mask = 0x0;
>
Sure will change that.

Cheers,
--Prabhakar Lad

> >       rcar_pci_write_reg(base, mask << 7, PCIEPAMR(win));
> >
> >       if (!host) {
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
