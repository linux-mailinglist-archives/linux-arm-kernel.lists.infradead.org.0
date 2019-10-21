Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC72DE2D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 05:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a97sKF5oP09oWdPrjiXmoNRmXrruDEyA87AUt1imTtQ=; b=aB2FPPIYWMchKM
	xL7LH+2DoRXsUEHAazggYeNqZUErDe3n/R7DNpFbK7G2HDzfM1ihQKLVGSweMZiN5dIc+HS60swHQ
	xVI8ymYLJH3RXRc2lr8KuZ05mnbU++ZL6umDCfuZIvKwj9HJCBoHkWJAUgGQnbr9eAinvLDTGho0u
	WbpkmXL6bymhz0hMfjSiUuEwPBJKW9wMFTPSpego31zueZA7smQGDVvgxtaIIylHYPh3BW+1Uoqfy
	0naZXkSQOHfdoShKrE7YUMmPPMXSVrCyvBXpf7NSQELiyHzZswj+iExcs6eD4ncItzPuOyzIC33qa
	wF/VQm3hLDB2PYA++uig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMOnr-00047p-Kc; Mon, 21 Oct 2019 03:56:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMOnh-00047S-6j
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 03:56:10 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so7554836pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 20:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DzN6sUwiXsGiG0QstYd2dvfeg6/B1PwWJvQoun4TY3w=;
 b=x2DVwu8hxWO/tIGOY+mw63ppGx1pqI/eZFZwCc4QdjzK87vadub6fctBWh8VqjgJ/o
 5fHfeKOKt1y8Mr9FuqAH/YznIJFYx/ZWwodC+oCkaKcP4cdsupYCE9WxRmzyBJ5QHUFM
 2ZtT/m+nVjlvMsaAiVil0s77A7AIZVNBqseSHcVcNHmJHAKz5ncfbRyiNOoLSA6JFiUs
 HVh2lk9CcQeEXtZ3y7WLJFeV4S39T7NDxg7u8MDELtVwoAL8r59vKZGSZHf+6fa4+UMl
 gn95cPMDGSwgS+YKpdVbYpwWIuNSsQON+qVRdu7W0WWDJ+/QD0A5b7I1pDpgyQhFui/c
 NEwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DzN6sUwiXsGiG0QstYd2dvfeg6/B1PwWJvQoun4TY3w=;
 b=KanfADeL3B6zB/ohWiAI0LjunnSO9vHZvr38OXcGsfEa8LcYGhonrERVSvHnuupRHV
 UypidRb3Gtltlf61TZR2tlshJto+rKjpQMB0X64k+fqD+oLGbiuOTQSkSsPXh3ylkjFi
 OEuWu0YfuB8Xbz9yND6TJYFOsR/ESQk25B7+MdqWz2g6n3f/rJVMqoKMY3oKdNpZV5E2
 odAtrVIcBsymo5LAjMTeVeV0kwqIA9SgIjNgBz1CAOvMLWXeym9H1TOZfHwYgFnM4PE8
 O0gRV0w4GxeNoJ/oJiuUOWRlGdsIii1bg8Nuz3qz886Mzx/W2Jz22aqzMKl86Dt1s57w
 N7ww==
X-Gm-Message-State: APjAAAV4RH0KnREQeuxz6HUiu3CbVXe6PlD+c2O0jADzJbjYQA1uST1H
 tyA0B3trrWNGoZ94qUBysaRJ1w==
X-Google-Smtp-Source: APXvYqz91vILzKwCwMpXw4c4MDum21nEhzA0IzWpvQxk5Xjbqxh2R6MjJYT42v2BMZwkh3wIlyC3CQ==
X-Received: by 2002:a17:90a:3702:: with SMTP id
 u2mr26313063pjb.57.1571630167781; 
 Sun, 20 Oct 2019 20:56:07 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id o185sm18760540pfg.136.2019.10.20.20.56.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Oct 2019 20:56:07 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Olof Johansson <olof@lixom.net>, Maxime Ripard <mripard@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH] arm64: defconfig: Enable Qualcomm watchdog driver
Date: Sun, 20 Oct 2019 20:56:03 -0700
Message-Id: <20191021035603.4186317-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_205609_249907_DD17FEC8 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the driver for the watchdog found in the application processor
subsystem on most modern Qualcomm platforms.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4591bf1303da..f3d95f77fb0d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -463,6 +463,7 @@ CONFIG_IMX2_WDT=y
 CONFIG_IMX_SC_WDT=m
 CONFIG_MESON_GXBB_WATCHDOG=m
 CONFIG_MESON_WATCHDOG=m
+CONFIG_QCOM_WDT=m
 CONFIG_RENESAS_WDT=y
 CONFIG_UNIPHIER_WATCHDOG=y
 CONFIG_BCM2835_WDT=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
