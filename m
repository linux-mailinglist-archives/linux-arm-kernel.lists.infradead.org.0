Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6670F1A5ED2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 15:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2OYrJV69LwdheYP1eq5jNV2mRM/ofbVUuQtqasf/rU=; b=hC4JzHldYuwbZs
	mzD/0kdapQExHMggozs1W9M++kn5HDKbI7YmTNtaU32ePWtVQSrC6R+v5hM97oEnDuULGe7J6t5lu
	p9CxtfTn0ioOyZvBE1H4UK5ucq/zCZJvIxbNVa9xPXGhpF/D+Cr7n86NihoBpmGDtbG/RfVTssHF4
	IwvgPT11se2scQmcuBQhQ3Iydhh+Cpe+i01kT42Ysf0GXjMb957wpUIwQ06BvaPo0+S6W6FmXFQJE
	nOQ5qeXzws9mXK3olpy9ZETZszPfrK4InvLqfpMikcaoj63oMAlV1xbYGcBMhUw2UXn/oGLYw8c9t
	d1aMG8okbA0vjhJIxfyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNd0k-0003uD-0k; Sun, 12 Apr 2020 13:50:58 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNd0d-0003te-HL
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 13:50:53 +0000
Received: by mail-pg1-x542.google.com with SMTP id g6so3333210pgs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 06:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=yr4f8795yllh8etiAKj5X4bBRbEHSbY1cKo9NjjeXps=;
 b=QX0U6slWP2AGznRjDMkwzNr4ZA5JV2AJkc63xgo6v8HFUJjW7DdabRBnZfWW9lJBht
 287iYq9GHw/BCg4Od/Uk9s+ggSOAm+C1JQWLc147Tof61eFgFG1Ca4Gjb5SGcfc9vdip
 sRoO2rA81De8UQB/aDfyIp05Fi5tw9Ljpav4Ddjo92Hv8KzmP1/1McLD9fBuwsPJv8/g
 JwQsi2bkFTh2CTowrCPfTEFDP4ntxLfFgOt6EzROHkiVzpn+fBtcPJ6BXk3vV7mEzMuv
 SDW5M0g575OR578TlXMQrd43fHGNagj7fMGgnLTVtFHSdvPdI4XrWwOLS2uBXPN1t1vg
 bMvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=yr4f8795yllh8etiAKj5X4bBRbEHSbY1cKo9NjjeXps=;
 b=akBAmUsyM2esnTJVnBLxb0avvKnsJo+5XNCg0WUaOcFORYan4h5FuyzKajT4WBrRix
 akZ1BsNljL5Xb1ggSQvWXA80d/hIwsJ7HjOTMmoUtyUJqBRAooF5ain7KAQNH8onIppu
 cSUfJhU0eOYY8/UMxgFkl0OQqoUHYU/4Y7mTvNCepgAcv25eXymIAXCjsLSIf45IjekG
 2vDzBPUGSyxhwAp7EvXQ8+xKhCjlyy4GNYJoaU9OTtcp55AFAlhgSL4B07tJe9z4gEJD
 NXEYyDZTevtPA88Ll86pWb769vzPG4QipfRRuGfFf0Z8ejgBu2xUeYph8c3Sthtj/5BO
 LfbA==
X-Gm-Message-State: AGi0PubiFTQR12r2q6c/D0zQB6QOcz2ogseKvAoG7KllO0VR+VYnKTVH
 85Rxd2L1nbTVnRtldaq2JPE=
X-Google-Smtp-Source: APiQypJUYacPH+5THzRbWEwODPJ2v1Goc5TraYqTCPY0PhTsQ3a72PwQJ6IZUOtjuGiAhskIVFNdQQ==
X-Received: by 2002:a62:16d2:: with SMTP id 201mr12833489pfw.295.1586699449608; 
 Sun, 12 Apr 2020 06:50:49 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:992:22ab:f465:67ce:fbea:c439])
 by smtp.gmail.com with ESMTPSA id ih15sm6776352pjb.27.2020.04.12.06.50.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Apr 2020 06:50:48 -0700 (PDT)
From: Aishwarya R <aishwaryarj100@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Aishwarya R <aishwaryarj100@gmail.com>,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] iio: adc: fsl-imx25-gcq: Use devm_platform_ioremap_resource
Date: Sun, 12 Apr 2020 19:20:20 +0530
Message-Id: <20200412135023.3831-1-aishwaryarj100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200409151306.308-1-aishwaryarj100@gmail.com>
References: <20200409151306.308-1-aishwaryarj100@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_065051_598345_07648A15 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aishwaryarj100[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aishwaryarj100[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>

Use the helper function that wraps the calls to
platform_get_resource() and devm_ioremap_resource()
together.It reduces boilerplate and suggested by coccinelle.

Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
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
