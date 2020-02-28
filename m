Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D071735B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 11:58:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Qmln/htei+3bsTFZdK1rLQGdQ3WKgEkwL67WHXxPyQ=; b=A0Ag5G/l4V5h4Q
	V12AZwfjmgEaFoSuPVr4xIrTaZobuKl0BDzqhM19exueOGKuaIu/ShRGaoGulfRf9hCpB78zBrINU
	mZnEJ3i+M1rAanN5Flm4lF1bSa2AHPDZnywIettUSrAWq9V4BS+7U5x6MWbWS1z7+QC6lufRpMiaB
	OpZDIAWI0orPQZtOBq2m0lmtZq7ysWhlNDeWfKN1r/71NhxiEvSopsfQGZbIWQCBWf3ezaqwNsoUZ
	3gUuBEv11mhn0nZbO6nxUmBQUc8BLTfYexj6IstivN8pATiVDSEnJmLYHXiU9q8qdxYgD/Xr6TvEn
	iLR8cnJtSkH7vyQTafbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7dLv-0007t8-OO; Fri, 28 Feb 2020 10:58:43 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7dLl-0007sm-H9
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 10:58:34 +0000
Received: by mail-ua1-x943.google.com with SMTP id p2so801383uao.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 02:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=pJRnjkrYSEoukXYQpbOMLDRASpxUllNw+8/8as6MqeE=;
 b=prkL/o5D8aJ8y5nYxi0MTlPmzNE6O6Yc0MHGBVqzJdZXEw/sa5eb8R/jxstOHGX/l0
 qYIUHibPRRLwzDvEE7Kgr5C4+zo9MG4f/MwgddKtcKAWwg8neUGGvyoPHEalYJozjb6q
 Xvx9gEQWsZhSwtoHb3AfZuZoztMzfnzXAGubNKlCYyQVo5T/vkwtOgVyNUgtNbnsfnVZ
 oN7Djfv2wRSbZ/xlpNMcKgucZk6V8qr3H+NKqW3h0c+TbX4zIxzkbsyzsVexPqQtUo2r
 SEBM25jLLtpAJ1hM6SgPZ1bmQ6xlbcOSktzRQZIavhCMwhFYBdIu9Q9Ejwzp6Pri78dj
 lOyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=pJRnjkrYSEoukXYQpbOMLDRASpxUllNw+8/8as6MqeE=;
 b=AbS7BPyE2Rm+RLsyHBpex1+KMlcPOAZu9PMQVSCpbmR95dwV0VLrLUtFAkPz7JTstp
 vwCQPtQR00ovI/BfDdijtE30J9CQ62DdJVeGsZeRZM3XHNhBPWsOm0YdIvc2SD9xwI3x
 G9oLPm+8GO/ypVf16tUTexqnqxFFRssKB+L2cLN5+yZ9quz6T9JKj2cE5Ow3P6vlBtPi
 TTKSRFNSa4NwMxLab3Co+D8627NXk1ji1vxfqhk24bYcYpOXyIj/H0CtDEtVFe4/qIMd
 4o4lzXO7ObbtmbUNYi/xD58eCKb3X2xdQ4PS141agr8IieZekNmdG6eZBUZY+RZLEkQr
 9bxA==
X-Gm-Message-State: ANhLgQ3fLIclMxIPJxEoYx2sisvJVOgN263s9jWClSCn3DHLOWeJDFtx
 r2dxY02F7/or7o4o2DTdu4UtEfLZhOxzwRK2+I0=
X-Google-Smtp-Source: ADFU+vu/mr1WKjNbYuWeJBEL1jp7bG/13WjPVyRHkCsJPGMA1Mw1bLQ08IkY5LIziEWwO+1DDh7cli3anXUn3MgUT+s=
X-Received: by 2002:a9f:3ecc:: with SMTP id n12mr1672855uaj.45.1582887511693; 
 Fri, 28 Feb 2020 02:58:31 -0800 (PST)
MIME-Version: 1.0
From: Romain Izard <romain.izard.pro@gmail.com>
Date: Fri, 28 Feb 2020 11:58:21 +0100
Message-ID: <CAMiSF3BULWkyWTytTBcFfch9YaV_QzuBiawk-ZqEcQnsuGdUiQ@mail.gmail.com>
Subject: GPIOs not correctly exported via sysfs on ATSAMA5D2
To: Linux GPIO List <linux-gpio@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_025833_594963_8AE50ADF 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [romain.izard.pro[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

While experimenting with a new chip, I connected it on the SDIO
interface on my board based on a SAMA5D2 SoC. For a first step, I need
to drive the pins on the SDIO bus at a given level to program this new
chip. To do so, I tried to control the GPIO lines manually by unbinding
the SDHCI controller, and using /sys/class/gpio/export to control the
pins, with the following code:

echo a0000000.sdio-host > /sys/bus/platform/drivers/sdhci-at91/unbind
echo 4 > /sys/class/gpio/export
echo low > /sys/class/gpio/PA4/direction

Unfortunately, the state of the pin does not change and it remains
driven to 1. I checked the configuration register with devmem2, and it
appeared that the selected function remains the SDIO function even after
calling export.

The issue does not appear when I use a GPIO in a driver with an explicit
pinctrl configuration in the device tree, which explains why I did not
see it until now.

The kernel version used is Linux 5.4.22

Is this a user error from my part, or is there something missing in the
AT91 PIO4 pinctrl driver ?

Best regards,
-- 
Romain Izard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
