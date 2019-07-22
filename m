Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1917770136
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rrakCXRf1h8OrC89u4X/tMvd86Tn5Xf4061AIgX4xfc=; b=qsrCo6HhPCpVABL5eyPAn1hr3o
	KiCzyLwPRRCwM46Ar9EnlAbYstwZM65nFXzxcWJMvqUWAp2K2498qGO9z80nuscbVomY3ydQWmFtX
	fWtckuwYvBSX3EOPJn9l6+UeX/n+3kJ6hwlRO7YI8y3VJSMLpDbR7vghqfgLfB/W+STPOMTeQpxLu
	tWQ+M7yF8WWbaKHCobuNexZO/1yKTiiMKryK/4TOIjQJpU1FgUZp+IqUuOZMfp05mgklhNOjHJObN
	fRAO55kCRo1l7OcvQbZ0EhFrPDZRehOCHI8MkO9nJTmY7c0jFFxiGuIrjpvOfjkaAzvZjPF44zm/D
	4X3Ov25g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYVZ-0006H7-HW; Mon, 22 Jul 2019 13:37:41 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYUt-00061T-W0
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:37:01 +0000
Received: by mail-qt1-x843.google.com with SMTP id d23so38532645qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Q+okFPa+KepAW1uFFHJfBTWak1oZB4zdUtgkmjL2a1I=;
 b=tlAk08vv5Dkb2Lit96r8JBFdpLo9Yo9lzWbPRZJ0jSH5gJ+bAmJjiyzOJbcgf78p39
 qyCLsC9oontGcaDxO7tb/+mleA2GyjinMKj0AXo5HHSs6lVn+tDRgGwc8kEuf1tAki61
 FLg/mdqOZfa8bSaib5S73eUeJtoYVIB8fqS0FWndOg8UdtjLh0RiJ8Gu/T6OpH+bY6mW
 DbQa+VILBqOEcIrB1G+6toDTHSToB47uiUr42+9iHJvDYaIDFJofhWTwjrV+THbJ7EVk
 omvYLwgKBnb1/pRNj3aBHH+q0jOirKbuP9W3J1LbYf+xPp6s0BnxLougxPpXbS7urPnj
 cPGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Q+okFPa+KepAW1uFFHJfBTWak1oZB4zdUtgkmjL2a1I=;
 b=o6krsP35wFjqh8Xsv+2ElHXDWaFjWxBIg27FTA+a/8omHUqSrxEjKSj6OIsrUAyonN
 /mbShtst+V4IglOnmcAfFxr4nH7YOXGCV8v56iut8JRSBU+11p/c5vqf8u5cO2f3H8RU
 xGThmZfCMdQrpGLI3kGxtkl4LU9ZGw4IFQemQUCGcaD9qreNMOG+/r3JzZhlvbAtd+KF
 Fm9TaPaduSftv+KiZe0N4P/Wy3uCg531muXMlfEQ4bpQyCLK4r0qXESuoJqfcZ9Zw1+E
 P7tORVkRVbqdD1SC+Lhp7qhnmmYGXeNhNqah4E4KbpHsXcTDKnpgWDW8QxjeHvqTmzOs
 0IAQ==
X-Gm-Message-State: APjAAAXAKT2eIAfNpkdMCQXsoPIoDybbZIgmiyElapWIYLZSCnHKLkxV
 cob+G3jjFh5jumPw7Fzwp2M=
X-Google-Smtp-Source: APXvYqyM+ziAjRc+8RWe0ERdQo2UsBP3pG3YR1H0Mpn047W+bPd1tvoGRCbPhAFXVPIlGl1GFEvcBg==
X-Received: by 2002:ac8:3a63:: with SMTP id w90mr13727419qte.371.1563802618765; 
 Mon, 22 Jul 2019 06:36:58 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 x1sm16894599qkj.22.2019.07.22.06.36.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 06:36:58 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 2/2] ARM: imx_v6_v7_defconfig: Select the OV5645 camera driver
Date: Mon, 22 Jul 2019 10:36:51 -0300
Message-Id: <20190722133651.14729-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722133651.14729-1-festevam@gmail.com>
References: <20190722133651.14729-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_063700_027405_B909EE65 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OV5645 camera sensor can be used on several i.MX boards, such as
imx6qdl-wandboard, imx7d-pico, imx6ul-pico, etc.

Select the OV5645 driver by default.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index a53b29251ed4..bd2e2f5d1c3a 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -272,6 +272,7 @@ CONFIG_VIDEO_IMX_PXP=y
 CONFIG_VIDEO_ADV7180=m
 CONFIG_VIDEO_OV2680=m
 CONFIG_VIDEO_OV5640=m
+CONFIG_VIDEO_OV5645=m
 CONFIG_IMX_IPUV3_CORE=y
 CONFIG_DRM=y
 CONFIG_DRM_PANEL_LVDS=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
