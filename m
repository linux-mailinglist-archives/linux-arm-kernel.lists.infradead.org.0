Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FF3DAE19
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 15:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1uTsVs/p4sCyHie48B7dzhhwIVDZ5RPsPD/qOGwdMEM=; b=PPuFp4y8DdXEoA
	tJljufppRBTbqN+ICwKVrORC8y0T8KRb3qAdOMusBlhfK1UewQDYTovOBb1CkAyC9k8R5LSCcYsGN
	RUbH4o9w25WXTaYUY6SEJkbgVXSnSJCirV7nxAL75U2tNXuLo3XUGAZF1kh9aF5+ibmv9OQUuD2KX
	31WSDkCV4rlIMIb2IsvLhm7YJhethNjs23jFDucMB/CZX98Lrpwj6QswMKxkzQzrZxxeog/q0gWIw
	iyKfViZJA1bmw62W1EB7Tcg31DhjMm8J37AsDkQC4HAIyatXjiXt6PLdsmGbPyW37GfAiZjWbwWta
	EaGV1oaEslxxoCJ9ldcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5gw-0008EA-P6; Thu, 17 Oct 2019 13:19:46 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5gl-0008Dd-Sg
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 13:19:37 +0000
Received: by mail-lj1-x22b.google.com with SMTP id d1so2487790ljl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 06:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=+zBO5lJZa3FrIbh59/1BOHJJsVBlTsHNnlh5BTJ2Z4U=;
 b=I6PhB0lWCJ9N16l2eDh0O1yb0N3Mo2reWBkU+8IzY5W6Y9l5WX5hwg3Khciufk+fR7
 O6p6dTx7LUJQ3bSREQhwMzdOQb67bcGzOQOXvThnRzpH44wFWVGd6oaT1RlShXdJ2m1o
 oUD3tYKndf7h1rjVeMtW0eQzvyuhBSaUBBolhJiExDWJHVYVutx+NgKDQ/4B33J6JdUy
 oF+s4R5iew7HcFQvfhJ4GlLoFFOcwOzwmU60BezlVacMkQKjQu0Tc5BBG5uHfSbuymil
 FmNU17V0HIVXToPiiE75dGIS/m6TgYNv4iOtkfkfFAc3YmG63YAsJH5j8/60ZLK+gNy1
 gYpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=+zBO5lJZa3FrIbh59/1BOHJJsVBlTsHNnlh5BTJ2Z4U=;
 b=alkgu/zOTKg/OMEGp5ESegZkoGWXSqBmaul7SnjhbHANt+DmSuNvNtB4FQZSP2PaEl
 afRPxKxpwsdwarE7lrzTcyvfNmYwNSLrrUFfmb4yn7Aj8SbrskWhhm4EeyTSJiqsfYOS
 UEXcz/vocUAPYTuQnTmavUVg9dB2+nKZRdPcNdBp0TbfFszM+i30qD75GSmCHcz8eomX
 5aPGEq/nsqewGMn87sYucMjLWcp/5MBom8oaSW8SP3SYBohZhkvryRNGkdg49COwhmd2
 c2RNtvu1qasu7Y5OCzy9Jc5lkh5cN/wWN4oUHfzAplyBP1fCt0//FmLxvakCuh7JzWQL
 1vSA==
X-Gm-Message-State: APjAAAXH8xa7V/yb/1NVI8swLg5ZxHdRhm/Y6y9VwavSYhJZnJ5/tZQ+
 qTFpaItTTYgqSybnj9G3JMg1MZS5UB86A/LRiWQ=
X-Google-Smtp-Source: APXvYqyu9X6Yfj1uUFZ89Q2GbFjZvz2a23i43LmDrNcweRpHdR4jjRsWUgmGzwKHI9utdCLi6e1tMJFFY2aqjZFs8mw=
X-Received: by 2002:a2e:9205:: with SMTP id k5mr2582779ljg.202.1571318373099; 
 Thu, 17 Oct 2019 06:19:33 -0700 (PDT)
MIME-Version: 1.0
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 17 Oct 2019 10:19:23 -0300
Message-ID: <CAOMZO5AuCCs27+hYTjs2w9j=nKUv3jzEraR8q1qSDg78F84W4g@mail.gmail.com>
Subject: pinctrl regresssion on mx28
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_061935_954692_83BAFD17 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I noticed that on a imx28-evk running kernel 5.3.6 the following
pinctrl error is seen:

[    3.758280] imx28-pinctrl 80018000.pinctrl: not freeing pin 24
(GPMI_RDN) as part of deactivating group gpmi-nand.0 - it is already
used for some other setting
[    3.773300] imx28-pinctrl 80018000.pinctrl: not freeing pin 25
(GPMI_WRN) as part of deactivating group gpmi-nand.0 - it is already
used for some other setting
[    3.787913] imx28-pinctrl 80018000.pinctrl: not freeing pin 28
(GPMI_RESETN) as part of

Looking at imx28-evk.dts we have the following for the GPMI NAND pins setup:

gpmi-nand@8000c000 {
pinctrl-names = "default";
pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg
     &gpmi_pins_evk>;
status = "okay";
};

GPMI_RDN, GPMI_WRN and GPMI_RESETN all come from the common
gpmi_pins_a group (defined at imx28.dtsi) and are then overwritten by
the gpmi_status_cfg group with a different drive strength.

This worked in the past, but no longer working with 5.3.x

If I manually change the dts like this:
http://code.bulix.org/n9350k-914661

so that these pins are only defined once, then the NAND flash is
properly detected:

[    3.752437] nand: device found, Manufacturer ID: 0x2c, Chip ID: 0xd5
[    3.759142] nand: Micron MT29F32G08QAA
[    3.762992] nand: 2048 MiB, MLC, erase size: 512 KiB, page size:
4096, OOB size: 218
[    3.802073] gpmi-nand 8000c000.gpmi-nand: driver registered.

As we don't want to break old dtb's, what would be the correct fix for
this issue?

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
