Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5831B79BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJq3FB0dCDIuDIVKxx0vjS4RzW8UuekJJM4d+460NV4=; b=sajM5wr0ncQhrV
	4N23W46kNo4ua3Td8Emn1ZTreHqp9keDR82x2Iq0iU/FZSmD/UYVCupmaP3MHY2JYYyojCPW6g0Q3
	rw5uwhhC8Y+CLPNzEHKx6Gj7a0UEgeBk47wogPrwYJPvb4HbbQ0dum9r1fvzYpLTjL486uRzPJifn
	gjTcCtM6WN995z+/PMul5tN+31mz6sBr88JFy4WU/90jQKvSsVYmAAoLO4Z5SSZfQ7o9N3IFL05yx
	CL4jcQwaTPZscME9ebYsyPVrVuhG2GsAVsqxkpbrKESljA+06HAEYVMlY8I6VVFs/dTAYZ4fxVATQ
	Zv/ph/zWrmOGrnq9in/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0O2-0008Iw-QH; Fri, 24 Apr 2020 15:37:06 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0MX-0007Nx-OZ; Fri, 24 Apr 2020 15:35:36 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 99300D4C;
 Fri, 24 Apr 2020 11:35:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=c0Cq8AgsYHTOO
 +aKa7NtdasFIoTnbBQjl8WHb1AcNco=; b=AIgM//qhbQnqcGZd6ypjsTr0h4cA4
 P9moePqISdJM4fa0mFETksJlM9nh7fkiATFVzQbZAcxYRIAdt8xwLGcMB5aYUELg
 cgjUEdQwNqOjvqX/DpMdeToSFY9SJ0xaspOjQJ1hBbBnwdyFapnv06O9EPMxsFZa
 6wD2R3ukL2/WLZM3qWOiFgK0Ab7P5PWBcTY4GVa24cBwtHMKUKAXwnZVT0PPqU4c
 GVBECWcFVHnGM51dQrP0MA1by4Tt7uR4LUm8l/pJlUROogxVs6TxGolA8kOEEeic
 yRHM4Q7lhzP9X3cj7PqdqTfDRQXNXaYSiCVP9NP2WlEgLctbo1Zx7xQTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=c0Cq8AgsYHTOO+aKa7NtdasFIoTnbBQjl8WHb1AcNco=; b=rTJv9lGS
 l/Pah3UDoWJ8NJaUp9LhURu1LSEDjraxbuzf/S5yoS3N1Jk1AfMmwRJxU2gl8cg2
 VJDyXTRl4DvpWIbgFdUE53cX9EdFVhSvdbf80vf+fm6EfhOYZUaJqarwUgDkSoFE
 3nLJKtMtKdHOLGdewtLDi4W9SqkB46O8149I0gyVv0YjxB8kv59L3WJadKALEryh
 61NMk8jCLT9lXLF9jQ5mYe5QOVF3bbpN7u0HaaytMljApzQmA1hzPlCISVBub2Jy
 ZATPbNzgz+hMUTA35t9xSuLVS61deV2dItdwVhlIJxXt219L2Ley6dcOAhR8H+/B
 SMeeylBUEDEd3A==
X-ME-Sender: <xms:PAejXhFJcy9keLEvH-F1EkiBrfwLT6KUl0O1oQAXeDclq-nJQY_Pag>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:PAejXszuuchr5JKJspuQw8qBdu98B01y-tXS-AD5DUn1s3KQNQWPAg>
 <xmx:PAejXkfCgGKU-Nd6cx5nVg0QUFMw0MC3f1d-0lHDQedXv__RLftUyw>
 <xmx:PAejXi_5QXGSaDj0Bh8O-W_eXCUTWPbZI3m6h_N4qIsKc8fscRLSJg>
 <xmx:PQejXnVFBw61Tij7uieRQ3X9vLfkHNTA52yl6RpJnUvdq97bRxMqDrIGpeE>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BC8043065D87;
 Fri, 24 Apr 2020 11:35:23 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 01/91] i2c: brcmstb: Allow to compile it on BCM2835
Date: Fri, 24 Apr 2020 17:33:42 +0200
Message-Id: <c8c666eb5c82dcb73621930b3fedf5814792bf1a.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083533_853745_B01F68CA 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Wolfram Sang <wsa@the-dreams.de>, Kamal Dasu <kdasu.kdev@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-i2c@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM2711, supported by ARCH_BCM2835, also has a controller by the
brcmstb driver so let's allow it to be compiled on that platform.

Cc: Kamal Dasu <kdasu.kdev@gmail.com>
Cc: Wolfram Sang <wsa@the-dreams.de>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: linux-i2c@vger.kernel.org
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/i2c/busses/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 2ddca08f8a76..6644e0faa3df 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -475,8 +475,8 @@ config I2C_BCM_KONA
 
 config I2C_BRCMSTB
 	tristate "BRCM Settop/DSL I2C controller"
-	depends on ARCH_BRCMSTB || BMIPS_GENERIC || ARCH_BCM_63XX || \
-		   COMPILE_TEST
+	depends on ARCH_BCM2835 || ARCH_BRCMSTB || BMIPS_GENERIC || \
+		   ARCH_BCM_63XX || COMPILE_TEST
 	default y
 	help
 	  If you say yes to this option, support will be included for the
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
