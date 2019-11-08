Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A24FBF4CF9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:18:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=s82uO42MiSOkUCJMfX4fWMfCdFM4gy8XaunrDkklZiA=; b=mFNrUNdj5nS//Mtdq5n+rL3ps6
	mdVk0jD9/ZRopQl/sh/BYsbdz6gOUuAI57Fqo87A9rXMfwiMlMhhv7LVG2bFKtAyMrcpTEicK20st
	j5JcciiFLUn8vryHaDYUOMGsKDL0boojcQg8lsFdw9RcPy7xaP2GfD1tmf6Nrk22f9pfEBlQ3Oulc
	S+6igrtmQPHgQxjmx96SdrSY6syM1ijlDQD897OiKtQx3LcmQFe77WQgO+IIJdFMcG0hBfMQw68qf
	0gQ4LVIKQA52Xm34JUemjyOB8bGckCwPy4WPGmDv+B5RiPkDJYrRL/kARQVpk3JGFnW3yR0BZFslA
	tpnT/O5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT49I-0004ns-L1; Fri, 08 Nov 2019 13:18:00 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3vg-0006Ct-W0
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:03:59 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA8D3rZb116736;
 Fri, 8 Nov 2019 07:03:53 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573218233;
 bh=HIUSzyiPCSHX0P/8Lhv75xwgFuWbF64kvsPiOio5AgY=;
 h=To:CC:From:Subject:Date;
 b=uLC+2AgVHEUK9DGWP6x2yiW9iAOedxRmDAU/Ce+3lBo31weSJxDDd/Ygd9BI3FvQf
 etEU8/HV8hOExz0f6Hoa1lMuA1LfTRVGK1TnY5ZB22lpEk2IbZiXSSMClpKPEzYpBI
 6yA48vlaIKNOiHK1GNJijxz4q1bfirQu+o0OWSgI=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA8D3rcV030249
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 8 Nov 2019 07:03:53 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 8 Nov
 2019 07:03:36 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 8 Nov 2019 07:03:36 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA8D3mMR116071;
 Fri, 8 Nov 2019 07:03:50 -0600
To: <arm@kernel.org>, <soc@kernel.org>
From: Tero Kristo <t-kristo@ti.com>
Subject: [GIT PULL] ARM64: Texas Instruments DT changes for 5.5
Message-ID: <681f1bb5-d28c-a302-690a-82f0be4a7f34@ti.com>
Date: Fri, 8 Nov 2019 15:03:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050357_210417_1026AF28 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, Faiz Abbas <faiz_abbas@ti.com>, "Anna,
 Suman" <s-anna@ti.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc-maintainers,

Please pull these TI ARM64 SoC DT changes towards 5.5.

-Tero

---

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/ti-k3-soc-for-v5.5

for you to fetch changes up to 49e19745e4b55ceb5d4d9199a5860044284f5c69:

   arm64: dts: ti: k3-j721e-common-proc-board: Add USB ports (2019-11-08 
11:41:54 +0200)

----------------------------------------------------------------
Texas Instruments K3 SoC family changes for 5.5

- Add USB support for J721E
- Add mailbox support for AM65x and J721E
- Add MMC/SD support for J721E
- Disable WP for AM654 MMC0

----------------------------------------------------------------
Faiz Abbas (3):
       arm64: dts: ti: j721e-main: Add SDHCI nodes
       arm64: dts: ti: j721e-common-proc-board: Add Support for eMMC and 
SD card
       arm64: dts: ti: k3-am654-base-board: Add disable-wp for mmc0

Roger Quadros (2):
       arm64: dts: ti: k3-j721e-main: add USB controller nodes
       arm64: dts: ti: k3-j721e-common-proc-board: Add USB ports

Suman Anna (4):
       arm64: dts: ti: k3-am65-main: Add mailbox cluster nodes
       arm64: dts: ti: k3-am65-base-board: Add IPC sub-mailbox nodes for 
R5Fs
       arm64: dts: ti: k3-j721e-main: Add mailbox cluster nodes
       arm64: dts: ti: k3-j721e-common-proc-board: Add IPC sub-mailbox nodes

  arch/arm64/boot/dts/ti/k3-am65-main.dtsi           | 108 ++++++++++
  arch/arm64/boot/dts/ti/k3-am654-base-board.dts     |  59 ++++++
  .../boot/dts/ti/k3-j721e-common-proc-board.dts     | 162 +++++++++++++++
  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi          | 218 
+++++++++++++++++++++
  arch/arm64/boot/dts/ti/k3-j721e.dtsi               |   2 +
  5 files changed, 549 insertions(+)
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
