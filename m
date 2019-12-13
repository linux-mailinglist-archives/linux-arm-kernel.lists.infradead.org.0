Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4869111DC68
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 04:07:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5mZ8xVfX8+tn7o5c9wXi2ppyyNBlE9p5X2C6gILbOXs=; b=VximAZFzVmxxjy
	6PmU96nqSDrEoNKJThHCsze+jpMdsR32WWJ6UJJib/uJx8U+0eWdugvPV5COc2zy94wVuLYCmQnQC
	mBbqwBwaUw2l1fQRKttMLhBEw6AXtOisjGp3nzopHJji7CdPRkgFrDdtdqvPXeQ/ZHq+ncd77XV6A
	SXD2YQ9kCQZa0jvzMGFWC0E0ectttJGT4WXj2mWN0tXEjaOMs76B28wx7l5siUs4qCcqBPLDdiCQQ
	2VwQzXzERc0QLIfsLbPwwkV+u0DqgiumQFVKhWgIDZfV2V4CzoT77+kLeL1oQ+AG7+Qnhr70gnENS
	2JSB22YMwYGWA5Mx+GZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifbIY-0005ku-IW; Fri, 13 Dec 2019 03:07:22 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifbIN-0005jM-Tc
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 03:07:13 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBD374jn002520;
 Thu, 12 Dec 2019 21:07:04 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576206424;
 bh=P2vJoPklK2vOl7x3hsP0IoRW0iDntiu2jXuS39HL8uQ=;
 h=From:To:CC:Subject:Date;
 b=Aa6U+JD3qArPqIlL3fVzaJFe8PXoAJVeAJy1TYicx+h9LvJc+8AuhdIvaVXMZvHnH
 uki2SmHmSl0JqeCB3ZZDyErcWrJBcotJ5RQ6OjzxM/UKeT6wi8bMt9lXwiZnCGSvL7
 LY69J1VhtMkYMuDN21paO4Xmosi5TEFE+QiQnGbU=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBD374S2018385
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Dec 2019 21:07:04 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 21:07:04 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 21:07:04 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBD374lv058827;
 Thu, 12 Dec 2019 21:07:04 -0600
From: Dave Gerlach <d-gerlach@ti.com>
To: Tony Lindgren <tony@atomide.com>, Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH 0/5] ARM: OMAP2+: Introduce cpuidle for am335x/am437x
Date: Thu, 12 Dec 2019 21:07:50 -0600
Message-ID: <20191213030755.16096-1-d-gerlach@ti.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_190712_031377_94894E3E 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dave Gerlach <d-gerlach@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
This series adds support for cpuidle on am335x and am437x using the
cpuidle_arm driver. When testing on am335x-evm and am437x-gp-evm the
follow power consumption reductions are seen on v5.5-rc1 baseline:


Idling at command line, CPUFreq userspace governor to 300MHz:
  am335x-evm:
    VDD_MPU: 48 mW -> 5 mW

  am437x-gp-evm:
    VDD_MPU: 32 mW -> 3 mW


Idling at command line, CPUFreq userspace governor to 1GHz:
  am335x-evm:
    VDD_MPU: 313 mW -> 18 mW

  am437x-gp-evm:
    VDD_MPU: 208 mW -> 10 mW

A forthcoming series will add idle states to the device tree for each
am335x and am437x to add C1 state for MPU Gate which gates the clock to
the main CPU.  am335x makes use of the wkup_m3_ipc driver for this to
use the same wkup_m3 to gate the cpu clock that is used for suspend, so
the same firmware found here is required [1] to be placed in
/lib/firmware.

First patch adds dt-binding for enable-method for each SoC which is needed
for cpuidle-arm driver to probe, second patch adds platform code for cpuidle,
third patch modifies both platform code and pm33xx soc driver to add needed
flags and callback for idling, fourth patch actually enables cpuidle in the
soc pm33xx driver, and then that last patch enables the needed CONFIG options
in omap2plus_defconfig.

Regards,
Dave

[1] https://git.ti.com/cgit/processor-firmware/ti-amx3-cm3-pm-firmware/tree/bin/am335x-pm-firmware.elf?h=ti-v4.1.y

Dave Gerlach (5):
  dt-bindings: arm: cpu: Add TI AM335x and AM437x enable method
  ARM: OMAP2+: pm33xx-core: Add cpuidle_ops for am335x/am437x
  ARM: OMAP2+: pm33xx-core: Extend platform_data ops for cpuidle
  soc: ti: pm33xx: Add base cpuidle support
  ARM: omap2plus_defconfig: Add CONFIG_ARM_CPUIDLE

 .../devicetree/bindings/arm/cpus.yaml         |   2 +
 arch/arm/configs/omap2plus_defconfig          |   2 +
 arch/arm/mach-omap2/pm33xx-core.c             | 137 +++++++++++++++++-
 drivers/soc/ti/pm33xx.c                       |  21 ++-
 include/linux/platform_data/pm33xx.h          |   6 +-
 5 files changed, 160 insertions(+), 8 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
