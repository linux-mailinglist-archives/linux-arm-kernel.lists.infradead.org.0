Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117AA487C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCMp+WFLmswxbE5w27sAfI+8q/emZDYKKPDzL8XHH/w=; b=I5MLzTI3fVdPIe
	UkkKi2HWv/gL7PSO5cDeII56CWzECe6llFwCfqvLtEQuTj9SrArJWzf7yCpW3myyKKia0XoCQtkFv
	quWp5StcwW0AxO/NXalFkF78xEikdS15AicZ+KrqZbPUrUyemRQ4Th9SWR+86XpkCRbkHN+7Pxm8D
	yQ1CeoJFnwnAEayH0DVblBAz7ArzKgg/oL49oALanMzHwDdY/CXHT7Ul+OEwel7fNG8gXIAYfPn6W
	ghD2LqS0K0V19d3Ak/7oWSOdPLgTG0lv9t7B2Y+12/X4cTar7PKdKPyUfOD1KLs32mnEHe9TO/M1u
	B9BuBO/4DuTlxQlacI5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctrR-0005o7-AY; Mon, 17 Jun 2019 15:47:57 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctrC-0005nA-VW
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 15:47:44 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HFlN1h043664;
 Mon, 17 Jun 2019 10:47:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560786443;
 bh=UqzhKdCvFhtNpUr5vFdw+6v6fHvR90i1hNildl+b+9s=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=NARiwjCy3syAuulADRz6Lykk68iTE2lZIoiDk6E7W9V7Qg6HXFhTxbv7P1oKTAtck
 3tI0r1c1eIGH2sQB8SEDbhDNHg9dHsxFTjeNc6Z9FgDqtpIYcjEAu3S2dRl6jv2dAR
 eM83QjPhhrGrtcUUm2A8t4+2mjIk2vFODDkLvnzs=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HFlNfw076253
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Jun 2019 10:47:23 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 10:47:22 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 10:47:22 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HFlMXS023695;
 Mon, 17 Jun 2019 10:47:22 -0500
Date: Mon, 17 Jun 2019 10:46:14 -0500
From: Nishanth Menon <nm@ti.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/6] dt-bindings: arm: ti: Add bindings for J721E SoC
Message-ID: <20190617154614.wlbh6dtj54brkt67@kahuna>
References: <20190522161921.20750-1-nm@ti.com>
 <20190522161921.20750-2-nm@ti.com> <20190614164526.GA14925@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614164526.GA14925@bogus>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_084743_102417_56B39ED8 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Tero Kristo <t-kristo@ti.com>, linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10:45-20190614, Rob Herring wrote:
> On Wed, May 22, 2019 at 11:19:16AM -0500, Nishanth Menon wrote:
> > The J721E SoC belongs to the K3 Multicore SoC architecture platform,
> > providing advanced system integration to enable lower system costs
> > of automotive applications such as infotainment, cluster, premium
> > Audio, Gateway, industrial and a range of broad market applications.
> > This SoC is designed around reducing the system cost by eliminating
> > the need of an external system MCU and is targeted towards ASIL-B/C
> > certification/requirements in addition to allowing complex software
> > and system use-cases.
> > 
> > Some highlights of this SoC are:
> > * Dual Cortex-A72s in a single cluster, three clusters of lockstep
> >   capable dual Cortex-R5F MCUs, Deep-learning Matrix Multiply Accelerator(MMA),
> >   C7x floating point Vector DSP, Two C66x floating point DSPs.
> > * 3D GPU PowerVR Rogue 8XE GE8430
> > * Vision Processing Accelerator (VPAC) with image signal processor and Depth
> >   and Motion Processing Accelerator (DMPAC)
> > * Two Gigabit Industrial Communication Subsystems (ICSSG), each with dual
> >   PRUs and dual RTUs
> > * Two CSI2.0 4L RX plus one CSI2.0 4L TX, one eDP/DP, One DSI Tx, and
> >   up to two DPI interfaces.
> > * Integrated Ethernet switch supporting up to a total of 8 external ports in
> >   addition to legacy Ethernet switch of up to 2 ports.
> > * System MMU (SMMU) Version 3.0 and advanced virtualisation
> >   capabilities.
> > * Upto 4 PCIe-GEN3 controllers, 2 USB3.0 Dual-role device subsystems,
> >   16 MCANs, 12 McASP, eMMC and SD, UFS, OSPI/HyperBus memory controller, QSPI,
> >   I3C and I2C, eCAP/eQEP, eHRPWM, MLB among other peripherals.
> > * Two hardware accelerator block containing AES/DES/SHA/MD5 called SA2UL
> >   management.
> > * Configurable L3 Cache and IO-coherent architecture with high data throughput
> >   capable distributed DMA architecture under NAVSS
> > * Centralized System Controller for Security, Power, and Resource
> >   Management (DMSC)
> > 
> > See J721E Technical Reference Manual (SPRUIL1, May 2019)
> > for further details: http://www.ti.com/lit/pdf/spruil1
> > 
> > Signed-off-by: Nishanth Menon <nm@ti.com>
> > ---
> >  Documentation/devicetree/bindings/arm/ti/k3.txt | 3 +++
> >  1 file changed, 3 insertions(+)
> 
> Okay for now, but please convert K3 and other TI SoCs to schema soon.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>


Thanks Rob. Will do the change to rst soon (hopefully post in the 5.3 window).
-- 
Regards,
Nishanth Menon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
