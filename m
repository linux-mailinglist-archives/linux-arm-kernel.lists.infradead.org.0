Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F98335CA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Hcu6G3H3KMUPXBpPTX1mxEWQ6tv/gkJsWJ5+YekuM0c=; b=els81AXUjlTJFrVXFt/ciLnMVu
	dYg2TTisEfFuV1DpNeTDarwSj+iN9Q0Dm6KBdHe6kbbahuGmyI+Kn/RkyiRHdvbBuBNw2roDtLalP
	87eSbbWzOAkfTRRgiuw5BhwsCqtFgn9AEYanYsCzDjEPr9O6QsHQcvuwfTEkudQKb5xl8aooUWvq1
	WeTzb3CNJ8DFBhyZZkJkrnNtQGcIMt06ItaboMZy4zERdseI9a+Ze8Cli8FhGRuhgTS0b5MGKr4ID
	IKFE8XFV040ZcPqbg+hOxf1fdtRyEpDvYNyXEOX/YMJ2dBxY5ceVdFbBuEaKx+oKPfy3zRWTMbsfU
	dsu9cgIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUwn-0000qn-Nw; Wed, 05 Jun 2019 12:23:17 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUwJ-0000Nn-BQ
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:22:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so4525665pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 05:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3GAMKG2bkSkOspilJvNkC+5w7eNdhVRmLQMCFlqm2lc=;
 b=au49flYFDpWpe1BM6oyUDx/hlReF8ml02Eius+8cHz1UMaWs9aOlK52QXKER3c/ivX
 WDfu4ZjGLO1XaCnfgbn0l6n73icde4Os53KV4ZT4cCOo4BxYua2F5MRWjJApvQqBI7Vy
 tT1byoFOU41Z82RzHu+pSnA0gQKM8IAvGG+mU+4IuVgcfDyGfrrUOSV0ieY59jywqVKi
 rZk5z/u4gxOw6ev5ph26Ev85n5fdBYhW649e+wtwYxBZ6VVYcuIzLdKYC/P1xOn6AFa3
 zPIUM2lj51kO3wQDg6cCfNwoZRmBiCLIS1ofYPaVhZP/lbJ7I12RDY4dOkSlyV8mLYgr
 OFXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3GAMKG2bkSkOspilJvNkC+5w7eNdhVRmLQMCFlqm2lc=;
 b=FoMZq5QzFZ6ggdzDYzShiQhEPR/8dFzZTVHrlYyrOUZDfpodxg/6voVnQMGXz4LnEt
 s65N8qgEJ5NYC/PSzX2p6Qx82iXrEhKHUq1UUxEY02soIdhWuAQs44bt7VDFhzxB6FZh
 KtQL6xvDvrz6QDi9UUxxyDF/+YfaHrEGW6QKDTHoCwToHe1PViCr43U4LahOvG7dHU4H
 TNupz4j1Ir2eTs1XpLeWLwwQZVfIpFKJCCMaMqMnveL4qPFty3XiVYl+CNFHwQnplWd4
 q1gOM/3URQmKIESTFqDgM27o2k+XeguYEoVKwlf34OTrVBJBNOfuHSAauVwU1a39VCWt
 gJiQ==
X-Gm-Message-State: APjAAAW4Gt3zldIB3KYQKfM1anL5mKuzdtCsiVzS6OCFI9l91a9TFsFh
 ZbjsdtLF8V0Yk3MSzz7IYkk=
X-Google-Smtp-Source: APXvYqxppjG9m8JUHMI008hu8C6MlDpFXdE6HrHO3yMyYnkRlIDngOMKrYTo8DJhUuRFY87+dC/x1w==
X-Received: by 2002:a62:ed0a:: with SMTP id u10mr14088279pfh.243.1559737366426; 
 Wed, 05 Jun 2019 05:22:46 -0700 (PDT)
Received: from Pilot130.192.168.0.22 (211-20-114-70.HINET-IP.hinet.net.
 [211.20.114.70])
 by smtp.googlemail.com with ESMTPSA id q22sm3322094pff.63.2019.06.05.05.22.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Jun 2019 05:22:46 -0700 (PDT)
From: "sudheer.v" <open.sudheer@gmail.com>
To: gregkh@linuxfoundation.org, mchehab+samsung@kernel.org, jslaby@suse.com,
 joel@jms.id.au, andrew@aj.id.au, benh@kernel.crashing.org,
 robh+dt@kernel.org, mark.rutland@arm.com,
 shivahshankar.shankarnarayanrao@aspeedtech.com,
 sudheer.veliseti@aspeedtech.com
Subject: [patch 4/5] defconfig and MAINTAINERS updated for AST2500 DMA UART
 driver
Date: Wed,  5 Jun 2019 17:53:14 +0530
Message-Id: <1559737395-28542-5-git-send-email-open.sudheer@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559737395-28542-1-git-send-email-open.sudheer@gmail.com>
References: <1559737395-28542-1-git-send-email-open.sudheer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_052248_047306_481DC8C3 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (open.sudheer[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sudheer Kumar veliseti <sudheer.open@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: sudheer Kumar veliseti <sudheer.open@gmail.com>

Signed-off-by: sudheer veliseti <sudheer.open@gmail.com>
---
 MAINTAINERS                          | 13 +++++++++++++
 arch/arm/configs/aspeed_g5_defconfig |  1 +
 2 files changed, 14 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 997e27ab492f..c9a9790b97f6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1347,6 +1347,19 @@ F:	drivers/crypto/axis
 F:	drivers/pinctrl/pinctrl-artpec*
 F:	Documentation/devicetree/bindings/pinctrl/axis,artpec6-pinctrl.txt
 
+ARM/ASPEED DMA UART DRIVER
+M:	sudheer v <sudheer.open@gmail.com>
+M:	ShivahShankar <shivahshankar.shankarnarayanrao@aspeedtech.com>
+R:	Joel Stanley <joel@jms.id.au>
+R:	Andrew Jeffery <andrew@aj.id.au>
+R:	Vinod Koul <vkoul@kernel.org>
+L:	dmaengine@vger.kernel.org
+L:	openbmc@lists.ozlabs.org
+L:	linux-aspeed@lists.ozlabs.org
+S:	Maintained
+F:	drivers/tty/serial/8250/8250_aspeed_uart_dma.c
+F:	Documentation/devicetree/bindings/serial/ast-sdma-uart.txt
+
 ARM/ASPEED I2C DRIVER
 M:	Brendan Higgins <brendanhiggins@google.com>
 R:	Benjamin Herrenschmidt <benh@kernel.crashing.org>
diff --git a/arch/arm/configs/aspeed_g5_defconfig b/arch/arm/configs/aspeed_g5_defconfig
index 1849cbc161b4..25bf26630939 100644
--- a/arch/arm/configs/aspeed_g5_defconfig
+++ b/arch/arm/configs/aspeed_g5_defconfig
@@ -144,6 +144,7 @@ CONFIG_SERIAL_8250=y
 CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_8250_NR_UARTS=6
 CONFIG_SERIAL_8250_RUNTIME_UARTS=6
+CONFIG_AST_SERIAL_DMA_UART=y
 CONFIG_SERIAL_8250_EXTENDED=y
 CONFIG_SERIAL_8250_ASPEED_VUART=y
 CONFIG_SERIAL_8250_SHARE_IRQ=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
