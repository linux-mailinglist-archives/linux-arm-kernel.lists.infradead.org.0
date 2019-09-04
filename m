Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18001A812A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 13:36:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KwHv9LyelZE5ew/h1h94BAwhaWf05M3vwfyyjT922Js=; b=WrB
	bdN+5ntJV950VVgFqW16IopVu7uwn8n89EdqIQmVwxKlR7UDkF7QiNS6sVZlRG7Gq6zHSyrtheuE6
	aXQ2oGKGB79e+WI4EHSMwxWiU+IeKkwhLR8r9/+xh8Si3f8o7fZrkUyhkTA7YENkRo3McsciFAHCd
	6lJe6ohfKb0108r+O5wfuVp2/1ApOPD5GTJcwk93i8t5dpjB8FoTW6qzTk0C0uGvC0wouGDQ3WLGL
	a73w97Visj4AYapKv3mySrw0uDP9Bd6F94CRAfwFtWLUREFrTxrMqPJFPXtBDwiZcqqqOevYbFuX1
	aFMRX8vR57upBzSAHsn2a8YLySqDW/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Taf-0007bf-Qe; Wed, 04 Sep 2019 11:36:46 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5TaF-0007b1-W4
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 11:36:21 +0000
Received: by mail-wm1-x32c.google.com with SMTP id t9so3272372wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 04:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=6n1x8bAGsyaVUn7RCRrZd6pcUeSbUTUlFO1sD7W+jdE=;
 b=h6B+fLtpSONhSBxg/IJPOu8ZrT+zjGIRlQ9PafT3Q+SZuugLTW6Ms+HeiIs199by73
 /y+NK2ynYGk5Q1wiraznmv2S5N8Lz0qJIog53PZqHuAG5OFvBaAac4XnhbVk0k+0NGWi
 IUHCcEYDqbyRKZZp2QJ8hxBdm7rxewdpV32Cn9jFMFQB3McBI0q5ZjtIQTG3kzNunl+J
 wd5cfQNbtsC+bA9G4OAwDPM+UzwfqTBSFiXdOXS2MFlj5hQCg4AYNsTJ3GCer+YjaTp7
 TYsyWv5RGnBfWrv689OK75VW6sakK4tDIkVN+13SPqxEk7zGNRbD7F3Sp3yWfKoTo0bU
 rcdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6n1x8bAGsyaVUn7RCRrZd6pcUeSbUTUlFO1sD7W+jdE=;
 b=l6FUFJ+G53TWIyxHAc8b66cZ9g30xPqKz0udo/OuPczWG/4j5bd764dJWSuqnbdh6r
 CMP6tRinS697bEB08qS2Qo6RXQQEvts/tKRirkmJJL2VIzwJwtdjIz8G/YWe6E/yJNUJ
 4UINU9kHaZ2kyG8FsDrqtXa0rcLn/ZBgWTYXIT2sYxvPk429S9F71/M/N+VCwnCObSKD
 NB2ZWf8Yws3oz6iEMWyKQJ9g+OU57vaIC5Q0naHVxCMWgSzqybWRpWzRioWsZ86hV4tp
 zjyIs0oaCaj3BfF6z4AcFsGK97nTq0wxgd4DkLanNrsHCGknRfAwEO/uhBkhNClsOJHT
 d3cQ==
X-Gm-Message-State: APjAAAWgnh939GaVYKn4P3zQs/JJnlVHWPMX9d/x713cNILbPS2CPIZ+
 dz1m9klnrtLjYGjF3fR5jOoHGQ==
X-Google-Smtp-Source: APXvYqzrtOfOuNj6frgLWfYGsNvZUObicbYASkZ26jqaCnscUAcwcq1/Gwrc40q+OpB0xe98gVVB7A==
X-Received: by 2002:a1c:20cf:: with SMTP id g198mr4199256wmg.66.1567596977066; 
 Wed, 04 Sep 2019 04:36:17 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id d9sm10823933wrc.39.2019.09.04.04.36.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 04:36:16 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, bjorn.andersson@linaro.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH 1/2] i2c: qcom-geni: Provide an option to select FIFO
 processing
Date: Wed,  4 Sep 2019 12:36:12 +0100
Message-Id: <20190904113613.14997-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_043620_038540_BB1DF154 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index a89bfce5388e..dfdbce067827 100644
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
+	if (!of_property_read_bool(np, "qcom,geni-se-fifo"))
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
+	if (!of_property_read_bool(np, "qcom,geni-se-fifo"))
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
