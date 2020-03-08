Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD5D17D1FC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 07:01:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=n6yq5fVh2IaX8Hw0CIS1TWuxssExlT1cDnm7R3gO+5M=; b=T0j
	NnSTOvfNTLUe4UcrCZ8YWObhcAC2zkpzrV3MwbbDOO5zv+DdD1ZQzTcr37g+QvU4ijd0gPE7AcQZh
	kMvRaTBfpv29HLU11mmOtlziZXV2/4oNMnRx4Muae+aOGWXvmg+Om26yDVLI6CBS8gyW/nCNRy7Ba
	qlDVKgT5o6CWInHQhvcskphX8urQzgHdZq+ZiznntWi2tnRgullWvs/0K/Mk7h67rHJXvfCF3ZcyQ
	x9r3x6t1mKyxpSkmiBYyDMF0TwbH5LTSeGEGis2nKGlv2lOWmWswZJGHqy5PwgPfye0uTG2IWM8mQ
	I/PnF/bru572l/2hjhAQISy+wr6J5OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAozu-0000mn-GJ; Sun, 08 Mar 2020 06:01:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAozl-0000m4-J0
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 06:01:03 +0000
Received: by mail-pf1-x441.google.com with SMTP id i13so3308927pfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Mar 2020 22:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Nj+26QvFCgpaOHrw23MsZ4NAuEdSFH7yEAjrK++Ph7Q=;
 b=ohLVqCZz9ZojWIUPgcMSqQIPWwojo/6mzc71lhE48LHeFgJxOmmVwdgdPBpmL1iDQO
 U9jROmGe8Yx5d35U5P4flLgvzyFNmAY6de6jbRaGf/hg4gERmcQUjcm6PstFd6WjRopj
 POLd7iVt7NLAvjST3yvpJTAYsS31oGABAD6YRv12FXb7h7vsSUJeGfHddG0Imz3U5h3t
 AqsaPoeSJpLcwBloOAGGsHdzb/e8rSnH0nE/sEtHCdTPzZqLtWcWJSmLq77sooRG9sEX
 NRsym+L6Ju1OBB3JJVqslN6C7ZzlnFvZaXUr4TXulNYIAVv0n18tyq7OgztF4f+VPnnE
 YO0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Nj+26QvFCgpaOHrw23MsZ4NAuEdSFH7yEAjrK++Ph7Q=;
 b=P2vWKvTHLbTW2zUA+X04e0KRi1G1A5TYbJfocnHObIIZAi0q/jLg95qhn2m+JRek0x
 rt26lLtSXZ+OPNPH+id3+Kgc7fcgF0i/Qoe9+xkt3xyXYCxWQN4maHt7ZmdccnYj4v5j
 uUI+ryQVQszbyZA2yIqusszc48jkkO+YpazOa63+59Ze8oTDHuf+uqWfbnCCV7ApdpZq
 M+AJGm4NJm5yXv9e/e93yZZ3kb2aE8NtUvcECEk9jvf5vWxKJHPY6Ga/XqQgHRshLdbD
 bQ5oyDfhQf+1fM21T7oQPvTerkfF3cwabcKgh/0JdYVUY4lcrKC/VTfIW7GQpdf6tVdN
 OenA==
X-Gm-Message-State: ANhLgQ0cei5OdcvkUTX0dImr/eM4FQJOx2fpEr94YDJY+4hKiXy/k3yk
 jKXsaxQGleSSIY3gBaCTngo=
X-Google-Smtp-Source: ADFU+vt2Xz7+USz64L6//xelwLrvzVvwplLv4CLEaJIuDQbH02H0pJn7CyGnd6EjkOX4Ul/JTOO07g==
X-Received: by 2002:a63:1044:: with SMTP id 4mr10987545pgq.412.1583647260210; 
 Sat, 07 Mar 2020 22:01:00 -0800 (PST)
Received: from localhost.localdomain ([149.129.63.152])
 by smtp.gmail.com with ESMTPSA id 185sm33483620pfv.104.2020.03.07.22.00.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Mar 2020 22:00:59 -0800 (PST)
From: Jianhui Zhao <zhaojh329@gmail.com>
To: herbert@gondor.apana.org.au
Subject: [PATCH] crypto: atmel-i2c - Fix wakeup fail
Date: Sun,  8 Mar 2020 14:00:53 +0800
Message-Id: <20200308060053.23515-1-zhaojh329@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_220101_651407_7C0223BA 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhaojh329[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhaojh329[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, Jianhui Zhao <zhaojh329@gmail.com>,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The wake token cannot be sent without ignoring the nack for the
device address

Signed-off-by: Jianhui Zhao <zhaojh329@gmail.com>
---
 drivers/crypto/atmel-i2c.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/atmel-i2c.c b/drivers/crypto/atmel-i2c.c
index 1d3355913b40..13624cde67e8 100644
--- a/drivers/crypto/atmel-i2c.c
+++ b/drivers/crypto/atmel-i2c.c
@@ -3,6 +3,7 @@
  * Microchip / Atmel ECC (I2C) driver.
  *
  * Copyright (c) 2017, Microchip Technology Inc.
+ * Copyright (c) 2020 Jianhui Zhao <zhaojh329@gmail.com>
  * Author: Tudor Ambarus <tudor.ambarus@microchip.com>
  */
 
@@ -176,7 +177,8 @@ static int atmel_i2c_wakeup(struct i2c_client *client)
 	 * device is idle, asleep or during waking up. Don't check for error
 	 * when waking up the device.
 	 */
-	i2c_master_send(client, i2c_priv->wake_token, i2c_priv->wake_token_sz);
+	i2c_transfer_buffer_flags(client, i2c_priv->wake_token,
+				i2c_priv->wake_token_sz, I2C_M_IGNORE_NAK);
 
 	/*
 	 * Wait to wake the device. Typical execution times for ecdh and genkey
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
