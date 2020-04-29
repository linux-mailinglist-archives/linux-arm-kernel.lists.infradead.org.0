Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A068D1BEC46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zs+RX4QzdWnDUS1kjKkKFIJMm08NoOdvd9Er3rXrp/E=; b=IBlAcxQVVuRlQe
	HnLRkz+bmmYJfNa0nvUh45lerkZYf6eN8sbh0p15OGDJPXUMKQoFOVRt3X+Eopc61v5RuszA4o5E0
	11OoiVBZCCtDleVA1g3ipekXViqWi8aTv0OF6++ZeOITCG0sgq7Xlx1d+wx0UY4KZQg+5TfDn7c7o
	BgvW93x+Ffk77izVwoNC91/905F6/CDlUZf5otTqkVTw7StjTuNik7UI3qm7CvzpLbrHG2fWjyHkY
	4bkUSYn4BnNccJwHgp/oLno3hiNE50quuABM7CpwEw3ZdmP9zPO4SXOxAwurvlxSIKx4sFQrH8+X8
	4sUCWF7sRod0vfIAKmAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTvfT-000665-I0; Wed, 29 Apr 2020 22:59:03 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTvel-0005db-MO
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 22:58:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id r26so3877753wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 15:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8HomwQkeOd7sLkeelNSzkxrfcFngr7K6iKYixnhDrD0=;
 b=Nb9q424hA8MmSuTQhjuFcPWqPQRtJi86sbrzVyaAN3L8bqnYsXevIEcbTzNwohVBfr
 QDnlSOdWuhDc8mXJkWfKz0yNDYSZEJ/WWCEjofRk6yCNNGU6H54hF12RZwxckSB0VWIc
 Sbzqex0nqmC06aK2Fon7F8ILcv5wFqeY3hQJAh6GuIThAMrL5Wo4TfAeNZptAPH4ye0u
 JxM/rI2KxxVRB1wZwAaQN7oHb3ja9/tRlb8yaNr4GY4c/QqwkzlbfUEAWUkhqyv4JO/9
 wQNI/Xl90CBgIQ3bInpUSviRMTJ/KYGDzG4YMKXJVfeG86VK7TaPp6j5urtK9QwxVl4n
 dZBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8HomwQkeOd7sLkeelNSzkxrfcFngr7K6iKYixnhDrD0=;
 b=aBTb1ZkvELR9XYq9Wzn7wBpajhojJS7Qlr1hg/GhHRWvMgR04twe9Fjt/AYruVAB0H
 KpuiyIaWmgwObeMq5ctJmEnKrcCHvtt4g/Jl411uI7rdnbN4E6RQegqTmtC6xQgFxSL6
 CuRStokE75boQ3TvxRKGQk0mdUKInEgy3mxNO0wj9KXyBsZNbq06pALbnJOrx7Ne5GDS
 dQ/eGODJ8C2OXd492BMhjcVVdGIay1pUkWQMGiEinukTN5fTlgNf4wkeyP2FF6NA+0BJ
 kXKxm26Fn+ny4WhnGRBfAJ+sZ7248f4iBWa8aEKkhF++HF3Iw8Z8majKl9ip4f1Skdl4
 CZ4g==
X-Gm-Message-State: AGi0PubNiupmQ7ur1ORU1NolyCip8ZO/mVbQmHG0xeSbzpkHUt/OuQ+P
 9TFozovUYwvaMFcxcLDTeg==
X-Google-Smtp-Source: APiQypJiHYIUBhW2se94qLAUyo/TCy0OKj1irvusJlLc5EPaOmX0lyr87p47FEujIOUm33Cy8Oaehg==
X-Received: by 2002:a1c:8049:: with SMTP id b70mr159994wmd.162.1588201097060; 
 Wed, 29 Apr 2020 15:58:17 -0700 (PDT)
Received: from ninjahost.lan (host-2-102-14-195.as13285.net. [2.102.14.195])
 by smtp.gmail.com with ESMTPSA id 91sm1247675wra.37.2020.04.29.15.58.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 15:58:16 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] spi: atmel: Add missing annotation for
 atmel_spi_next_xfer_dma_submit()
Date: Wed, 29 Apr 2020 23:57:23 +0100
Message-Id: <20200429225723.31258-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429225723.31258-1-jbi.octave@gmail.com>
References: <0/2>
 <20200429225723.31258-1-jbi.octave@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_155819_734203_62E84D0C 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbi.octave[at]gmail.com]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, netdev@vger.kernel.org,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sparse reports a warning at atmel_spi_next_xfer_dma_submit()

warning: context imbalance in atmel_spi_next_xfer_dma_submit()
	- unexpected unlock

The root cause is the missing annotation
	at atmel_spi_next_xfer_dma_submit()

Add the missing __must_hold(&as->lock) annotation

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/spi/spi-atmel.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/spi-atmel.c b/drivers/spi/spi-atmel.c
index 013458cabe3c..57ee8c3b7972 100644
--- a/drivers/spi/spi-atmel.c
+++ b/drivers/spi/spi-atmel.c
@@ -706,6 +706,7 @@ static void atmel_spi_next_xfer_pio(struct spi_master *master,
 static int atmel_spi_next_xfer_dma_submit(struct spi_master *master,
 				struct spi_transfer *xfer,
 				u32 *plen)
+	__must_hold(&as->lock)
 {
 	struct atmel_spi	*as = spi_master_get_devdata(master);
 	struct dma_chan		*rxchan = master->dma_rx;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
