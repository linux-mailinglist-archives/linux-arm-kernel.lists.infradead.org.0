Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1237C11E518
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 14:59:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A+XcsWsZ4Ck32fyifaIjnwDeaFSek7evoJkaFOmC3u8=; b=g95P316CqkbsQxaO/LrihJQLLL
	yLWkdDHqEOiKAjFt+qs4DySoZDn6tuJQT0VwH33QoIFu1KsCS6yNA85IzVMjOwJtEbgT98+qj2MMJ
	n7HJNd0JY4QUPllIVDG5q+Uh1y4ZGuTWX70NrR8+xpjQSHTwHlHQ0qUDRcc1B0FPT6r/D9vfueUYh
	82AlqC2m+Yi+13sQ81nh7u9qTo95lb3y+8Ub7Cc9pPwMR1lsiNYRlt3yl8OqpxJfnmvdiZAqAGN0M
	Wu8R/PXQX+LBGCEtsBYkFOPkrpDhp6yluROPpa87CpJmtYaWU7KyATtD4aArkwE309/rWyexO+cqv
	gGFykVfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iflTR-0002aW-VP; Fri, 13 Dec 2019 13:59:17 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iflT3-0002Ok-3V
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 13:58:54 +0000
Received: by mail-pj1-x1042.google.com with SMTP id w23so1248955pjd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 05:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vcUNQxR7kklwsKYBxB+fFt1v2oL8rvHjk/tVQSdWeAA=;
 b=EFE9gbV0c7TC7yH0DM4JMFqPzwtx2/mShQaSXX7dLYtmDXa7RyVMKKuOXY28klniZg
 0ayqVkD6UvEloW2Y66ddKuh0jL3EaeVfqSG5HSqcYlcqzE/toAkgR+9phdi9CXRDShsk
 SmroiraAPwOMKlo1MrOQI6u79oH9a3xEbazN+RIwJtZFQmF0CMVgb5+yoBifE0gMmp4W
 qUHE21rfhfUSTYcSzgo++MwF+wekwkYAe+Yhn5Wd/AMV0j64hS6BDJCOoCGWWgCWKmYi
 uNcmONcBuQowyz7sjKWgiyPofQ5SIjc0u9eZEqL6zcwL3qtDPWL7WOABmbjbIL36mkyZ
 xnRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vcUNQxR7kklwsKYBxB+fFt1v2oL8rvHjk/tVQSdWeAA=;
 b=LvW/zUf4lkCYS6wEf3VPqg0t8HrjHJhjGdd6SbeCcvSGY8s5LrnLlBxGtiMGGgTEij
 p0zr38+rLgTWH303nNATy+RpoeiS/mmY3IyUfQhLo6OgSBht8FXiIvnsqBqgLovaAOz/
 lJKa8gKvV4RFysNrtzlrc/2YmFxmrtTaVCgKxau667ZGIqfd7exojNU256X3qviuOm7j
 BKZSwpmOGqn5FM9yrADZQN3a5AN+EtrTM6jL8u4RKpnl0Gy4MWTTYwGJ9ixwHs4Mdyuq
 eTaZ/brrtm68cm8DuB9g9xoOzhjuXOGFTYpFa2YdUanWAVehgroAiroiqMOqcUFH70rQ
 2sLQ==
X-Gm-Message-State: APjAAAUMDEwRF6cZbtNyeg6FLgOyuJOdv0nh1/J++exkuBY+WMygbybv
 L0rzdiVgucdoOqpZqZLB8mg=
X-Google-Smtp-Source: APXvYqzaLN80aPfcy7vGwykcX7yav2qHw0Y40Aml6Mu12LESmEJrpbBNSzAbx1OaeHR9FiUwxsJ16Q==
X-Received: by 2002:a17:902:b187:: with SMTP id
 s7mr13765841plr.97.1576245532462; 
 Fri, 13 Dec 2019 05:58:52 -0800 (PST)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id y6sm10778538pgc.10.2019.12.13.05.58.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 05:58:51 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 2/2] ARM: imx_v6_v7_defconfig: Select the TFP410 driver
Date: Fri, 13 Dec 2019 10:58:38 -0300
Message-Id: <20191213135838.28697-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191213135838.28697-1-festevam@gmail.com>
References: <20191213135838.28697-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_055853_205297_DD404E9F 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Changes since v1:
- None

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
