Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B10B30687
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 04:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7xql5EZ9d/YM1D4zoKD4/XMNASYebrvjpffh6lm5NEg=; b=mxIh3DP5Kvt8so
	YusMkQuJg5MmJR6S1+92tYIDIZQGtdqWrSGsTlbJraol4OI23Z2lQse7I1TiObYztkQJcaDGmKVOk
	rguYOgJl5DC6dI3gI8PhY+akFhr0DFO5fGZHUHwzS+aiNMjowBLLcAL+dixI1YnC4JvNaf+WkWJ2B
	cPcG4CYNf7Nh2jnPXGQ+dLLVT7NVyYTISgyuVIVVa0F82qxdxs+MfdwnwXbHuiPsgYT2qM/imJscZ
	1WW0cMzQs9ysZ+3w+aA8AgFTLIsOGHbgdxvzCEyJYdgB2X9J2e6jDgVazmfSUEYa7JPddCw1otT6K
	bsLF4d4JUB5GAvyTySGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWX30-0004b4-Gm; Fri, 31 May 2019 02:13:34 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWX2t-0004ZZ-Ib
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 02:13:28 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4V2DNib098757;
 Thu, 30 May 2019 21:13:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559268804;
 bh=4vHnJdthnChgJfAriNkhNapcvwKQORqbRQnHgoj1we0=;
 h=From:To:CC:Subject:Date;
 b=DybxtHrFjYw9OxY3kbZCcSWtD/wOGmO/+PiB1j2PHboNVNfr2vtaMuKoG2BsQcFDs
 4O2XfHxc8NuKXwTzi7fIpnOGlJo/fEHNWIifLlUFiPfU3fAAJUmnbPMw7j21aD1d0n
 yPDgPz+VDgoES3g12gzzhvO2ImNRAZ2XlvwEiTKY=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4V2DNoS040227
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 30 May 2019 21:13:23 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 30
 May 2019 21:13:23 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 30 May 2019 21:13:23 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4V2DNGG027201;
 Thu, 30 May 2019 21:13:23 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x4V2DNm18124; 
 Thu, 30 May 2019 21:13:23 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 0/3] Add HwSpinlock support for TI K3 SoCs
Date: Thu, 30 May 2019 21:13:18 -0500
Message-ID: <20190531021321.14025-1-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_191327_678360_99940C02 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

The following series adds the support for the HwSpinlock IP present
on the newer TI K3 AM65x and J721E SoCs. The first 2 patches are
related to the K3 support, and the last patch is a minor debug related
trace to see the number of locks registered on each SoC.

I will be posting the DT nodes once the binding is acked.

regards
Suman

Suman Anna (3):
  dt-bindings: hwlock: Update OMAP binding for TI K3 SoCs
  hwspinlock/omap: Add support for TI K3 SoCs
  hwspinlock/omap: Add a trace during probe

 .../bindings/hwlock/omap-hwspinlock.txt       | 25 +++++++++++++++----
 drivers/hwspinlock/Kconfig                    |  2 +-
 drivers/hwspinlock/omap_hwspinlock.c          |  4 +++
 3 files changed, 25 insertions(+), 6 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
