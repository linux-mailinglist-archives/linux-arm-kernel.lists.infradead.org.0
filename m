Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7401E105036
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 11:16:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9IYlqQrWS5kADJdwpwu1HAPChlta3A8mppEwcHhpCOU=; b=NycUM/Xo+2kOjO
	A2QQQCaV/yGiq/eomNBsCbcrMaVnT/Z3i/2H81Eo7JeDMLHKlOd5Yce3+qlDRgZ521PYLdrKNjG/A
	z/7ky+R9U8zh0AF+AKtFJujoDdDm6NBimptmrWfgZTJe2f6pwXY3bFimLUVmvGddalAqmdmBmPGWG
	oe2+oLhx7C0VIKmueBZufvtO2Ih+xNg2vZa5M4mpUjOTpl+2Tr0jOvBHflw/1paJJLHHkPvCP+1fY
	oyGtKxm7Dp47ueTx3xUlsmpPrLjHXXnBezDAz9VWMoTFzew3996c0ZRbTJWmklgHTmp4CNrDUe1OO
	RiUEZ92WsZh586L7Gnfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXjVt-0006nV-TP; Thu, 21 Nov 2019 10:16:37 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXjVX-0006m9-UD
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 10:16:17 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xALAG6r2052188;
 Thu, 21 Nov 2019 04:16:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1574331366;
 bh=xuzXrhK8wsNkydl2luiWvTQcw+C29Mf+uDMeILvZ2r4=;
 h=From:To:CC:Subject:Date;
 b=pumQOLzEBmCvNsoLm6JsnPthRXHGFpy8/cHb12eiUvsMtvXxa7FXUmgNp4zvFWtW7
 UFqMOxRN1BWQfnhLzxr8jwbEOMsiLk20200nHnfbgcG2FbDSOuYi+O4geYWniYpvsH
 FZRL/fbkyA18zsaRIshRT2KUUnqkkUADuawH4oh4=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xALAG6dg100499
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 Nov 2019 04:16:06 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 21
 Nov 2019 04:16:06 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 21 Nov 2019 04:16:05 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xALAG3b4105173;
 Thu, 21 Nov 2019 04:16:03 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH v2 0/3] crypto: atmel - Retire
 dma_request_slave_channel_compat()
Date: Thu, 21 Nov 2019 12:15:59 +0200
Message-ID: <20191121101602.21941-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_021616_042674_BE2B5FED 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vkoul@kernel.org, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Changes since v1:
- Rebased on next-20191121 to avoid conflict for atmel-aes

I'm going through the kernel to crack down on dma_request_slave_channel_compat()
users.

These drivers no longer needs it as they are only probed via DT and even if they
would probe in legacy mode, the dma_request_chan() + dma_slave_map must be used
for supporting non DT boots.

I have only compile tested the drivers!

Regards,
Peter
---
Peter Ujfalusi (3):
  crypto: atmel-aes - Retire dma_request_slave_channel_compat()
  crypto: atmel-sha - Retire dma_request_slave_channel_compat()
  crypto: atmel-tdes - Retire dma_request_slave_channel_compat()

 drivers/crypto/atmel-aes.c  | 50 ++++++++-----------------------------
 drivers/crypto/atmel-sha.c  | 39 ++++++-----------------------
 drivers/crypto/atmel-tdes.c | 47 ++++++++++------------------------
 3 files changed, 30 insertions(+), 106 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
