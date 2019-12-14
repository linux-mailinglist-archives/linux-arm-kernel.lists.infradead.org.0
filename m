Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CEB11F320
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 18:56:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=osZP6mWmnW/rUS1NjC2xvnK25LpRjdaEpbWKWOspeH4=; b=HLehpYVOJbo9JWh2+7szVyZ6ey
	3zQPKKrsrVFrG8wb6tve2W02PHQFNwGKJiYr3FwEW/LbUzLxL+4OHLzsSiq+7qyv4qs+qHBp7N8hW
	UfaFDp8pMoKo/ey+3wAaAC49+u2bHZeyMU2661bSDDsC3iFsSvSRrYN4QRi5yenh2hqmnZVhLhZpv
	L0Z8QO/Qody3PczMVrWQvtexkC/V4OKH5ZV7d6FRDInWntlWEchmR22qXdDvUZN90cL82EYG1bD/W
	PO68nmLHtSTihdCXAfdQ70ZTXdnoxfI6ip0sa1kgkf44YpbgbyPgiup87vIRO88192CfmKa2K1PQ3
	mcZVg2vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igBeN-0005aI-52; Sat, 14 Dec 2019 17:56:19 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igBdA-0003Uv-8W; Sat, 14 Dec 2019 17:55:06 +0000
Received: by mail-pj1-x1041.google.com with SMTP id n96so1132019pjc.3;
 Sat, 14 Dec 2019 09:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+BU/Ff9gTll4l1H4cHIf9pN8etRhbZ4P9b/IJDTytGQ=;
 b=etYuhZFIpCXV1kkHjldlFQSwc0TrxbWNSKhQinSIxVhNYBw8CEktZpcQFrLkDDF5K5
 +Hsam8gZ8taAgwKYcXtKae2DICNa/JmCyH3kvS7XB0zTRIY0TJHSeG68zdGm045/AUbR
 1Z1XSJoe2L4CqIeUX/+NIBoVqUBpAjYl91Yp/GeG2BvYdHn3A+WyBoXkLvsfKCYYcnbm
 JaTVP6TRg7evuPWJApVMdGiJG7Rfl3BAD4FOd0aTybSzCnxYWajApbMeCYieL/hV6qvf
 k6jIqlBdfGrtylYtS7K0+d2ygq+dZJ9r7ke8j7C2GWhYAbp2yLZxuLkpvIQusP4V85Qp
 ZO+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+BU/Ff9gTll4l1H4cHIf9pN8etRhbZ4P9b/IJDTytGQ=;
 b=eiJVTiGzaSYnpbYNzXj3emh0cRiHDCxgeotVfOxgj4F6cPVYBq/mytiMbc9Sz6ezkZ
 0SQJ9pEHU42hOvr530xJ2Vim7xVeF5roKmOyahKvMDIDhzV4Kgk0ZSzfgmM7WG9TT5cV
 oDXATbI7rEf9a4r4HtU7WhIvyPVutQsDaR9H17TvkxkwYKYJahZwmve7JYSUjQiqcf1n
 q7bSipi8kS09oHMGU9KR3PMwxJI/o5DLxqedb488bjXRo29X2RSpTcz02c5WucxNHaab
 NoZHApeeOdfR91m8SsnyUJHp0D1SU3k+LdP7UhqTlNuo8LdCvljiI6m3p/B/CCI9YYNa
 RGmQ==
X-Gm-Message-State: APjAAAWa9/0XLwIVpr6pUbXUyAcKrgVj5Utz8dYwsGTR9T6CyBx+j637
 2thowu1pL77zYNahzN2266xsDW40Obs=
X-Google-Smtp-Source: APXvYqzDtz2PbMdoWI7FnmJ/zsXx+7KES2ydK86NxuECS3KFBEaYhRKYIxzKO0i61f2CWAU0CDUJ4g==
X-Received: by 2002:a17:902:9048:: with SMTP id
 w8mr6142048plz.294.1576346101451; 
 Sat, 14 Dec 2019 09:55:01 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id d22sm16263997pfo.187.2019.12.14.09.55.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Dec 2019 09:55:01 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: khilman@baylibre.com, leoyang.li@nxp.com, khalasa@piap.pl,
 john@phrozen.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, kgene@kernel.org, krzk@kernel.org,
 mripard@kernel.org, wens@csie.org, ssantosh@kernel.org, jun.nie@linaro.org,
 shawnguo@kernel.org
Subject: [PATCH 04/10] soc: zte: convert to devm_platform_ioremap_resource
Date: Sat, 14 Dec 2019 17:54:41 +0000
Message-Id: <20191214175447.25482-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191214175447.25482-1-tiny.windzz@gmail.com>
References: <20191214175447.25482-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_095504_526752_9B8B8A87 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/soc/zte/zx2967_pm_domains.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/soc/zte/zx2967_pm_domains.c b/drivers/soc/zte/zx2967_pm_domains.c
index a4503e31b616..9f2a274d2759 100644
--- a/drivers/soc/zte/zx2967_pm_domains.c
+++ b/drivers/soc/zte/zx2967_pm_domains.c
@@ -113,7 +113,6 @@ int zx2967_pd_probe(struct platform_device *pdev,
 		    int domain_num)
 {
 	struct genpd_onecell_data *genpd_data;
-	struct resource *res;
 	int i;
 
 	genpd_data = devm_kzalloc(&pdev->dev, sizeof(*genpd_data), GFP_KERNEL);
@@ -123,8 +122,7 @@ int zx2967_pd_probe(struct platform_device *pdev,
 	genpd_data->domains = zx_pm_domains;
 	genpd_data->num_domains = domain_num;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pcubase = devm_ioremap_resource(&pdev->dev, res);
+	pcubase = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pcubase))
 		return PTR_ERR(pcubase);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
