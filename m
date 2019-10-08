Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3FCCFFD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 19:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hJymrBToDKv/Wz+aMtrKjvh60oPM79Cm4uvQTl3dDpI=; b=k9E
	FdUNpFYc4jPzBWdsJVfzRXxUgbmtudMYPdhWghPr0+qstaOeDgVJG8TBuOKbeJDVSmoNb7dEeaHlJ
	fUcKjifwzzd/dux7lfuRPvZOQ7tRJ5Lv2xgqBzM7qSqXoMx1wDrzythu8ubqasBfNE6FO/cHZj3XC
	nsYhD/aSTKArf45rkCJ5OW1oUcUucBwnCmEUHrMULAR8dSoa/xzrprOrNm5w0k13PZ0hI2F5b84bF
	gMEZr40wUUdRBQo5/m6tZ4fo4SbZN8BF6rNQYujC1M8oCAyEVb4RR5ghnZ47wtP+Zp/BPUDULqsf0
	nVqP6oF5KFYDmWWMgbwDGrYk1MF/z/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtHZ-0007av-QQ; Tue, 08 Oct 2019 17:28:21 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtHR-0007aF-Er
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 17:28:14 +0000
Received: by mail-qt1-x841.google.com with SMTP id m15so26466954qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 10:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tz5shB3owGrq8sA8x/yjWOyXDqVEKmjORhGq0CJy4us=;
 b=BveAe/760WPEWBpCtzS9or+WTJz4JB+GnKdnMa4R1MLlbySaZh84fT4zjHFNYdxKw2
 OhmfX7OH3bK5HpRX56bwkMFJykzbGjJvyCgj4j6iFkBTfvZzcic40OotZn1mM6PwpUjv
 5Wnu31LUSZ5bm8sTkeEQNB8TYRCrSc/kjq9OeWfaa7TZ8pjFkxcfGZgwiOYMbYThzA/s
 0snOoAR2BhWvz5o90NAtiS/kd+pxpUH7JRPAKsSSbqR7nLYrK+tMd06vD/DUaGiSkhgs
 EUppmxgCpMuDIbfrdGQ4VNFlIpc+BIhMgt3mOfNDM873iS73woYROaqwqq7K0CQR+4cd
 yRuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tz5shB3owGrq8sA8x/yjWOyXDqVEKmjORhGq0CJy4us=;
 b=Zm+9q+40rmSeuTlakNKDq2Df2e+Y5WU+qy+wsjl8LUGjWTboK8BYBO+1yeMAyGQKmd
 XtJqosF1G0gW8JAVunUnBMT9VD5WFP/BV8ajxtriuCH62/XmnpvekKySqR0rH5srmnL6
 K/5fUta6Dg13w0skbJeyPjMXFYCt0NMwPBrQPfIKCYFI5os2F37/pD0eXhfWQIS9T1Ry
 ToIQ2ANVsLsQXBvNV3XVPTdu/KPAyOqTPdF9nSJLHMIt60HZMZijNZWoKOQwYMf2Si+Z
 Biq4Smb+/f+vY/YiuIDoGx7adseZNv68jtLyMc+bGiQsd9gRxT4DB5LQBObD4XNjTwG5
 PvJA==
X-Gm-Message-State: APjAAAW4DpMz431wo/xjM1JvCOgn9pVEdGfCd9aFcuK6hiaUZVLGq/73
 E7FI6vBg1oe0LYwNd63fwfI=
X-Google-Smtp-Source: APXvYqw5qqE4eml4CEdk4j9drjzDHpggRFtN/4jBnXfR8AeZlC/VMQjqhHkjnpo3I2q41L+YEgqByA==
X-Received: by 2002:ac8:6d21:: with SMTP id r1mr11319831qtu.256.1570555692505; 
 Tue, 08 Oct 2019 10:28:12 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id x9sm9080207qkl.75.2019.10.08.10.28.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 10:28:11 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH]  ARM: imx_v6_v7_defconfig: Enable CONFIG_DRM_MSM
Date: Tue,  8 Oct 2019 14:27:57 -0300
Message-Id: <20191008172757.18522-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_102813_517968_A843AA29 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
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
