Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8481F7F1E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 00:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z0LUu0ncFrN3YZuf6sGoh8c8l9xhy97bTnbvC4Uw+Go=; b=N1xqg2FTgKtco2
	lWugE4xD3PFZdi7jJLd/NLIgWmJkWoJcwP0VDL1HadxQ6Nv6rzFBOQBOCHEch40nVkCTvajDKCVba
	xX1TkzgcLJHP5uPrDvwxFc4PjITACij0GkntJ1mv/3tzs9hFahtqofnj3doeT3ajdZ3VmzyFdbtuG
	q3xtb615z6zEFdmmigmxhrM0268yHtGL3wgVHbEfqqGjqEzsu9bjg7YVxNH4Ds+WtMUrI6dqNoWp0
	QRwAOE4MxWY7TsqqwTsnzBRyAgnDMSAScW7C0OUSe0fCf27Epy9f7svLDIhSg7YTfGpY59FuFdHOz
	XURajSQUPX0pi4kjWLfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjsUX-0001eB-6K; Fri, 12 Jun 2020 22:49:41 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjsUO-0001bj-4v
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 22:49:33 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05CMnOqZ121046;
 Fri, 12 Jun 2020 17:49:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592002164;
 bh=r3KC4WGjMUHhMPU0T9d+Aev6nWaRVfp+MljfOUVI+nY=;
 h=From:To:CC:Subject:Date;
 b=lYywnfImUv/KyQ0kWp4EKnDSpBIQ6xu2IhWLIaIJCohmQL8hQ0tx0PpJTR7tGO/zX
 EbwP1oMbCsRLyOxSuYE4ucM3oxy8fBspQB8zcB5ACmUVbU+s78iIQKWxUVgIMszlzS
 8oDZyUtPnZZ4yH4m3vwiBuOs9riK4hUUOmX22bq8=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05CMnO1S119570
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 12 Jun 2020 17:49:24 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 12
 Jun 2020 17:49:24 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 12 Jun 2020 17:49:24 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05CMnOgK112149;
 Fri, 12 Jun 2020 17:49:24 -0500
Received: from localhost ([10.250.48.148])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 05CMnOTZ062157;
 Fri, 12 Jun 2020 17:49:24 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v3 0/6] TI K3 DSP remoteproc driver for C66x DSPs
Date: Fri, 12 Jun 2020 17:49:08 -0500
Message-ID: <20200612224914.7634-1-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_154932_313153_FA7EA666 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.19.142 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

The following is v3 of the K3 DSP remoteproc driver supporting the C66x DSPs
on the TI K3 J721E SoCs. The patches are based on the latest commit on the
master branch 44ebe016df3a.

The main changes in v3 are mostly around the bindings to address various
comments from Rob. The bindings patch is the only patch without an Ack on
v2.

Main changes in v3:
 - Introduced a new common ti-sci-proc bindings yaml file (Patch #3)
   that can be used by both K3 DSP and R5F
 - Updated dt-bindings to address most comments (Patch #4)
 - Moved the common ti-sci-helper patch (Patch #2) between R5 and DSP drivers
   from the R5F series to this series, so that this series is standalone and
   can be merged by itself.

Please see the individual patches for further delta differences.

v2: https://patchwork.kernel.org/cover/11561787/
v1: https://patchwork.kernel.org/cover/11458573/

regards
Suman

Suman Anna (6):
  remoteproc: Introduce rproc_of_parse_firmware() helper
  remoteproc: k3: Add TI-SCI processor control helper functions
  dt-bindings: remoteproc: Add common TI SCI rproc bindings
  dt-bindings: remoteproc: Add bindings for C66x DSPs on TI K3 SoCs
  remoteproc: k3-dsp: Add a remoteproc driver of K3 C66x DSPs
  remoteproc: k3-dsp: Add support for L2RAM loading on C66x DSPs

 .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 139 ++++
 .../bindings/remoteproc/ti,k3-sci-proc.yaml   |  51 ++
 drivers/remoteproc/Kconfig                    |  13 +
 drivers/remoteproc/Makefile                   |   1 +
 drivers/remoteproc/remoteproc_core.c          |  23 +
 drivers/remoteproc/remoteproc_internal.h      |   2 +
 drivers/remoteproc/ti_k3_dsp_remoteproc.c     | 774 ++++++++++++++++++
 drivers/remoteproc/ti_sci_proc.h              | 102 +++
 8 files changed, 1105 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
 create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-sci-proc.yaml
 create mode 100644 drivers/remoteproc/ti_k3_dsp_remoteproc.c
 create mode 100644 drivers/remoteproc/ti_sci_proc.h

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
