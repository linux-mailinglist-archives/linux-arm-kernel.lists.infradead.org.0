Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D65A5FE80B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:36:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+OtB1XHIX0LrqBLUwHdY+FMJxgZ8Z84Sgq+ppBgA3+A=; b=MPUdvURB9U1AEZxp/aN7LhHinW
	UCske5wii3ZbR4E5/XZpYqf3faNXK9SyTs62foum7OUdRBBNq72N+kpAlabD5ia3NwQBqflctZKrz
	/UvwQVrOcghRBmffu8q1sgYjBm6xeQXuJGd2CByZxD8Cwm67arJTwE7OhACyC0sdeuj7Oi1q/p3qB
	eRqvKujpqcjghKjMF8vwWINwBBmKWMSMuWz27m4WeWJsPKqmueHlRFBPYiEr08PfUqEYxegNfihky
	PwmNFzhE73wvw4WkcQUM/UfurPipU4v8kQhIG1hFGCLP44XUq/OvAak4Yyw+82aqIhhtaOWDbcy85
	hPIm0nDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkCN-0001U5-7a; Fri, 15 Nov 2019 22:36:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAF-00077d-Cp
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:05 +0000
Received: by mail-pf1-x441.google.com with SMTP id 3so7322592pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6V0ioyUbzQMXQMBXE7qcEPEwz5yqv4QBePomZ4UZPqc=;
 b=k7kBlMxXsG6gA/UcmlwTDggZ65v+ipn3YUceSw3Oegz9WKEnqSckQYHfAT76F7fPjN
 s7QKdRMaRPqZFZSI/xOc6FPxjFzbfDiSqxO16UNRWzwpNND4qj7rCnHyntrgf8gWE2+b
 z31khVZDNGGcS5gNaQpHfSp84XhywQ1G5jrK5dsnXgm8xzY2Bttagju6GbfsQCuUz1t1
 a1jGQru7049kf1xVk9PcTip/XRGMTQ3ZDi5E07+5EowNcQ7XYcGxNTDsz6/vv89SFEC4
 rOkGhyiZz4rpSal4odmYlyBahCIUN9rZMet/cta0i71K0Th0xdUbgnAkFRClk3lff4d1
 /chw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6V0ioyUbzQMXQMBXE7qcEPEwz5yqv4QBePomZ4UZPqc=;
 b=I4QhlcyTiPLby3RlHe9+L311EY5oEnQ+iC4UNainISCi4JknY7QTxIrMv8aB+1x6kN
 jqqZJTTZn+ENGY43DZaRoeV/GVg1xNUzUG/uICEIfIW+Cvnl7ntoiv+XmoKrFS5ILG0A
 k4e6BdHj8ZeVWRPzCyNNDyONqyQ9VidbeYUKKzicZDLkPLOy87PLEblBeZKIqRguYzgY
 B5tVY+7Gy+sFVD6nReB5JyORLYiDaDP1vovo5xWIm+O0jJ9xWOkMZg277mZ8+F6q8j99
 0Pk2DVoEnVipxnVGbrUInqIUcLV1uGBWbVyrVCXjeu9x/vBS0CaRlRxtUAmqm7xm68cw
 SR9A==
X-Gm-Message-State: APjAAAVogLkPkzwwSX1hFfODgyyZ9oBsfFB6REhZVqp2dVGwaogU6rLQ
 GC/SpOAWGMaNAMCB5sb/UUac8Q==
X-Google-Smtp-Source: APXvYqwPDrxT0ltVk6U0vCs9B/kupiJwArvMyWvfpOn2zdkBUlstoIR7TdNRADNMqnuUZbeIdUbysg==
X-Received: by 2002:a62:1c8:: with SMTP id 191mr20454995pfb.152.1573857242567; 
 Fri, 15 Nov 2019 14:34:02 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:01 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 06/20] media: stm32-dcmi: fix check of
 pm_runtime_get_sync return value
Date: Fri, 15 Nov 2019 15:33:42 -0700
Message-Id: <20191115223356.27675-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143403_439238_6189F25B 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hugues Fruchet <hugues.fruchet@st.com>

commit ab41b99e7e55c85f29ff7b54718ccbbe051905e7 upstream

Start streaming was sometimes failing because of pm_runtime_get_sync()
non-0 return value. In fact return value was not an error but a
positive value (1), indicating that PM was already enabled.
Fix this by going to error path only with negative return value.

Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/media/platform/stm32/stm32-dcmi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index d86944109cbf..18d0b5641789 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -584,9 +584,9 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 	int ret;
 
 	ret = pm_runtime_get_sync(dcmi->dev);
-	if (ret) {
-		dev_err(dcmi->dev, "%s: Failed to start streaming, cannot get sync\n",
-			__func__);
+	if (ret < 0) {
+		dev_err(dcmi->dev, "%s: Failed to start streaming, cannot get sync (%d)\n",
+			__func__, ret);
 		goto err_release_buffers;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
