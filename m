Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9995CFFFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 19:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qBwww61uokmb2aBHzIvqL/ANLtc1o6qOmULXoln54n4=; b=p+N
	s6AtxfzOarmzgsNTTTaYaRq1mGE4KNzDMtZpCrtHI+x8nIppBboLxADClA/D7Z9PX9HtfYXUdUO2g
	6TZO4EBnYJ++eKpHivukMr30kMW+JmSUNIuPPpo0BvpMoNz6DQG9hEQ6/NM7sNMnyeKEAqN3Gz0hj
	5F2SSyxXi4LHQul7c797rzotFc1jZiu7v8qP02fnaCm+1RHJb82jF7ZdhvS2A3U8PeVw5yH2xnGAN
	hoUubtEvL8EQkyJnRttYLOvq9ADO15+9eTby18xxzjoHEq9sYA+GfftCfH+4O1FX8LmpfOeDqlsCZ
	KE8qos0JORzos5EdW/PxICSzB1MV1OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtRO-0002sc-M0; Tue, 08 Oct 2019 17:38:30 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtRH-0002sC-MS
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 17:38:24 +0000
Received: by mail-qk1-x743.google.com with SMTP id y144so17543198qkb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 10:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3qsKg0ZSVScq2K+s/sek8VkbkP6VSfkRjBAF3RzaycA=;
 b=gLmutSoO/qnV4bvXdlA6cVIwsRATrUs6uRC8YJbAkubPM4GLJQl/Lh4z8BDHnWjbu0
 rWCf/KXwzpaFEzctmvQhWmZLurxmFMm7rIKONqwYB5yuQYIk/lrMUeFas5xvA/4iSWJu
 lu0i4EfpOZfgnvHXFgoOwk3c9ug/Fqk1fsREdOoeL7hCpLHmpS0347vrNsnDBAOyVyy3
 4PTk5hhMnSxVgHTdRfS8d0nO0b8Abw1A1nihfmeOSlZxUB1nhvG+v7/d7Jjl3lYf5NGi
 rbQ/USg9DgeHF9yrqnsX/fNNtmLBeQzsVzK3I91F4P618cER7Y5dTXUmJ4AX5F4MQhlN
 3eew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3qsKg0ZSVScq2K+s/sek8VkbkP6VSfkRjBAF3RzaycA=;
 b=iQ2ij018dnT/mWU5C7pYNHJd8/72T7lfgzEtevNRuJejyR+HRUXbq+EeeCCPEsObrS
 8P/inXPyh9ec0KHlbpsTjF1uil2NzUqqzVJI+UwInk8+5WrDvKAgG8GlWxh6MjexoOrn
 MMrzv3zO64cysWC9PMRbQmXENPv4EW4W0h3nF0D2mo/85wzLDjfEebs6LdeEj/XYv/gE
 Myyi1t04JRt+KBcIkeXWXQt9FRCUpmXf6UN9+0I56Nm48moh2w1q6Vp3s02LzTKIbwOD
 Lvrq6Ie4paVGjGSHLi/42NPP4YzhIQw78TU2LpvBRrCKZqByBd92U67a8R3dObBiRyPk
 IzBA==
X-Gm-Message-State: APjAAAV0tgVhBuI9h1UvPds5Racvi1xWKHyfcCCp36a7LnrQt0pc/vdd
 HesjcmxKexgI9epg+Uai9lc=
X-Google-Smtp-Source: APXvYqy4uL5ADlIDdCZd/ULPnzSHa4MBmUTn5hjlpOfxwkW/tPzQCmQs7Amgqa5WBfDe/8i8i37yUQ==
X-Received: by 2002:a37:d52:: with SMTP id 79mr30453306qkn.300.1570556302206; 
 Tue, 08 Oct 2019 10:38:22 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id f27sm8676296qkh.42.2019.10.08.10.38.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 10:38:21 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2]  ARM: imx_v6_v7_defconfig: Enable CONFIG_DRM_MSM
Date: Tue,  8 Oct 2019 14:38:13 -0300
Message-Id: <20191008173813.24941-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_103823_753064_D8683FB6 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jonathan@marek.ca, cphealy@gmail.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 2eba69071b4b ("drm/msm: Remove Kconfig default") the
CONFIG_DRM_MSM option is no longer selected by default on i.MX5.

Explicitly select CONFIG_DRM_MSM so that we can get GPU support
by default on i.MX51 and i.MX53.

Fixes: 2eba69071b4b ("drm/msm: Remove Kconfig default")
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Added Fixes tag as this can be seen as functionality regression
in 5.4, since GPU was enabled by default on 5.2 and 5.3.

 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index be2a6946716b..28733b0a7190 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -277,6 +277,7 @@ CONFIG_VIDEO_OV5640=m
 CONFIG_VIDEO_OV5645=m
 CONFIG_IMX_IPUV3_CORE=y
 CONFIG_DRM=y
+CONFIG_DRM_MSM=y
 CONFIG_DRM_PANEL_LVDS=y
 CONFIG_DRM_PANEL_SIMPLE=y
 CONFIG_DRM_PANEL_SEIKO_43WVF1G=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
