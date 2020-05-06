Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F11921C659F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 03:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uPlPUHMQunnEWvj708uUaylPoZ0GkYxW4BsqJOBjaCs=; b=eI6a46yH8stkfh
	49L6HddZQTbyT1yFMWOmnUCXzKf8Qc9qJgt2Fno/+KfWxiP9pnNGOZJPm7oRYcAypMTnlWuJPMF36
	InYnnskOfLUsOA1IQoXthFuK/dXjplY/ysbVxnrnMYbXcEB4fTdy3MVHBC3BQSUaK4x3U48eptVrx
	kdxTmXJLy1X5ZD/MixKPyIY92AaS74adwNhND3nRFRExZFw+CV2V2e+WsRL/+juFgZhTvM/IzoHnd
	+53UPhP0SrPUsEWgcBhHVfjudMZTOcf/S4JNyL/8cJQsVbc/eOcVYGiPJ/K/DB1OyAmFshhb/d/DG
	5IpEUxHe6b86c9JN8KGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW94R-0007AI-Th; Wed, 06 May 2020 01:41:59 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW94K-00078Y-Ej
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 01:41:54 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id DB70C5C0194;
 Tue,  5 May 2020 21:41:40 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 05 May 2020 21:41:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=6qof28feycOj7oXv4ybcTJHnjd
 qJ6zUx8IqfTWIbE1I=; b=UmLgQNSZr83RxSjsk/oMMVG/Fv6CFzYFJdYaKQN47X
 Qd6kBINKPkMQWIWeEI9vlKC+59gIcOeTJPxn0gNfplW6B+ClsMSGXNnSDsNb9Zej
 SolI1ozO5NsjzsIEwI7QyDi1gOKUZ6C6tVDOiaHxr/AqTwVRi8UsDOfk2PtanBnq
 vHMtCRIFOTISHTZ1iQZA73N8ltjsuMj0A2JaHkbGhXwI3qd5IopC9vX3ULvBq8MR
 9ZZUN+q+uoUyggGtgiquCi7YoVhMI3aBenOq/FYS72KzoxubMIk16R3uYXsv4mgk
 +YMG9p3i76Tf6hJVNM6RlmVvPG91Zd/RFaWZjtL/X8bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=6qof28feycOj7oXv4
 ybcTJHnjdqJ6zUx8IqfTWIbE1I=; b=AyPqnU6ViPiTRpOqgOcOE1RV0vSeFzoM9
 jKdq1aIUyHJdIoA3GwkJjbGmc4zwXkajr+cJFhzmY8wbYn4FaONr2F6CphmULmby
 tYnwbwcY+UeBGZ0TcqrgngNVNe9rxqDJFwBtnu4pHYu4fPC2Iz1IvCufuWugOSya
 XR3+oHhMdGyySo4GDebg6VN4hnJWSRxkMhFJ2hNKDif3RnepE2uT/FwE0nVxGzGV
 XD3kaHZqdTuKwHITPDev5lGCDOQW11WRYXV6M7V3K2ziIuBmBW1EskclaaCnkwJw
 6mR/l95uv/0AiYoGOlT1y6SbGOxnC39aIeaUi9KpB//cXXGWt0mNA==
X-ME-Sender: <xms:0xWyXsPT0uG2QQMl9jHEXXyMfVI20Q4VaZYsi63d3viCF_CtmOUnAA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeejgdejiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghirhes
 rghlihhsthgrihhrvdefrdhmvgeqnecuggftrfgrthhtvghrnhepjeeliefhvdetgfdtte
 fhtdegffdtiefffeejiefffeevueeljeehjeevhfffueeknecukfhppeejfedrleefrdek
 gedrvddtkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpegrlhhishhtrghirhesrghlihhsthgrihhrvdefrdhmvg
X-ME-Proxy: <xmx:0xWyXuGBRUnFQhOgMmRjyZhcfsDuCxFNsKogtavSyrqr3lIMQylUGg>
 <xmx:0xWyXoqNPqkFiEdaiO2r6QBDwKExGVom4AUAmqccAxgnV8WK4-bcTw>
 <xmx:0xWyXkj_SWp2zTAuTsccebd-EJ_F4LJkGsIbzg3U4LLRMMxUOOvYDQ>
 <xmx:1BWyXv4u30d07gof82_-xf0McKCXgyRolVH7-md8LZFcNNL0ylrd-g>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9D3D630660F2;
 Tue,  5 May 2020 21:41:38 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: broonie@kernel.org,
	linux-spi@vger.kernel.org
Subject: [PATCH] spi: sun6i: Add support for GPIO chip select lines
Date: Tue,  5 May 2020 18:41:35 -0700
Message-Id: <20200506014135.2941967-1-alistair@alistair23.me>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_184152_630109_CFA28ACE 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alistair Francis <alistair@alistair23.me>, linux-kernel@vger.kernel.org,
 mripard@kernel.org, wens@csie.org, alistair23@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a setup function that can be used to support using generic GPIO
lines for the chip select.

Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
 drivers/spi/spi-sun6i.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/spi/spi-sun6i.c b/drivers/spi/spi-sun6i.c
index ec7967be9e2f..fd4e19434942 100644
--- a/drivers/spi/spi-sun6i.c
+++ b/drivers/spi/spi-sun6i.c
@@ -10,6 +10,7 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/device.h>
+#include <linux/gpio.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/module.h>
@@ -171,6 +172,31 @@ static inline void sun6i_spi_fill_fifo(struct sun6i_spi *sspi, int len)
 	}
 }
 
+static int sun6i_spi_setup(struct spi_device *spi)
+{
+	int ret;
+
+	/* sanity check for native cs */
+	if (spi->mode & SPI_NO_CS)
+		return 0;
+	if (gpio_is_valid(spi->cs_gpio)) {
+		/* with gpio-cs set the GPIO to the correct level
+		 * and as output (in case the dt has the gpio not configured
+		 * as output but native cs)
+		 */
+		ret = gpio_direction_output(spi->cs_gpio,
+					    (spi->mode & SPI_CS_HIGH) ? 0 : 1);
+		if (ret)
+			dev_err(&spi->dev,
+				"could not set gpio %i as output: %i\n",
+				spi->cs_gpio, ret);
+
+		return ret;
+	}
+
+	return 0;
+}
+
 static void sun6i_spi_set_cs(struct spi_device *spi, bool enable)
 {
 	struct sun6i_spi *sspi = spi_master_get_devdata(spi->master);
@@ -470,6 +496,7 @@ static int sun6i_spi_probe(struct platform_device *pdev)
 
 	master->max_speed_hz = 100 * 1000 * 1000;
 	master->min_speed_hz = 3 * 1000;
+	master->setup = sun6i_spi_setup;
 	master->set_cs = sun6i_spi_set_cs;
 	master->transfer_one = sun6i_spi_transfer_one;
 	master->num_chipselect = 4;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
