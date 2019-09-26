Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53563BFB96
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 00:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BKzBmE4vym09HnkQr3LsDRskmF3UeZOVVpX5m2HYjnU=; b=XFo
	MhGfqtLOKDyER5TVi21dNxRn4pwN75aNfkLhlnCynkCCioqkG5l1FHr/41Rp9JtcikMYheqA9ZVJ6
	BKjwPcHBZwj0zKZFx7Yi6kuovpXX8bmgPswvaFF9qG8Nx8J5nqx8GCvu9CrvORGycKyPCUFLXAf9a
	jAuorJseMvrJTFYlsjLfgMaAZFZ3XsDHvCXpEXp9mQP4oQyiQPIbgeI3vx2xsLytujXPlExyxnOFB
	0TRvXa3mh5Nh5DKsG1xB/qADEp8jxpfZItWI5rEzY5SagZHffG9aAWy1YusjFwj8Bc07tAhEKvCfo
	2/sggoRr4VviqWsSRbKAj5p76W8iG9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDcgT-0006tX-Sh; Thu, 26 Sep 2019 22:56:25 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDcgI-0006tC-8U
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 22:56:15 +0000
Received: by mail-pl1-x644.google.com with SMTP id s17so260456plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 15:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=de2iGU47iwZY8X3+AI24sgH5bLJEE7zPqcjn0UcDCCo=;
 b=AVtQn4GGbjFx7GByAuc6551iBTI4Lg4f5T9CWQJRuTuRcAoBGKA5CECQxEfGZgTAlK
 LU213dBXJLRq7eZsBVpTYVV994RaQDRoy9YcLTFOTmotGdrLl2jyPCD/yR+I1QJPlD3G
 aAsXJESByXKGaZ5+pSxnbKWaVY+IY44JDXBDd2X7xb4vD0tY3YBxrZx3nHU1I43jD0JG
 Oi1dI7kMurI2xAsDt59nfo8UPyTLKXEDPoi59HMKzeY5DSSnZ0LzGtsuAEYKwo0FauHH
 KyNJ7VR+i+fQzLKvox3wibNogJ/srgHB+ZfoCVPNBzPW51P0ASP891o5MKvQE3biaSEL
 hsGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=de2iGU47iwZY8X3+AI24sgH5bLJEE7zPqcjn0UcDCCo=;
 b=T9hcYcc8pyclMQ7htsmLj16vKrBRQ+Aa3c1xMg5la23skwLHblm9/9ZLRl1QD4zaGM
 j20KHZJbfrCbDhMxHT2jBVt79WzT4oZGi/Cst2H7MAB/LrJeFti0Cbpxre3O0NuZOoKW
 tPj/9+ENjlIy7rMfLC26cWwdoP/AcJdbi+H7PUKe7Al1q0Ces7NLcgPhI9J67pyJkOcK
 qp2/XHTiJIY4ETdF0vjExCI4znhiuDU7LNNx8N1m0B5bqpPMoFzPrF6psR9w1mk0N/+i
 Dy6f2hR+pCxaKGxt6gZnkNWb9TrH3wU1KWFetyNNVkEYm3psrG+ozAYn49kAAz6wIlet
 YHbw==
X-Gm-Message-State: APjAAAXtaI1ByIvu9XZIujbByyJfAC9P7DoLGToOQ5q+2pxSHCA0J4aW
 GKNuvb50KKIPTDNfpWwFXKc=
X-Google-Smtp-Source: APXvYqwyAPahM0b+utI1XoHpSn/iDsaS9PktcJWoU4gjQVjz0EG66QGxJe1945lkV3AVqGQvgLRjww==
X-Received: by 2002:a17:902:8f8c:: with SMTP id
 z12mr1136958plo.2.1569538573390; 
 Thu, 26 Sep 2019 15:56:13 -0700 (PDT)
Received: from aw-bldr-10.qualcomm.com (i-global254.qualcomm.com.
 [199.106.103.254])
 by smtp.gmail.com with ESMTPSA id r23sm2897598pjo.3.2019.09.26.15.56.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Sep 2019 15:56:13 -0700 (PDT)
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
To: bjorn.andersson@linaro.org
Subject: [PATCH] arm64: defconfig: Enable QCA Bluetooth over UART
Date: Thu, 26 Sep 2019 15:56:04 -0700
Message-Id: <20190926225604.46514-1-jeffrey.l.hugo@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_155614_305012_47FBCE79 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables Bluetooth on the Lenovo Yoga C630.

Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8e05c39eab08..0134a84481f8 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -169,6 +169,7 @@ CONFIG_BT_HCIBTUSB=m
 CONFIG_BT_HCIUART=m
 CONFIG_BT_HCIUART_LL=y
 CONFIG_BT_HCIUART_BCM=y
+CONFIG_BT_HCIUART_QCA=y
 CONFIG_CFG80211=m
 CONFIG_MAC80211=m
 CONFIG_MAC80211_LEDS=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
