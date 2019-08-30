Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97869A3816
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 15:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cI43Mm11cs9cU02aHDtEirC8WXIReGWHmf7hUY+IOao=; b=IiPm2AcjpdE97q0T8toDn3Gdct
	mUJ5NCVk74++mimwD9hHM1Qp9zrkEDxdatY1ppmbR/aBSaQTBPWoFdDfP23yL/VuCWAeywNDDq77s
	coEqECgeDbxspGb0C+OOddX41eD+IBF7LFjuS6B9sy64DTq/h5NLTbjLmsNX4qtUVOC3lcbRkXbgN
	K/gXPiUKAbbg+YC5NAcwgGOFD+miv8xca5zx1pdtJZiyboUbvYdhXZDZMjc+PCkv0/5vtQ47Q8+12
	cSK5zX6gHJq7jZPaYHmQQx8shrtc91sM0iyzrfzelLN8/sjmxXKtDRWEq9kQ3CN58kLSLR0jxGW67
	NTHpRsUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3hIH-0002FM-Pc; Fri, 30 Aug 2019 13:50:26 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3hI4-0002F1-PQ
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 13:50:14 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7UDoAFR011556;
 Fri, 30 Aug 2019 08:50:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567173010;
 bh=9zNlMBqIoNoTXCqva8vVMs587nMcxnxPBlGgOMp3qQE=;
 h=To:CC:From:Subject:Date;
 b=AdMIcMZPxsLcRakPtzuGi4kIizOzhk3aWDBWWmZFKm43ZNDgC+2CpUz2x3qMPrg62
 mrh2NYMY74ZdEEN683hjtFR7MTp5yBla913Q1TS2bBhWH6SdWK1v5WK9JT0lzDdxQ/
 7gxhSaVlwv6IjI9NM8EhJwzdZX+nsjZ9Mxrdf3X8=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7UDoAeC008667
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 08:50:10 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 08:50:10 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 08:50:10 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7UDo7eJ040526;
 Fri, 30 Aug 2019 08:50:08 -0500
To: <arm@kernel.org>, <soc@kernel.org>
From: Tero Kristo <t-kristo@ti.com>
Subject: [GIT PULL] Texas Instruments K3 SoC changes for 5.4
Message-ID: <b838d666-ab3b-7d41-67d4-09d606c732da@ti.com>
Date: Fri, 30 Aug 2019 16:50:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_065012_934907_C5C2539E 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, "Devshatwar, 
 Nikhil" <nikhil.nd@ti.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Here are the changes for TI K3 SoC family for 5.4. This pull request is 
based on top of drivers_soc_for_5.4 [1] from Santosh, basically because 
there is hard dependency on this pull towards that. Otherwise any of the 
DTS patches applying exclusive access flags will fail to compile.

I am hoping this is fine, please holler if you have anything against 
this sequencing approach.

[1] https://lkml.org/lkml/2019/8/26/1124

-Tero

-----------

The following changes since commit 23013399a2252e9f592c2c52a62b213d3ef09217:

   soc: ti: ti_sci_pm_domains: Add support for exclusive and shared 
access (2019-08-26 20:00:41 -0700)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/ti-k3-soc-for-v5.4

for you to fetch changes up to d6dabd6f59c426e5d3eeb8a853dbda4818185ce1:

   arm64: dts: ti: k3-j721e-main: Fix gic-its node unit-address 
(2019-08-29 16:05:00 +0300)

----------------------------------------------------------------
Texas Instruments K3 SoC family changes for 5.4

- Typo fixes for gic-its unit addresses for both am654 and j721e
- HW spinlock nodes added for both am654 and j721e
- GPIO support for j721e
- power-domain cells update for both am654 / j721e for exclusive only
   access

----------------------------------------------------------------
Lokesh Vutla (6):
       arm64: dts: ti: k3-am654: Update the power domain cells
       arm64: dts: ti: k3-j721e: Update the power domain cells
       arm64: dts: ti: k3-j721e: Add gpio nodes in main domain
       arm64: dts: ti: k3-j721e: Add gpio nodes in wakeup domain
       arm64: dts: ti: k3-j721e-common-proc-board: Disable unused gpio 
modules
       dt-bindings: pinctrl: k3: Introduce pinmux definitions for J721E

Nikhil Devshatwar (1):
       arm64: dts: k3-j721e: Add gpio-keys on common processor board

Suman Anna (4):
       arm64: dts: ti: k3-am65-main: Add hwspinlock node
       arm64: dts: ti: k3-j721e-main: Add hwspinlock node
       arm64: dts: ti: k3-am65-main: Fix gic-its node unit-address
       arm64: dts: ti: k3-j721e-main: Fix gic-its node unit-address

  arch/arm64/boot/dts/ti/k3-am65-main.dtsi           |  52 ++++---
  arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi            |  10 +-
  arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi         |   6 +-
  arch/arm64/boot/dts/ti/k3-am65.dtsi                |   1 +
  arch/arm64/boot/dts/ti/k3-am654-base-board.dts     |   1 +
  .../boot/dts/ti/k3-j721e-common-proc-board.dts     |  69 +++++++++
  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi          | 160 
+++++++++++++++++++--
  arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi    |  40 +++++-
  arch/arm64/boot/dts/ti/k3-j721e.dtsi               |   1 +
  include/dt-bindings/pinctrl/k3.h                   |   3 +
  10 files changed, 298 insertions(+), 45 deletions(-)
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
