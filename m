Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3099AA69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1In0VVvFbveCkVWiy4i8gbpPwDCFd2IXbhu3TDE52Pw=; b=scUAc81DexNaRE
	kmGlqpJgQk/fBY2XAj+a1EXjrEVumfX5iLeGj+QSYdsRoAYhQacOinwdirr4sy2aWlF9EVD59Um8X
	zzbPzhfN1AJJDAkSFX/ziuDGQ2hMMRS6sLUKqVEbAs2tVCOHOZS17F/LZSNlgWSaUyfE9U6qR4vn0
	UXuYnsMu5zYiKQgeafTPFSsOH8TQfUPPVgAI1xNwAKpQZi33zR/AMZiJQ5wcorO7O79VCJuW7naCO
	lm/tb6Y4zs1jUUDlts4Mv1zXtv1RgKKAPSxC0xuBZx7lpmV5bnve10VD6NCpOuH/MOT4OvyVKXzhD
	XJCPNpoQt+HohNDrvTbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i150B-0003ro-Co; Fri, 23 Aug 2019 08:32:55 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14zY-0003Nh-Rd
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:32:18 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: jucCWBkCbNcJlDm9UtWDc6sEmzcCrPlh3TdsclqT7+gTBZLO0AeltRU98AMkEyP/j/AhNb/aZi
 R/dlBGHdNG3CAC3yF0zLi56r5ANLWD11Pq3PmrBNIrepCWmguZ7PINMKzZbMZvCl7Unn6/Mki2
 5ORWz23vitjc4OXcwdak/Vudr9jAgr6aZOHDcailbelpGiKubmN9WeX5wgRgtIH/hOO633wl9W
 lQ5QXb8tw4LFmEP6kf6CG/CVDljWy+0wXPvju/iKw6EF2xlvR5RA3es1jzoiwjIkmi5nuR0Bg6
 42o=
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="44733638"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Aug 2019 01:32:14 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 23 Aug 2019 01:32:12 -0700
Received: from tenerife.corp.atmel.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 23 Aug 2019 01:32:11 -0700
From: Nicolas Ferre <nicolas.ferre@microchip.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>
Subject: [PATCH 3/3] mailmap: map old company name to new one @microchip.com
Date: Fri, 23 Aug 2019 10:31:58 +0200
Message-ID: <20190823083158.2649-3-nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823083158.2649-1-nicolas.ferre@microchip.com>
References: <20190823083158.2649-1-nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_013217_074529_BFEB8D77 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Map my old email address @atmel.com to my new company name. It happened 3
years ago but I realized the existence of this file recently.

Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 .mailmap | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.mailmap b/.mailmap
index 3e01b1e5d584..54fb6af3fa38 100644
--- a/.mailmap
+++ b/.mailmap
@@ -182,6 +182,7 @@ Morten Welinder <welinder@darter.rentec.com>
 Morten Welinder <welinder@troll.com>
 Mythri P K <mythripk@ti.com>
 Nguyen Anh Quynh <aquynh@gmail.com>
+Nicolas Ferre <nicolas.ferre@microchip.com> <nicolas.ferre@atmel.com>
 Nicolas Pitre <nico@fluxnic.net> <nicolas.pitre@linaro.org>
 Nicolas Pitre <nico@fluxnic.net> <nico@linaro.org>
 Paolo 'Blaisorblade' Giarrusso <blaisorblade@yahoo.it>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
