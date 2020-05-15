Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7842C1D56A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HaxSJCo5G3fkZ5ecXRchausm6xPMPKVd/Wn0RNgDCF0=; b=mpvoAR7x16qXtPVtAXocxbS1Ge
	CZ/S2ET908bSpyMfrk/tmb72vJ8AyIs1vh0M5DwoJuGGvawyfihtXNpIFnjYyzlBK9DRvGoBz1H3m
	PSl2t8lD18fWhMOgGe//PGpCg70Cj2ygv6nmsYhhwevgcvtwHGs5y1TWGACwt10ujy7D0BfqwVONs
	dUVyNV6arzv/myVKXBRaiuubMKtnJJUKxTupoBsNvgyu1JgW1zh3ChLDPOVG3slhVGBBKjCXYk3v0
	woU0P2C9AHf/AeqJZJT0KQpy9xcO7oKq1/4xVoqu1sR+ttvHqi/czZCl4j2cYHm6JRHMP6xxVS0P7
	VqD3OGMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdZB-0007tW-8O; Fri, 15 May 2020 16:52:09 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdZ2-0007t8-4E
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 16:52:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 67BB42A32FD
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-input@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
Subject: [PATCHv2 1/7] Input: add input_device_enabled()
Date: Fri, 15 May 2020 18:51:51 +0200
Message-Id: <20200515165151.28670-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515164943.28480-1-andrzej.p@collabora.com>
References: <20200515164943.28480-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_095200_298673_81D49B11 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Nick Dyer <nick@shmanahar.org>, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A helper function for drivers to decide if the device is used or not.
A lockdep check is introduced as inspecting ->users should be done under
input device's mutex.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/input/input.c | 8 ++++++++
 include/linux/input.h | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index 3cfd2c18eebd..41377bfa142d 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -2127,6 +2127,14 @@ void input_enable_softrepeat(struct input_dev *dev, int delay, int period)
 }
 EXPORT_SYMBOL(input_enable_softrepeat);
 
+bool input_device_enabled(struct input_dev *dev)
+{
+	lockdep_assert_held(&dev->mutex);
+
+	return dev->users > 0;
+}
+EXPORT_SYMBOL_GPL(input_device_enabled);
+
 /**
  * input_register_device - register device with input core
  * @dev: device to be registered
diff --git a/include/linux/input.h b/include/linux/input.h
index 56f2fd32e609..eda4587dba67 100644
--- a/include/linux/input.h
+++ b/include/linux/input.h
@@ -502,6 +502,8 @@ bool input_match_device_id(const struct input_dev *dev,
 
 void input_enable_softrepeat(struct input_dev *dev, int delay, int period);
 
+bool input_device_enabled(struct input_dev *dev);
+
 extern struct class input_class;
 
 /**
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
