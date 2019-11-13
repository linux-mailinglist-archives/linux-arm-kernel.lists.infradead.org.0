Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4310AFAD13
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:35:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xFZOKN9lau4yZkevvjqC1t5+RaXfWaoaamr5Yu3+UxU=; b=dEfsTePISDz+ue
	zolmQEswGMK3NkR/NG/1Wdv4RP0ag92Wtlwrg6Og6QPjrs7yykwuJRekuo1EErIcWMM0Lf2x+QYDC
	bV0/IZ8FFV0IRmFseORY5BwPsCz1Diyfr8eRcsMwEviI8tRSJ+dRHXBtdYZivevG4oXfxyCO5G3L+
	b4Qr+/ZLUqusCpESRelZU2HcWoJ+tYcbQXyXJGytv+15xGHpnYi4IR936Lz7LnQLkqrdv7AoaEMsI
	7/9XsZ+a9NXzp57Sh/awgS4L1/r1XMchw+YA5wcAsllu8AbpA6Fg6BDqXcdhl1YVUSe/s9Ruxb0Im
	Lqz/yIp5bpIPmpgoVCbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUp3g-0004g2-Cx; Wed, 13 Nov 2019 09:35:28 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUp3O-0003xC-8v
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:35:12 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAD9Z3Gm120152;
 Wed, 13 Nov 2019 03:35:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573637703;
 bh=mpwqDeEPMA78i0tTP2wIwxuQcnYymL4njjvgQPRuSt8=;
 h=From:To:CC:Subject:Date;
 b=E6cg3AUx/IewZbNFRoHl/hK0LGdooaYMCv4P2fU5ehl4waS8afixIsYa9UAt7ywYi
 33poMU4+LHISbdbIAWU6Ow+F1W4JG4CI/kAkD2KA0ZPLxJN6CeIWklMOE+9oQizyfg
 PXebbMpEtcuFaq05Pr9+xkIsdJuNR/BULygZIgFQ=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD9Z3wW051207;
 Wed, 13 Nov 2019 03:35:03 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 13
 Nov 2019 03:34:45 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 13 Nov 2019 03:34:45 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD9Z0hT086866;
 Wed, 13 Nov 2019 03:35:01 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <ulf.hansson@linaro.org>, <ludovic.desroches@microchip.com>
Subject: [PATCH 0/2] mms: Use dma_request_chan() directly for channel request
Date: Wed, 13 Nov 2019 11:36:14 +0200
Message-ID: <20191113093616.32474-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_013510_532855_EA95CB0B 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.belloni@bootlin.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I'm going through the tree to remove dma_request_slave_channel_reason() as it
is just:
#define dma_request_slave_channel_reason(dev, name) \
	dma_request_chan(dev, name)

Regards,
Peter
---
Peter Ujfalusi (2):
  mmc: atmel-mci: Use dma_request_chan() directly for channel request
  mmc: moxart: Use dma_request_chan() directly for channel request

 drivers/mmc/host/atmel-mci.c  | 3 +--
 drivers/mmc/host/moxart-mmc.c | 4 ++--
 2 files changed, 3 insertions(+), 4 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
