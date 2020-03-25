Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E3E1931D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 21:19:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x2lsF8du5zS+PnpPcB0WyCMtkr4UokI7+0Ae2DyIvoc=; b=tfraDtsjd1aUAD
	k44jGE9oUMVHr95+Gw2kCT4CwM6rLWvotWMYGIImgtzwkqrYjIQf6+Ff/GJXcJV8FOxwUxKUQh5tP
	aWR9aXXkWiL/sO78h7/pcn91TWqPh97l1HGAbQu0VxKk+33MvXGqcgJBjL3PsoOGXi9oAt+3b9MzY
	LquQm1pZ13E3O2P/rnTbHHMvXglJAn1fJGvn7dY/dPnVmImMi5PTjQsibMIw7wsw4SBueyutN488N
	SmC9Sn2hAtPkQzy8+Vqi+9IbW95wuxPMQLc7bizYYVUgSjQiSwMOATT3h2ccGrnbEuU95ivLlqKrP
	52gd0gStFRAaNxc9w/Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHCV1-0000a3-HF; Wed, 25 Mar 2020 20:19:39 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHCUH-0008WN-Ud
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 20:18:57 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02PKIiVR085834;
 Wed, 25 Mar 2020 15:18:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585167524;
 bh=CxukkovBJFpII0uJw7j2rQdNqCAT4Ya7y+OIAbYeZf4=;
 h=From:To:CC:Subject:Date;
 b=gJdxXPXFwXAp0L2ctK6D43oGj9tX0xL5s2QfU0OqcRaWno9SD9iQ3H9B8D0zg530/
 TWp4uzQOnKNMetj1WTeaugk4suty839vKyYipV9DL1pXkKCNE/DD2icfYgOzEsAJTo
 mM/W6bBSRpx4d5deIoEkb91ol9QtUz0ACaVuRAeI=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02PKIi8a025540
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 25 Mar 2020 15:18:44 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 25
 Mar 2020 15:18:43 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 25 Mar 2020 15:18:43 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02PKIhmC064313;
 Wed, 25 Mar 2020 15:18:43 -0500
Received: from localhost ([10.250.35.147])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 02PKIhhq090851;
 Wed, 25 Mar 2020 15:18:43 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 0/3] TI K3 DSP remoteproc driver for C66x DSPs
Date: Wed, 25 Mar 2020 15:18:36 -0500
Message-ID: <20200325201839.15896-1-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_131854_070605_EB40F506 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

The following series adds a new K3 DSP remoteproc driver supporting the
C66x DSPs on the TI K3 J721E SoCs. The current series mainly adds the support
for booting the DSPs from the Linux kernel. This series forms the foundation
for adding support for a new 64-bit DSP (C71x DSP) to be posted in a separate
series. Support for attaching to pre-booted DSPs (from bootloader) will be
done in a future series.

The C66x DSPs can boot either using firmware segments loaded into either DDR
and/or internal DSP RAMs. IPC is through the virtio-rpmsg transport. There is 
no Error Recovery or Power Management support at present. The driver also does
not support loading into on-chip SRAMs at present.

The patches are based on the current rproc-next branch, and does use couple
of patches posted earlier from the OMAP remoteproc series [1] and TI K3 R5F
series [2]. It also leverages the fixed memory carveout fixes series [3].

Following is the patch summary:
 - Patch 1 adds the bindings in the YAML format.
 - Patch 2 adds the basic remoteproc driver for the C66x DSPs
 - Patch 3 is an enhancement to support loading into the DSP's internal
   RAMs directly.

regards
Suman

[1] https://patchwork.kernel.org/patch/11455135/
[2] https://patchwork.kernel.org/patch/11456383/ 
[3] https://patchwork.kernel.org/cover/11447649/

Suman Anna (3):
  dt-bindings: remoteproc: Add bindings for C66x DSPs on TI K3 SoCs
  remoteproc/k3-dsp: Add a remoteproc driver of K3 C66x DSPs
  remoteproc/k3-dsp: Add support for L2RAM loading on C66x DSPs

 .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 180 ++++
 drivers/remoteproc/Kconfig                    |  16 +
 drivers/remoteproc/Makefile                   |   1 +
 drivers/remoteproc/ti_k3_dsp_remoteproc.c     | 818 ++++++++++++++++++
 4 files changed, 1015 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
 create mode 100644 drivers/remoteproc/ti_k3_dsp_remoteproc.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
