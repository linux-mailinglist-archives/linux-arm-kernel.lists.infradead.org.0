Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F49FACCD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:22:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lk/zpX6dS4ZamI8SEOEflnmC4AgvWn/Ilccg8GKlteU=; b=B9SRdW1mpXwycH
	evgG+i4OeM38IFTo6sk102zPC+Gm5QMqCB+N/UAwDPJIWSOdTc31hab5zz4YbbizsO+Gv9vjFthI+
	QIV7vzi0piUxmj6PaLrPGCI+nsdT3+OkrPQVYHd/FrwtxTE630OqbKjVuyElsLkpVsaW0Gi9aejhO
	pJoaKym6Fx3syjwnrlyGcMCly9Wpk48+wFgNXSlIdQBohRL7zBRRtCmLxxsjFq517KpD18cgN4Y5h
	85vK+qi+y2QyadAHWUEViyKlJTjKX+/dGio9H1bbIcIXu87OLZooWZ//fclciyhn1I2hh98ePQzbd
	V+EjEYfgmPahdsqlHHDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUoqe-0006Cs-Ce; Wed, 13 Nov 2019 09:22:00 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoqD-00061I-4C
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:21:34 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAD9LORl115392;
 Wed, 13 Nov 2019 03:21:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573636884;
 bh=bocIryoBPyj8pPA5BMCglgJkJ0wRBeHW9ff7aMwZThs=;
 h=From:To:CC:Subject:Date;
 b=ZDkkfobG3G01ya8X5Y5QDhthFWkjDIffhk0mEJtgujEm5REZl6L2mRyqgOVCDY4Qc
 ealmFughEQnUXLBRwAKX4zJFc6Ywqg4BK5WNpTN9b8Pefqlr6dgWCSXokO1U6Ebwrv
 xHaTMROYpfSaX26Xef0h8TV/azN1BrKHa4PXgvx0=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAD9LOTw050017
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 13 Nov 2019 03:21:24 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 13
 Nov 2019 03:21:06 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 13 Nov 2019 03:21:06 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD9LJ1G056807;
 Wed, 13 Nov 2019 03:21:20 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <ludovic.desroches@microchip.com>, <agross@kernel.org>,
 <wsa+renesas@sang-engineering.com>, <ldewangan@nvidia.com>
Subject: [PATCH 0/4] i2c: Use dma_request_chan() directly for channel request
Date: Wed, 13 Nov 2019 11:22:31 +0200
Message-ID: <20191113092235.30440-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_012133_271822_05868557 
X-CRM114-Status: UNSURE (   9.31  )
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
Cc: alexandre.belloni@bootlin.com, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com, vkoul@kernel.org,
 thierry.reding@gmail.com, linux-i2c@vger.kernel.org,
 linux-tegra@vger.kernel.org, digetx@gmail.com, bjorn.andersson@linaro.org,
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
Peter Ujfalusi (4):
  i2c: at91: Use dma_request_chan() directly for channel request
  i2c: qup: Use dma_request_chan() directly for channel request
  i2c: sh_mobile: Use dma_request_chan() directly for channel request
  i2c: tegra: Use dma_request_chan() directly for channel request

 drivers/i2c/busses/i2c-at91-master.c | 4 ++--
 drivers/i2c/busses/i2c-qup.c         | 4 ++--
 drivers/i2c/busses/i2c-sh_mobile.c   | 2 +-
 drivers/i2c/busses/i2c-tegra.c       | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
