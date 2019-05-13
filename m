Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1100B1B9B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0X/Bl/pHgVoBoZChVE7PbIzeLaHFglNOR+eXNUDhn0=; b=AfsBL3ZpXCWAjA
	WIuRqeTChVBOKXoXVn+/lw37aWhz99Ltlv2xjPLAOOfGADp/rFfQlDpuWwtEvWJ6nCbjOw/5B25U4
	SjU0o8ynPxbl1Ej2K1v2njeTOZq8BF/EUj2lZuC29TJJvOhLeEkdM9iGLeKeEwLjO88w7mp811q9k
	peaAnI4s4O/IrjFh4iYo8JjfdVO38+rfPcL/i7mhcpK7XomSo8f8L4nv4U8Rzk3aFovkxfpLThXkK
	q+KRVDzx1/L0yYIebN5bKQNd4zm9r0pJ46QeWaHAG1tPplmIp8b2Vdvl8FZNhbmDPCWPbGgcAy/I3
	v7tlo9H6NC4hPbMrq8Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCgX-0007TO-9C; Mon, 13 May 2019 15:16:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCgJ-0007Qn-S9
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 15:16:04 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFCF1214C6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 15:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557760559;
 bh=OymGSOMK0re+Yot/v38njtC9uTP6U8c73FKxT8tC/Ms=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jz6KakpySpkftDJsT2G/nmicyeTvP6yk8dpkLBINSjCaBjkt78hb9Evf3/N1ZOnJt
 3inaKZUPNErKQHIl1cfcuKkkzPnU9HWqa8j4xDmTFIey4kYQjmnXy7T+Th8TLgDMFJ
 Eux2VHzWdYE2BWeqAlGPl13OBaro1mJAIrmv62xI=
Received: by mail-qk1-f173.google.com with SMTP id d10so2159051qko.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 08:15:58 -0700 (PDT)
X-Gm-Message-State: APjAAAW1zQE3xKSC7ROif2Acb/bPPwqZmqenS4oJ0I7ey5RxlRG1uCKn
 +wJBWnx3292e1ip7FVLs9HRsZEBd2Ibu/dddBQ==
X-Google-Smtp-Source: APXvYqwCUcsN930OQbfEHdiCeZNxxMRjVQYZxsmDH3L7i6qyIbXFFz68ravs5bTeXrnotA6KjQjMS9kSXpzcUdQ9LXc=
X-Received: by 2002:a37:5c81:: with SMTP id q123mr14710095qkb.29.1557760558100; 
 Mon, 13 May 2019 08:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-8-vidyas@nvidia.com>
 <20190426143247.GA25107@bogus>
 <031df2ca-27de-2388-5f23-078320203f5d@nvidia.com>
In-Reply-To: <031df2ca-27de-2388-5f23-078320203f5d@nvidia.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 13 May 2019 10:15:46 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKvES6OuPRgu8A009j6L4rkc11rB9TyxPe1iUJhvk1O8w@mail.gmail.com>
Message-ID: <CAL_JsqKvES6OuPRgu8A009j6L4rkc11rB9TyxPe1iUJhvk1O8w@mail.gmail.com>
Subject: Re: [PATCH V5 07/16] dt-bindings: PCI: designware: Add binding for
 CDM register check
To: Vidya Sagar <vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_081559_964981_FE0B1F53 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 Manikanta Maddireddy <mmaddireddy@nvidia.com>, linux-pci@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 kthota@nvidia.com, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Jon Hunter <jonathanh@nvidia.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 3:25 AM Vidya Sagar <vidyas@nvidia.com> wrote:
>
> On 4/26/2019 8:02 PM, Rob Herring wrote:
> > On Wed, Apr 24, 2019 at 10:49:55AM +0530, Vidya Sagar wrote:
> >> Add support to enable CDM (Configuration Dependent Module) registers check
> >> for any data corruption. CDM registers include standard PCIe configuration
> >> space registers, Port Logic registers and iATU and DMA registers.
> >> Refer Section S.4 of Synopsys DesignWare Cores PCI Express Controller Databook
> >> Version 4.90a
> >>
> >> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> >> ---
> >> Changes since [v4]:
> >> * None
> >>
> >> Changes since [v3]:
> >> * None
> >>
> >> Changes since [v2]:
> >> * Changed flag name from 'cdm-check' to 'enable-cdm-check'
> >> * Added info about Port Logic and DMA registers being part of CDM
> >>
> >> Changes since [v1]:
> >> * This is a new patch in v2 series
> >>
> >>   Documentation/devicetree/bindings/pci/designware-pcie.txt | 5 +++++
> >>   1 file changed, 5 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/pci/designware-pcie.txt b/Documentation/devicetree/bindings/pci/designware-pcie.txt
> >> index 5561a1c060d0..85b872c42a9f 100644
> >> --- a/Documentation/devicetree/bindings/pci/designware-pcie.txt
> >> +++ b/Documentation/devicetree/bindings/pci/designware-pcie.txt
> >> @@ -34,6 +34,11 @@ Optional properties:
> >>   - clock-names: Must include the following entries:
> >>      - "pcie"
> >>      - "pcie_bus"
> >> +- enable-cdm-check: This is a boolean property and if present enables
> >
> > This needs a vendor prefix.
> Why only for this? Since this whole file is for Synopsys DesignWare core based PCIe IP,
> I thought there is specific prefix required. Am I wrong? Also, CDM checking is a feature
> of IP and DWC based implementations can choose either to enable this feature at hardware level
> or not. And whoever enabled it at hardware level (like Tegra194) can set this flag to
> enable corresponding software support.

TBC, I meant a Synopsys vendor prefix, not NVIDIA.

Any property that's not from a common binding should have a vendor
prefix. That hasn't always happened, so we do have lots of examples
without.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
