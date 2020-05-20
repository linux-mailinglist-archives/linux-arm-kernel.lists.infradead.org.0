Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA121DC11C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 23:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jhMm4HGQwZPMbX5yWtWFDjtEzYjM2hDETRXLDMn7VMY=; b=uVBD8SRs+NHn7e
	dmmTy+BvXo76IYs6SjHo1E6OjTqEgkh+XNzPty+3kIUk2cbXJgMObfUtFvheRPXNo7imqR7NfUJNb
	1R78GxiECyUknuDCKHniv7moyq+3fMOTg5M5700NKdvJ24dPUlHWrcSdZTUrMDhsCk8CoPMqUJMmK
	HUYFQrUqamkw5DzQThwoC9FvL062DR2MJxp4HeCtcHXJlOFAojipBQsGvyB0BO4xMkI5j8TbKeNOJ
	rVjYIPv6n/d74IpwEeo3x8nqcKTL4z+ZCUxSfin7nuY6x5kzO8uf+B49ULnzsK7Dxkh3ILxTjqw+e
	wAWcE70MSexd7h1vsx3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbW2S-00072q-Ls; Wed, 20 May 2020 21:14:08 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbW27-0006qh-23
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 21:13:48 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id BE94B8108;
 Wed, 20 May 2020 21:14:32 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCHv2 0/6] Add initial genpd support for omap PRM driver
Date: Wed, 20 May 2020 14:13:28 -0700
Message-Id: <20200520211334.61814-1-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_141347_135879_BCA7BDBC 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Heris v2 set of patches to add genpd support to the PRM (Power and Reset
Module) driver.

Initially we just add one hardware accelerator power domain for sgx,
and one interconnect instance for l4_abe. The rest of the SoC specific
domain data is probably best added one SoC at a time based on generated
data.

Regards,

Tony


Changes since v1:

- Dropped clocks from the binding and prm driver as there's no need
  for them as pointed out by Tero

- Add checking for domain transition bit in pwrstst register as
  pointed out by Tero

- Add omap_prm_domain_show_state() for CONFIG_DEBUG


Tony Lindgren (6):
  dt-bindings: omap: Update PRM binding for genpd
  soc: ti: omap-prm: Add basic power domain support
  soc: ti: omap-prm: Configure sgx power domain for am3 and am4
  soc: ti: omap-prm: Configure omap4 and 5 l4_abe power domain
  ARM: dts: Configure am3 and am4 sgx for genpd and drop platform data
  ARM: dts: Configure omap4 and 5 l4_abe for genpd and drop platform
    data

 .../devicetree/bindings/arm/omap/prm-inst.txt |   2 +
 arch/arm/boot/dts/am33xx.dtsi                 |   2 +
 arch/arm/boot/dts/am4372.dtsi                 |   2 +
 arch/arm/boot/dts/omap4-l4-abe.dtsi           |   6 +-
 arch/arm/boot/dts/omap4.dtsi                  |   6 +
 arch/arm/boot/dts/omap5-l4-abe.dtsi           |   6 +-
 arch/arm/boot/dts/omap5.dtsi                  |   6 +
 arch/arm/mach-omap2/Kconfig                   |   1 +
 .../omap_hwmod_33xx_43xx_interconnect_data.c  |  16 -
 .../omap_hwmod_33xx_43xx_ipblock_data.c       |  40 ---
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c    |   2 -
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c    |   2 -
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c    |  33 --
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c    |  31 --
 drivers/soc/ti/omap_prm.c                     | 281 +++++++++++++++++-
 15 files changed, 305 insertions(+), 131 deletions(-)

-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
