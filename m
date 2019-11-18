Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D818100481
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:42:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CogYj3JAPs7p91FxPBj0xvxsc/iaN/+ncMjRcaHvG8E=; b=R/thPthUBeib7o
	mJIoCfpW/i8b1qQKah6TOzFnV4dvs32HxMGnV719WS+VcMSCISEginQo7oLwpI7uANQdIKYrCQ65S
	crU8uUxb0JWLpHWtGU9JiUcq3021CpLayzjp3Xv4fNYBUJQQcn1RnWD+sruF9+/cd0IfgCG7RHVl3
	Zghwp9augSVFXkNvF2AZ5BTNsZ+kYmUnGEg0V9VLBSbJYZHw3pnyoJCmhxpxWyaHa4WvjbjzQbY+l
	1TG8QkA4V/zpa4vvl/t1HsEoz44OCIFQdtaVoSQRGj52EVH06YtfwR/vu6vEmBUnsCyj6fAWzeIpO
	ECZU7kGT4IzU8An9t+og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfPn-0003dI-R0; Mon, 18 Nov 2019 11:41:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfPd-0003bP-RA; Mon, 18 Nov 2019 11:41:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id r4so10267368pfl.7;
 Mon, 18 Nov 2019 03:41:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ea8AtOwQ/gMHrbAh9hOSuI0GnsfUP2/RqRm+KGMP9/0=;
 b=pylT9lIw0bTFkxmKB5JcHLpUUBy7rUAvdmqogLQeU0GQR9WSMJLNIadVaFfawWiNW2
 YGfcI+owG6oEM8AkrjFbhMhTWs4d5o2Eyw6dyEHKNJC6Hr8VaCKuS5P/yOq2zWsp2vGN
 PXQusdHZX7lOrdBNgB0AIVrC6aNoYohd0+d06uL+dhEEOAVCyazWXXjnDjZ60kn8DcF4
 osHCp7HsWKWl0tVp5JnkEqjkpScZBdnXolFGMsqYuAY0bwp93sJ/DI5iW3w2x8QRA8Yz
 CjS9bgFfJ/yt7gqnF45KWQPeI2nBEv66t6qn9bTLjAps01WHB4uu6Zr7IY71Y9VWk1Nz
 hYlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ea8AtOwQ/gMHrbAh9hOSuI0GnsfUP2/RqRm+KGMP9/0=;
 b=GTQz/PW1crBuAu1GMrymxOF3IfevZb+vgUEQhF66JxSbN7+/yFp8b9ToLFKXh1wEN1
 FkLZOPSq3ohhSD4AiYZOZlwPNcSoWBbk/bUhus7I4i9RlRq01B5HAD5qnuANpT/+A0i4
 ysFfizMGvqcbBZ2D0mDqT3JD3l7sRnpgaM49HdNV/bfEcihETKTCgwIs6AzorB2XlPJT
 3mKvw5W/qqeHvevCqpZE3VCLdxRuY3B6N7AuCeKYnohJSFuyk9N0WCdZAJijgYdJ1VKo
 CiDYZhq+O3fgcD0zeg7P5/z9MiNOwrfWFOt/JKwYENFm8ZeVjM+UTNAzca77fq8k249U
 bhUQ==
X-Gm-Message-State: APjAAAU8IgrDRHG0iu/vkQA1hdIWM9r5RaXgTB0RfnCD6h5hzMVWW0MK
 tL6HvjA9dr0tEg1drDsJaJM=
X-Google-Smtp-Source: APXvYqxPXdfD1riKGP6ycbMcTm7jgmPDhZ6Z9zNCVB7POjIw7Y/66PW6oHD/HEsn3QEHkJNGiDpIUA==
X-Received: by 2002:a62:2ccf:: with SMTP id s198mr23517241pfs.42.1574077305359; 
 Mon, 18 Nov 2019 03:41:45 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id w62sm22656779pfb.15.2019.11.18.03.41.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:41:44 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] usb: dwc3: meson-g12a: add missed regulator_disable
Date: Mon, 18 Nov 2019 19:41:35 +0800
Message-Id: <20191118114135.25666-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_034145_881702_9581F387 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Felipe Balbi <balbi@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 linux-usb@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver forgets to disable the regulator in probe failure and remove.
Add the missed calls to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/usb/dwc3/dwc3-meson-g12a.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index 8a3ec1a951fe..d9723d1ad8eb 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -458,7 +458,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 						dwc3_meson_g12a_irq_thread,
 						IRQF_ONESHOT, pdev->name, priv);
 		if (ret)
-			return ret;
+			goto err_regulator_disable;
 	}
 
 	dwc3_meson_g12a_usb_init(priv);
@@ -467,7 +467,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 	for (i = 0 ; i < PHY_COUNT ; ++i) {
 		ret = phy_init(priv->phys[i]);
 		if (ret)
-			return ret;
+			goto err_regulator_disable;
 	}
 
 	/* Set PHY Power */
@@ -517,7 +517,9 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 err_phys_exit:
 	for (i = 0 ; i < PHY_COUNT ; ++i)
 		phy_exit(priv->phys[i]);
-
+err_regulator_disable:
+	if (priv->vbus)
+		regulator_disable(priv->vbus);
 	return ret;
 }
 
@@ -536,6 +538,9 @@ static int dwc3_meson_g12a_remove(struct platform_device *pdev)
 		phy_exit(priv->phys[i]);
 	}
 
+	if (priv->vbus)
+		regulator_disable(priv->vbus);
+
 	pm_runtime_disable(dev);
 	pm_runtime_put_noidle(dev);
 	pm_runtime_set_suspended(dev);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
