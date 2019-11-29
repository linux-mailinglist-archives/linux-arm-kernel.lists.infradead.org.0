Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F25710DBD5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 00:41:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TSE3nAsgPQd1NY/TL2des12Kpb8ZCcHaIwb9HQ5/hSI=; b=rV/pO12zFpDpm0
	+1vcFPWbJ2Nk6nitZT02D23nXguAh/Qnqll12YzZD5G6FZxJ6A3FCptgqCRpsd2/fba5nM+uJShgP
	FXBX+pJZ1rMVGxh4Ov68seta9PLXhudyHlJZLpcnzWZTTCtDkBYvKCa7sB4Y8G6ldNAGZb7s6F4Z+
	M2r9wgqLIMiyeX/Hm8PRsFI9pADAAN21iWw/zzi1oQ7bsV3pFME9H6LUKow489ua3c1pkqF2DhWy3
	N8JrkpBNEyi9UUDeHNHOYyzaYGSrI0agkNd/2otq3/eXIq6WDXjMrisx0LRQDZUuvAPgVs6kRXaMY
	3vbTljfkn4eHGbEqgchQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaptL-0007I6-Ou; Fri, 29 Nov 2019 23:41:39 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iapt5-0007Fm-Ni
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 23:41:25 +0000
Received: by mail-yb1-xb42.google.com with SMTP id l129so3892057ybf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 15:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w6aGDbK+jDFr0DNlFhH0AkU2TMmVEMp+XdVndgg8nhk=;
 b=G0nOoIYuH7iygIW+7m+vw7OcTTjb5hGom+lsRcfPKrKhwAJs7W/AE+X8QxKmSh8CuQ
 7hzaKYmDfS7/arV+t+Elnz/1gcRBK890ztf6ONeWYC26ltGQXq4ElN2oNkq+yA/vwNAe
 aCUcTHWWDHB3NYqgs4Z3/LkY5k7OMhTnqcPwS77RbsWz9Dxbqz+tXs6XC+U0LptnRGiG
 ULmTdkWAiFVzFMI+0RmDSoLqJWKeHvE9dK2rYQhZua1xvVZyxCwpIFuNgiHN8QpXJNNL
 TvpDOQwltEWohEIyZOwduTHcL9Zr2FNpRm7YCn6C5ewkj8ybQHZ4xoEkb9DSJRX+8vWH
 q0wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w6aGDbK+jDFr0DNlFhH0AkU2TMmVEMp+XdVndgg8nhk=;
 b=uRWk7Fy5GPlaLp6GH0yboOFM1dX1zJrwVUxt+eIjupd6rojIMSW+D5ZpAbhOhSb3OL
 c9zvSuKumy89iAo4F+8QwQixrnyN9cLd8GcVsSh+kpDN9v7TkQQP37WWE9zkM54+kOhS
 KWovHwfNCOwcy9rg4v0YLd3scthG4oT47w1XXrgGX2ye+ewO88l4R6eXqIXLKpu1Qs+e
 iPkO+Gof7uy+CWk0RjPNo70A4alnXY8EJ36szQOd8Gboh7NEYV4d3szyn6uzvCOvornz
 +szTu9MvmcrEfo7pTK2VXOWaak57xIlWuXx7TOp1ZwPo5eGwxf71oueGzQThDsO3/PAp
 rWgQ==
X-Gm-Message-State: APjAAAU4itEwgm92vnI80oIgJNrswWeYo3DlG7zUBqcVVl+mJ9FNx+6i
 oqDKsC/lhaKXnLqWs/3psYML9SnbYcs=
X-Google-Smtp-Source: APXvYqwSwVvflrmSiTOxPwXtUrgWDNSNsJzEGcrVvMwdUZsPvrXCqY4vNZ9+/VEarJY8JTpntrv8MA==
X-Received: by 2002:a25:5903:: with SMTP id n3mr42708691ybb.466.1575070879029; 
 Fri, 29 Nov 2019 15:41:19 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id q131sm10636436ywh.22.2019.11.29.15.41.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 15:41:18 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] soc: imx: gpcv2: Add support for imx8mm
Date: Fri, 29 Nov 2019 17:41:07 -0600
Message-Id: <20191129234108.12732-1-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_154123_795390_80BEC926 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The technical reference manual for both the i.MX8MQ and i.MX8M Mini
appear to show the same register definitions and locations for the
General Power Controller (GPC).

This patch expands the table of compatible SoC's to include
the i.MX8m Mini

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index b0dffb06c05d..67c54cbb6c81 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -641,6 +641,7 @@ static int imx_gpcv2_probe(struct platform_device *pdev)
 static const struct of_device_id imx_gpcv2_dt_ids[] = {
 	{ .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data, },
 	{ .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
+	{ .compatible = "fsl,imx8mm-gpc", .data = &imx8m_pgc_domain_data, },
 	{ }
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
