Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732371CA04A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 03:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6iOSgp5OKyC92gzhiDbAgOTruRred/HfJfko/X2w+Ck=; b=suZAHi9DJSZCvtVr1XVJ06LSHD
	jnMYfvnu9bX7jSvyozMmwpw5he4a0pciXshocL3WqNL6Z+3m+Ti/QBB1F27TuGfBrR2VDb2t3XG7l
	SdcLdyH+IWT0XD/UQ6UayBrWbVvwX0SIrcZv3hI9LBiUc+7hV6ORzbQPee0ehTszCzrO5R2FgJaIK
	sdft5DGUSXhTj0j17dUH/Z/bZ9+hFN5d98xQzxKK1/z76oN/XPwr1xhJkpruO/JHv4TzeI54STo4A
	7c0VrCOqkwyN4hmLAUO64IyjyGSwqqm5ReidNyTP5yw0AIL0rveHlwjeLo9YCA9hw21ywGs5+aZvF
	TTsQFt/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWs7G-0005Gt-E4; Fri, 08 May 2020 01:47:54 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWs68-0004OG-FW
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 01:46:46 +0000
Received: by mail-pf1-x441.google.com with SMTP id d184so99926pfd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 18:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YPET1s2LAGhUOXmbuGCWG2lOM9gQW5zcHOoGqo8jUto=;
 b=gSsPcfh/FmLMFO8F/e1XknD3JIM2pA62uVJim6lR2mvj0H1qriC2lddSShZQTFLpbY
 ALw0zklxxW1C0syHhLZO2+HYLZng52g4CfsVoJ3VW6AHVJm7uDAOKY1flF+qs3Wf4Bm3
 eYVMWT+7t8DVeBipQXFDhXGzYD0K5D05DbdOKzIciLjmKU3zbXSojG+zQhsapme9TtBo
 MQjQyMNYSaK+W7ffUF/dJgIoVxP+jeLbxOdzrVzRrioPKheevGY/2FpVBSHWY141IHyo
 9qMhhKzSM+Hbij//nWhXsryAL1LwtW1EC7hJXAkv0WFfynXz+yrvWmBVhTwDL56YQXWD
 E8cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YPET1s2LAGhUOXmbuGCWG2lOM9gQW5zcHOoGqo8jUto=;
 b=GtWezwtK8h75rlsTNh8IVLTmJplTGySGJK1W09Ou/ZVSz26D82k1X7E4OH+pVRQNXx
 KT8uPdGowUeIZIbQEFWHTg7De+wX3dj0z5YmHBefDLJZ/u+3hgiFORNHarUpkxA4TCdX
 7L7Pc4Q36OmlAbghucT9C+Efjn6X0gYLBqfury6QNW01j8l9RAjxHWZ6ge9F29SYKWD+
 TwCFPxLKwXpsOkX9ATB/5HJChCQJGADQzxSmX5/7thaYGoFfkUTY5X76Yl4KeOugfnoK
 OEl9chOuQQAvC/2xzgkjunPkF/B4rmgEl2OXFpk7duaVNH0zBY+j37XZiX5GQh80BLJj
 vJBA==
X-Gm-Message-State: AGi0PuYgfb+7EGqhFNbrK3ol2KH6Vr2M+gzpjrJOuC032oifpkraBPpY
 2xBI9vyph5tnCqabMfCjA+Y=
X-Google-Smtp-Source: APiQypJTjw+dOAM1QqLaOQi5CNvwAe4OCmBIbk8z5yExLAvE6gesJhmfV1ZtLIG3s6h+kBM4io2Szw==
X-Received: by 2002:a63:6cf:: with SMTP id 198mr128652pgg.59.1588902403750;
 Thu, 07 May 2020 18:46:43 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id f74sm9270816pje.3.2020.05.07.18.46.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 18:46:43 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH v3 4/4] i2c: stm32f4: Fix stmpe811 get xyz data timeout issue
Date: Fri,  8 May 2020 09:46:28 +0800
Message-Id: <1588902388-4596-5-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588902388-4596-1-git-send-email-dillon.minfei@gmail.com>
References: <1588902388-4596-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_184644_809272_E7783BD7 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

as stm32f429's internal flash is 2Mbytes and compiled kernel
image bigger than 2Mbytes, so we have to load kernel image
to sdram on stm32f429-disco board which has 8Mbytes sdram space.

based on above context, as you knows kernel running on external
sdram is more slower than internal flash. besides, we need read 4
bytes to get touch screen xyz(x, y, pressure) coordinate data in
stmpe811 interrupt.

so, in stm32f4_i2c_handle_rx_done, as i2c read slower than running
in xip mode, have to adjust 'STOP/START bit set position' from last two
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
