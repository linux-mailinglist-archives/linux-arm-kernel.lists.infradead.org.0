Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79081A36B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=87kEUJijF/Ruq3Bx0hzbGLyso2MyAu6Aa9WTWdFw+0E=; b=oamXBtkE1aqYSe
	FbiGd5/ZIQCJ7FZP3eGn/hPgLTlBI1iw7PqSgntWre/eYA1qFsoaLjwbWrHrJ4Iigz4oB+Cmy+ZUj
	QdCRZdfHe8XIFL88JqflTOcsGoxJ1OL7LtDX3uuWioiVrn17YQlpE3JiUw6SBrr0trW612DqAl57B
	PEiOaBH88Z4FqG3/LkbJ3sbqZnrf6flYM2C9K0vrbBJZ+4kWn1KnoGzTs9u04QEhHJWnQDLBQLGhr
	543y88/dThr6UTOIiH0OUonxZIJsqeH3wT+yNJEm3Mm5FcY7IXZ/sWDvXfMYNIWa1mxM5JWPovYV6
	Ifn5YVLdoE76TPg16CIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYrw-0002HF-7w; Thu, 09 Apr 2020 15:13:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYrp-0002Gv-BC
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:13:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id k18so3932386pll.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 08:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=fYqxUumxT5IzKeIsySYYf5NiqkbT2qgSW4iAGSCPZ4g=;
 b=rvc0yXxQy3G1YiA0/Xr7RCrEc6LsM2BXuOhbuxRmxTI+wzZc1BWHnqcqXa3X72Lggx
 WpJl5+O0yKPT6Tirm9M6UaeLbUieydgczPF2FZILZVEtSvjGsID2q91ro06z4KSsWMmR
 u/YEJT8BeaSiHYKyTV1bCrXrRV2PiJrW5IfI1SLJIOWfJJBngG2cNsNsr6208uebp7cg
 bCul0LHHCTBheRtie6NbiAxcKWbjoWbdRMFOutUb0su5/gHnNSFzOlmrs1W6w51bY695
 haZBhJp462H8xJsUP47t0DKibw1OP0Ltx2Atp/bFJTCerQ0aLpMJR0Zsd3JiRZqkoiMu
 /MFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=fYqxUumxT5IzKeIsySYYf5NiqkbT2qgSW4iAGSCPZ4g=;
 b=bJCE1qOl64ZodJ1pEqxHB52Od+7nMY4UDjfgRX6wRSuCBRtNAImx2qEMQiG4W6MUMT
 SFF7QGILscxc5ccQU+LVdc1XHMnNzZUJHUobsawadCNZbnGk7g91zygdeHLDjep/bb2O
 icaQ2oBCRjTYa0CrUWBpuX4xwjccJGAwJiPXhGeWuY4lJ13caOMlpE60/QMZQ9VbMiPN
 JegHwRxDWRaROY1R63bZUwgg5t8q0Qn8LD8M2Dr22ioHxFh61gV0V+YG3KGV8TH0xz2L
 N/WVoXHxretqtRt15V6Q3/dNZix0LCh271C9bWixXqXpv6vTumd4QTKg7psUUWoOnyVP
 3uUg==
X-Gm-Message-State: AGi0PuYsB6t2YZD3GhJiO97evUVzPCwBh4Wt/TQUv7DSSdgLBBXahFw7
 kxEa/mjaRFLWVYAlW6vzi9U=
X-Google-Smtp-Source: APiQypJ6VV4LiEyx2Jinl8UZcVxArfUGPqIR57YAK51gm6nZJ9wc5ZfS5Eba0FQgb+j2Tp2ZyVtzCQ==
X-Received: by 2002:a17:902:8509:: with SMTP id
 bj9mr100328plb.64.1586445200764; 
 Thu, 09 Apr 2020 08:13:20 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:700:a20f:d50:b01b:c4e4:35ad])
 by smtp.gmail.com with ESMTPSA id
 mm18sm2456969pjb.39.2020.04.09.08.13.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 08:13:20 -0700 (PDT)
From: Aishwarya R <aishwaryarj100@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Stephen Boyd <swboyd@chromium.org>, Enrico Weigelt <info@metux.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Aishwarya R <aishwaryarj100@gmail.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] iio: adc: fsl-imx25-gcq: Use devm_platform_ioremap_resource
Date: Thu,  9 Apr 2020 20:43:05 +0530
Message-Id: <20200409151306.308-1-aishwaryarj100@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_081321_384389_0C99F7AE 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aishwaryarj100[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aishwaryarj100[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the helper function that wraps the calls to
platform_get_resource() and devm_ioremap_resource()
together.

Signed-off-by: Aishwarya R <aishwaryarj100@gmail.com>
---
 drivers/iio/adc/fsl-imx25-gcq.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/adc/fsl-imx25-gcq.c b/drivers/iio/adc/fsl-imx25-gcq.c
index fa71489195c6..b0a4dc88ba9b 100644
--- a/drivers/iio/adc/fsl-imx25-gcq.c
+++ b/drivers/iio/adc/fsl-imx25-gcq.c
@@ -294,7 +294,6 @@ static int mx25_gcq_probe(struct platform_device *pdev)
 	struct mx25_gcq_priv *priv;
 	struct mx25_tsadc *tsadc = dev_get_drvdata(pdev->dev.parent);
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	void __iomem *mem;
 	int ret;
 	int i;
@@ -305,8 +304,7 @@ static int mx25_gcq_probe(struct platform_device *pdev)
 
 	priv = iio_priv(indio_dev);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mem = devm_ioremap_resource(dev, res);
+	mem = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mem))
 		return PTR_ERR(mem);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
