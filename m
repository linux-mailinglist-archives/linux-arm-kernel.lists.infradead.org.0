Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEA51F3C65
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NP/0kmE1omnQMrCj1WX/0M/PUfWoYMK6cyEgV5oJsWk=; b=ZobSEhtbfPp1rob42+ArTWmzXj
	O4/JVY45gWU17BDnZ2U9PK7XSLaoZtDenroClNuE+bZTQbrF3cZwA/v3iuwlvUhVhJ4mvEcBAvZD0
	TU38kRZ7tYaTh3jtfWnBx2Odg2Kmol6QAnbvbMQP/eYGK/n17xyAzyagIBkfLsaEppElPZHnMpDEa
	3yavhL7V3z2gHt8KCsIFZwIaTP9/Cx/lKj1PaygGlmDATdM6R45/TryPvOig5nOjkzCT4B2LkqfBK
	xb+xH3Mjo3lyIS0P6GFhXZmIMPX0tgXAs5FNPAdpVr9GXzmeMzgH2KRpa7SBi3Dm2CE268XliQVYK
	mvP/0v3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieId-0003qb-S8; Tue, 09 Jun 2020 13:28:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieHP-0002sU-2e
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:27:04 +0000
Received: by mail-pg1-x542.google.com with SMTP id e18so268256pgn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 06:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kSIhf0lGTJhWcv+DccCkvFsMqMLpno9qIeBkBoJLMSQ=;
 b=miEUbzjcd4ryUuKvQRtvf6dPM1igWZ99p8Q6FEwRjbx4OnKVBKqoYcgFbYQa5F0CiQ
 rad6clrM7rHVgJjWaSGo+06n0jk3qugJoFhZ4uC0qWxdyIT7OsuLI2/YDruuF8Z4O1tE
 3XN5SBV4IyX/VaBuWAY0GE0AqxS6UYPKNE6P36cTd2+X9MqvjpDifrfLKMc7i/xQMqjI
 0Jpz/z0K3veRZWdMO4osYMwcAjH9FlU16JqTA5cQjsc0gOOqUvfPxAU2tZRhWde0L8Zi
 TU7lbJxux9j2OvqpbG0zJUIieSCW7zCWuGtwSDwgsR2FLhku1pZlyh+CPVWh2iayMnyj
 JFHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kSIhf0lGTJhWcv+DccCkvFsMqMLpno9qIeBkBoJLMSQ=;
 b=Nyxwd/qGruA4d5m67iVUCTXqNXvfcmNzPisWH6yhxxuMFNxzLwvHzWDCdpwf4JY4Xr
 +5OPxzmxa/D6nAGJt3KcGAwAnoB8k7UiryNxwvHab1YFxEgvO1bQz/k4YHUyPDARtteL
 VGiY+0f+h0l2eS1I50MJOuXsiITmJuNuKfpwT/nCO8RGG5o9pEXGrkKfnFlL77TuX6W+
 fBcrErUQDcGbPYP8hkNK5leLW6Q8f7CCVj9UjOvOlbRJ0XTdH2PMDMtcMrlGTdXPQKjV
 u6ydUCbbMS66dQPBoY/4Eh/T4oDth6cZWsZlquludpoKXgY3x+zV152MMaPfSQSGKPG6
 IJBw==
X-Gm-Message-State: AOAM532UzPQG0AjWyUOr20bc7C1K17QIu7qE/FreZ6fVe+t8hzx7RkbD
 ylss+N7nVl7UfDVolpmuJJA=
X-Google-Smtp-Source: ABdhPJygotx9ln59z0STkYKtMU1xO9pxH7iXYS1GxlB8u1JiD2/tkQhL5M40gjWnv1oxbN80JE9mRA==
X-Received: by 2002:a63:a36e:: with SMTP id v46mr23872632pgn.378.1591709222448; 
 Tue, 09 Jun 2020 06:27:02 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.42])
 by smtp.gmail.com with ESMTPSA id b5sm2624348pjz.34.2020.06.09.06.26.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 06:27:02 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 p.zabel@pengutronix.de, pierre-yves.mordret@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH v4 4/4] i2c: stm32f4: Fix stmpe811 get xyz data timeout issue
Date: Tue,  9 Jun 2020 21:26:43 +0800
Message-Id: <1591709203-12106-5-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591709203-12106-1-git-send-email-dillon.minfei@gmail.com>
References: <1591709203-12106-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_062703_142472_C7BE68EB 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

as stm32f429's internal flash is 2Mbytes and compiled kernel
image bigger than 2Mbytes, so we have to load kernel image
to sdram on stm32f429-disco board which has 8Mbytes sdram space.

based on above context, as you knows kernel running on external
sdram is more slower than internal flash. besides, we need read 4
bytes to get touch screen xyz(x, y, pressure) coordinate data in
stmpe811 interrupt.

so, in stm32f4_i2c_handle_rx_done, as i2c read slower than running
in xip mode, have to adjust 'STOP/START bit set position' from last
two bytes to last one bytes. else, will get i2c timeout in reading
touch screen coordinate.

to not take side effect, introduce IIC_LAST_BYTE_POS to support xip
kernel or has mmu platform.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---

V4: indroduce 'IIC_LAST_BYTE_POS' to compatible with xipkernel boot

 drivers/i2c/busses/i2c-stm32f4.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32f4.c b/drivers/i2c/busses/i2c-stm32f4.c
index d6a69dfcac3f..97cf42ae7fa0 100644
--- a/drivers/i2c/busses/i2c-stm32f4.c
+++ b/drivers/i2c/busses/i2c-stm32f4.c
@@ -93,6 +93,12 @@
 #define STM32F4_I2C_MAX_FREQ		46U
 #define HZ_TO_MHZ			1000000
 
+#if !defined(CONFIG_MMU) && !defined(CONFIG_XIP_KERNEL)
+#define IIC_LAST_BYTE_POS 1
+#else
+#define IIC_LAST_BYTE_POS 2
+#endif
+
 /**
  * struct stm32f4_i2c_msg - client specific data
  * @addr: 8-bit slave addr, including r/w bit
@@ -439,7 +445,7 @@ static void stm32f4_i2c_handle_rx_done(struct stm32f4_i2c_dev *i2c_dev)
 	int i;
 
 	switch (msg->count) {
-	case 2:
+	case IIC_LAST_BYTE_POS:
 		/*
 		 * In order to correctly send the Stop or Repeated Start
 		 * condition on the I2C bus, the STOP/START bit has to be set
@@ -454,7 +460,7 @@ static void stm32f4_i2c_handle_rx_done(struct stm32f4_i2c_dev *i2c_dev)
 		else
 			stm32f4_i2c_set_bits(reg, STM32F4_I2C_CR1_START);
 
-		for (i = 2; i > 0; i--)
+		for (i = IIC_LAST_BYTE_POS; i > 0; i--)
 			stm32f4_i2c_read_msg(i2c_dev);
 
 		reg = i2c_dev->base + STM32F4_I2C_CR2;
@@ -463,7 +469,7 @@ static void stm32f4_i2c_handle_rx_done(struct stm32f4_i2c_dev *i2c_dev)
 
 		complete(&i2c_dev->complete);
 		break;
-	case 3:
+	case (IIC_LAST_BYTE_POS+1):
 		/*
 		 * In order to correctly generate the NACK pulse after the last
 		 * received data byte, we have to enable NACK before reading N-2
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
