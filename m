Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C12CB7E3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZL2eiH927uLV4UJFowm21ul6yfRPwsdDq32v9QZyJnk=; b=WnschJBBs55/h8
	XiSXAz55KIOUVTrZN+6AEbmhJB7Z1LN6vEYCPyXQlwWc0qb+AWUNZTFx0KENhc2Wy8amqE40akGLR
	w8ENAbGuGFdybHlzE6MndXX5lL3c7C1Z7F9hRAoCcnRTQAGkcds/6+eKvh8mlYJxWSfrw/i3cih62
	tPQmCHIlgbKcGchvH8jlI2eT7WFw/4y1HSltO1rW7r+S0IdHvPxZUuNScq0bES21ws4MwQ2iRJHq8
	RSs3Ooff40Sl6JMncM3TTvk36AEHiQkzOJc/ruH6gf4qUcyKISDeEt2JCVis/xYP4yOcG5xPloxS0
	EHJJSDZYyOxTchOul47g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAyQ2-0006fV-Qd; Thu, 19 Sep 2019 15:32:30 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAyPg-0006er-1O
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:32:09 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8JFW2wx045534;
 Thu, 19 Sep 2019 10:32:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568907122;
 bh=v7EJCOSHhKLQF2mY+JduPanblT1fN416i9W6CtVEMCM=;
 h=From:To:CC:Subject:Date;
 b=bP+WUl6OFcsG4LJfJXwI0CKOg5H5/I4cP+pNe4WIJIOzJMv1gr8brph4a20l0luTe
 cvVazDu8P5CNVNDLYssGvuEfSjJvZDm5H+xONVq0dJbfvRxdLc2yoPmWpiWzcxSDKg
 nNiOMNyqCGPoYTEtM7Ffo2xcTjUtW7VujIh3Qg40=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8JFW2D2012524
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 19 Sep 2019 10:32:02 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 19
 Sep 2019 10:32:02 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 19 Sep 2019 10:32:02 -0500
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8JFVxwK001224;
 Thu, 19 Sep 2019 10:32:00 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 0/2] Add Support for MMC/SD for J721e-base-board
Date: Thu, 19 Sep 2019 21:02:40 +0530
Message-ID: <20190919153242.29399-1-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_083208_223802_0CDD9417 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, nm@ti.com, robh+dt@kernel.org, t-kristo@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following are dts patches to add MMC/SD Support on TI's J721e base
board.

Patches depend on Lokesh's gpio patches[1] and device exclusivity patches[2].

[1] https://patchwork.kernel.org/cover/11085643/
[2] https://patchwork.kernel.org/cover/11051559/

Faiz Abbas (2):
  arm64: dts: ti: j721e-main: Add SDHCI nodes
  arm64: dts: ti: j721e-common-proc-board: Add Support for eMMC and SD
    card

 .../dts/ti/k3-j721e-common-proc-board.dts     | 34 +++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 50 +++++++++++++++++++
 2 files changed, 84 insertions(+)

-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
