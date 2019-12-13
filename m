Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC9F11E6DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 16:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+bWaWm0KhQtXQmCobrwU5NDU3pVM+WFzgVGH/kxx78=; b=omf5/FdBqNGilA
	rL+aaIWhVBaq9HLVhNhV7viJFEFPZXOsZD6G76F06apEbkJJh8XesbXim1VNmXQqjdFc658s1Icbz
	QcBQb7dWq8RsOqgSo9+7s2/gbQSgB510QYWGeaas2EDMdLTSZtDv6TeDt1Kejkhb7Ky0lLKGct+d2
	K/HJVwX6VYeVSfaf7T75Zcc63Hgy2fzwhYPopnicJm5TH3OuTCbbrAn/3RkIlkIdzAfGEmebLVS87
	7p+mtKqigLH86ovHLnBiKd5eoyvhzCuTKBYFf2RYIgLdBLCAGYWDtvkdATeVq0q84LFP1xC4KRGSu
	6XxaD4zOLuYAbp0WMGwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifn31-0004kI-CS; Fri, 13 Dec 2019 15:40:07 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifn2M-0004J3-9z
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 15:39:27 +0000
Received: by mail-yw1-xc41.google.com with SMTP id n184so6328ywc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 07:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=faL4fxrbC05HIHUTwDCWI1dvLvUSDjG03Flb8SzrLH8=;
 b=oXNQSHd86d/tmceWqTGR558AlsJ2egWE0oMQLzhFX0wG7k0h+k9pXRqUYYj7t4UunF
 lZOxKiHajcdSdXfGeeRutpYG7l1gzbqwHtjC18Md6l0UosyyLe/AJo2llVEDmSs2Apcy
 SNmmVA1GdJK7f5M76159d0DmCAhIbSDZgYWkafNPJ//AZTokA9Weix/2ESFYo2KydViq
 fzecdysxqcPIyfBwJE5kuDHgV18C48xN8ZRHAJO05dJDndAMCTCF8h+AUoFuOVVDE+4G
 1si2SWR7YqiRPYBWCSYbPrevK1F6kzJmIhnjYaiUtwgslszzxjDTteePwt8KdViaRlnD
 96Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=faL4fxrbC05HIHUTwDCWI1dvLvUSDjG03Flb8SzrLH8=;
 b=Wm/1gFWGnGu77h3P4yRazeiHkhmAart3Clb059xsO54l8aZcysVcN8K2SOxzr6MOJk
 tU6cfId18yHj4lyiQUacw+zj65sq2Vs7KqFd3vlUzmGHwwRL8j6TsbhR1kvShFFCS2g5
 wTeexm7pjIRf0lEoza4RLGNwEIXFjIgXodjVZ4pg8DJ/pQbMNJRPftd0u2oVRobtezt5
 pDjPJfRhj0U3zEDfAs8gDkJM8ckZdvdaObJwMKSF+tMlejvZBIhoGlVtwGXyOVOrAuCK
 GsQ8/NTpAFjD7bUa6NOFA719Wz+S47YnUlNNp6Pb3ze7ARmsWamSZzS6+4PW7RlQfkCY
 7ZmA==
X-Gm-Message-State: APjAAAW+/50ANSVSETbfQRDm/Zn5RUY2dmyeGAu30CKA+z2DgTGOnWug
 5BCaQUyNEVrdSjtg26E6Yv1ulEYyBRQ=
X-Google-Smtp-Source: APXvYqzsMZhR+ug4aRPHSvjvIJVkEj72cpT+DpcfyV3rG/uXTykso2NKhi2h4s4rMHV1FhFPykZ4pg==
X-Received: by 2002:a25:6c86:: with SMTP id h128mr8532669ybc.53.1576251564652; 
 Fri, 13 Dec 2019 07:39:24 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id i17sm4300474ywg.66.2019.12.13.07.39.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 07:39:24 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 3/3] arm64: defconfig: Enable CRYPTO_DEV_FSL_CAAM
Date: Fri, 13 Dec 2019 09:39:10 -0600
Message-Id: <20191213153910.11235-3-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213153910.11235-1-aford173@gmail.com>
References: <20191213153910.11235-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_073926_352072_ADC8204A 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 horia.geanta@nxp.com, devicetree@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Will Deacon <will@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Both the i.MX8MQ and i.MX8M Mini support the CAAM driver, but it
is currently not enabled by default.

This patch enables this driver by default.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2:  New to series

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6a83ba2aea3e..0212975b908b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -845,6 +845,7 @@ CONFIG_SECURITY=y
 CONFIG_CRYPTO_ECHAINIV=y
 CONFIG_CRYPTO_ANSI_CPRNG=y
 CONFIG_CRYPTO_DEV_SUN8I_CE=m
+CONFIG_CRYPTO_DEV_FSL_CAAM=y
 CONFIG_CRYPTO_DEV_HISI_ZIP=m
 CONFIG_CMA_SIZE_MBYTES=32
 CONFIG_PRINTK_TIME=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
