Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E603238F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5tqBYU4MG5aIPYF+fkrFeUrBz+fB1WoYqW8ivNqdQY=; b=fAn0FZiKnky1RJ
	5TfSz6jrvOLmSnYR2DoR2NfSyertf/L4pRxiFxGKSOmHFW9F5WoB6L5I2vaiQnrUJnl+Ju8N+2dOj
	GU+ec4U8P2sOBajqBL7UxjrDzEcumbkVpB1ZjWyBl0BNhQtm7Hd6HKwp/7f5JjQ27DqwAGGAbjYUb
	SjE4WAQOPgLLBE4EqnXbP+f4d+NY8MAhPZgaOcTCjA797u2TZ0xPJ32n19VjdMzBal1FJE/3wjdcP
	1QX821cIjkR468sW/ji9l2y7cRuIznrxRrPcbtLjk0dIvp44hcr6YNpTDpsCsONLl+mPhq5QAlQyo
	kw3nlxsFDi1J6a2LLeYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSil8-00067Z-FA; Mon, 20 May 2019 13:55:22 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSijy-0003xL-5F
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:54:17 +0000
Received: by mail-io1-xd42.google.com with SMTP id m7so11072503ioa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KapGiunwwx5p5z/8cIELmJy7chJVMEDGUUi3pAZirR8=;
 b=yzkpmxk6Ixt7Vl80qvoHTPb21ID7tx7gUl5mLADJHRIA+mwJh+3RgoLGGk3FLTk54T
 YiScf7OxLAxGZZO9LC3+c8gtM0a7Ny2oW1diBfNo/KFgJgeeoC6QMtMvwqVezCPM64Mp
 Vqa2IRutPqE8aDKy5pSCg0SoCU7x3XEmR9EhpHbWBcQfO0t7f0HIZTkPOFFny9fs2ft/
 SubZ6bAz3fd+WTZssKs0U/8XN4Bvy28hyjoIYHIsrx1TFdoJk2enr7kbvfSS3KDsuUkm
 SnglFiYSqw9p+9YZ7rokP3YXlNVR+BjVzrA4BlMeUzKXro+jzAtArTeK6j2I5+Cf7jRR
 miAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KapGiunwwx5p5z/8cIELmJy7chJVMEDGUUi3pAZirR8=;
 b=lhvaU0LyRS/zZgZUIesPlqZ9rIWpG6nV1Z1YmgqgPa1Tc4c/rlD3reNJ9Xxg0lvwJh
 v4aT6t9tIh7LL3+UDrIwpEWJB8Nqf9Tt14+OgNZ7IEZGNf/f+p6LUgLkVr89oJN+0uNq
 /d9g1GkU2axdsSfPU1dkO8cbNFmdBlOHj5vIRmr3pxxz8GXjRnINdzZNoQQOc5euemuV
 aIAgTaOcTDDK99NjSoCUEsgWC2kwSQk/LL8EiUfk2h7kJS7d2HDm8dMPEQ0OMaVY0U0d
 iScgx8qMNTtnSlpvzQJ11VnNsFVSTlAfBUSyVbZTkI3w1CRYO/OKknSfDsc8CSkST8pj
 5PIw==
X-Gm-Message-State: APjAAAXai9xUaBkgb/EMF7mQSAX0pZ9uQ4bYesyPrc7G/QLaZ5JiH5vB
 3a7EeKtzaLk9hgV4uxp4+l7+HA==
X-Google-Smtp-Source: APXvYqwP2yeMVfgpj5IAJSVo21lcBFOvcGIwfuZQCYo5tTMis4c0FbPs3j4lcwnYFd0aeSJGTibCsQ==
X-Received: by 2002:a6b:f404:: with SMTP id i4mr7597663iog.251.1558360449000; 
 Mon, 20 May 2019 06:54:09 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id n17sm6581185ioa.0.2019.05.20.06.54.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 06:54:08 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: arnd@arndb.de, subashab@codeaurora.org, david.brown@linaro.org,
 agross@kernel.org, davem@davemloft.net
Subject: [PATCH 7/8] net: qualcomm: rmnet: mark endianness of struct
 rmnet_map_dl_csum_trailer fields
Date: Mon, 20 May 2019 08:53:53 -0500
Message-Id: <20190520135354.18628-8-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520135354.18628-1-elder@linaro.org>
References: <20190520135354.18628-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_065410_678219_16DBF3EB 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: syadagir@codeaurora.org, ejcaruso@google.com, netdev@vger.kernel.org,
 ilias.apalodimas@linaro.org, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Two 16-bit fields (csum_start_offset and csum_length) in the
rmnet_map_dl_csum_trailer structure are currently defined to have
type u16.  But they are in fact big endian values, so should be
properly represented as __be16 values.

No existing code actually references these fields (they're ignored by
rmnet_map_ipv4_dl_csum_trailer() and rmnet_map_ipv6_dl_csum_trailer()).
Changing their type therefore causes no harm, so just fix them.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
index fb1cdb4ec41f..775b98d34e94 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
@@ -52,8 +52,8 @@ struct rmnet_map_header {
 struct rmnet_map_dl_csum_trailer {
 	u8  reserved1;
 	u8  flags;		/* RMNET_MAP_DL_* */
-	u16 csum_start_offset;
-	u16 csum_length;
+	__be16 csum_start_offset;
+	__be16 csum_length;
 	__be16 csum_value;
 } __aligned(1);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
