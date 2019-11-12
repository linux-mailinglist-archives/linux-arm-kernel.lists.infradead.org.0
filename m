Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEA2F8894
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 07:31:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5z9hsqthQ8MR0sMsdxZakSjBkf9I1cjsA+0yRDIAV1g=; b=qpmGujRcoRFIHR
	jvEmeNXOlSriHSHYxy7AeNrRhzIohoWegph3XfAId/OSe8jMTITbObrfnn2LtoFyCfhgDcFm+5Y9K
	FkjboGUH4Q0xc9ef6H48ge6yO9/OmdfsTlvFDJs+5z9C6Rex9ijfJiFfoUIhgDhmHV2UX2zUu9afU
	32piXP+YuPoiB85w8ZoYSkrCEdxA2PlwYxc0z6tO1EP+yuajh38j1Y4bsf6Q4BRGqyDB7anC+HOK6
	HU2Jcuewe2UYSQnSJu+Fr71jOWmD0SjU6y42hZS1XwA+Y7bjH1myZMSgDGRqeEFiKdAlXIc25mC1x
	Hk/443bdwKGH3CZay3lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPhf-0003LM-1S; Tue, 12 Nov 2019 06:31:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPg3-0000zE-27
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 06:29:24 +0000
Received: by mail-pf1-x444.google.com with SMTP id q26so12589529pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 22:29:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iAbZBF5j8Y1P7hUcJsCBw21+LuTR3/8WczhaBBqC5k0=;
 b=QCkdi+ZISodfzvbdFETIEqUgSSp6K0sw8FsoUS2p06yLZlg3HX2TAWvE8uWBBqsvrv
 ASCgiJ59D8K8DH6BhOUYcVObKEKOFN776oxa2/TNZml45Sb/ugZlzQXFyDATD/JWfWdn
 rN3/kQTO2RbzY6xSFCvbeRWBo7D7z9rpqqXbb2mP9zu2m62gTmugkifM2z9DVjy/SmVL
 jJaSWWNalkw27bfuYLft3TyMSmc7hT0inBLxdJ029uKtzi5k9P+rCAhaQ2q9HNUTsV6G
 f/0KF7+qFYUrzHQih5hNhcLfDYTZDcahQPSUHtsPcWbHYN25NE2teKLoBzENYmrIHmjL
 CbYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=iAbZBF5j8Y1P7hUcJsCBw21+LuTR3/8WczhaBBqC5k0=;
 b=V6xzPm3zKB+GysYty1wWIHNv5imEGSAy0rsDCvljwBwfbS4rtUBo57XcetwUE9zzBB
 /hh4Gw8ckM5DB7GSQ/HU8kUOFTWJuQ6QM8iUEJCv/zcqs7+W8jx1nFBejTUj7u7Zhf8X
 ad7acx0Rl+I5Y71W3HQU8pVhc3mHbQF/DUMlTZsabbe6SMZaDr+v8sq+7u9Dv7NYKgJJ
 QLdXNMyShd+jQkNeCGPHYasFSWSv7TTCotlr+4iwe8GP2g5eNRHXXamaF3HumKa3LHZ9
 MjgX6kZiTZwV+8aInWH0sYFLg7P/4gU43bNbX0ZFjN60lESIoagSsr1cFPV6aH/G9a11
 u2Sw==
X-Gm-Message-State: APjAAAW8iBCPXkvKpPmc8veyFtuqLO1uZ8FjM+ZtQZbn++kka7IBjsml
 1vMDiImq88v5idlUr1sEJe4=
X-Google-Smtp-Source: APXvYqzcFzXk2d0cG3NG6RVGa0b1UIviUUiS2uyDVvJEKFVJFFpYoRq7HOyZXxUgKN6zMs//YiOn+w==
X-Received: by 2002:a65:624e:: with SMTP id q14mr32915005pgv.277.1573540161457; 
 Mon, 11 Nov 2019 22:29:21 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id x20sm18573707pfa.186.2019.11.11.22.29.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 22:29:20 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Subject: [PATCH 5/5] ARM: config: multi_v5: ASPEED SDHCI, SGPIO
Date: Tue, 12 Nov 2019 16:58:57 +1030
Message-Id: <20191112062857.32638-6-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112062857.32638-1-joel@jms.id.au>
References: <20191112062857.32638-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_222923_173817_BDACE04D 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable drivers used by the ASPEED AST2400 SoC so the multi v5 defconfig
can run on those boards.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/configs/multi_v5_defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/configs/multi_v5_defconfig b/arch/arm/configs/multi_v5_defconfig
index bd018873e47a..56315e1f81ff 100644
--- a/arch/arm/configs/multi_v5_defconfig
+++ b/arch/arm/configs/multi_v5_defconfig
@@ -165,6 +165,7 @@ CONFIG_SPI_ATMEL=y
 CONFIG_SPI_IMX=y
 CONFIG_SPI_ORION=y
 CONFIG_GPIO_ASPEED=m
+CONFIG_GPIO_ASPEED_SGPIO=y
 CONFIG_POWER_RESET=y
 CONFIG_POWER_RESET_GPIO=y
 CONFIG_POWER_RESET_QNAP=y
@@ -241,6 +242,9 @@ CONFIG_USB_ASPEED_VHUB=m
 CONFIG_USB_CONFIGFS=m
 CONFIG_MMC=y
 CONFIG_SDIO_UART=y
+CONFIG_MMC_SDHCI=m
+CONFIG_MMC_SDHCI_PLTFM=m
+CONFIG_MMC_SDHCI_OF_ASPEED=m
 CONFIG_MMC_ATMELMCI=y
 CONFIG_MMC_MVSDIO=y
 CONFIG_NEW_LEDS=y
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
