Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98212191AD8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 21:19:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gpkgjWWmKjtm/7hTBMzmQ4rHAT6rE5niIYcT2SbSijw=; b=rFY0CUCMPfWWc3
	g4m/AHZsGorw2o2or8DV4aZVGcQ7gC6VUsJeTvwqrb2aiyVTQuhCGzMpz2kFaBT5F0nnrk6Io6RCn
	1E54rSLS8Y3wiZmvnM2L34RwrfgYpYrUlsdljaBb2Y9qlIbNxH2wiA+CQYFBr+hGdwdluWKqRgQLj
	Mk/ekMHVG84WiYNlr6UB1uyhDbcWShysx+3+WJIclZglJJ1PzYjsCesD5UG60xYK6S2ZkjA+u9zrS
	f7m3iC3rqV08i29P6zJXsFerTOx3uOm/TnHhEu8LQlvClXDdDbzBvUouKaL3YXc0kbC6/P5x3S1Jo
	gD9q2Kgscm5eY86zfqCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGq0p-0003Ts-J4; Tue, 24 Mar 2020 20:18:59 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGq0J-0003I5-Dc
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 20:18:29 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02OKIM9N089235;
 Tue, 24 Mar 2020 15:18:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585081102;
 bh=HDnUg64MURgxOddjFc1rSjs5ym61HxadrRBf8tW9tdA=;
 h=From:To:CC:Subject:Date;
 b=TGYeZLwfb2+SaqZ9YIAGXHbP/zvkr4mXIjcQ1VSLyTVUFOVTH+hwdFfcF72Yg4IkQ
 ahYgH0QSGtq8FheXehvrFEkEheQzAn2j3k7heqxuxeyfyWs5CTPDqwwmIwKEOtJQmQ
 qSD1um2GqfWaD1ulEbC1+hHR/diqlqXFyHEz5lrY=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02OKIMe5065603
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 24 Mar 2020 15:18:22 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 24
 Mar 2020 15:18:21 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 24 Mar 2020 15:18:21 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02OKILWA124084;
 Tue, 24 Mar 2020 15:18:21 -0500
Received: from localhost ([10.250.35.147])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 02OKILu1084949;
 Tue, 24 Mar 2020 15:18:21 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Mathieu Poirier
 <mathieu.poirier@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/7] TI K3 R5F remoteproc support
Date: Tue, 24 Mar 2020 15:18:12 -0500
Message-ID: <20200324201819.23095-1-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_131827_540228_103B9E21 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The following series adds a new K3 R5F remoteproc driver for all the R5F
processor clusters/subsystems on TI AM65x and J721E SoCs. The AM65x has a
single R5FSS cluster, while J721E has three R5FSS clusters. All clusters
are capable of supporting either LockStep (safety compliant providing
fault tolerance) or Split (performance mode) mode. The modes themselves
are limited on some SoC variants through an eFUSE setting. The IP version
and SoC integration is slightly different between AM65x and J721E SoC
families leading to couple of functional behavior differences.

The R5Fs are designed to boot out of TCMs with the initial boot-up code
on the R5Fs configure the Memory Protection Unit (MPU) to run code from
DDR. IPC is through the virtio-rpmsg transport. There is no error recovery
or Power Management support at present. The J721E 

The patches are on top of the current rproc-next branch, and uses one
patch from the OMAP remoteproc series [1]. It also leverages the fixed
memory carveout fixes series [2].  

The following is the patch summary:
 - Patch 1 is an old patch [3] from Loic posted previously to the upstream
   lists and allows the driver to perform the necessary sequencing
   w.r.t IP power-on and local resets and provide a balanced state
   machine across sysfs start/stop, and bind/unbind or module removal.
 - Patch 2 is a minor enhancement in remoteproc core to allow dynamically
   created platform devices to be registered with remoteproc core.
 - Patches 3 and 5 add the base binding and the the driver respectively.
 - Patch 4 is a common helper that will also be used by a TI K3 DSP 
   remoteproc driver (to be posted in the near future) providing the
   interface to the System Controller software over TI-SCI for performing
   device-specific operations.
 - Patches 6 and 7 are couple of incremental features to the R5F driver.

regards
Suman

[1] https://patchwork.kernel.org/patch/11455135/
[2] https://patchwork.kernel.org/cover/11447649/
[3] https://patchwork.kernel.org/patch/10251897/

Loic Pallardy (1):
  remoteproc: add prepare and unprepare ops

Suman Anna (6):
  remoteproc: use a local copy for the name field
  dt-bindings: remoteproc: Add bindings for R5F subsystem on TI K3 SoCs
  remoteproc/k3-r5: Add TI-SCI processor control helper functions
  remoteproc/k3-r5: Add a remoteproc driver for R5F subsystem
  remoteproc/k3-r5: Initialize TCM memories for ECC
  remoteproc/k3-r5: Add loading support for on-chip SRAM regions

 .../bindings/remoteproc/ti,k3-r5f-rproc.yaml  |  338 ++++
 drivers/remoteproc/Kconfig                    |   16 +
 drivers/remoteproc/Makefile                   |    1 +
 drivers/remoteproc/remoteproc_core.c          |   29 +-
 drivers/remoteproc/ti_k3_r5_remoteproc.c      | 1461 +++++++++++++++++
 drivers/remoteproc/ti_sci_proc.h              |  102 ++
 include/linux/remoteproc.h                    |    6 +-
 7 files changed, 1950 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
 create mode 100644 drivers/remoteproc/ti_k3_r5_remoteproc.c
 create mode 100644 drivers/remoteproc/ti_sci_proc.h

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
