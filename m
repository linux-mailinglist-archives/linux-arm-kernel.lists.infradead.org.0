Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 961B9A9C3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:52:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XtrBuh5fs0hNfEmY6rAHxuLA159fLcOzNI7se4NLvNo=; b=P2ym94PuY8RFRz69w2U94zv84W
	Ra+VRVI2ycW+xIxtM2UvGL0BhaNFum45tgzkQJp7hNkWoI0TecxIt1G9M4/8CcGA/le9w1ULeMRqv
	7FhL6gvnnZrBvh0hqf3G8qCcYSGAJ7n8ZSrsgHeMUxOXrQQT4wRdkZcoqoqPA2RGJtmxlI1IC8j6+
	WceQmCm9x+vnd7h4EBahqBPTiFY5T8jatCF0H6e0o5BKOsYQwwZsMOGZsGRLM7ldy8L+ia1NuFTEy
	QiiCkMaZva/S6pCC3qTi1WNmC2Z3CX2sVtMvN83DTivTcHIBsnUOsYzLo8twzJhIAMpxWCw9CKI7V
	nr6ZMK2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mZT-0005V5-8O; Thu, 05 Sep 2019 07:52:47 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mZ1-0005KX-KR
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 07:52:20 +0000
Received: by mail-wr1-x434.google.com with SMTP id i1so908600wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 00:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=O9chrP35VeaOQspYv6yq0N6dO1x9er7VLpJQvN93FOI=;
 b=jbQFjKO6Qmkr3vx8C0XsOTK+x7zrOxshYBIVG7sm9rgWvOAJMvAeFSduofVvDDe5er
 TK61PFDj3AgbrmAv1r+Al9SaMV8HOTWcaHS1nHEKt/tE+uPuRYWDiaG7hoy7NEX1pby5
 narsaOua/J7JS7NIgo6i1GyQAX9PMaMiyqvcF4WlfEXl0ezdXbQ3kL9wnvYWp29AMFwO
 CH+nTirZx7HPPYzGt/mYDjNXMG7M4AtEbpm4qibTCSvvUbXdTXBAHJDsXSQV7FZerQZb
 4Wi6eNLOZa8Auw5uqGklYXGwK1noKCmKNaHYGorNCyyfb4JrAyt4KoXtRjQaZxVJzXzM
 J+qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=O9chrP35VeaOQspYv6yq0N6dO1x9er7VLpJQvN93FOI=;
 b=I55h2K08joEqaWG1DbTdUo8VVQHNHayN0KptayrmFtbTSCl694GEQ7bxCzteJtxiQe
 XgAZyX55K4cuICKJVjHr6dwxHrX7tsPrau89LjYa4tHksMlbAfnMPYMgp2B//iZRChw3
 0HhC7DwMRpBdo9glL6RzUDlVo/z3TB162AvNPxORAz2I4yNPQa6PlxSgp56huwLXmuY0
 mhl4k1NmaWYjdtVWThlI67ggrj+RH7i58+GCAWV8lF8ytzSrNaugq+bY1jAdtSmcy+Y/
 SvylU/6+mE3Bv20b07QMnPr0D/pcPaN3bOod5ISaegktms17mAS/813TO5yjou7WVL9E
 QVaA==
X-Gm-Message-State: APjAAAUpzLFX8We6nPeGLByDhziAF9mJImnxrnskxZFUAGYvt2jzA47b
 DWGglrQFdxonqa1G7LNHE/LxdQ==
X-Google-Smtp-Source: APXvYqyBf31WXqww2s1UsleaLTEgcVXsPmaZxCo4gB/O0+uIHD8GYImVDdW0XW1mm1vGmln7SgI7vw==
X-Received: by 2002:a5d:680e:: with SMTP id w14mr1338770wru.3.1567669938104;
 Thu, 05 Sep 2019 00:52:18 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id a13sm3418784wrf.73.2019.09.05.00.52.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 00:52:17 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, bjorn.andersson@linaro.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, wsa@the-dreams.de, vkoul@kernel.org
Subject: [PATCH 2/2] i2c: qcom-geni: Provide an option to disable DMA
 processing
Date: Thu,  5 Sep 2019 08:52:13 +0100
Message-Id: <20190905075213.13260-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190905075213.13260-1-lee.jones@linaro.org>
References: <20190905075213.13260-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_005219_667808_142AD328 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
 drivers/i2c/busses/i2c-qcom-geni.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index a89bfce5388e..8822dea82980 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -353,13 +353,16 @@ static void geni_i2c_tx_fsm_rst(struct geni_i2c_dev *gi2c)
 static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 				u32 m_param)
 {
+	struct device_node *np = gi2c->se.dev->of_node;
 	dma_addr_t rx_dma;
 	unsigned long time_left;
-	void *dma_buf;
+	void *dma_buf = NULL;
 	struct geni_se *se = &gi2c->se;
 	size_t len = msg->len;
 
-	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+	if (!of_property_read_bool(np, "qcom,geni-se-no-dma"))
+		dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+
 	if (dma_buf)
 		geni_se_select_mode(se, GENI_SE_DMA);
 	else
@@ -392,13 +395,16 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 				u32 m_param)
 {
+	struct device_node *np = gi2c->se.dev->of_node;
 	dma_addr_t tx_dma;
 	unsigned long time_left;
-	void *dma_buf;
+	void *dma_buf = NULL;
 	struct geni_se *se = &gi2c->se;
 	size_t len = msg->len;
 
-	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+	if (!of_property_read_bool(np, "qcom,geni-se-no-dma"))
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
