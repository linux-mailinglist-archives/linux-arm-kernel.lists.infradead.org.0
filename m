Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47854113731
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 22:44:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aFvDJLp0ph6SxZf3B5eIqVopD67r9qITwhb+9/JD9Ho=; b=SMr+DBAbpDC7Pq
	niULDRu22Wm31cp4ERCp0PNnajY1Sdpc/ca309qxfyjIoRZHzgOeq3BObYM6ZOl8bqIbLvWLbap4Y
	LKYGRzf7ijt1ACp+axsTMEzGgb1fdofvPf9sfDZ9wV4r3ZVB4AtyGCSD4LFHiuHV87iKZaez9SHcP
	sULwV6S19FfyyTHxzzeVeMPrJtlrbnekgE2obuEJ5ibGp9VtXEKnS0gIsJODHe1m3U3+oxKov7Dnb
	/iCf0K0m315aZvrY+EvYjC2Nt5UTF2ReoheYQhHc/It+XdocvIRkKi25BYoM6laJ4LXTixMC3ehBM
	BohJOhpvup/dPJmguUqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iccRA-0005mH-Tg; Wed, 04 Dec 2019 21:43:56 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iccR3-0005lG-2V
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 21:43:50 +0000
Received: by mail-oi1-f194.google.com with SMTP id l136so745490oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 13:43:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hABuLyLlW7TcxVWkvZf3nO3Hi6ZwFOub8qWuGq9BCbQ=;
 b=EP4UpeUNjG521AgoyPei4wJsV3vvskUEUcCM9cRAiyJaScGMJ6Otpd3UIClFi61RUe
 M9XpqyJSN6dqJB5GHrfDYBVyKchFepZdHetsTrd+p6pAO5vxOlcRAAwMNoVLylqa99Pg
 MPcF9i0fUgbJ7Q8Vm9Kab5ZU3Bm5oNoNrCiMxXcm765GTjAKGswadFtgxEiMTf0qUw4P
 6UuQpONW6Athtn91/OQnJETUll4WJDCpX9SyuA/7JNSm4FlUHTJcqzDuV5VVLn/inGAC
 6WIUdPSAVRS8zcVN/dZ+HqdkLojcGaN6vSCjhJUepS4TYHeAelpqo92bt+1EUdjoTQ4I
 68Sg==
X-Gm-Message-State: APjAAAV5DDmIOBGA4lW5ziXqzVRvr7cUoodTp3DPJeAymEAMsko5G5fD
 +M4KyTDVHbVsxAT+xpXZhQ==
X-Google-Smtp-Source: APXvYqydpyiFhBHUk9G2NGy/lkyg3GJFVvBnB4xOjBz25Td/upZ30oDDP5FIdEIl+CLltXw19xjaOA==
X-Received: by 2002:aca:eb0f:: with SMTP id j15mr4311383oih.6.1575495822532;
 Wed, 04 Dec 2019 13:43:42 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h20sm2670429otr.35.2019.12.04.13.43.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 13:43:41 -0800 (PST)
Date: Wed, 4 Dec 2019 15:43:40 -0600
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: PCI: tegra: Add DT support for PCIe EP
 nodes in Tegra194
Message-ID: <20191204214340.GA19088@bogus>
References: <20191122104505.8986-1-vidyas@nvidia.com>
 <20191122104505.8986-3-vidyas@nvidia.com>
 <20191122131931.GB1315704@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122131931.GB1315704@ulmo>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_134349_115904_786CBB27 
X-CRM114-Status: GOOD (  29.77  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 Vidya Sagar <vidyas@nvidia.com>, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 02:19:31PM +0100, Thierry Reding wrote:
> On Fri, Nov 22, 2019 at 04:15:01PM +0530, Vidya Sagar wrote:
> > Add support for PCIe controllers that can operate in endpoint mode
> > in Tegra194.
> > 
> > Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > ---
> >  .../bindings/pci/nvidia,tegra194-pcie-ep.txt  | 138 ++++++++++++++++++
> >  1 file changed, 138 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.txt
> 
> The vast majority of this is a duplication of the host mode device tree
> bindings. I think it'd be best to combine both and only highlight where
> both modes differ.

That will not work so well as a schema because all the common PCI bus 
related properties don't apply. Child nodes if any for an EP aren't PCI 
devices either. Though you could have 3 files with common properties, 
host binding and ep bindings. 

While we don't have anything in terms of common PCI EP bindings, I 
somewhat expect that to change. There's been something for how to define 
multiple EP functions for example.

> The designware-pcie.txt binding does something similar.
> 
> > diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.txt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.txt
> > new file mode 100644
> > index 000000000000..4676ccf7dfa5
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.txt
> > @@ -0,0 +1,138 @@
> > +NVIDIA Tegra PCIe Endpoint mode controller (Synopsys DesignWare Core based)
> > +
> > +Some of the PCIe controllers which are based on Synopsys DesignWare PCIe IP
> > +are dual mode i.e. they can work in root port mode or endpoint mode but one
> > + at a time. Since they are based on DesignWare IP, they inherit all the common
> > +properties defined in designware-pcie.txt.
> > +
> > +Required properties:
> > +- compatible: For Tegra19x, must contain "nvidia,tegra194-pcie".
> 
> The device tree snippets that you added have "nvidia,tegra194-pcie-ep"
> for EP mode controllers. So either this is wrong or the DTS files are
> wrong.
> 
> This device tree binding describes the exact same hardware, so I don't
> think we necessarily need two different compatible strings. It's fairly
> easy to distinguish between which mode to run in by looking at which
> properties exist. EP mode for example is the only one that uses the
> "addr_space" reg entry.
> 
> Rob, do you know why a different compatible string was chosen for the EP
> mode? Looking at the driver, there are only a handful of differences in
> the programming, but most of the driver remains identical. An extra DT
> compatible string seems a bit exaggerated since it suggests that this is
> actually different hardware, where it clearly isn't.

Whether the driver shares a lot of code or not, it's fundamentally a 
different device and driver stack.

> > +  Tegra194: Only C0, C4 & C5 controllers are dual mode controllers.
> > +- power-domains: A phandle to the node that controls power to the respective
> > +  PCIe controller and a specifier name for the PCIe controller. Following are
> > +  the specifiers for the different PCIe controllers
> > +    TEGRA194_POWER_DOMAIN_PCIEX8B: C0
> > +    TEGRA194_POWER_DOMAIN_PCIEX4A: C4
> > +    TEGRA194_POWER_DOMAIN_PCIEX8A: C5
> > +  these specifiers are defined in
> > +  "include/dt-bindings/power/tegra194-powergate.h" file.
> > +- reg: A list of physical base address and length pairs for each set of
> > +  controller registers. Must contain an entry for each entry in the reg-names
> > +  property.
> > +- reg-names: Must include the following entries:
> > +  "appl": Controller's application logic registers
> > +  "atu_dma": iATU and DMA registers. This is where the iATU (internal Address
> > +             Translation Unit) registers of the PCIe core are made available
> > +             for SW access.
> > +  "dbi": The aperture where root port's own configuration registers are
> > +         available
> > +  "addr_space": Used to map remote RC address space
> > +- interrupts: A list of interrupt outputs of the controller. Must contain an
> > +  entry for each entry in the interrupt-names property.
> > +- interrupt-names: Must include the following entry:
> > +  "intr": The Tegra interrupt that is asserted for controller interrupts
> > +- clocks: Must contain an entry for each entry in clock-names.
> > +  See ../clocks/clock-bindings.txt for details.
> > +- clock-names: Must include the following entries:
> > +  - core
> > +- resets: Must contain an entry for each entry in reset-names.
> > +  See ../reset/reset.txt for details.
> > +- reset-names: Must include the following entries:
> > +  - apb
> > +  - core
> > +- phys: Must contain a phandle to P2U PHY for each entry in phy-names.
> > +- phy-names: Must include an entry for each active lane.
> > +  "p2u-N": where N ranges from 0 to one less than the total number of lanes
> > +- nvidia,bpmp: Must contain a pair of phandle to BPMP controller node followed
> > +  by controller-id. Following are the controller ids for each controller.
> > +    0: C0
> > +    4: C4
> > +    5: C5
> > +- vddio-pex-ctl-supply: Regulator supply for PCIe side band signals
> > +- nvidia,pex-rst-gpio: Must contain a phandle to a GPIO controller followed by
> > +  GPIO that is being used as PERST signal
> 
> Why is this NVIDIA specific? Do other instantiations of the DW IP not
> also need a means to define which GPIO is the reset?

'reset-gpios' is used for PERST. Though in this case it's an input 
rather than output.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
