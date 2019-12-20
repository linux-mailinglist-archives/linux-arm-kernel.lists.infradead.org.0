Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E50C2127F56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 16:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tt4+5Whekv6KIPYXfE48kprTSlzEG9zJoH2g4czjG3s=; b=lt4F0Qo4ipf1AZ
	btPugbDbCl0/jcSoIuj3SE6qWw/uAkovklWHUrBxCoAW9/wiKC9fLxVSsPQETtQAifo9/gFB+/eZ5
	G/HWHMVlEk20Hi4M7JDvQ08KtZgfy5ggHGgPvk997twteLzcVdIinptVwaelrqGMK9ivUKCmLOiFH
	bIlxlWh7PPRH54WcVQyjt5P8vp+QDmfPG1o28BS8VoulO6xWE2RFoTKfB6W9wuQ2wdpm+YAem1R4W
	r1hFNAGwmFabn1vW0jjR58HIOiruzEpi4LT0kNJ7bwUF+Hx43rxnWf9WGfXdBSxKwiihD0pxdZh/3
	IZ4gdckmEUXULebIGe+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKFl-0005or-3U; Fri, 20 Dec 2019 15:31:45 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKFV-0005nE-MU
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 15:31:33 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: FTCSFpRtgN7lXrlDsFDpdQV+UrKxCvj219yph4+nQ228/FAh47AcjPT6Rdvg/cbrvhUg/PsvyM
 LeoWRRi6HRiHeE0j9UlUkJz4HSXMBh4IVGfh4bkSJprSmt1dE1HO34QufT6f/gWcOayWKLzHSy
 mp2rJWkJYGeg3yBfUqLTNQFbykT3C/RNw6zT1DoDf5+tv0DrtFlYcdZ0xQJYyK2pUPCRVp5vpV
 +ZrimcMoGhbhYdyVP47Rwdmcf7UchOO2785/e+FQhuYwcKjK5bqLqZUKdpHTqkLAXS3eEiC4o7
 IdE=
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="58490660"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Dec 2019 08:31:23 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 20 Dec 2019 08:31:27 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 20 Dec 2019 08:31:21 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <sre@kernel.org>,
 <alexandre.belloni@bootlin.com>
Subject: [PATCH v2 0/2] at91-sama5d2_shdwc shutdown controller
Date: Fri, 20 Dec 2019 17:31:16 +0200
Message-ID: <1576855878-13213-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_073129_773134_C530F57A 
X-CRM114-Status: UNSURE (   5.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PMC master clock register offset is different b/w sam9x60 and
other SoCs. Since there is a need of this register offset in
shutdown procedure we need to have it per SoC. This is what
this series does.

Changes in v2:
- do not use r5 as intermediary registers in at91_poweroff 

Claudiu Beznea (2):
  power: reset: at91-poweroff: introduce struct shdwc_reg_config
  power: reset: at91-poweroff: use proper master clock register offset

 drivers/power/reset/at91-sama5d2_shdwc.c | 72 +++++++++++++++++++++-----------
 1 file changed, 47 insertions(+), 25 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
