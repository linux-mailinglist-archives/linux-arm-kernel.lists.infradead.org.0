Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C195E98B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:02:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kN63HQ3k2G1AKYOg8EJBx/0BhIKGSYOY/8mF55kyS5o=; b=rVgZz1mev1TIC3uziezAc2cKKK
	Mq/Md1gc+lC5SyJ2942UxU3g5ihnERAbeN6wALdQ+3auryLLrlegw/1bUrVkJ6QHcxdh3zevEl/bq
	hmS+E0C++Ci4HoLMQKOKfFhwnuhSipgaN1M1/QN75erblAHYuiovGhcSBnawu7BCPuWHvBA5p/Ug7
	j9XTL7m/nFlJvTRsC/5p50h+aY8a+TTXY+HwINYYkavtJbsVzncLdG8hD2d0sfpNsV34lzBgYT7t5
	BPptulZ7l51p87rXLXN3/0BY/703FQN4Xztbm1vuCR2G/1u0WSxaaadl/YkmuVvGYRj/171xgToSP
	WmTnT/LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjsN-0004BN-CI; Wed, 30 Oct 2019 09:02:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjri-0003qb-PY
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:02:09 +0000
Received: by mail-pg1-x541.google.com with SMTP id p12so1043773pgn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 02:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=19R5LsKrbgqwghaZ71mmjHUlNxFRBymDHjBQo6p8lc4=;
 b=iXm81CQavjLlHdERzGPrpTTyW7r5NcqLhXFQ1WTyFwd+Z6701Mb2qRcRfg5NKqcz9T
 nzePMn/HZp7MECls2uqe67R5z7/Kt84ihDs9n0aseUOZhymnypq1pNIRqiT6x7e9JMi5
 4P8nxqOnOnymKHdeojgbnKk9W9P10K/gCNd76px0xlCr0Ok7i7BigOn/D99Lu6x9cEM2
 khUU9lr8+DL784zXy36KHdzoAVcwpDpoQdx2Ya9i5v1E+7QCJ48ShqIcdLbdKF5YSSGz
 j8OaVO4qQAyXo1Uzd5vKUwAscz2pFh4nZdgUkthhf4AWXGYlWJO6Kb6enL6DZnyYynGq
 soWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=19R5LsKrbgqwghaZ71mmjHUlNxFRBymDHjBQo6p8lc4=;
 b=Xl65cXgoqTV5PMEUl3YqPCMkgEydpxJbamDJmEfPndsl3nEpegNmEBYxnYIvNFujDm
 SV8mkhJvI6RtwHU8aMS4DpLbepga3WfCdHwQH+lGk8YhJEoKJJ4fsf8HP6WHNFSu1Kzr
 Cpj0JrZFo3AEo75Al8E2/X8OwXqPlOtvS7CkgdCF3OHAYQ0a5QWKyTcBVAPOxmhi5NgW
 iKuHxjBS1XBe2rsXXSwNPzoUonNJQfM2+RrzSvBcwhAtoaD15y2/dqtbwmZMMYgm4DtM
 MYOJIEM8RBzEYbDH+WctipQEg5nUkzYwc0VzdrO62eGXsFQahLCBnW4pGfXTi6eJkqCr
 UP9w==
X-Gm-Message-State: APjAAAWkWvWovqxGIyOIZRYU7bju1FmkFWU2gtkXYTWR7jOmCnF34ljP
 Jfbfg2qrZ2CT4sTBfFNp0MIj+BdNRw==
X-Google-Smtp-Source: APXvYqwUuGARa9qA1Xv26SDwtPBHlu97DYP79Xh26qXZ4IpI9ZV/Bzj19v7ntAvjvWo3KKyAV/P64g==
X-Received: by 2002:a17:90a:a598:: with SMTP id
 b24mr12829604pjq.46.1572426125350; 
 Wed, 30 Oct 2019 02:02:05 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:618e:77d9:c9fa:423a:3851:8df4])
 by smtp.gmail.com with ESMTPSA id g24sm2070351pfi.81.2019.10.30.02.01.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 02:02:04 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH v2 2/4] dt-bindings: arm: Add devicetree binding for Thor96
 Board
Date: Wed, 30 Oct 2019 14:31:22 +0530
Message-Id: <20191030090124.24900-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_020206_898028_99641245 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 darshak.patel@einfochips.com, linux-imx@nxp.com, kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree binding for Thor96 Board from Einfochips. This board is
one of the 96Boards Consumer Edition platform powered by NXP i.MX8MQ SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1b4b4e6573b5..8016174d5e49 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -239,6 +239,7 @@ properties:
         items:
           - enum:
               - boundary,imx8mq-nitrogen8m # i.MX8MQ NITROGEN Board
+              - einfochips,imx8mq-thor96  # i.MX8MQ Thor96 Board
               - fsl,imx8mq-evk            # i.MX8MQ EVK Board
               - purism,librem5-devkit     # Purism Librem5 devkit
               - solidrun,hummingboard-pulse # SolidRun Hummingboard Pulse
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
