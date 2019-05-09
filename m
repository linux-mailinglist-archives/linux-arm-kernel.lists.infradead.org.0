Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F8F1937B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 22:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wvRnfDNQUAUIB1+r2Xlq4bZ++pHhDhBQupaALDKYakI=; b=Wpb
	dhJhpIQ0EDz47DPDG8p5I3CmBBmMHS6pzpP3zPDc2VrKnH2rEVOkgRuLtLIKI9mTz+5Nr3FveCahb
	Qouxp9lEEjXUWI+MiAP9xOGgy3dG5luAkQiVL+H0TBb8IzXC7Qn+289BmsbF7ph7dPYmmTTKY9OtH
	jvHi77N2TwgW2oM+Xsqv9NHcdnBlKsygO38Viqj2+zR6q+gjcYEf4QVSkCugC56YFfbvBbSMoAuxm
	euLUaYVeCFr1sAiBAGlozpRN08fKaMFl52TS6/stMUvTu+GHbIGlf/RP/OsTmFy1JpLMA8XkZ30Xn
	GzFCjkrh97J9yCsIEERmlY/7eGXYiFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOpmB-00026o-5L; Thu, 09 May 2019 20:36:23 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOpm3-00025u-BM
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 20:36:16 +0000
Received: by mail-pl1-x642.google.com with SMTP id g5so1697592plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 13:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=P54plBXS3RTIB7poB2qEfvlIATtsECBcJgQ25eYeFIc=;
 b=ZYPloAXxqHRrCxoohcw65BioipAqRuQrBEsHP5zQolytgVoK3kyzeXR5TYSk7up89n
 dKNjVKCdWUM0zJeH63EO0wN6sORKc+8qzrYna/VtoV+yIbUc0on+xaF1CYl5TFLz7aPA
 pDUGW9LdiJBYt4W1gY3JPh7odvxFlIzWctcxQxx4hEldLzPHO/rWUnsS9oOcTxe++k0x
 QeMhEmb+bycJ9exO2io3euQazCY7Ls5bMONAu2aytstK5nw6Myh9SmJSdrQ9nE3+n3OA
 1jiyHWNjuPH5lDisxCWo+c3THY/Se8g9nDkJdza7xFBnrA9x3tADOH/jFR4GlVXu2Em4
 Bzcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=P54plBXS3RTIB7poB2qEfvlIATtsECBcJgQ25eYeFIc=;
 b=gJbQ5GZaEyOLMfhwSs2LtIioA7U+OSael4jmxfSJuBCVM3rUq2kcmk4jWyMfOwktF1
 gq8UzAyflww2hGJErGI93XvgwIrOmOfIjJkMbQOtkghAYuP71pFDhFQENqO8OkS9pSsn
 iPnlrRtY96Ite8Afc17RG9IB6mpRsYlhUcBjDdkrbjpIDBuZ+84Acfcj8/P9BZniJUBD
 a51j/ZtQVriALy5b9VTzDJvyos2BQkHYeqdu0QJG7TTuZeptPB9PldEzSCW5BTACTFXF
 Z6LB284zjX0Wut5Zqwo8vnc3agltKRQHY84qsa483UwrFspMD5AamdltZPVnkuIWKI7j
 a1Hg==
X-Gm-Message-State: APjAAAXYGDlS4NEoVRvnrHehQBOapOyhfaucqCyigzq6bh4CpmdADF6A
 +cMLWJwm5vOULFqIx2Po2rogqNNY
X-Google-Smtp-Source: APXvYqwJxmjpl8NhI+fEGPmLJ6p2uxJfE6/EhZKp/0jQpKKXGkfrTTUPm/DSSStZMsXW4Eu7F1od/Q==
X-Received: by 2002:a17:902:bd91:: with SMTP id
 q17mr8019530pls.13.1557434173644; 
 Thu, 09 May 2019 13:36:13 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id h74sm4779779pfj.5.2019.05.09.13.36.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 13:36:12 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] spi: Allow selecting BCM2835 SPI controllers on ARCH_BRCMSTB
Date: Thu,  9 May 2019 13:36:00 -0700
Message-Id: <20190509203600.6867-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_133615_394442_5D7DD209 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 open list <linux-kernel@vger.kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>, eric@anholt.net,
 Mark Brown <broonie@kernel.org>, bcm-kernel-feedback-list@Broadcom.com,
 wahrenst@gmx.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARCH_BRCMSTB platforms have the BCM2835 SPI controllers (normal and
auxiliary), allow selecting the two drivers on such platforms.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/spi/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 0fba8f400c59..3ee152feee2b 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -119,7 +119,7 @@ config SPI_AXI_SPI_ENGINE
 config SPI_BCM2835
 	tristate "BCM2835 SPI controller"
 	depends on GPIOLIB
-	depends on ARCH_BCM2835 || COMPILE_TEST
+	depends on ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST
 	help
 	  This selects a driver for the Broadcom BCM2835 SPI master.
 
@@ -130,7 +130,7 @@ config SPI_BCM2835
 
 config SPI_BCM2835AUX
 	tristate "BCM2835 SPI auxiliary controller"
-	depends on (ARCH_BCM2835 && GPIOLIB) || COMPILE_TEST
+	depends on ((ARCH_BCM2835 || ARCH_BRCMSTB) && GPIOLIB) || COMPILE_TEST
 	help
 	  This selects a driver for the Broadcom BCM2835 SPI aux master.
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
