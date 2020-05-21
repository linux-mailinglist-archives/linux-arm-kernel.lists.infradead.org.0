Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C673D1DD0FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0vY39rB54dFrXDvKRQolZPO1JE3mw98aXjpEiTcxGUI=; b=G/yyYW6oEMnnw8
	b8DGpMksUCR0Q+3WJcmdqZp0sWjD8RCBHXPFPJKEcY7IDT0hVB+L5I5lIRUaMgPdESb+mgpfgYG1E
	CdF4L/RcgVc9Dt6iypVLxv/DBDC1jgjadRa1T+nIDbyc3KVWtAd0OIJgZ6AJH2EaxlivPktlRjQRR
	1hBuBKgzOX1j9FKJUy2IATRup5qhHFxrGS3xobOUxI7lS7TY+2agr6dSr8aI6/yUOP9KW8uE64V39
	Tm9P3L8jooHIn3qM4u+lCVOMNiDf60NMdMM4d92s55Q+KAlJtebpLV0H3EfdQuzANMoE+9lsYRZqi
	ICUlMAMZSluP3trDJpUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmwa-0008Rn-Fg; Thu, 21 May 2020 15:17:12 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmw8-0008Ih-5U
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:16:45 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04LFGdLd106510;
 Thu, 21 May 2020 10:16:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590074199;
 bh=xeF3uqjn0PZozN4ybOvKTivNEawwwc9tj9QBVURFGSw=;
 h=From:To:CC:Subject:Date;
 b=XXN9tuUgbc6bCXffPyKNSpCBedUG9yoTCQEVzaclhTffN3bjEPpX7bmW7t1+GTQex
 804iRou6Vpx+S/4WeKgV13HOICQ0TS59efUP3epwyNyOIleV8+EMHt3JInBp9UoDie
 hpTcSCmnNFHt1D0NwuXAEPS/3HvoP2fm9LqmhvoE=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04LFGd7k036994
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 10:16:39 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 10:16:39 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 10:16:39 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LFGdTC071695;
 Thu, 21 May 2020 10:16:39 -0500
Received: from localhost ([10.250.48.148])
 by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 04LFGciZ076170;
 Thu, 21 May 2020 10:16:39 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v2 0/2] Update K3 DSP remoteproc driver for C71x DSPs
Date: Thu, 21 May 2020 10:16:34 -0500
Message-ID: <20200521151636.28260-1-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_081644_282859_A713B2A4 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This series is an updated version of the enhancements to the K3 DSP
remoteproc driver to support the 64-bit TI DSP called C71x. The series
is on top of the K3 DSP remoteproc driver v2 [1], and includes only
the platform driver portions. Please see the v1 cover-letter [2] for
a summary of supported features.

The 64-bit resource type enhancements (patches 2 and 3 from v1 [3][4])
can be reviewed and discussed separately. I can post the next versions
just for those based on any review comments on those.

Please see the individual patches for differences in v2.

regards
Suman

[1] https://patchwork.kernel.org/cover/11561787/
[2] https://patchwork.kernel.org/cover/11458599/
[3] https://patchwork.kernel.org/patch/11458593/
[4] https://patchwork.kernel.org/patch/11458589/

Suman Anna (2):
  dt-bindings: remoteproc: k3-dsp: Update bindings for C71x DSPs
  remoteproc/k3-dsp: Add support for C71x DSPs

 .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 76 +++++++++++++++++--
 drivers/remoteproc/ti_k3_dsp_remoteproc.c     | 20 ++++-
 2 files changed, 86 insertions(+), 10 deletions(-)

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
