Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BBD194037
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:47:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJ5RJLgFd/W8UV6ifHejtdqRwF4jBH+z1Cll8SyC/xs=; b=blzf4sGzDV4Tsj
	lXEjA5zUTLEZz74e9bPxEX9pFnLqQK/WjRdjEgQfyUXRjvcgKf+c1Ov5dJNBH6AKIrwK1RthAqx9r
	/3AKRsegoI1/bYjA3AL6pgmfy3eXZXEuJrSXDqfbBJsxIkT0LcD56UfUGYlbOtg++AREhx4yDgLQl
	T/vp1KciE7KTDMm9QK6g1SDaGaQwdEof8oJsV5qf+DxvuY7SutDJOatNLdVm18IBEIgm4euCkhDw5
	qwCUEGp5EkumlTakm0K+Y4zkThMG0nLKL/wJqkT9D5sfdeNeE/DaYP1E/tAfAYww4JvBJiCVcZmxf
	yFB8s43Pouc+FOosmN/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSqY-0006tc-M6; Thu, 26 Mar 2020 13:46:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSov-0005dT-JD
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 13:45:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id b12so6525061wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 06:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rgm3f5ndT4SRxsUOGSFj42TYFBt6uTox34hQIqIPD3M=;
 b=vGsB2hyfU43rwlef6flGgMOkxhQmUE9TjoLs/7igSqI2YagDre8H9juTWABuxvaXwg
 Y8ezn8Xfq12EC8M3aAeIFAcutFpWbw3h8UDC//DESdqYnkigvkmP4sJpH7hMtnKjBUmU
 xoEmFqNdltbGsLrjVWYBNP8MNTC92SwU9Ek0eqfcyOt/OGS4xvc4akTavDrV2MJNed2s
 rzX7xY8ADUkUMvbP6vU3WW8hyeknd4hZ44DkDkLzb07HGPVxDhPabgK7mC8ApFnvz0Ff
 zpAqIla+twnHkGeYdG0K/9e5vELTWkWbyoeb7SUzEAhkkckNd2gJ+cW3vV79pOVuNb6h
 reSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rgm3f5ndT4SRxsUOGSFj42TYFBt6uTox34hQIqIPD3M=;
 b=VoOywCkhSW3lv90R5hgQylbXr1vRxc8upM2vsp153f7bPvzVuvoDYo3kPMOOT13w7s
 pzl/qTXqOicLA7qGSxAtH6ZWMR3ja+LStDzGMWYqB36eMnGDSjnWqWMyqAG/99VXUMca
 KHWPGKNh22uTyoj6WSlq0+quEVqUMPAO9g4D4wO/yF92XEJUKXCV2d/evaPzQw+AIps0
 xnQTIU9Hnb7pTIAKggf2ADGvumGcdI8VaxyUAT6mQ13ot69/uWvnjtSLChzWjr94xabT
 j2mOP0zPRoW4YxetD2pVX3nYhSnsHF/0dFtmOGTcG3BDLi6sHH0mP9FbF9+FUVdTQTzw
 qUZA==
X-Gm-Message-State: ANhLgQ33fvIg6oofIXKmAcRVZ70DGyziy3ejSnpSSAGRKSfdUau/Guai
 3DuLBFqyFtuqcqiUTENeC/A1NA==
X-Google-Smtp-Source: ADFU+vtuhNxkkXsqiMUzpNuOC+DDKVN6iwl4HMpoiDzFb7EFa0attish9ohgWqYq8mDlRojsNCxpwg==
X-Received: by 2002:a1c:96cf:: with SMTP id y198mr40738wmd.186.1585230315865; 
 Thu, 26 Mar 2020 06:45:15 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h29sm4079617wrc.64.2020.03.26.06.45.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 06:45:15 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 04/14] usb: dwc3: meson-g12a: get the reset as shared
Date: Thu, 26 Mar 2020 14:44:56 +0100
Message-Id: <20200326134507.4808-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326134507.4808-1-narmstrong@baylibre.com>
References: <20200326134507.4808-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_064517_680752_A50B4ABA 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to support the Amlogic GXL/GXM SoCs, the reset line must
be handled as shared since also used by the PHYs.

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/usb/dwc3/dwc3-meson-g12a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index 37ef08493e37..41bcbd31fe4e 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -564,7 +564,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, priv);
 
-	priv->reset = devm_reset_control_get(dev, NULL);
+	priv->reset = devm_reset_control_get_shared(dev, NULL);
 	if (IS_ERR(priv->reset)) {
 		ret = PTR_ERR(priv->reset);
 		dev_err(dev, "failed to get device reset, err=%d\n", ret);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
