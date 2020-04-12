Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0281A5F05
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 16:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRSUVkb9SuZUT3ErZizbw8/6JNAAna5wCJjrpkClAjQ=; b=qqnt9CSVQfNdGd
	ZVNGG4ayA4ltLvGT64CN1ryWucKc9Dsf6xsrPyK9yAswVaTW2wo42q2wINfGVvHGQGtKlIUMezVGh
	sZsNI8Nwwkj+384BtpeJ8+0ODiTwdFL2OdZO0ObDrPhDcl06pv3MLzJenm3ZuK8K5nrfsld3MenzY
	d+ytjU2HvfzTA039vwPkFt6xsWd08vKeoR3jkteBGSUWzzc+38Jlg9scEXHNxA5estoou1JQhx2zs
	rfqk073zewVycduqRW35gUYeRO2xV/VfF5kLYixiZ26e2i5um6AX2Qqecbl2I+IZ5naTUaBRd2Igw
	V4DdrwY/BpC4Uie1FcIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNdfL-0001WQ-CJ; Sun, 12 Apr 2020 14:32:55 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNdfD-0001VL-Ne
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 14:32:49 +0000
Received: by mail-pj1-x1042.google.com with SMTP id cl8so1674452pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 07:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=/Lj7/UVhiRjtSh2yT7HeljEOXZWQTtN5YOXyQ/wCWCY=;
 b=XZ7fYEt706nnXOsWwkkXV2znCaV1uZBc/qih5IwvviHtoehAHgl7D2w5sm2q4JkDla
 bhW1LSzxRFE5g/tbJs7NLpW3VjRMN77n5H+lblLrdJNtzPurzYwrsyzAp9JsGzDndDkf
 kXm319skeqK3tUz9BETmdCtclFGfvGD6GPfSwpjpkgPZChiJ4iUZ0BP109p11OFQTesx
 OyVrRBu63ZjOyD/pLRBdpjrgjB6OghdeyMaMMalQh4rl1kqT7CbzLCzTLXsP+xDYlCUa
 41wSEX2VxDRSuZEKzIFoU8EGxrinmfawOEiHz/FIIHtFF/Yyv3GeBSVSfFP7I56FiEeC
 YV4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=/Lj7/UVhiRjtSh2yT7HeljEOXZWQTtN5YOXyQ/wCWCY=;
 b=aBjHf2SzE5JvuAVprxEY4p1HYV1UEkm58PUl3ikEgHdnQy+nO9PqJAQlYCsV9GO3FK
 S5szOhl8azIv6HbtcjrKrQxLqfJJPYDtLNqx1kB6xHVfqEy2Ud2gPlEDcdoWDUrQdXJ2
 /GZn3E0nYpw/UghaawXXNUsof50SdCRGRT/D5p6kC8JusdvDq3/3N7abzKGjh8+kxasE
 1G2t537rKu4A5yGaM5vIp5p7bKdsaBK3jMjyw4UhapSQUajuESMgQmmg/9lrIfc9alKR
 vk4k4yxKp2teY/SDoe+YW7fvr+sziRzLcxjfstvVRz69LkB9rsthyHpdDt4nZinuTj2B
 o1zA==
X-Gm-Message-State: AGi0PuZxAp5gb9NkSlMFDg3X0ki7JYfsiegoy8jem3M/Q2eNo1YKOesA
 CT/6orhvUj7mrMUHrz4x6L0=
X-Google-Smtp-Source: APiQypI8Aw8VypliK7WobMXeNhlVyHnh78NM3mTSMY1+2n993F5rJj/bworYiZmPZNFkPwrvout9+g==
X-Received: by 2002:a17:90a:a111:: with SMTP id
 s17mr17362116pjp.129.1586701966819; 
 Sun, 12 Apr 2020 07:32:46 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:992:22ab:f465:67ce:fbea:c439])
 by smtp.gmail.com with ESMTPSA id o11sm5804266pgh.78.2020.04.12.07.32.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Apr 2020 07:32:46 -0700 (PDT)
From: Aishwarya R <aishwaryarj100@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Enrico Weigelt <info@metux.net>, Allison Randal <allison@lohutok.net>,
 Yangtao Li <tiny.windzz@gmail.com>, Stephen Boyd <swboyd@chromium.org>,
 Aishwarya R <aishwaryarj100@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] iio: adc: sun4i-gpadc-iio: Use devm_platform_ioremap_resource
Date: Sun, 12 Apr 2020 20:02:18 +0530
Message-Id: <20200412143220.4476-1-aishwaryarj100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200409141331.30882-1-aishwaryarj100@gmail.com>
References: <20200409141331.30882-1-aishwaryarj100@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_073247_796035_6D7134DE 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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

Use the helper function that wraps the calls to platform_get_resource()
and devm_ioremap_resource() together.Reduces boilerplate and suggested
by coccinelle.

Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
---
 drivers/iio/adc/sun4i-gpadc-iio.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
index 176e1cb4abb1..0f2c1738a90d 100644
--- a/drivers/iio/adc/sun4i-gpadc-iio.c
+++ b/drivers/iio/adc/sun4i-gpadc-iio.c
@@ -496,7 +496,6 @@ static int sun4i_gpadc_probe_dt(struct platform_device *pdev,
 				struct iio_dev *indio_dev)
 {
 	struct sun4i_gpadc_iio *info = iio_priv(indio_dev);
-	struct resource *mem;
 	void __iomem *base;
 	int ret;
 
@@ -508,8 +507,7 @@ static int sun4i_gpadc_probe_dt(struct platform_device *pdev,
 	indio_dev->num_channels = ARRAY_SIZE(sun8i_a33_gpadc_channels);
 	indio_dev->channels = sun8i_a33_gpadc_channels;
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, mem);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
