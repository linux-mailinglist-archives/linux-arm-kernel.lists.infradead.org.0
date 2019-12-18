Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 577861247A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:07:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmN0miK0wpNu8BCktr+YRW86dNE5YlokRIaStDJ4BUY=; b=HgFbXa5VvKZKYI
	MJNaytPgCQb1pSk88bOWNCWjylV2aGRpLbEhKRlEz+5QysCBNv5q/IpjvILf8CVk8rzNkzmHqz2Nd
	ay8wbJJnBr0cUDQz5Dm3uVFCndAjVGJWzPZNXAGirlwWkppaiwaC6MNEspG/4xtGT6gtsOlcmD6tx
	Coh3KH153KV99rWroqd7OaPpe7Zb9JqzMyDkfe+aOYJTWstvXTIb3EVR1kwIY/sMj0TkTuUfhz99E
	0BQ5kiOTJxDBr8SZZKXV9JX4gPv4UIVgzWze86nBXHualVcqNkU3zzzKOkAPj0/aqwtQW20BOAEem
	noc4ypt7iTEQ3+AxGjbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZ2i-0002Np-RS; Wed, 18 Dec 2019 13:07:08 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZ2B-00020I-2C
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:06:36 +0000
Received: by mail-yb1-xb42.google.com with SMTP id a2so691158ybr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 05:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZLvtTu0iHUAbQNrPMJwjkYDRQN1HEyZB81c7bvFy51I=;
 b=LmEgq8T3GhYVnbpj2z1maAorPmuff99uKGN0ZfuimRcg6sYy3qRPp+LdZr4PRj2aRw
 VZOO1lwkj6vpN+pJ0y4z+rcfq2yMaxfXFXAiTXwG7ZW8EIiL1Z4XLJT2p8KZcDTfqbY4
 XH7byI1snMcp+5L4HbJBnpkzxffwk2fXKCHN8n2c6t1lSRKnH/e65HPsOt91aH3bsvg3
 gPUf1VnQr+ExTS6QQ1xiP34m1WGhYSF0i6YHgSTxqBnMNMYw0n70WJATjSus/sCWilkd
 jzhTtPy/ka4da7jCc4mowI0Hyc01ACDCM3LJblEAtchxEUH2qe/Xfjp70yRyl+Skvs4n
 veGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZLvtTu0iHUAbQNrPMJwjkYDRQN1HEyZB81c7bvFy51I=;
 b=BU7Fh4TnrCT6eiVWxXvRSGnh+yFDyW/wmJ/3Y7jsupIps5VXyMpjcwkFCAxyHSSxwX
 RtLOkqZsn5L0g1g1zv5a6TRZh1P/3nVu2B6v6nt8pJVhjylQakDbRRFYte4dLKduJdd5
 x+MIHVqIc2fYuZLYLpG+Z2DteD9wDJjrz3NE506Adm/iKKV3P8JndU5HWhmPWkGKcVYb
 TquhI6UKzwOMtAjKxrniz1F3wGwG81dntS9NBOmrW6T+1ddaMaXZTa71DkaV9jRsEZm2
 fMEk2pZQ8xI8kmduWqBQSi2R4CdvG/W4cwrAazRVogf9DCaKyr0kwZe5NuTIPr/IsR8R
 9ObQ==
X-Gm-Message-State: APjAAAU4p5DuyM+rWD4kNyuzkycZ23H9l/jGE7Og7ET/s1s5l4abLWEo
 5rmKlIbUo/FE6IYfFdnOxKXzB6xMoCM=
X-Google-Smtp-Source: APXvYqye7Sy3prxUkdr/R+2wy3dwiz8/O/H9PLFNLjpaDK4B9Cnxqzzc6zJaVzkU9mHwpecbCHQApw==
X-Received: by 2002:a25:d109:: with SMTP id i9mr1595655ybg.46.1576674392819;
 Wed, 18 Dec 2019 05:06:32 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id r64sm909603ywg.84.2019.12.18.05.06.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 05:06:31 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 3/3] arm64: defconfig: Enable CRYPTO_DEV_FSL_CAAM
Date: Wed, 18 Dec 2019 07:06:16 -0600
Message-Id: <20191218130616.13860-3-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191218130616.13860-1-aford173@gmail.com>
References: <20191218130616.13860-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_050635_121222_1AA8D90B 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
 Will Deacon <will@kernel.org>, devicetree@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Both the i.MX8MQ and i.MX8M Mini support the CAAM driver, but it
is currently not enabled by default.

This patch enables this as a module.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V3:  Make it a module instead of building it into the kernel.
V2:  New to series

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6a83ba2aea3e..d08a34371f74 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -845,6 +845,7 @@ CONFIG_SECURITY=y
 CONFIG_CRYPTO_ECHAINIV=y
 CONFIG_CRYPTO_ANSI_CPRNG=y
 CONFIG_CRYPTO_DEV_SUN8I_CE=m
+CONFIG_CRYPTO_DEV_FSL_CAAM=m
 CONFIG_CRYPTO_DEV_HISI_ZIP=m
 CONFIG_CMA_SIZE_MBYTES=32
 CONFIG_PRINTK_TIME=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
