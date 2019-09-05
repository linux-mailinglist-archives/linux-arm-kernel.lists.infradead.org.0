Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA1DAA616
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 16:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u8DGKT40ZnoKtB/e3GlLkfNLOtmyxyxmtKWgRQ+NOwI=; b=DPi
	avOBazkmL+G0JxnBr7ALXWMn/sfWo2qmZObcH5yoAFJM7n0qALJnobeD1Izsq4Pao3v+jhKbaWq/+
	9y/WJbfBEyZlaRG+O+AIF/F7icoT5Lmh7hRVHzJHNLP3SNSsnerba9n8lv+zxWRTthZRzolhA1U3T
	scTbNCvs4lUCNNkqecBGzYmKELyuDfscunxA0a4Uwg1xxfhWKf+/V4XUmXqDjO7FCkaolL6aMLnv/
	FRQNYUQ42Q71FXTOIqFSg98iWCIdfEMvWgEGAMMMuWixod1IezXCC/uYmXYphIbB1zHp9Q73TvvER
	TG+LDolH0cg2BvMw9DlACGZwH/0mKoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5sxA-0005Vz-0E; Thu, 05 Sep 2019 14:41:40 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5sx0-0005V5-16
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 14:41:31 +0000
Received: by mail-wm1-x334.google.com with SMTP id c10so3138921wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 07:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=gvXZWVwHpbdck37kQtyWXbSqSEeeYIFeArcoXQY5L9I=;
 b=mB3Sko2ifz0tOSCJAHjX283XAID1lWJHxJ8+5TDxf+6IIqPTfr+z/PPEttOLXQQH+b
 8VhpLSs2Xx38CdkqQN3H01l2xCICqrXkssFgkSPUbXJ7w82PFNTO/EflDqdaBZrjTBr4
 OPh0RTFzOYZ9LW56DmIi7VmHRBlGKptwDvVx48791iI0/CHvG7SloF7JfIgzVPVxd9SI
 Rs/Blwyl15h0QvyK0ESbbrFGhGmV1HOpEJtqRhDWTDXP8pDPRI+cycCzopj1+4fHb/Dm
 IQ1Epwi19TWJKlDbg2Ewvh51NYJmGcEGrfcOJBcKHYIVsbxVndIy9Vz+arcpx4sv7wik
 J4KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gvXZWVwHpbdck37kQtyWXbSqSEeeYIFeArcoXQY5L9I=;
 b=m48CTDDcyQmDAK9+H/V36QlGCXEUNbyQKqMKAO3E23oRSwo7bYjJSHN2UgSQ7/9SCO
 4Syr4zBuNYuZRBFd8ei7APeooRcNIzqhx05ikfBIkHgfz2hN5Epk+50N33aoS5vhIFWS
 NocYSYr7w0C1gpfV5W176zEIeCfnfEx6ezsJnsPoaOoxxkULpNRq9Dx+tDG1upTCafVn
 yQrMwY/CqMHrWnnJeE5GWMvOLVpuX4AcqhhpXiSZK0WVCOaXzVWbhb52f0jHweueNj6k
 YwgNpJBQrRlN23AGk2eMR7ZzlRVACe/H2bXkQPaWL/QqKqkhoESR14NT69in3+XDfY5y
 8fRw==
X-Gm-Message-State: APjAAAVame+LI6R8BrVmj+UVC2LnxZyk3ZgdUs0VjJjPXXy8wA9VvYSj
 ddyZaR3+f5a/b22pgUmsKGD9XA==
X-Google-Smtp-Source: APXvYqwSsdzWd7u9Fz8nhhPSzaTVwwrjIYP4HGLSO8rAw+8XajRcLI9Thgj6+E2e/hZXiqvdsbjQ7w==
X-Received: by 2002:a1c:be04:: with SMTP id o4mr3387448wmf.60.1567694485991;
 Thu, 05 Sep 2019 07:41:25 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id c132sm4191392wme.27.2019.09.05.07.41.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 07:41:25 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, bjorn.andersson@linaro.org, vkoul@kernel.org,
 wsa@the-dreams.de
Subject: [RESEND v3 1/1] i2c: qcom-geni: Provide an option to disable DMA
 processing
Date: Thu,  5 Sep 2019 15:41:22 +0100
Message-Id: <20190905144122.5689-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_074130_077705_67B6ABC6 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:334 listed in]
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

Signed-off-by: Lee Jones <lee.jones@linaro.org>
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
