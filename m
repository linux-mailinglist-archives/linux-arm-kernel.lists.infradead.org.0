Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481B9A9F8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4LnO4IFbniugSlR3C8bbWoNTqukrt4vkQu/h7VVaKxU=; b=MEZ
	tNGWHJ3jyReBkgjDVd3h17vt1hvmSdpMcpUbtxKThNv93brsnoyBSBsbbLX8pcAjdiwiwMvzWtjkC
	EBObxNT18heErZ4CQd4QK1ijPzkXnSsyAJRl5+uZ0n32uwPZSOK9DgZqQsYNpDociVHZzLrWEHD6b
	BYcNNWkKz98xlpA3LdzEGe8954ChYYHJaU+ZwpM9CmHJncxdWqHFlzqxFqZCAHLTjwm10d+IL5mI3
	eWwVjfH8pNfRLYDuidRsdotdgs7LLbezjGgFufJ1M1GwKQsLzF33ewS6rvAQ4L/DNtOB2+opKObT7
	7anGXbeyL5oxQumA/YJ89T5U4b6yVKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5out-0007uw-3q; Thu, 05 Sep 2019 10:23:03 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5oui-0007uX-MR
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:22:54 +0000
Received: by mail-wr1-x430.google.com with SMTP id s18so2106668wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 03:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=8xEVf00Y33lenJGWE1WtURKsjjiVID11MePd5b0emho=;
 b=yAw6iuIOSuOZ+YXKeJEQQfn6wzRLUND3C/Q+xp+Go2IqXw7O0y1G/s8YOYuFi5e9+y
 lBvutzg4MJe8da4PkCcQz73BqztCf0iujT17EuwKLLWB4R+Fr0MefM+4spDMtuxQFLx5
 zk2gyYDyP/H+Q9nXMujL/l1wG6HdhxfZCO/4mlH5xRw0n8JvuwIEElv8AUYmyPk4Ypv/
 gEMmY7av3rkYg8EBijSJShFm0ukmzYoGlUM6DpABiGDNrsKAbO0BQaYx8S7VKJp7hA8c
 +IMuRTJicum2UfBMhAsU87uuqHtGd7mXUoVWGsKRJHw4XVu91Xbb0cFmoCJ/QnxxfyI9
 HM/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8xEVf00Y33lenJGWE1WtURKsjjiVID11MePd5b0emho=;
 b=DJLdiG11QkAEn7gM1IuKf3kVqImoGbWi+AqVL4ci/tQ9X65PzmDzqaKr9IJJJYijmj
 yjCwmuKjvRFeveL5Xf9p/AGkY6y2NrdCsM0hBBQgZKfjFvsMtIMi+QkltmWafGH2Dz2d
 +yxH6fHUcVlUJ1eFQKZEcZsbUNoJfuu2Lu/ZSbNkxvxHOScKT7FdOT9JuCufLpel2knc
 /06zRpYBO7O7hQC3WLIcqa61N1fdbedhGSXsOW77XQUdcZ99QtlPOCuqyVDnNod8HASo
 CX1v0pMMevDceBdZ87TFE3NGeaNOUmIytRIQ+ETMWPqq7Svf8yfRFvHEDSKI6/D0F7E7
 a+3A==
X-Gm-Message-State: APjAAAXzj3+wCXVZptYZvZbauXtBhtCpoLb961LCh3gZd5reWU3QgiT4
 ImHfJrUY4ZIIMsEGmBmwifetzg==
X-Google-Smtp-Source: APXvYqzmbJAh9A9AFOK7TMEJNJgAkDyKpZ3l6Gm+oQLOYe2+z/aL96Z6LnhW/H/QG2oOLwJCl34d2A==
X-Received: by 2002:adf:ed8f:: with SMTP id c15mr1883163wro.83.1567678970169; 
 Thu, 05 Sep 2019 03:22:50 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id i93sm1779947wri.57.2019.09.05.03.22.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 03:22:49 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, bjorn.andersson@linaro.org, vkoul@kernel.org,
 wsa@the-dreams.de
Subject: [PATCH v3 1/1] i2c: qcom-geni: Provide an option to disable DMA
 processing
Date: Thu,  5 Sep 2019 11:22:47 +0100
Message-Id: <20190905102247.27583-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_032252_740322_9B61AE23 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We have a production-level laptop (Lenovo Yoga C630) which is exhibiting
a rather horrific bug.  When I2C HID devices are being scanned for at
boot-time the QCom Geni based I2C (Serial Engine) attempts to use DMA.
When it does, the laptop reboots and the user never sees the OS.

The beautiful thing about this approach is that, *if* the Geni SE DMA
ever starts working, we can remove the C code and any old properties
left in older DTs just become NOOP.  Older kernels with newer DTs (less
of a priority) *still* will not work - but they do not work now anyway.

Fixes: 8bc529b25354 ("soc: qcom: geni: Add support for ACPI")
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index a89bfce5388e..17abf60c94ae 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -355,11 +355,13 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 {
 	dma_addr_t rx_dma;
 	unsigned long time_left;
-	void *dma_buf;
+	void *dma_buf = NULL;
 	struct geni_se *se = &gi2c->se;
 	size_t len = msg->len;
 
-	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+	if (!of_machine_is_compatible("lenovo,yoga-c630"))
+		dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+
 	if (dma_buf)
 		geni_se_select_mode(se, GENI_SE_DMA);
 	else
@@ -394,11 +396,13 @@ static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 {
 	dma_addr_t tx_dma;
 	unsigned long time_left;
-	void *dma_buf;
+	void *dma_buf = NULL;
 	struct geni_se *se = &gi2c->se;
 	size_t len = msg->len;
 
-	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+	if (!of_machine_is_compatible("lenovo,yoga-c630"))
+		dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+
 	if (dma_buf)
 		geni_se_select_mode(se, GENI_SE_DMA);
 	else
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
