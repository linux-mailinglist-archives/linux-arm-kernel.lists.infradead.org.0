Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9819D1C83CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LehxK87UA5bekaGjXmP0jKnXKdB8PNv+zkT+T0nyBCg=; b=XU7
	3nOzcpWLfUlmZAc5aXe84lK4e5/Vtiuo0WBZEul+IGB98/f1SCN7SDuSnKT92VnIYlXd4fdrTjbk+
	7oSce5Ab9+zctMKq1NIAZJ1tgtDN9kXWVPFwAlxlrniNTab+u0wPifniGTrpYXkeXBZZqPcrvVdvm
	It1W/VXGEeJXH1RID0QTjxMqCj2PN+pff3a2n2Msdqe4INDCxIAHzhZTVTl8A+Ece2aEn/Jo/eNtc
	Ts+f26wwjijFMOGqrsgDOVp5tAdiY8ccWUOGLStK/34VRumvVix1Bz+rb8Qg9BpYyVkwOkTKQue2C
	RvGXlGLjSrb/rLb6ywdj7D+zdWUBkNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbGP-0004Io-EI; Thu, 07 May 2020 07:48:13 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbG5-0004FP-Pk
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:47:55 +0000
Received: by mail-pg1-x544.google.com with SMTP id s18so2157056pgl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 00:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=q5Ur7h/8oNS0E2jiQqG3CicZ1bVNQn1Ydx7PFOHfa0s=;
 b=nNK4mY30ZNBYGbfOU+9i5o2jliUC1LdhvxIJ2ZO87SudcPGAnnFGXbZTMsiXEhwf7m
 Jxa73CekYqgCYnngBhiH1dCEkQZx5geSyKkBb4tD3ed0mreP1TbtJF6I7utnMGZuxlJv
 UODBWl6EmEvGefGxcmQyFBCQHVuBAYlKkj8VIut7+kLcEFiUF9992hEEULeLWFjr8smb
 6fTBJ/6SdubUjWLX2TdgTQd6rFTb7xmuk6po5xbC9TphHS4l5Wu+/tjRoN7j98f/G8n4
 XX7RU/9p/ZlZQR8NDpC6S+VulMYfNZti2D9v2v+LZAwczBAjrT0ZAigxbfSzHUbTgaya
 g8Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=q5Ur7h/8oNS0E2jiQqG3CicZ1bVNQn1Ydx7PFOHfa0s=;
 b=RF3T7n5vrS7welT13XOnthUVdog/t5qUU9tSfbR/q3Rz9CqqaDL4PC9MnNggLzbn9g
 9UBaeHNQY4/bbqxjCZ621ZYml/AgPl2G40L9Q8r6BfoqFa25r3rWnRJO15I9D8V5GVlM
 Jziy+2VCwCmDvSfm6C+cYYBOx4WWldqwZyf5Wm1m0WEng8VkLY6kigCRDguzLUgAS8s6
 IvcplyfJVILp5lZd1qze5gvVwmPSsRuEj+zOvz1LWUsQ20Vp9iE2JkwJp/usPixrVAcr
 yehZJw0mFqoYMtEkRpvwaCx4ZivPihafRpZOcPYUv21it0vJ5VRDXTMeTOlw5/+O/OP2
 VaSg==
X-Gm-Message-State: AGi0PubSOeZYximy/N3I7t0QfZg86MvJIi91nup1550Vq+ZDCNqpdc9+
 gNALQBVugzscepLT5OCYWxTh9a/UNK4=
X-Google-Smtp-Source: APiQypK4+BjtFPLf7XUZYBks21yWMjx7sY/apqXRD4CHcybnZTffrS+tMmDbVXT+H0leMJa4udLt0A==
X-Received: by 2002:a63:41c2:: with SMTP id
 o185mr10336106pga.139.1588837673184; 
 Thu, 07 May 2020 00:47:53 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id w192sm1146271pff.126.2020.05.07.00.47.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 00:47:52 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH 4/4] i2c: stm32f4: Fix stmpe811 get xyz data timeout issue
Date: Thu,  7 May 2020 15:47:49 +0800
Message-Id: <1588837669-14362-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_004753_840911_6B45F725 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
