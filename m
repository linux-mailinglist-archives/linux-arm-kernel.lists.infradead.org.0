Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E828211F76C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 12:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apoYqevpzZvqPYjcls6OY3LqTDzc0Gy51HIo/4gaYck=; b=XfY1amyvnDbWb9
	HnvuO5uqtzs0mtZxqsOL/hv7e5/x6ewBh227xx0Vqr7rP7cNOJYbHDKGEB5TE6onW9AcrKsn9Vjv1
	QFKxmrXq0gr9AkPW5NUVxtW3wY+PjOkkFsMDjrWpvYY0qJ+nTb8KF9HI4urZdPadbYJoRkmpe7kkQ
	+iOr4Dve8KnaLw3RHl1GIS07dSPK/SDbA1KAdjAqCSOMVjwul2jROBm6SPti0/Vc2dXVac7CC1Crw
	fVOhPBXa48SXqBDytuQU9/LOfSfNe60Nw+YyNN4n6rjfymRiNPn9hASM0V3/oJqA0xNsigmuTN3ZF
	6kz/kRgHX5ShJ5dS467A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igS4g-0007Nn-Ln; Sun, 15 Dec 2019 11:28:34 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igS4V-0007MX-KI; Sun, 15 Dec 2019 11:28:25 +0000
Received: from localhost (unknown [88.190.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 2A494240004;
 Sun, 15 Dec 2019 11:28:09 +0000 (UTC)
Date: Sun, 15 Dec 2019 12:36:34 +0100
From: Remi Pommarel <repk@triplefau.lt>
To: Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH 0/2] PCI: amlogic: Make PCIe working reliably on AXG
 platforms
Message-ID: <20191215113634.GB7304@voidbox>
References: <20191208210320.15539-1-repk@triplefau.lt>
 <1jpngxew6l.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1jpngxew6l.fsf@starbuckisacylon.baylibre.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_032823_942867_49ADB284 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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

On Mon, Dec 09, 2019 at 09:32:18AM +0100, Jerome Brunet wrote:
> 
> On Sun 08 Dec 2019 at 22:03, Remi Pommarel <repk@triplefau.lt> wrote:
> 
> > PCIe device probing failures have been seen on some AXG platforms and were
> > due to unreliable clock signal output. Setting HHI_MIPI_CNTL0[26] bit
> > solved the problem. After being contacted about this, vendor reported that
> > this bit was linked to PCIe PLL CML output.
> 
> Thanks for reporting the problem.
> 
> As Martin pointed out, the CML outputs already exist in the AXG clock
> controller but are handled using HHI_PCIE_PLL_CNTL6. Although
> incomplete, it seems to be aligned with the datasheet I have (v0.9)
> 
> According to the same document, HHI_MIPI_CNTL0 belong to the MIPI Phy.
> Unfortunately bit 26 is not documented
> 
> AFAICT, the clock controller is not appropriate driver to deal with this
> register/bit
> 

Regarding both @Martin's and your remark.

Unfortunately the documentation I have and vendor feedback are a bit
vague to me. I do agree that CLKID_PCIE_PLL_CML_ENABLE is not a proper
name for this bit because this register is MIPI related.

Here is the information I got from the vendor [1]. As you can see
HHI_MIPI_CNTL0[29] and HHI_MIPI_CNTL0[26] are related together, and
HHI_MIPI_CNTL0[29] is implemented in the clock controller as
axg_mipi_enable which is why I used this driver for HHI_MIPI_CNTL0[26].

So maybe I could rename this bit to something MIPI related ?

> >
> > This serie adds a way to set this bit through AXG clock gating logic.
> > Platforms having this kind of issue could make use of this gating by
> > applying a patch to their devicetree similar to:
> >
> >                 clocks = <&clkc CLKID_USB
> >                         &clkc CLKID_MIPI_ENABLE
> >                         &clkc CLKID_PCIE_A
> > -                       &clkc CLKID_PCIE_CML_EN0>;
> > +                       &clkc CLKID_PCIE_CML_EN0
> > +                       &clkc CLKID_PCIE_PLL_CML_ENABLE>;
> >                 clock-names = "pcie_general",
> >                                 "pcie_mipi_en",
> >                                 "pcie",
> > -                               "port";
> > +                               "port",
> > +                               "pll_cml_en";
> >                 resets = <&reset RESET_PCIE_PHY>,
> >                         <&reset RESET_PCIE_A>,
> >                         <&reset RESET_PCIE_APB>;
> 
> A few remarks for your future patches:
> 
> * You need to document any need binding you introduce:
>   It means that there should have been a patch in
>   Documentation/devicetree/... before using your newclock name in the
>   pcie driver. As Martin pointed out, dt-bindings should be dealt with
>   in their own patches
> 
> >
> >
> > Remi Pommarel (2):
> >   clk: meson: axg: add pcie pll cml gating
> 
> Whenever possible, patches intended for different maintainers should be
> sent separately (different series)

Thanks, will do both of the above remarks.

> 
> >   PCI: amlogic: Use PCIe pll gate when available
> >
> >  drivers/clk/meson/axg.c                | 3 +++
> >  drivers/clk/meson/axg.h                | 2 +-
> >  drivers/pci/controller/dwc/pci-meson.c | 5 +++++
> >  include/dt-bindings/clock/axg-clkc.h   | 1 +
> >  4 files changed, 10 insertions(+), 1 deletion(-)
> 

Thanks for reviewing this.

[1] https://i.snipboard.io/bHMPeq.jpg
-- 
Remi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
