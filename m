Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BB1120034
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:48:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7eLBqgMkA5XLR2qmsKGTJVp1y2aFloHgbQFdhfNn7+w=; b=jdHph8K88GdrZS0B0vHFqiA81r
	5uBulrGUU+qgSAEoM17P6vCabY8IZ+udIixa1YDODC4GByb5BO9NWgwaLZ2O1eBS4/UBRM9HtaHGl
	41OULaFvaHWXdwsb0FKTrKxAwK4RFJ+H6dByDMRM/7m+NbUHym7HCMUAw6VgLhzonUBPiRhgPMGgo
	Oe5XZegkbiFHzqz9Nyt7yOVgd3BExmU0R9UDYGkyYME94q0QhV1/uZeLdtPTKFZzW7XSEYUxqtmQK
	dkiToaYzQBxIM9LsEiKQVzuK7X55y2YZju33mnP/JIdimIgSGVe9cRuUyvgx4F0Z2VxKn6xRpfhGG
	+as23pxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igm3R-0004dE-Hn; Mon, 16 Dec 2019 08:48:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igm2Z-0004Bo-JD
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 08:47:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id z3so6178008wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 00:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=UCb1aLRLTzlVhWNMjZXZKGwuML6x7jOTgc2nDzZf58E=;
 b=Mspx/K+QfHmNRZPHL6k5AJMceeZwtVPDzqXbxtrPfcHZCmPaxeuVIFSA4Rgd3YhD76
 fT1t/dd8PunfVmAPihW8z0V8ypiLOnVwMbhLN4+gap6qinf7YXJvcPpIeGJRt3jqvGMP
 3L8w5kf1WLsdAvw1jjEl1qSFmI63h9J4n93J7R3Y0Qvg/KFDNSb2eFhUeaKcTUaB1jsa
 zEIaqTjvq2F8nfDEBLolbmA+4K+N1iHBaF7kroMNF6OpMRIEiSp934EJ5jmxrXlU4ZUS
 D9xcCyfF7GBak9VY4qWm+AmbxpIupPIY1r/KSd43sD5ioVrT3JoOFBgx4Zsazft7dbYf
 dssw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=UCb1aLRLTzlVhWNMjZXZKGwuML6x7jOTgc2nDzZf58E=;
 b=sgfuz5ilS5AnX3tcDYPWxXI0paNezTzqCi634LzHr+/L32DKT8WaS9s/cjKur+z3v3
 zYsGLh9NJs/VQy9a09oiUUJvvkzvkYU63pYt6DMYxG09/bE4FwLmCvY1GzikNCrMBUPQ
 oNatl7QIxYAw67/fcYCgUVK8pVKoXnvoiGAw9gPF8IS4tvdNn4cLECTBBVyjhQQFMpJ1
 vV3IgNRXt3x/jRxkfyuoUNtmfEJSnPNYXY6p0Hvn2uR2b43Vg3w6vfJgh1Go04LDq8iY
 YytoAuvMClcifRIJ/mvnMTuBVIxxXpMEGHWIaFJbIyabrwUBVRFpb5KbhSzudBzah5iG
 GiEQ==
X-Gm-Message-State: APjAAAXMT5+C4amordZqTOGZjkAmk5mVIq0+oKmuw/tRNFv4S2zNaxYG
 R5vZenT+jAMzVtBw7RYt1UD00g==
X-Google-Smtp-Source: APXvYqyLnlEaVpkiF1HI78n8G1vzJZongnJIMYz+ifesrg0LxQphKWK8bFoJHiH4Wxje2YoxtG06rw==
X-Received: by 2002:adf:fc03:: with SMTP id i3mr29498932wrr.306.1576486061156; 
 Mon, 16 Dec 2019 00:47:41 -0800 (PST)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id z18sm19958406wmf.21.2019.12.16.00.47.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 00:47:40 -0800 (PST)
References: <20191208210320.15539-1-repk@triplefau.lt>
 <1jpngxew6l.fsf@starbuckisacylon.baylibre.com>
 <20191215113634.GB7304@voidbox>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH 0/2] PCI: amlogic: Make PCIe working reliably on AXG
 platforms
In-reply-to: <20191215113634.GB7304@voidbox>
Date: Mon, 16 Dec 2019 09:47:39 +0100
Message-ID: <1jsglkbqs4.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_004743_653864_70D0E802 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, linux-pci@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 15 Dec 2019 at 12:36, Remi Pommarel <repk@triplefau.lt> wrote:

> On Mon, Dec 09, 2019 at 09:32:18AM +0100, Jerome Brunet wrote:
>> 
>> On Sun 08 Dec 2019 at 22:03, Remi Pommarel <repk@triplefau.lt> wrote:
>> 
>> > PCIe device probing failures have been seen on some AXG platforms and were
>> > due to unreliable clock signal output. Setting HHI_MIPI_CNTL0[26] bit
>> > solved the problem. After being contacted about this, vendor reported that
>> > this bit was linked to PCIe PLL CML output.
>> 
>> Thanks for reporting the problem.
>> 
>> As Martin pointed out, the CML outputs already exist in the AXG clock
>> controller but are handled using HHI_PCIE_PLL_CNTL6. Although
>> incomplete, it seems to be aligned with the datasheet I have (v0.9)
>> 
>> According to the same document, HHI_MIPI_CNTL0 belong to the MIPI Phy.
>> Unfortunately bit 26 is not documented
>> 
>> AFAICT, the clock controller is not appropriate driver to deal with this
>> register/bit
>> 
>
> Regarding both @Martin's and your remark.
>
> Unfortunately the documentation I have and vendor feedback are a bit
> vague to me. I do agree that CLKID_PCIE_PLL_CML_ENABLE is not a proper
> name for this bit because this register is MIPI related.
>
> Here is the information I got from the vendor [1]. As you can see
> HHI_MIPI_CNTL0[29] and HHI_MIPI_CNTL0[26] are related together, and
> HHI_MIPI_CNTL0[29] is implemented in the clock controller as
> axg_mipi_enable which is why I used this driver for HHI_MIPI_CNTL0[26].
>

Seems I should have paid more attention when axg_mipi_enable.
Bit 29 is yet another undocumented bit

> So maybe I could rename this bit to something MIPI related ?

This register region is simply not part of the main clock
controller. The bits in it are not related to this controller but the
MIPI PHY. It should not have been mapped in this way to begin with.

I can see how it would be convient to model this with a gate to just
flip the bit when needed but it is just wrong.

The documentation says the register are for the MIPI analog PHY, it
should be implemented as such and used by the PCIe as needed.

Of course, fixing this (remapping the region and removing
axg_mipi_enable) will be a bit messy. If you want to make that MIPI Phy
driver, I can help you with the clock part.

>
>> >
>> > This serie adds a way to set this bit through AXG clock gating logic.
>> > Platforms having this kind of issue could make use of this gating by
>> > applying a patch to their devicetree similar to:
>> >
>> >                 clocks = <&clkc CLKID_USB
>> >                         &clkc CLKID_MIPI_ENABLE
>> >                         &clkc CLKID_PCIE_A
>> > -                       &clkc CLKID_PCIE_CML_EN0>;
>> > +                       &clkc CLKID_PCIE_CML_EN0
>> > +                       &clkc CLKID_PCIE_PLL_CML_ENABLE>;
>> >                 clock-names = "pcie_general",
>> >                                 "pcie_mipi_en",
>> >                                 "pcie",
>> > -                               "port";
>> > +                               "port",
>> > +                               "pll_cml_en";
>> >                 resets = <&reset RESET_PCIE_PHY>,
>> >                         <&reset RESET_PCIE_A>,
>> >                         <&reset RESET_PCIE_APB>;
>> 
>> A few remarks for your future patches:
>> 
>> * You need to document any need binding you introduce:
>>   It means that there should have been a patch in
>>   Documentation/devicetree/... before using your newclock name in the
>>   pcie driver. As Martin pointed out, dt-bindings should be dealt with
>>   in their own patches
>> 
>> >
>> >
>> > Remi Pommarel (2):
>> >   clk: meson: axg: add pcie pll cml gating
>> 
>> Whenever possible, patches intended for different maintainers should be
>> sent separately (different series)
>
> Thanks, will do both of the above remarks.
>
>> 
>> >   PCI: amlogic: Use PCIe pll gate when available
>> >
>> >  drivers/clk/meson/axg.c                | 3 +++
>> >  drivers/clk/meson/axg.h                | 2 +-
>> >  drivers/pci/controller/dwc/pci-meson.c | 5 +++++
>> >  include/dt-bindings/clock/axg-clkc.h   | 1 +
>> >  4 files changed, 10 insertions(+), 1 deletion(-)
>> 
>
> Thanks for reviewing this.
>
> [1] https://i.snipboard.io/bHMPeq.jpg


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
