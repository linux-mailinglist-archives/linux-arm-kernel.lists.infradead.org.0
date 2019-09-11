Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA36AF5FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 08:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6RKdV8oUwRA7AlVu96/VqFVPVI2ZCwK2zN0pE0D9ctU=; b=Yx/nYLQUnD69r1
	6IrLHhb6YnKFxQbwxQ+U5EPWa5DCZMk0fTjj5A0Qluddzrf64v+5RsrkTD2gbiXNtlGekA+1wAmBa
	dSbqQv4ZxHybGAhw5v+8YoB2J+cieG0/qcmsJpIXTxJB0Zn4hdXpCLP1MoctzBc2DB3woXoSgwMeh
	L6jLnSpqE2Nu3/JPz8Oy1b9dEoNmppG8PzA6ZmiOE3kT1MkcWu6sLks4z1ztHGmoVlx8TZPdMPu9D
	uTGmO2EycnFvumtwQG6KyCsWxsAKJTP3aeFVcC313hkmBPH1W7IIshr2wfVkdWAP62LJl4Nv2OGXN
	r6bWh559Vo3OpR3+AlVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wKx-0002gL-Mj; Wed, 11 Sep 2019 06:42:44 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wKj-0002ff-47
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 06:42:30 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Kr0fy78TWTx/7uyhYaTb4pVf1lS3SI1D22i5ivt/iH+3LbcssZwAHRQ1u7De59PHiJBbl/kjNL
 VIGEe8LL2gvSflr8MoTYVgfowqHMhgVbrEYKCBSjuDc4DVkHBTmWm8KMRwUW2fnNAe0Y77Z7pI
 c76IsEWJaMBOVNPFV2jqBa3kGA7zQtliXGO/RtHvR/327vfGkkLd42wN8FGWSybnjThK36hmhy
 YcJNRnvcybQXd+ZQZin0zAMxoNd1T1JXk4iMVm/G45JKbVa7gpZ3tmAPqEJYMYPc4obOOKu+8q
 6PM=
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="47503524"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Sep 2019 23:42:26 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Sep 2019 23:42:25 -0700
Received: from tenerife.corp.atmel.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 10 Sep 2019 23:42:24 -0700
From: Nicolas Ferre <nicolas.ferre@microchip.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <stern@rowland.harvard.edu>, <gregkh@linuxfoundation.org>
Subject: [PATCH 0/3] USB: host: ohci-at91: tailor power consumption
Date: Wed, 11 Sep 2019 08:41:51 +0200
Message-ID: <20190911064154.28633-1-nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_234229_199293_4FC92C31 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: Boris.Krasnovskiy@lairdconnect.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-usb@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Following a set of experiments we found areas of improvement for OHCI power
consumption (and associated USB analog cells).
This enhances the shutdown of residual power consumption in case of Linux
suspend/resume and removal of the driver (when compiled as a module).

Best regards,
  Nicolas

Boris Krasnovskiy (2):
  USB: host: ohci-at91: completely shutdown the controller in
    at91_stop_hc()
  USB: host: ohci-at91: resume: balance the clock start call

Nicolas Ferre (1):
  USB: host: ohci-at91: suspend: delay needed before to stop clocks

 drivers/usb/host/ohci-at91.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
