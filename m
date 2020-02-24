Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B21016B549
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 00:22:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k3vnGZUpr/Vkaf8sFYU3E+KejFKL3SieYk46AakEk3A=; b=rjGnUedlctn9AO
	zyIrsoMVxEuMFJ+mg5IyWm6ZKf7zxUanlPwWAcEC5Xg3067OGlCL+rUltezNP4bqa/iuoZSYX/o98
	RhNvagfCX+uW2FZZ1/WkyhE5GEM5djgG28aPDxEOKYQHk8NgYDEUwihMwLFaZ9shx+jySAG0/wxcn
	ffhGaCEAs8GsOo5n6Fd5Pi66jZuAXpsRxwgoD4KTBzgWz3P5KJzYRnqrb8dQjHaikaVgNsy7R5Juj
	hFO+mkMPRcUFiGiDTFnz7R2UmJTnkNeuIkHTRwHNE3nmfS3CAaz5QMSB9+kkKrgDcBNFflbHO89yb
	Y5sSF7ej4OuP7mDLUorg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6N3j-0002dG-Ri; Mon, 24 Feb 2020 23:22:43 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6N39-00027w-6t
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 23:22:08 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01ONLvmb054476;
 Mon, 24 Feb 2020 17:21:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582586517;
 bh=mDaDuvaFh0sunLB3b2TyLWg6Xn466LJ8UhglyscAC0M=;
 h=From:To:CC:Subject:Date;
 b=MSIBHwhXgWYCKGUCgpnSb3aEakgB0K5q7myYnn6g95IAgw6C9V6yvkv5FkFxrN+CZ
 VEyzJHatxigPWIw0EfkJ7tJVph6HLfha5uIOHv/YjI2gJkGVwVJNUgzlixmVNNR2ZE
 BeUlfpqQD2dQa9x46ijByUg9w6OJ2WKyybScq+lU=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01ONLvpw105193
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 24 Feb 2020 17:21:57 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 24
 Feb 2020 17:21:57 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 24 Feb 2020 17:21:57 -0600
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01ONLvWT046682;
 Mon, 24 Feb 2020 17:21:57 -0600
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 01ONLvuF021215;
 Mon, 24 Feb 2020 17:21:57 -0600
From: Suman Anna <s-anna@ti.com>
To: Tony Lindgren <tony@atomide.com>
Subject: [PATCH 0/3] Drop PRUSS and OMAP4 IPU/DSP hwmod data
Date: Mon, 24 Feb 2020 17:21:49 -0600
Message-ID: <20200224232152.25562-1-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_152207_359698_2AC1B906 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tony,

The following patches drop the hwmod data for PRUSS on AM33xx and AM437x
SoCs, and for the IPU and DSP processors on OMAP4 SoC. Patches are based
on 5.6-rc1. Please consider these for the 5.7 merge window.

I will be submitting another series tomorrow to add the ti-sysc support
for PRUSS. Nevertheless, the PRUSS hwmods will not be used going forward
and can be dropped independently.

The IPU and DSP hwmods were never added for OMAP5 and DRA7xx/AM57xx SoCs,
and the MMU data was already dropped for 5.6-rc1, as it has all been
converted to ti-sysc and omap-prm. The DT nodes for these will follow
for the next merge window once the current OMAP remoteproc DT support
is accepted [1].

regards
Suman

[1] https://patchwork.kernel.org/cover/11396049/


Suman Anna (3):
  ARM: OMAP2+: Drop hwmod data for am3 and am4 PRUSS
  ARM: OMAP2+: Drop legacy platform data for OMAP4 DSP
  ARM: OMAP4: hwmod_data: Remove OMAP4 IPU hwmod data

 arch/arm/boot/dts/omap4.dtsi                  |   1 -
 .../omap_hwmod_33xx_43xx_common_data.h        |   2 -
 .../omap_hwmod_33xx_43xx_interconnect_data.c  |   8 --
 .../omap_hwmod_33xx_43xx_ipblock_data.c       |  33 -----
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c    |  10 --
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c    |   9 --
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c    | 127 ------------------
 7 files changed, 190 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
