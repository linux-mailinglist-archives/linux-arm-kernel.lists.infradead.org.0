Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0652917531
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 11:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=xBiUMWmfjl2finvyTlRzYvTtI2iaOnqkB1Jq1UVvkQQ=; b=Ucw
	G7Z2xs5ODIHLWZwDvSfkzVOTljZ0DE80DLV2AmNLA/fyKsOHrMsO9VK7eH9udvprZqhrsMp4XWM0e
	EnREQMMAhnNQ3wVlHL1IQ8oemhlFdHKrp7+2hKezky6l7PuICIrfoNZkBM9ICk0q715FczDHDLkEg
	THYaLZ975hq/iDuefWcGoiNTbakmARODavY0podoMvZveBzeXwKTDFSlQ7ITK/UsY8gQn+7RXzxjB
	jpGTksgM0+SFzmiuzBVyyWReUsIpAVun1lOGBLOy+KwY2+HaVnhLEjUooB5QG9e6XV2GkWL1dk4rt
	XiKuPeHRkL1Qwpmm4hCmkkOKbfctnig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIyp-0003MP-O9; Wed, 08 May 2019 09:35:15 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOIyi-0002gc-3B; Wed, 08 May 2019 09:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=rYwKAqsrEof0qyuwbZ2hkS4MGRZ8gZ9xn/6j5WvviGw=; b=BBpNUEVqLMZB
 +bVduJuVcS29qdjZt32Y4Vy0/a6iNeKoSrSIwn91DJjgQa9++v4mgnwUFjWz22zmveJITGGjpVOr3
 Ejx69ZUrCOHRJT2cDCFY7VOSXeOdlyuNKrAXlR5G9mGLvISegpNXIGhcQwhOZ2yvckiGK/KKVQp6E
 xNVj0=;
Received: from [61.199.190.11] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hOIya-0007l9-EE; Wed, 08 May 2019 09:35:01 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 0BE15440010; Wed,  8 May 2019 10:34:55 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Martin Sperl <kernel@martin.sperl.org>
Subject: Applied "spi: core: allow defining time that cs is deasserted" to the
 spi tree
In-Reply-To: <20190223084952.14758-2-kernel@martin.sperl.org>
X-Patchwork-Hint: ignore
Message-Id: <20190508093455.0BE15440010@finisterre.sirena.org.uk>
Date: Wed,  8 May 2019 10:34:54 +0100 (BST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_023508_306963_6B1BC98F 
X-CRM114-Status: GOOD (  23.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-spi@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: core: allow defining time that cs is deasserted

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 0ff2de8bb163551ec4230a5a6f3c40c1f6adec4f Mon Sep 17 00:00:00 2001
From: Martin Sperl <kernel@martin.sperl.org>
Date: Sat, 23 Feb 2019 08:49:48 +0000
Subject: [PATCH] spi: core: allow defining time that cs is deasserted

For some SPI devices that support speed_hz > 1MHz the default 10 us delay
when cs_change = 1 is typically way to long and may result in poor spi bus
utilization.

This patch makes it possible to control the delay at micro or nano second
resolution on a per spi_transfer basis. It even allows an "as fast as
possible" mode with:
    xfer.cs_change_delay_unit = SPI_DELAY_UNIT_NSECS;
    xfer.cs_change_delay = 0;

The delay code is shared between delay_usecs and cs_change_delay for
consistency and reuse, so in the future this change_delay_unit could also
apply to delay_usec as well.

Note that on slower SOCs/CPU actually reaching ns deasserts on cs is not
realistic as the gpio overhead alone (without any delays added ) may
already leave cs deasserted for more than 1us - at least on a raspberry pi.
But at the very least this way we can keep it as short as possible.

Signed-off-by: Martin Sperl <kernel@martin.sperl.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi.c       | 59 ++++++++++++++++++++++++++++++++++-------
 include/linux/spi/spi.h |  7 +++++
 2 files changed, 56 insertions(+), 10 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 5e75944ad5d1..7e8ffe3fdc00 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1090,6 +1090,52 @@ static int spi_transfer_wait(struct spi_controller *ctlr,
 	return 0;
 }
 
+static void _spi_transfer_delay_ns(u32 ns)
+{
+	if (!ns)
+		return;
+	if (ns <= 1000) {
+		ndelay(ns);
+	} else {
+		u32 us = DIV_ROUND_UP(ns, 1000);
+
+		if (us <= 10)
+			udelay(us);
+		else
+			usleep_range(us, us + DIV_ROUND_UP(us, 10));
+	}
+}
+
+static void _spi_transfer_cs_change_delay(struct spi_message *msg,
+					  struct spi_transfer *xfer)
+{
+	u32 delay = xfer->cs_change_delay;
+	u32 unit = xfer->cs_change_delay_unit;
+
+	/* return early on "fast" mode - for everything but USECS */
+	if (!delay && unit != SPI_DELAY_UNIT_USECS)
+		return;
+
+	switch (unit) {
+	case SPI_DELAY_UNIT_USECS:
+		/* for compatibility use default of 10us */
+		if (!delay)
+			delay = 10000;
+		else
+			delay *= 1000;
+		break;
+	case SPI_DELAY_UNIT_NSECS: /* nothing to do here */
+		break;
+	default:
+		dev_err_once(&msg->spi->dev,
+			     "Use of unsupported delay unit %i, using default of 10us\n",
+			     xfer->cs_change_delay_unit);
+		delay = 10000;
+	}
+	/* now sleep for the requested amount of time */
+	_spi_transfer_delay_ns(delay);
+}
+
 /*
  * spi_transfer_one_message - Default implementation of transfer_one_message()
  *
@@ -1148,14 +1194,8 @@ static int spi_transfer_one_message(struct spi_controller *ctlr,
 		if (msg->status != -EINPROGRESS)
 			goto out;
 
-		if (xfer->delay_usecs) {
-			u16 us = xfer->delay_usecs;
-
-			if (us <= 10)
-				udelay(us);
-			else
-				usleep_range(us, us + DIV_ROUND_UP(us, 10));
-		}
+		if (xfer->delay_usecs)
+			_spi_transfer_delay_ns(xfer->delay_usecs * 1000);
 
 		if (xfer->cs_change) {
 			if (list_is_last(&xfer->transfer_list,
@@ -1163,7 +1203,7 @@ static int spi_transfer_one_message(struct spi_controller *ctlr,
 				keep_cs = true;
 			} else {
 				spi_set_cs(msg->spi, false);
-				udelay(10);
+				_spi_transfer_cs_change_delay(msg, xfer);
 				spi_set_cs(msg->spi, true);
 			}
 		}
@@ -3757,4 +3797,3 @@ static int __init spi_init(void)
  * include needing to have boardinfo data structures be much more public.
  */
 postcore_initcall(spi_init);
-
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 053abd22ad31..023beb9e9e4b 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -735,6 +735,9 @@ extern void spi_res_release(struct spi_controller *ctlr,
  * @bits_per_word: select a bits_per_word other than the device default
  *      for this transfer. If 0 the default (from @spi_device) is used.
  * @cs_change: affects chipselect after this transfer completes
+ * @cs_change_delay: delay between cs deassert and assert when
+ *      @cs_change is set and @spi_transfer is not the last in @spi_message
+ * @cs_change_delay_unit: unit of cs_change_delay
  * @delay_usecs: microseconds to delay after this transfer before
  *	(optionally) changing the chipselect status, then starting
  *	the next transfer or completing this @spi_message.
@@ -824,6 +827,10 @@ struct spi_transfer {
 	u8		bits_per_word;
 	u8		word_delay_usecs;
 	u16		delay_usecs;
+	u16		cs_change_delay;
+	u8		cs_change_delay_unit;
+#define SPI_DELAY_UNIT_USECS	0
+#define SPI_DELAY_UNIT_NSECS	1
 	u32		speed_hz;
 	u16		word_delay;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
