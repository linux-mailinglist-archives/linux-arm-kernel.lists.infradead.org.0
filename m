Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F429AD4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuUpIkpwAGxqr00fZ+qshUilN4NztcL0HPGg6r7JBkk=; b=chc1Ln9zlSad4V
	jcQZJzUdT8H+m8wsqkzIoyhWtsLxW0OxXGTxKfY+qJmZSkOqxiOyBqmL2304NxbpEdlk31/IWK0d7
	NiOHPvF1uX65wJ/HX2oLA1qLCiFh7mFaCyBM5adnC9ub3aQBjoF+CNGS8//N87BSYCUeouO+hD7+0
	hlVGQUHQ1/d92G47VDIg9STb3PuUDwX9MO2IjBqMynZhY6MAuifP1kotsD0uyihqpUWsxXqLrI7FU
	snacgmSQRmuOpl7IAr7rEwn3TNyYzKbk32jY5N8ZbPJaLg68Z6iTQoPuuwbtv8kXwePEwg9i+0kWB
	BBcnVrFsu2xPFRbkYA4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16rw-0003mg-75; Fri, 23 Aug 2019 10:32:32 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16rE-00036I-Q1
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566556307; bh=aV9HCPL2dWHEvC4yV8gUMeG+A7RjDzsVcU9TnfVEEvo=;
 h=From:To:Cc:Subject:Date:References:From;
 b=AE8bLTOahfLkvWgkklCbF9ZCJq+vb40VaQZK+O+q5SBVGQ0jAcsXRFG9D6p6QSnaF
 LV08z3eoFXfN/sfe0GQPO2H2JD1DK8n/qK+zSGrgFASW9vH0hsIxCVOYG369B9kjDy
 WaeRclL6+8c+Gusxoeqq6TPLA7sb2TPj+r/BFR4o=
From: megous@megous.com
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>
Subject: [RESEND PATCH 3/5] bluetooth: hci_bcm: Give more time to come out of
 reset
Date: Fri, 23 Aug 2019 12:31:37 +0200
Message-Id: <20190823103139.17687-4-megous@megous.com>
In-Reply-To: <20190823103139.17687-1-megous@megous.com>
References: <20190823103139.17687-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_033149_003373_5F7F1DFC 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ondrej Jirman <megous@megous.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

Some supported devices need more time to come out of reset (eg.
BCM4345C5 in AP6256).

I don't have/found a datasheet, so the value was arrive at
experimentally with the Oprange Pi 3 board. Without increased delay,
I got intermittent failures during probe. This is a Bluetooth 5.0
device, so maybe that's why it takes longer to initialize than the
others.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/bluetooth/hci_bcm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/bluetooth/hci_bcm.c b/drivers/bluetooth/hci_bcm.c
index 95c312ae94cf..7646636f2d18 100644
--- a/drivers/bluetooth/hci_bcm.c
+++ b/drivers/bluetooth/hci_bcm.c
@@ -260,7 +260,7 @@ static int bcm_gpio_set_power(struct bcm_device *dev, bool powered)
 	}
 
 	/* wait for device to power on and come out of reset */
-	usleep_range(10000, 20000);
+	usleep_range(100000, 120000);
 
 	dev->res_enabled = powered;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
