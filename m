Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E73613BD85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 11:35:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hil+InBpBZhK9noRkiH7RJg9ZfKTvw3D8MVvVXWBb2A=; b=BXpB1Tt/IS0JOv
	ZKMZKk2kERcOSCviE5+hfOpPNOltC+AOYJReqsQ4AGieZqTQhovX0KWRYfdY/SOVLvyZ3hgrkkpI5
	EWWHZ0+fO510WAGs+1DrfWgH2hbIkzqRkzk3Hz44kDmWCWnxEqJA6flf7aPchtlIPJgP8uhZktq4u
	QK8L5XjjEu8rMrLcWnY+EVl+nWbp0PlPrAm1KcbFhZQjnoNi+3onWKdQzE+YgDYRw0LnJFlIo82m4
	6bP9O/NPe5vHHDZ0Ucs3tmK00IGmBhV2ceoztMuUxnJuiK0UV/QDSJkwUzvDFNefNAJKPXGjk8K/V
	Giuo9b6NbfxuX0IBQjdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irg1S-0002KD-LZ; Wed, 15 Jan 2020 10:35:38 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irg17-0002JR-3r
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 10:35:21 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00FAZDPA015455;
 Wed, 15 Jan 2020 04:35:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579084513;
 bh=jHHq6tBvJANy25bIWbt9if2gvhapze0d8vL3P10H55E=;
 h=From:To:CC:Subject:Date;
 b=rUA4+c20fAlJXRl1t6mQbvbS7Ue5WT2ZjXSzmaLd/IWLxydnuzpHa9mX4pDzRa8tN
 +By3s0U8sXAUTMeu6HiO40wgZx93iOj9vLz/ohFMXuGS/pQMDPPM11MFTly/1ZydXt
 2cjKfrWRVK0x7Qvv1QSgY8ZdfVFi8OM3eze0fRTg=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00FAZDEZ128815
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 15 Jan 2020 04:35:13 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 15
 Jan 2020 04:35:11 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 15 Jan 2020 04:35:11 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00FAZ8vm050211;
 Wed, 15 Jan 2020 04:35:08 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <ssantosh@kernel.org>, <santosh.shilimkar@oracle.com>, <vkoul@kernel.org>, 
 <robh+dt@kernel.org>
Subject: [PATCH v9 0/2] soc: ti: k3: Introduce ringacc driver
Date: Wed, 15 Jan 2020 12:35:43 +0200
Message-ID: <20200115103545.6363-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_023517_239751_E7FE85D7 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Santosh,

as you have asked I have sending the ringacc driver as a separate series from
the DMA support for K3 platform.

I have picked the patches from v8 of the DMA support series.

The changelog regarding to ringacc:

Changes since v8:
- No change, picked from
 v8: https://lore.kernel.org/lkml/20191223110458.30766-1-peter.ujfalusi@ti.com/

Changes since v7:
- Added Tested-by from Keerthy
- Do not allow it to be built as a module for now as two exports are missing
  from kernel:
 - devm_ti_sci_get_of_resource()
 - of_msi_get_domain()

Changes since v6:
- No change

Changes since v5:
- No change

Changes since v4:
- clarify the meaning of ti,sci-dev-id in the binding document
- Remove 'default y' from Kconfig
- Fix struct comments
- Move try_module_get() earlier in k3_ringacc_request_ring()

Changes since v3:
- TODO_GS is removed from the header
- pm_runtime removed as NAVSS and it's components are always on
- Check validity of Message mode setup (element size > 8 bytes must use proxy)

Changes since v2:
- fixed up th commit message (SoB, TI-SCI)
- fixed ring reset
- CONFIG_TI_K3_RINGACC_DEBUG is removed along with the dbg_write/read functions
  and use dev_dbg()
- k3_ringacc_ring_dump() is moved to static
- step numbering removed from k3_ringacc_ring_reset_dma()
- Add clarification comment for shared ring usage in k3_ringacc_ring_cfg()
- Magic shift values in k3_ringacc_ring_cfg_proxy() got defined
- K3_RINGACC_RING_MODE_QM is removed as it is not supported

Changes since v1:
- Added Rob's Reviewed-by to ringacc DT binding document patch

Regards,
Peter
---
Grygorii Strashko (2):
  bindings: soc: ti: add documentation for k3 ringacc
  soc: ti: k3: add navss ringacc driver

 .../devicetree/bindings/soc/ti/k3-ringacc.txt |   59 +
 drivers/soc/ti/Kconfig                        |   11 +
 drivers/soc/ti/Makefile                       |    1 +
 drivers/soc/ti/k3-ringacc.c                   | 1157 +++++++++++++++++
 include/linux/soc/ti/k3-ringacc.h             |  244 ++++
 5 files changed, 1472 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt
 create mode 100644 drivers/soc/ti/k3-ringacc.c
 create mode 100644 include/linux/soc/ti/k3-ringacc.h

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
