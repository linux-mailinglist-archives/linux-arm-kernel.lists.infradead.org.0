Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF4F1FB8C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 17:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WWMIrqNI/YsYseG+pMHUA5krpWipCDEqZg8OvtjHfz0=; b=SZxSSsFCLjJfdq
	aMvUN8uRsW+9Qex4XjpYeDKL7fkJdlDA4sDmouRP6nxI33d7EnapfxzSCXOo4VzvB+wYgYvrx0jh+
	bzeOoVii0Ed0yAZqlarwxL5VCeDEj2Chj96gXnumeiZ8BZ5B2uKCi9fGG45eTIhOxY5y8sKI25AZ7
	l4013GZcawoRojvAXhNznwHXnYiqRRD3vrD0IAHxZtaAJhopzsOY8mr9HZrQ2HjGCYiHsC2QNMqhq
	3RlJJNSFjt5nTZZzNFfKndoXBTBP2x3TSb5jhsvIJPuz5xNTYGLQM47uDITRoDJOUZgxvbaKL0cyp
	T+NRxMOkcC6O+zvc+6xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDzC-0003YO-F6; Tue, 16 Jun 2020 15:58:54 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDyj-0001Yp-Ad
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:58:27 +0000
IronPort-SDR: MUFKZkXTZR8rewLqJC52Cj++SNjSBIh086fkcKEXL5PB9UF8sXfyAZQJZadGzRv5oKlf3ON0a5
 GJM55lIPFN9w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:24 -0700
IronPort-SDR: tr/ybh8U9PRGgKz1/fMBQlds+13oaI9vCV6Vh6bPppUS/SKenSmjUq9C5NfVXMyZsMxAYDEy89
 PJe5LEbrUzPA==
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="449888063"
Received: from pperycz-mobl.ger.corp.intel.com (HELO
 dalessan-mobl1.ir.intel.com) ([10.213.235.69])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:20 -0700
From: Daniele Alessandrelli <daniele.alessandrelli@linux.intel.com>
To: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 0/7] Add initial Keem Bay SoC / Board support
Date: Tue, 16 Jun 2020 16:56:06 +0100
Message-Id: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085825_430653_19E35655 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Dinh Nguyen <dinguyen@kernel.org>,
 Paul Murphy <paul.j.murphy@intel.com>, Will Deacon <will@kernel.org>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patch-set adds initial support for a new Intel Movidius SoC code-named
Keem Bay. The SoC couples an ARM Cortex A53 CPU with an Intel Movidius VPU.

This initial patch-set enables only the minimal set of components required to
make the Keem Bay EVM board boot into initramfs.

Brief summary of the patch-set:
* Patches 1-2 add the Keem Bay SCMI Mailbox driver (needed to enable SCMI in
  Keem Bay)
* Patch 3 adds the ARCH_KEEMBAY config option
* Patches 4-7 add minimal device tree for Keem Bay SoC and Keem Bay EVM
  (together with information about the SoC maintainers)

Regards,
Daniele


Daniele Alessandrelli (5):
  arm64: Add config for Keem Bay SoC
  dt-bindings: arm: Add Keem Bay bindings
  MAINTAINERS: Add maintainers for Keem Bay SoC
  arm64: dts: keembay: Add device tree for Keem Bay SoC
  arm64: dts: keembay: Add device tree for Keem Bay EVM board

Paul Murphy (2):
  dt-bindings: mailbox: Add Keem Bay SCMI mailbox bindings
  mailbox: keembay-scmi-mailbox: Add support for Keem Bay mailbox

 .../devicetree/bindings/arm/keembay.yaml      |  19 ++
 .../mailbox/intel,keembay-scmi-mailbox.yaml   |  44 ++++
 MAINTAINERS                                   |  16 ++
 arch/arm64/Kconfig.platforms                  |   5 +
 arch/arm64/boot/dts/intel/Makefile            |   1 +
 arch/arm64/boot/dts/intel/keembay-evm.dts     |  55 +++++
 arch/arm64/boot/dts/intel/keembay-soc.dtsi    | 172 +++++++++++++++
 drivers/mailbox/Kconfig                       |   9 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/keembay-scmi-mailbox.c        | 203 ++++++++++++++++++
 include/dt-bindings/clock/keembay-clocks.h    | 188 ++++++++++++++++
 include/dt-bindings/power/keembay-power.h     |  19 ++
 12 files changed, 733 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/keembay.yaml
 create mode 100644 Documentation/devicetree/bindings/mailbox/intel,keembay-scmi-mailbox.yaml
 create mode 100644 arch/arm64/boot/dts/intel/keembay-evm.dts
 create mode 100644 arch/arm64/boot/dts/intel/keembay-soc.dtsi
 create mode 100644 drivers/mailbox/keembay-scmi-mailbox.c
 create mode 100644 include/dt-bindings/clock/keembay-clocks.h
 create mode 100644 include/dt-bindings/power/keembay-power.h

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
