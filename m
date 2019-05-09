Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2BA1936A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 22:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RH1AzS1CQrg1jHwGfFUl+EUcCwUyYQuLc/aMOkaEY8c=; b=LkTJhLToUlwc+i5t3vvjX3m4xF
	zNQwmfW3UhHVRbkz3U3BP1rL9frFIsuandVBnKDZ8kQ5qC5nbGOTMxNku8Ak2CQuWZiz+wQXiVQl+
	ef5JLDw+xaEKmxzE2tPi40fcB9hBGvGEBHgudNDMao/TrqEl8a1/kDBXUFk5Ck7iakzdeiXwoo2Mw
	w0nN/W0kKGTIDWvM7Nij4l19f80eGD/qxfMwDuH8KpIHFfqDs/6ugVWx5pyaEPVqU+6sOO8oWiO3V
	DIJ52155MtPnAV+u11Mx3oHv/SPAPbCar4aFztOkbT+drWiV6m7g4G4HZe/pXXXVaMVdWPL0ZMyhQ
	wjmXgy3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOpgb-0000LP-RE; Thu, 09 May 2019 20:30:37 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOpgD-0008QL-Va
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 20:30:16 +0000
Received: by mail-yw1-xc43.google.com with SMTP id n188so2952770ywe.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 13:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TA7//dX4vtBRwfNw92xuXPb7M1etmOxtq99BxrnfvNg=;
 b=UdhFSjIjYPEQz069K1zUOUYpxwVXhfQpOnt8uw/FEn3ACH1y0XsqcFJq7hoikXnIN5
 7pHFpibEtzxazXcGCsvLOZaj2xpavBnlJidIg/GH9UDLSx9d/2nc1pFAxDX4LZP7z2E3
 aWsVgKYbbwktnAXc1/vvlntIwpaLUn0SZqYV+zUmm5Kp7AdDXuXPpZWerRZWBabIuucj
 noHlbC60V6XwuQlSTQx8M603v4bl00GDk9lVlGWT8UJw3OcNmYvV7Orj0Fa3w2IvPQFh
 x6dd0pLQT2cJqtMHPn4xxx78/cx6yDbRMVIK3Gb9NtR0mxPF8fY7rupO/tfaYd0AYPl1
 GGtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TA7//dX4vtBRwfNw92xuXPb7M1etmOxtq99BxrnfvNg=;
 b=ZSX91xeS9+Y4pi8arBLZcZxCfc5vXt1miKahrdUgKcDINo2pS0Amd40y8PfBbC6zrO
 uvpkp5ZKW0gHBNNZKFKFMnYhoLA8w/r4LNVnw/0U28aWt1bCbJPdIT7t3YqrrX2jYZM3
 9DpVEfHWapn1Pe0+sOK2pdQOOVi95WERWl6kVcE+4fntkhN16VtlYPO6y3hpaunrjNOh
 9jTN9kqjfp388TC0B/HWeh5UXstRlUSFPMBg81zLpkJSoTsSSAI4K7ya65Xp8sc4bcYO
 AzAye+6IpeqXnM+H0i3kp9cCSre7xu2LzAwB9oBxyojxKbs+h78kbdLTCoQ2gHmr83pi
 8/bg==
X-Gm-Message-State: APjAAAW76bQDBHOR56aer2MQceLAh0C39GIKAIDKjmm5JFzAfQOqH51T
 0rzpG6reZQ/Whz6EbruUHw6jszL6
X-Google-Smtp-Source: APXvYqya9CY9+vVMA3jwse8sBZtcJuBFPP+dj9DSeNP6zoCn9RUV57N6dmyMltfl9TGSA04reMoPfA==
X-Received: by 2002:a81:9b8d:: with SMTP id s135mr3469060ywg.481.1557433810958; 
 Thu, 09 May 2019 13:30:10 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id u6sm896150ywl.71.2019.05.09.13.30.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 13:30:10 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] clk: bcm: Allow CLK_BCM2835 for ARCH_BRCMSTB
Date: Thu,  9 May 2019 13:29:56 -0700
Message-Id: <20190509202956.6320-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509202956.6320-1-f.fainelli@gmail.com>
References: <20190509202956.6320-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_133014_263980_8DF985CB 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stefan.wahren@i2se.com, Florian Fainelli <f.fainelli@gmail.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARCH_BRCMSTB needs to use the BCM2835 clock driver for chips like
BCM7211 which adopted that clock controller, make that possible and the
driver default to be enabled for ARCH_BRCMSTB.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/clk/bcm/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/Kconfig b/drivers/clk/bcm/Kconfig
index 0b873e23f128..0eb281d597fc 100644
--- a/drivers/clk/bcm/Kconfig
+++ b/drivers/clk/bcm/Kconfig
@@ -1,8 +1,8 @@
 config CLK_BCM2835
 	bool "Broadcom BCM2835 clock support"
-	depends on ARCH_BCM2835 || COMPILE_TEST
+	depends on ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST
 	depends on COMMON_CLK
-	default ARCH_BCM2835
+	default ARCH_BCM2835 || ARCH_BRCMSTB
 	help
 	  Enable common clock framework support for Broadcom BCM2835
 	  SoCs.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
