Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B021E3001
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 22:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzGvyUiApBaJuUFC5AfURdstCMcxHID+J3G5woN0eyQ=; b=jKxBo7Bz4S8f3d
	CB9My9hxI7gBjkMzBJHG0keoxJtH7pxlz3Hw9gp82PbEME/co0IQxLbG7b9JmAfeCErSRNThTugtL
	EScf2FFO5Y8I+IUxqhoCVzqlnlLO9vHka7RN/8ro53m+w0Q/1/O0KnP0pUz5nKblRV/ucAnSiEgnr
	PufLvIdGXp339ICzPfg2HgJeziAGteLSUoLNM7gqyrtFjlNsPU+MAib8HeHwyx7L1J6WjaeqJBnne
	9RyZoKgkzFh79OUWLPlvkXiCcPbFoTHB8qj1wRdgff3kPm25hWsez1X82xwdDtqbTN+TK80IQ+JfQ
	Tvp495wLP69AENAcAj5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdgDW-0007WG-Vb; Tue, 26 May 2020 20:30:30 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdgDE-00075U-VE; Tue, 26 May 2020 20:30:14 +0000
Received: by mail-ej1-x643.google.com with SMTP id y13so3318634eju.2;
 Tue, 26 May 2020 13:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+HLyQeHEwRkmBN7Mz1fWdkXpoemib6Ct8xH1uqDFVgM=;
 b=jXqpT17hC9igpJGL8HqGKNSS1UpVOL7bro0lhrsTvwHSTf3+2sZmgHAZq3AmMUN1u4
 qmFWaqtO5r5SV/aJJGR7/gy/iFe3UC1WIkMs/RVrQtoHON7mQ81GTCHXFax3O1QnW8e4
 SsLD/tkyohqFtjaLi7YLYiqi3eq0y7ZCtPWuY0S0xMWuH4oF/EMAWtIJdgYvFx4x9g4P
 AMQGTDivXwDTtuctM3ElwNCTec3EHAb9u2PA8KUWGMC8i5HmPwR5VxsktsrLlZSRtD6H
 mO+B/1E5RbIv/5q2xI4e5ROZOCsZY/1nyzUZtts/2X4titAry4ZX5yFDy2AWNPlSxaie
 vfmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+HLyQeHEwRkmBN7Mz1fWdkXpoemib6Ct8xH1uqDFVgM=;
 b=Ub6oCarWJCHqIpiF0/5WNNn708DzFltz07Yj5pIHSCmJ59X2zvlwIsPS+Uqa+Ae+e6
 nnv/FP1ls3Xx6FhQHZEX4jbXuPYGD8Wfty88tpcaazs0ivWyM6ZvRzuQTacET67vweTg
 0vxJ1QnQDw5eLhhuzHqLQgY/V7/OFbJkI4VYi4RwE0eDbJ8tzm9uJZ9JOlzGUi/IAA2U
 q6qfXxiXlkNFC8+8W79xl6yYKImip2IK7BZcsMAXYBFtJ3Pjjy6aModxKRJ6DwlD2hMe
 9395KqUzF6EQYa2hLeY20Oz2zhKHTGEZa5Ih1Hk7g7bVaeP8eIrQo/wtrvCp1gHXXIu1
 xIDg==
X-Gm-Message-State: AOAM531XETdVfmej9TDcfqhl7EfGrn7EJb6oQLFt1T5z7YBy+6vXlACS
 2jPeyvwSMOHAMYxWyedgdi0=
X-Google-Smtp-Source: ABdhPJxqtvm6ZozNr3OfWjYHXrv9+mhZTQjYNNza+YL7N1NIhEwIs64tPCmgerGMOLsrKUYhFRDdAw==
X-Received: by 2002:a17:906:4815:: with SMTP id
 w21mr2784486ejq.533.1590525009201; 
 Tue, 26 May 2020 13:30:09 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f137189200428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:3718:9200:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id ce16sm735517ejb.76.2020.05.26.13.30.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 13:30:08 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: balbi@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-amlogic@lists.infradead.org, narmstrong@baylibre.com
Subject: [PATCH for-5.8 2/2] usb: dwc3: meson-g12a: fix USB2 PHY
 initialization on G12A and A1 SoCs
Date: Tue, 26 May 2020 22:29:43 +0200
Message-Id: <20200526202943.715220-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200526202943.715220-1-martin.blumenstingl@googlemail.com>
References: <20200526202943.715220-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_133013_012048_29193F07 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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
Cc: hanjie.lin@amlogic.com, "kernelci.org bot" <bot@kernelci.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, yue.wang@amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dwc3_meson_g12a_usb2_init_phy() crashes with NULL pointer on an SM1
board (which uses the same USB setup as G12A) dereference as reported
by the Kernel CI bot. This is because of the following call flow:
  dwc3_meson_g12a_probe
    priv->drvdata->setup_regmaps
      dwc3_meson_g12a_setup_regmaps
        priv->usb2_ports is still 0 so priv->u2p_regmap[i] will be NULL
    dwc3_meson_g12a_get_phys
      initializes priv->usb2_ports
    priv->drvdata->usb_init
      dwc3_meson_g12a_usb_init
        dwc3_meson_g12a_usb_init_glue
          dwc3_meson_g12a_usb2_init
            priv->drvdata->usb2_init_phy
              dwc3_meson_g12a_usb2_init_phy
                dereferences priv->u2p_regmap[i]

Call priv->drvdata->setup_regmaps only after dwc3_meson_g12a_get_phys so
priv->usb2_ports is initialized and the regmaps will be set up
correctly. This fixes the NULL dereference later on.

Fixes: 013af227f58a97 ("usb: dwc3: meson-g12a: handle the phy and glue registers separately")
Reported-by: "kernelci.org bot" <bot@kernelci.org>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/usb/dwc3/dwc3-meson-g12a.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index ce5388338389..1f7f4d88ed9d 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -708,11 +708,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 		return PTR_ERR(base);
 
 	priv->drvdata = of_device_get_match_data(&pdev->dev);
-
 	priv->dev = dev;
-	ret = priv->drvdata->setup_regmaps(priv, base);
-	if (ret)
-		return ret;
 
 	priv->vbus = devm_regulator_get_optional(dev, "vbus");
 	if (IS_ERR(priv->vbus)) {
@@ -749,6 +745,10 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_disable_clks;
 
+	ret = priv->drvdata->setup_regmaps(priv, base);
+	if (ret)
+		return ret;
+
 	if (priv->vbus) {
 		ret = regulator_enable(priv->vbus);
 		if (ret)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
