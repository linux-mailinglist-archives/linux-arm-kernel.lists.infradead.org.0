Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9D321729
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 12:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LtuD1JuTZuAgbBQQmFNPYato9TrvS72NL3wbDHfiPBc=; b=LaAFVFdrFW8k6p
	YKPPRVS0rFxxC48TFRKzU0AfiOhKo93adThtDNLnw6VFxHnGsnV7G1phKNfK54EJl5AJ+8jUoUUPR
	rCieFa5mZ16r5u8XQXaxVkdNmZvbZYrXEnQxqGra28CA+VpXonp/C3RjZtBu4djrL35r45O/7sKsX
	9AGjpq8Jhaah22h4DJw7haVXPQdxeoDJuvMHWdRt3XAjgEQA4AGKst1uMayIt08kOWUsX2s1vHbU4
	sa1z+CFisnwPfbC/b88oERGbzMcAEkPL7y3msjPmONe90J8BPPMDqL6+HXbwQ5qP7zacZ5gVO6XEw
	Yh+VtS/+hPQs8twkZH/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRaM0-0004iC-Fl; Fri, 17 May 2019 10:44:44 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRaLs-0004gT-6T
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 10:44:38 +0000
Received: by mail-it1-x143.google.com with SMTP id 9so11202672itf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 03:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ae6y0KuXzMG1pHLjgX5VAMMTwD/mpdbSQHyUYqpGa1Y=;
 b=R6RUDRe47ZibIlkhxQWfsIgH9dt5pFYOUAFW/3Asfdh4QE7ekEXvUMeji89niTUt1k
 ThSHvMS8k3bXzi1VUy39vktMv6CElxov+TYUYhnWCWo/JeHIl+5X5uTCE/JPXOr9SNxF
 itX9zP/rxln7zlf7HwFmVYDMS5/xp2TFIkV0GGNN+/7PfpTnpEPE+hJBb0z/BNOLkuD8
 fM8SBe/WyYf0Wg2moOirFS03wLy6/d548Y2nMjbiOokDeRXQUbUn7dr6gtDP/bnIa6mx
 aaatnT+JDGwhVfUdZh/oAQz/iZ67xf1VLuE9Sq/dNCVBEWfSOEzycF2eMKOKgKqVT9/q
 Fw2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ae6y0KuXzMG1pHLjgX5VAMMTwD/mpdbSQHyUYqpGa1Y=;
 b=IN+E5KSPexfdu2K0pKtzqI0RuGbU3Qer+AnuTgDm/kX/5wM1E6PTF2vsOEArZEtx/k
 EyiWPy4yy/YtRyn0VJ8RJzWR+o1N2HHrrjVUDS+8gn9cWhhGg8TDmaDzZ5ZiQ5eGbopc
 YBvv6h3yI0+Ixas2Q3yC8f/eB/3RYcx1tLnlfMVmespjJKLjiOQkBMT7gVeg45I1DD17
 rGb2P7DFNC3+9C49xfwVEiyCMn/ERXvwY3I8Jt/WDZpM/Lzz7jF/nj38987MLM9Tw9eD
 jlxq22neYmUndept5xptLTPO03FNZl75A1VMFKRDSgGte/dVKwzGJiPixfd5JbamaSPA
 Sdtw==
X-Gm-Message-State: APjAAAXSthItFnri4jeFnYZvMEDzbHhyCCNm6OnKLOSiVhZZDzx3+mLd
 vjNSma5YDzHTiXkfJ0S3phc4vxKjrzUSTHJiac5yhg==
X-Google-Smtp-Source: APXvYqx3JP27Nk1tvOQBMDUThEQjHMC4TS5L3KtmWKuKzLoARJahORDrcr3fbLBY/dMbMzQj6L5PkULqhdgPoVo6Vr4=
X-Received: by 2002:a02:1dc7:: with SMTP id 190mr34241024jaj.62.1558089874890; 
 Fri, 17 May 2019 03:44:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190515072747.39941-1-xiaowei.bao@nxp.com>
 <20190515072747.39941-2-xiaowei.bao@nxp.com>
 <CAK8P3a3AXRp_v_7hkoJA28tUCiSh1eYzbk4Q4h29OqL6y-KL8A@mail.gmail.com>
 <AM5PR04MB329934765FB8EB1828743D79F50B0@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <CAK8P3a0kKb7njiJvUkwJYwf-yc-hEyErSiWcvbdf0XnMoctzrg@mail.gmail.com>
In-Reply-To: <CAK8P3a0kKb7njiJvUkwJYwf-yc-hEyErSiWcvbdf0XnMoctzrg@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 17 May 2019 12:44:22 +0200
Message-ID: <CAKv+Gu-WVcVvqPoH3gsz8G3Dwizne81MAQAUGNnGrpthvUiSnw@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH 2/3] arm64: dts: ls1028a: Add PCIe controller DT
 nodes
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_034436_281538_31B538B5 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, DTML <devicetree@vger.kernel.org>,
 gregkh <gregkh@linuxfoundation.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Philippe Ombredanne <pombredanne@nexb.com>, Mingkai Hu <mingkai.hu@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Shawn Guo <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Kate Stewart <kstewart@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 May 2019 at 10:59, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, May 17, 2019 at 5:21 AM Xiaowei Bao <xiaowei.bao@nxp.com> wrote:
> > -----Original Message-----
> > From: Arnd Bergmann <arnd@arndb.de>
> > On Wed, May 15, 2019 at 9:36 AM Xiaowei Bao <xiaowei.bao@nxp.com> wrote:
> > > Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> > > ---
> > >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   52 ++++++++++++++++++++++++
> > >  1 files changed, 52 insertions(+), 0 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > > index b045812..50b579b 100644
> > > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > > @@ -398,6 +398,58 @@
> > >                         status = "disabled";
> > >                 };
> > >
> > > +               pcie@3400000 {
> > > +                       compatible = "fsl,ls1028a-pcie";
> > > +                       reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
> > > +                              0x80 0x00000000 0x0 0x00002000>; /* configuration space */
> > > +                       reg-names = "regs", "config";
> > > +                       interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> > > +                                    <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>; /* aer interrupt */
> > > +                       interrupt-names = "pme", "aer";
> > > +                       #address-cells = <3>;
> > > +                       #size-cells = <2>;
> > > +                       device_type = "pci";
> > > +                       dma-coherent;
> > > +                       num-lanes = <4>;
> > > +                       bus-range = <0x0 0xff>;
> > > +                       ranges = <0x81000000 0x0 0x00000000 0x80 0x00010000 0x0 0x00010000   /* downstream I/O */
> > > +                                 0x82000000 0x0 0x40000000 0x80 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> >
> > Are you sure there is no support for 64-bit BARs or prefetchable memory?
> > [Xiaowei Bao] sorry for late reply, Thought that our Layerscape platform has not added prefetchable memory support in DTS, so this platform has not been added, I will submit a separate patch to add prefetchable memory support for all Layerscape platforms.
>
> Ok, thanks.
>
> > Of course, the prefetchable PCIE device can work in our boards, because the RC will
> > assign non-prefetchable memory for this device. We reserve 1G no-prefetchable
> > memory for PCIE device, it is enough for general devices.
>
> Sure, many devices work just fine, this is mostly a question of supporting those
> devices that do require multiple gigabytes, or that need prefetchable memory
> semantics to get the expected performance. GPUs are the obvious example,
> but I think there are others (infiniband?).
>

Some implementations of the Synopsys dw PCIe IP contain a 'root port'
(within quotes because it is not actually a root port but an arbitrary
set of MMIO registers that looks like a type 01 config region) that
does not permit the prefetchable bridge window BAR to be written (a
thing which is apparently permitted by the PCIe spec). So while the
host bridge is capable of supporting more than one MMIO BAR window,
the OS visible software interface does not expose this functionality

In practice, it probably doesn't matter, since the driver uses the
same iATU attributes for prefetchable and non-prefetchable windows,
but I guess 1 GB of MMIO BAR space is a bit restrictive for modern
systems.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
