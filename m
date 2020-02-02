Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A78214FD2D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 14:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hIArYzRO/W0Rqq4yFiMfGs5dVBdrV+toI4aUVLDIh8=; b=pbaF+HlxeFYpQc
	R6RPehsnZmOCLDG0KFmaLalATJbtADCXHGd0qAlQbC/0AT8I8IvERl04vkR7RcAOEr62ekNw05ET4
	mFT9IhuhG1ERz07XRK9uacU2+Jnu3QboK6J+avGmEBHAPuRToa7QnMEsr4G7PAUAIKuvvUdVz4Z0W
	Aq8X8+kbHF7wixraaoQdSgPbM7I59MHa5600YRaLYJZMvHcfOIkLqntCwqm51rUpWP87v5uFZcqNi
	rBE3JApo2Aq8S6oZbweR46O/Bz2GRiGlbsAul07kAS7raKzab9gAt3eH7nk+R3QHG+mRpQX1lwt56
	7+kcnQltwCBwOqaadCig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyErn-0008DZ-51; Sun, 02 Feb 2020 13:00:47 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyEr9-0007ce-OQ
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 13:00:09 +0000
Received: by mail-yw1-xc42.google.com with SMTP id b81so10496218ywe.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 05:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PfOxBTJAq7rO8Qs/IIR9mdFaCWzDGndxM56W0qKFsAU=;
 b=a75vYtUh5Rw+ngxoxAmQkogk5nJe9heNo+fnZRxSSEHgH73eFaWIHF5reUhTDOHEJQ
 aRnxGC4WbMoY4/UwuR6aHmk/dk9ay+DE550KAn/PzvUVIbz5RZeqjP+bime+eCCYGwpj
 9Uvc6jHxEitN19jr219aKiZ519i/0Z3Utm4dj0rGiifnKtweBFniXv5J7SjkNJ0VdIsL
 pC1NZBPL6txaNR9fPe1VSSIhYAxbyEiIxAi/s9CONTP9MMSwfFPXd5r1MrsLPxmZNhQ6
 0NRKahUUTnwHIrCsrt+FYHYL+pEGPIYvcK/6KPwna0hBExEQtbmNST7r/lRId4b2kBI5
 3veA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PfOxBTJAq7rO8Qs/IIR9mdFaCWzDGndxM56W0qKFsAU=;
 b=R0G6bB1LJWWsHgpMClbYGa79AA/IeucwmigFvA33kLXBoFrSvzf9wYPw4x1qRLNRRd
 UD6TWdnVscE5oWsg5E4Qx+BkwR5Czk4YuGqN13g0H0DxXP692ByrewwcFEMHgw9lbt4L
 5m1ixLD/6SXn3H9TuLLsf5Kk7xA1Be9Co/9qOhSsCM/t4qmiN2p4lAKSvqzka8qaXJY1
 bpyLmM+53rmJPI8rFiE42aRy0UjFw+B81lUycRPsQ8kkLOhDw4TgjgrHmRhmEWThkq+6
 K1DuC3x2M4EDMifR5q6BRNW4OnnoK1HQMOPm8S9p2+tqL+RNM1uGoqQrNiBTlHfl3NZP
 u52g==
X-Gm-Message-State: APjAAAUicNvj8waJGHTAyTWUTLs3R5LLSP5Q1FxKmhWbWAaBc5y3WInD
 tIXEI+C79K2u/FA3KHtC7Kw=
X-Google-Smtp-Source: APXvYqwDc7mA8g8RNuZ15bUqAjJpKzEa7MvRr95zljOsGFKvcY0P40xqocrFDYmUh+HokkR8uI2csQ==
X-Received: by 2002:a81:39c4:: with SMTP id g187mr14378569ywa.42.1580648406315; 
 Sun, 02 Feb 2020 05:00:06 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id m137sm7090013ywd.108.2020.02.02.05.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 05:00:05 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-spi@vger.kernel.org
Subject: [PATCH V2 3/5] spi: spi-nxp-fspi: Enable the Octal Mode in MCR0
Date: Sun,  2 Feb 2020 06:59:48 -0600
Message-Id: <20200202125950.1825013-3-aford173@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200202125950.1825013-1-aford173@gmail.com>
References: <20200202125950.1825013-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_050007_799158_5BFE112B 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Han Xu <han.xu@nxp.com>

Apply patch from NXP upstream repo to
Enable the octal combination mode in MCR0

Signed-off-by: Han Xu <han.xu@nxp.com>
Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2: Reorder s-o-b lines to give credit in proper order.

diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index 23abf5ae318e..019f40e2917c 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -913,8 +913,9 @@ static int nxp_fspi_default_setup(struct nxp_fspi *f)
 	fspi_writel(f, FSPI_DLLBCR_OVRDEN, base + FSPI_DLLBCR);
 
 	/* enable module */
-	fspi_writel(f, FSPI_MCR0_AHB_TIMEOUT(0xFF) | FSPI_MCR0_IP_TIMEOUT(0xFF),
-		 base + FSPI_MCR0);
+	fspi_writel(f, FSPI_MCR0_AHB_TIMEOUT(0xFF) |
+		    FSPI_MCR0_IP_TIMEOUT(0xFF) | (u32) FSPI_MCR0_OCTCOMB_EN,
+		    base + FSPI_MCR0);
 
 	/*
 	 * Disable same device enable bit and configure all slave devices
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
