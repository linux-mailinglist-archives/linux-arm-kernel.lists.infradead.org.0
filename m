Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DADB7215D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 10:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcGUOIR0Ke14OexOw5GU1YD43pkVnk/O9WlZI6PY+F8=; b=lIlC0BkocJ5TRm
	yRzoc0osgYaddF4xsjUxivn+ZeTdk9iyFjHc35k2TcwBNu6ZY+DwP6vgfF0/AE60kwwBsPa9H1lci
	rqEMtpMWenj6j0CZIXz9ZcvqdeIChX7ZTn9aDa+ZdqvUOqZqJ6ZmVRXN6uf/kGN4bjXcG0Xv0At1Q
	W46din9wghAzwV6D5wwhl/6ASr0OPVtNFmEaWOR5bktbBPu/iaT5p77gtaLz+ctqzjDDVALbKvax0
	NGegeTnksNH/lc6ElYh5QFCPQFTGZt2gYl3eAm0+bpWF8L+JZaxpRmAykcpSoQtkwMTobNGvGd5Qv
	PKbx9U/7C5UfkSfc9JTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYhj-0005rW-1G; Fri, 17 May 2019 08:59:03 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYhb-0005qy-LR
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 08:58:57 +0000
Received: by mail-qt1-f194.google.com with SMTP id d13so7143503qth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 01:58:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lUdOq+gx0nXT1b9GsinnX5s7hPrX6YoGJqW2/FU2LMQ=;
 b=g4vOVRAC4ClHoyuGRn5yuoZbN3oufHG9jxTdP79m17C90ngTybh5lVJhOdGajOtnAV
 TwbguVwGPRmVnE5aVEnp/MLf9nnWv7fasP/UtQCG5Dk3upMhFun5EG6al7OSKTpatpF6
 RzpdTuvTAgF5ewtLYlyZixdQ+vwKJta429kV/ZZe3AR3K2RS4B0vmsiZwX0YZ6kahx/d
 vRIw6VYlZZBqxLSHhqOhm8mdd4fRQWLsCSVcKo3fK5Ny1nQ0u7TPFWInIIGcYkDPVuN3
 MH4J2jMPraoU0aqNfsirROh4bGW/woxktXN3iDp/DKgJhQqjqliqWu/+ho+24kuhf4Db
 L7Gw==
X-Gm-Message-State: APjAAAUvfkkvrFE2Gu+zjDc5qEnSjwPS5pNUlZysI9MdDAc8zKsDFdny
 7p4MPco0MA4vy3+YLpwcDcfUEs3Y3MRRs3rG9ZA=
X-Google-Smtp-Source: APXvYqwNxbxFr/vzS1RXQZDBTDKL/hVCvagOotGDm724YF5ym/q8RL/him/sN27hB8O1MZtVcEFf95bHEOo3m0FhXo8=
X-Received: by 2002:ac8:2a05:: with SMTP id k5mr30063052qtk.304.1558083534352; 
 Fri, 17 May 2019 01:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190515072747.39941-1-xiaowei.bao@nxp.com>
 <20190515072747.39941-2-xiaowei.bao@nxp.com>
 <CAK8P3a3AXRp_v_7hkoJA28tUCiSh1eYzbk4Q4h29OqL6y-KL8A@mail.gmail.com>
 <AM5PR04MB329934765FB8EB1828743D79F50B0@AM5PR04MB3299.eurprd04.prod.outlook.com>
In-Reply-To: <AM5PR04MB329934765FB8EB1828743D79F50B0@AM5PR04MB3299.eurprd04.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 17 May 2019 10:58:37 +0200
Message-ID: <CAK8P3a0kKb7njiJvUkwJYwf-yc-hEyErSiWcvbdf0XnMoctzrg@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH 2/3] arm64: dts: ls1028a: Add PCIe controller DT
 nodes
To: Xiaowei Bao <xiaowei.bao@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_015855_788870_5C400F12 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 DTML <devicetree@vger.kernel.org>, gregkh <gregkh@linuxfoundation.org>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Philippe Ombredanne <pombredanne@nexb.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Leo Li <leoyang.li@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 5:21 AM Xiaowei Bao <xiaowei.bao@nxp.com> wrote:
> -----Original Message-----
> From: Arnd Bergmann <arnd@arndb.de>
> On Wed, May 15, 2019 at 9:36 AM Xiaowei Bao <xiaowei.bao@nxp.com> wrote:
> > Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   52 ++++++++++++++++++++++++
> >  1 files changed, 52 insertions(+), 0 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > index b045812..50b579b 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > @@ -398,6 +398,58 @@
> >                         status = "disabled";
> >                 };
> >
> > +               pcie@3400000 {
> > +                       compatible = "fsl,ls1028a-pcie";
> > +                       reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
> > +                              0x80 0x00000000 0x0 0x00002000>; /* configuration space */
> > +                       reg-names = "regs", "config";
> > +                       interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> > +                                    <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>; /* aer interrupt */
> > +                       interrupt-names = "pme", "aer";
> > +                       #address-cells = <3>;
> > +                       #size-cells = <2>;
> > +                       device_type = "pci";
> > +                       dma-coherent;
> > +                       num-lanes = <4>;
> > +                       bus-range = <0x0 0xff>;
> > +                       ranges = <0x81000000 0x0 0x00000000 0x80 0x00010000 0x0 0x00010000   /* downstream I/O */
> > +                                 0x82000000 0x0 0x40000000 0x80 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
>
> Are you sure there is no support for 64-bit BARs or prefetchable memory?
> [Xiaowei Bao] sorry for late reply, Thought that our Layerscape platform has not added prefetchable memory support in DTS, so this platform has not been added, I will submit a separate patch to add prefetchable memory support for all Layerscape platforms.

Ok, thanks.

> Of course, the prefetchable PCIE device can work in our boards, because the RC will
> assign non-prefetchable memory for this device. We reserve 1G no-prefetchable
> memory for PCIE device, it is enough for general devices.

Sure, many devices work just fine, this is mostly a question of supporting those
devices that do require multiple gigabytes, or that need prefetchable memory
semantics to get the expected performance. GPUs are the obvious example,
but I think there are others (infiniband?).

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
