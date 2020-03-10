Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA53B17F760
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 13:26:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sV3tieLvIlw7bPzDf5g5KXqNJb2SenAvWxpOkBF/rhI=; b=h2p
	kr/FnOtkrbnv3nnSD7dHI6rLXOV81wRsFupxdkkivHU5Dd7pIcmJQUAC36163aZvRdXzBenzC5/0r
	usrUdlxcdUwDL+XtHs7x86fIx+0T86nvEm8Lka+pNNu8LbEJYUdh5+9CpqdLo5jZTTo/PF8yEaEV9
	LcW0xyEfS0ELxcHzCgCxB9FipSlfRXju330fzmM1F7caGck/dfQGhRyq2KmFMgFmf8TAC5l2pe7qo
	3ripHJ0weaNH8d5j6oOLSMxkOQn+T4Mt1nfHqmnRhseuzYiccdq2h5Hw0Nv1l33IFXqJe1BK3cBrV
	8bHCEy6konZ1X9wTTGW4c4Zd4x/XmzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdxy-0000iT-Dj; Tue, 10 Mar 2020 12:26:34 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdxo-0000hs-Vl
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 12:26:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id p14so6406337pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 05:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=aqG1gpI3UojXGpXKG8hweJC7Y4rK/8MUyRGkcr9E4Og=;
 b=NRk29ZvL9dXRWhydPFZ1MNK8u+VK026HEZdZ6QJrhG6+YwgQJuM7hPfBqK43y29Z/P
 hWjhYn+xQYQ139crRXlL6FVPYINBUyzwkWupHkYDkopCT25pfhSL/C+lh7wspGkpamcO
 HygLSE48s954ZazP/AOdt6BNis2UE2+oCV+23F2KC92SOkyyT8Z46DyqmlybGYQQPnoL
 o3dP2LYSOlpEKs3G44b5dpHRWF0F4ZCaQHnnfQGsQqsZOFhA/MfKa2yp1KNWo5I5zPa4
 0HoLFM9+y1dGU69VBRHAS+ULujVS+3wcyH+yKDkDERtzTPYeMQZcwWxvGf1bYoGtNIn6
 ONnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aqG1gpI3UojXGpXKG8hweJC7Y4rK/8MUyRGkcr9E4Og=;
 b=bkrnMFwFn4g6FgIm2x9mKBWWPBduEHLmDNg9gtt/dQi4s97pmSKUkcstQFVhmsEWsE
 9KNQF7oMnpPalxCIDl2YjVw132M8WLyybFSnJoddsCmryKJkeV07jPhQMf/YH1r4taOn
 fi8lQ9HOCvBsD4yKe4B8Jn7BubOhu/4ZkIdcjZJb3zWGeyxN5ZJcMCWOrZJL/mMylOwj
 bguyl4e8fdi+QA2UoXMv1yjVhrkFOfbszhH+4Tcc/wt7NvL1Dv/2bsupUoswkenW24l9
 QFtgPHxmRSF729f4TE/Qaq3rRSziEd50X089Ya9ZrQldTYNd1Mu+tKGUgptHdAFFDMVv
 zomA==
X-Gm-Message-State: ANhLgQ0v1RCctDiejxNlDsX5ODF9y5desANoG3lSbxxKKqHRbD1JOSRJ
 N1HHi/Gd+unHXxvCX77VKzE=
X-Google-Smtp-Source: ADFU+vsGROcltLUCt7lKgq5KZYHU57Q1LyZzFESKeWrFihj5+bJ1r/nBxQ+urASpaa7ZFtj7UtrrtA==
X-Received: by 2002:a63:5864:: with SMTP id i36mr21841664pgm.426.1583843183996; 
 Tue, 10 Mar 2020 05:26:23 -0700 (PDT)
Received: from localhost.localdomain ([149.129.63.152])
 by smtp.gmail.com with ESMTPSA id w11sm47557396pfn.4.2020.03.10.05.26.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 05:26:22 -0700 (PDT)
From: Jianhui Zhao <zhaojh329@gmail.com>
To: herbert@gondor.apana.org.au
Subject: [PATCH v2] crypto: atmel-i2c - Fix wakeup fail
Date: Tue, 10 Mar 2020 20:25:51 +0800
Message-Id: <20200310122551.27831-1-zhaojh329@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_052625_045203_E8143AA3 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhaojh329[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhaojh329[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, Jianhui Zhao <zhaojh329@gmail.com>,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The wake token cannot be sent without ignoring the nack for the
device address

Signed-off-by: Jianhui Zhao <zhaojh329@gmail.com>
---
 drivers/crypto/atmel-i2c.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/atmel-i2c.c b/drivers/crypto/atmel-i2c.c
index 1d3355913b40..e8e8281e027d 100644
--- a/drivers/crypto/atmel-i2c.c
+++ b/drivers/crypto/atmel-i2c.c
@@ -176,7 +176,8 @@ static int atmel_i2c_wakeup(struct i2c_client *client)
 	 * device is idle, asleep or during waking up. Don't check for error
 	 * when waking up the device.
 	 */
-	i2c_master_send(client, i2c_priv->wake_token, i2c_priv->wake_token_sz);
+	i2c_transfer_buffer_flags(client, i2c_priv->wake_token,
+				i2c_priv->wake_token_sz, I2C_M_IGNORE_NAK);
 
 	/*
 	 * Wait to wake the device. Typical execution times for ecdh and genkey
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
