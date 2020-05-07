Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 986E81C87DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LehxK87UA5bekaGjXmP0jKnXKdB8PNv+zkT+T0nyBCg=; b=X3y
	yeOdA2MnmYJBSk+bk5wGTcTZH1gpiBJ8Ie15n5l3OzEBLU04DIZ9UZ2GOCV+vLXAai3lyXyGzf+wI
	+YNj9AwOY6vK3x9u7Oq8kiEMzMIIoYVqusTuK29p54f8MJxCukhJejOzI0Nc+2vim5JZppXU6PsLQ
	DrpvNL2t1RutOZLrI4GKwHOM59BUjx377WoFJGLTtlg0ef/TwE1bTlIgPPY1h3EDoXWwa877CvCcW
	fJITlAI3Xr69IizEcYW/+rGJTtJ51Kp7r5FXWoLc3KOKT3Fg59Ts+Bdu7g/OomtkHgFjE8oiYlQm4
	3guPM40emJqfsGIX8iU82xWoi2Opi7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeVg-0002EM-9K; Thu, 07 May 2020 11:16:12 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeVP-000298-R9
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:15:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id z1so2862994pfn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 04:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=q5Ur7h/8oNS0E2jiQqG3CicZ1bVNQn1Ydx7PFOHfa0s=;
 b=vR5ulAiFzgiMVcgSPCb6i5yphLLVEtvHKU/b5abZlIFH43323JlPd5KMMStpRnXzBh
 WaI6/rirsojCkduRRV/ISOPLZmdiIuEpB57Y1eFvwFAo8LqTyxDXcix6QMLHG7BFeobo
 jgZi1O968NO0xyNItwoWpBW2XGhT4JWh3z8hpxUjrVpoDc3RGTxwtkEfTzM5pn8eGh4h
 UQdlyay/n0BgUc6MZhoACDDKw6l24cg92w0h6UUWWg0eE2Prim1/PQhMkJcNBe6RLvi2
 XmVGQw0ZN0XpQToieiNZ50lWcepk2YyOIh4UtDooZjjoniNj8hGu+QqrRLEqcvwUpPvn
 uIQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=q5Ur7h/8oNS0E2jiQqG3CicZ1bVNQn1Ydx7PFOHfa0s=;
 b=jTe68i9U6nNjvm/3Cbun8sK9usX72P44DoYvbE7+y4O/Z5L58LCwDpfFS0ZlFJroH3
 Uc2g59FqjLXwgiblDfjVcwL0yYp8gKXOfL0V/22leUQYUmT4iG4SsDbGTq0XsUGCzN6T
 6hRO3kiAE6Vj4JFlNBgd/UwvI6kNehQ0rxnln3g/dtYC6UOHYYYcmFqP1/4JdPHc2omk
 DT2sVjCfLuyVEJyNk+XRl4jvCPLSQORWIY0xDfhNnyjdveNssAAaD0jfKdGfp5PCWn8Y
 BpSsG4/ek9hyQofNzoAXEKQx5WRIwfYlLPkjTBilyAr2c/moQMU52rbbNZEBNW87aXkI
 IhUA==
X-Gm-Message-State: AGi0PubqAKsKQobs298FBWJgaHlfGJy2h44c3xkP5DUZ9EcF6/IRFnK+
 1wVJezadm7AabkkeZaWZ4b0tLVpJjBI=
X-Google-Smtp-Source: APiQypIkSq2sEnKfRxF2yLpUtwLsawR7IO0elGcrndZ1UHxIKE6n1f7LU+bM9YsoKY6q1jiE71yOWQ==
X-Received: by 2002:a63:f70e:: with SMTP id x14mr10338566pgh.394.1588850154438; 
 Thu, 07 May 2020 04:15:54 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id d184sm4492752pfc.130.2020.05.07.04.15.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 04:15:53 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH V2 4/4] i2c: stm32f4: Fix stmpe811 get xyz data timeout issue
Date: Thu,  7 May 2020 19:15:49 +0800
Message-Id: <1588850149-24393-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_041555_919993_23CA1D09 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

As stm32f429's internal flash is 2Mbytes and compiled kernel
image bigger than 2Mbytes, so we have to load kernel image
to sdram on stm32f429-disco board which has 8Mbytes sdram space.

based on above context, as you knows kernel running on external
sdram is more slower than internal flash. besides, we need read 4
bytes to get touch screen xyz(x, y, pressure) coordinate data in
stmpe811 interrupt.

so, in stm32f4_i2c_handle_rx_done, as i2c read slower than running
in xip mode, have to adjust 'STOP/START bit set time' from last two
bytes to last one bytes. else, will get i2c timeout in reading
touch screen coordinate.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 drivers/i2c/busses/i2c-stm32f4.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32f4.c b/drivers/i2c/busses/i2c-stm32f4.c
index d6a69df..83004f2 100644
--- a/drivers/i2c/busses/i2c-stm32f4.c
+++ b/drivers/i2c/busses/i2c-stm32f4.c
@@ -439,7 +439,7 @@ static void stm32f4_i2c_handle_rx_done(struct stm32f4_i2c_dev *i2c_dev)
 	int i;
 
 	switch (msg->count) {
-	case 2:
+	case 1:
 		/*
 		 * In order to correctly send the Stop or Repeated Start
 		 * condition on the I2C bus, the STOP/START bit has to be set
@@ -454,7 +454,7 @@ static void stm32f4_i2c_handle_rx_done(struct stm32f4_i2c_dev *i2c_dev)
 		else
 			stm32f4_i2c_set_bits(reg, STM32F4_I2C_CR1_START);
 
-		for (i = 2; i > 0; i--)
+		for (i = 1; i > 0; i--)
 			stm32f4_i2c_read_msg(i2c_dev);
 
 		reg = i2c_dev->base + STM32F4_I2C_CR2;
@@ -463,7 +463,7 @@ static void stm32f4_i2c_handle_rx_done(struct stm32f4_i2c_dev *i2c_dev)
 
 		complete(&i2c_dev->complete);
 		break;
-	case 3:
+	case 2:
 		/*
 		 * In order to correctly generate the NACK pulse after the last
 		 * received data byte, we have to enable NACK before reading N-2
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
