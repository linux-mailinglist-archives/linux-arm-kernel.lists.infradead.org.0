Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E15E11D396
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:18:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ItusnKaJOqhiGcNILyv54fdz19wrAFmkLMtz81tVWPY=; b=u7o0hYAXrxOGfGmfmR6MxDtIs+
	Am+oYXd7C1394sNeWDWNf4p29VWiJGFHq26ttRY/3H4NCFFlRQvq5NBAmWJl93hejKnDcdfO2L/vF
	Z2RL9S028koT1cONpBl7QWAt4uxYoCt812PcdR7I+3uHTcv5+D7njRww8TiRh+q/5ZJYz0IsA7fbq
	a1gA0QrWWZq74NSHumI+Z1Iw+ePADsNq9cPtMoZEzipUU+a3FDVIYnbG5TD89tPIP4SHgZizBAdSw
	idhV/9MqA5lpufhKfEdER0CZC48QefGwSxqCQ4ozu9VEIWJxV/HMLU3QN60otdu8J5B3cS7dH7Mmu
	EAUGvaFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifS6M-0008VM-TD; Thu, 12 Dec 2019 17:18:10 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifS63-0008Me-MG
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:17:53 +0000
Received: by mail-vs1-xe44.google.com with SMTP id f8so2094662vsq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 09:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kRfKAPfMEUm/2zkHboQLQaylg2t7tUTfEAgsKFsqRwk=;
 b=kWMkVLaF5J/gfIhP5JTmWGQ2KzV9kG2a0uL+IoO/BSzuvXv/0ivsuSG1odSRxMt07z
 95AWvm4Tr18IzUOCXt0r+/3+LzO1Uj4fAPWzEPKmk/vmuLoG8l0marnXnUD7vprvVfku
 sbTAlPyuC3OA1PVMrHf7uWLuTX9mozCgCDRUDttkoGqrb37TmmCXs87+hTr2tOUIVp7n
 BeNt5xvErq33WbHzPEckgv1lwRkxMkj5voedlEBCpoE5CymKq/xpFrqvP4DYH4hShrlG
 VRSUvCAGF2I/se/KjFIcKuhSKptScUTP4Joflikk0Q9Gsrc1JbCsF7s9k7YcUmguWUgd
 fPoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kRfKAPfMEUm/2zkHboQLQaylg2t7tUTfEAgsKFsqRwk=;
 b=YvFgTOa/M3rPHMpieQdi2IbSiRTRyYPEDEf91deLifcTUYxGLT8NexGEjMM9rxMeO3
 REsqTW4AdSz+wCdv9LNvtDQcEtSzzB9AAX/IAdPsogE497WYxJMCUS8g74C/I/djueUi
 iBy+U9L8gx2vFTnCmetUDpMXZN9Czof4s36qygpLQBAgreZmkxb+m3gkl2L8gLPyFfh/
 x0inWVqVk0DbRwMbhm9zvIf5jUZkCW+8j+LkvYUy7nV84aoTxxuCFfAZp6qAdLpQEef8
 6dZc/HQiO8MwuFKzYdneiIa2H6+nLy6BaU5h26uco9sk3pG7gQIpv0rcGzRnbdjdo5K8
 0BQw==
X-Gm-Message-State: APjAAAViOqtdGgc/N+xIDDbbrBkzH2L61iKykPzQ/k05eE2ZQCNAZl6E
 rYMp3XRaAv9TbH/LWbmEQio=
X-Google-Smtp-Source: APXvYqxJ4kY7LqW4cC0Ruf0k9jB/m0MDR/MN8O+V6C+YRc6quplpNwBJe5CJotpscNj1PGfc7g+/NQ==
X-Received: by 2002:a67:cd85:: with SMTP id r5mr7619017vsl.79.1576171070462;
 Thu, 12 Dec 2019 09:17:50 -0800 (PST)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id g140sm4246759vkf.18.2019.12.12.09.17.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 09:17:49 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 2/2] ARM: imx_v6_v7_defconfig: Select the TFP410 driver
Date: Thu, 12 Dec 2019 14:17:04 -0300
Message-Id: <20191212171704.23604-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191212171704.23604-1-festevam@gmail.com>
References: <20191212171704.23604-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_091751_753729_3C1196E8 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some boards like imx51-babbage, imx53-cx9020 and imx6q-utilite-pro
have a TFP410 DVI bridge chip.

Select its driver by default.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index d5f31e436032..e1a219573966 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -283,6 +283,7 @@ CONFIG_DRM_MSM=y
 CONFIG_DRM_PANEL_LVDS=y
 CONFIG_DRM_PANEL_SIMPLE=y
 CONFIG_DRM_PANEL_SEIKO_43WVF1G=y
+CONFIG_DRM_TI_TFP410=y
 CONFIG_DRM_DW_HDMI_AHB_AUDIO=m
 CONFIG_DRM_DW_HDMI_CEC=y
 CONFIG_DRM_IMX=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
