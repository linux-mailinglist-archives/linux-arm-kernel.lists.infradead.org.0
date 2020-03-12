Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B880E18318B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:32:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6rExpGD9Bt5n9xwSYpgq/InwZb69OXBak4wQoV63AQ=; b=f2cgD7JZ6kfXV+
	oPXhBBJAzkfMQqzEfuHh9+A2MNQrymyCfFAq8APjiFECGwonn5jnegJZZk4yEn1RRPVLAN5bMKSxM
	cDpakaX+lVCC5YhOm+A2xHhx3peTOD0/dkwYY5DE15wH8ch3FrcIPJ8cgqFQg7pP9piNRKk5iO6Mh
	Ko5+15MCPBVf1ygyuTHpC2HHa7S53uSN43E/wU+MC50HK7QBpAdHDwtk80xQ1mAsLLJ9BTObj1TYT
	3WXfuAKhZbpkJMDJNTsWdCi7So5NyjSQjolv9Y6GtCtHtbgspK8aY675LcVrT802xHwmbsue33WIS
	G3HgoJO+DVf1tRwnZ4Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNwf-0003nS-VM; Thu, 12 Mar 2020 13:32:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNw1-0003Rn-2r
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:31:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id s5so7513341wrg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 06:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MQB/nJ2X838Fvt+sBkmGr/0pMCoouvYo1EdeUXM4YMQ=;
 b=BJ0XuBYV3ToSPW3UIl6Isc2lumsrYzXzC9pIKP6HzoLx2m5H8VgaPnkaYEyU3nSSyY
 1tLzCAypjVjCczuqqKDKV1kSM0jlkColhbhQeyFQVhbrpWHVd+cqIdpfBucm5Cs8CUNT
 g2JsfKMI1p2KNINJQGW/uTtMsJczcoyPXXZnlpjb8lmdv/EKBNzm0oLEWDR+wc3cC7Qf
 DMCctXTjXci5kB54gBeQKBFgYHiFdJuJ8DwI2USTDOz+pcXtLVEBQNuo9vJANXAlIU0c
 /cnYnC4QN9G/AkoiOE6XME3Ja/GQJj1cvbdw9h8QOh351jbLfIus+wLy4M2iFBemZPwy
 BIKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MQB/nJ2X838Fvt+sBkmGr/0pMCoouvYo1EdeUXM4YMQ=;
 b=TVS4ERVU4w57gwlvaXSlVMnvNIQwPm6gCAWZYmxIOdlsOgT3ltAQAXzboOu4nx+6uL
 cYpvOLSvIV4+EF2hlTS6QNHpIujKFQxyY8Hz4C6EMImtnRu4n0pcqRKHK9Pkqhyc6d5F
 y3Svxpc3flZfgPr5wFdUCVd8je855WCxnddMkjbWqHNITbeZgV6x9SCujnRRqF26W/nR
 Hq1ULCb+R49q4Zl3hcvDBbdPi+Aqc6UnVmDy6Kd5QvBXrx9D/LdQUbJo/25kn9ycv4bz
 vFy+6P08zbKB+aaiIhW7smAmbppfUFD2eGLUPw+MaVNRPwSFmQjStDJ9U00osR2hX8su
 ++xg==
X-Gm-Message-State: ANhLgQ1qGxHQlrl+E1DJScuU61iKBgphbEdSmmFO1QxHa1FBc8N1nLSi
 RJOz3AqguUIzFImBw25qrf52jA==
X-Google-Smtp-Source: ADFU+vttYTaI+DCiNmB1UvQy1EL7nMlpTXWyEiRnY5WHDphDcEObnDSPJFvd3uSrVxGbrKBpFiiYCQ==
X-Received: by 2002:a5d:6703:: with SMTP id o3mr101991wru.137.1584019895265;
 Thu, 12 Mar 2020 06:31:35 -0700 (PDT)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m21sm12242885wmi.27.2020.03.12.06.31.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 06:31:34 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: broonie@kernel.org
Subject: [PATCH 1/9] spi: meson-spicc: remove unused variables
Date: Thu, 12 Mar 2020 14:31:23 +0100
Message-Id: <20200312133131.26430-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200312133131.26430-1-narmstrong@baylibre.com>
References: <20200312133131.26430-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_063137_121476_D49EC11B 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove unused variables from spicc data struct.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/spi/spi-meson-spicc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/spi/spi-meson-spicc.c b/drivers/spi/spi-meson-spicc.c
index 7f5680fe2568..8425e5ae1273 100644
--- a/drivers/spi/spi-meson-spicc.c
+++ b/drivers/spi/spi-meson-spicc.c
@@ -130,9 +130,7 @@ struct meson_spicc_device {
 	u8				*rx_buf;
 	unsigned int			bytes_per_word;
 	unsigned long			tx_remain;
-	unsigned long			txb_remain;
 	unsigned long			rx_remain;
-	unsigned long			rxb_remain;
 	unsigned long			xfer_remain;
 	bool				is_burst_end;
 	bool				is_last_burst;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
