Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83ACB1E8778
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wlSPs/urKwZPu7q8NhLM50ANemyFHixKoc0d+kxYjso=; b=Xc+
	oxmF7OfILE/J48I5OBp4C0OnXH0lGRIv1/XfY8E+PDdNxhuZXnVVpqoQP9JOeymNmnIcWyVsO6Hq5
	cHIw04sYQAaFrUUL/j7geoW/oyz2nI8hmeMVsR9f80nwyqn7iQ6ckK21bdA891bCBN8vrnmMqJtIo
	qGzrNSI+9K44F2gMV2TtE9c+7P53yGZCnKTlI0aUavCEOe8drdD8IbR/pzV9W1gT8skLq3aYpQ1jT
	J9XiiIM1llBmTZqD2OBS0LlT6QhzUz68SVXX/UPgMHWk/jBvfD2MWPBU3YkjZ7F/QK+rb9ctM8bxh
	8Jc0DlXc2r5UOcOgdYR4b2DTH0EWUpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekV7-0002xH-G8; Fri, 29 May 2020 19:17:05 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekUt-0002vY-HD; Fri, 29 May 2020 19:16:52 +0000
Received: by mail-pl1-x644.google.com with SMTP id t16so1610659plo.7;
 Fri, 29 May 2020 12:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=W8tHM5A9x7hCqXrGZPnl9PrgU0zBShy7MiBX6R7IaoQ=;
 b=vcuiL7NkFG8ibcD+t4OJB+dwcTKukbeTVrKXO6VB7PLb24zP+KGR/q7WmfKrlyL0g1
 2qyiprG+r2j83U+/1nRNIDegSL9MGMUBcdHwLP8j71QJ2v8OKQ5hSIzhMx6OMAtOCU30
 7tG2fhk9zL9qksdFlHKguAmz4SR4Zjf74/6M/z2CKhO7bBOZme5m4J3/2f5+MylBXrUc
 AgiSj+fM1UBbUruXsKRSVt7L0RUAR2wImmE+eMgCU3n/gbXr6Zl7mzZjs6U4EpcVNoJY
 PUN0pd7X2xTd07ik9+NxJTr7YYKA4+A4gp4/TCXkEpPDcPpj4Rthqzelse7XBqzpLrjI
 XKVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=W8tHM5A9x7hCqXrGZPnl9PrgU0zBShy7MiBX6R7IaoQ=;
 b=dWtW7ip9bgaLl5SpW76QEV7dJIgiDreRjrtxpp7MXTPPU7oNeYWgjnf9spjs9Irzpe
 W2+D/a0sK0kVHS0yjFSIARov02W7VEFXwnJWRuESLXIMI6NwTt/QuuI6LmRkues2N0Q+
 XgkWR44QDl4wxR3qKkUZP2TFWdp73GGzMoekiTx9deFpDDnFaCtqUYhFXM4LkpB86769
 zXYe5u1WHjKd1jj8KyfwpPUGVKFvacFAtl39Re3Y9aDW/ZxPpIwcpgzNRjfd/iifZbbe
 uJKC0NntRRgpEJAzqCVIsq1M7Hjq+yRy0hlYaiCPlCrciKqnsZh8jnRNKKSinGSjrZtm
 1tBg==
X-Gm-Message-State: AOAM531vmD2UtDQdd8brn+PrkYimwYGAYTtucC4dUQoyjD1x2TUD3jBM
 6b4EQYl4/J2d/g/o1OOhA5s=
X-Google-Smtp-Source: ABdhPJzEcRhz8HJANDPWTtoAXzpRH7F78bIl5xxDea2VL93YQoccdWOgpSwJNj5a/nZywqr9nj+hLA==
X-Received: by 2002:a17:902:bd47:: with SMTP id
 b7mr10457105plx.79.1590779809488; 
 Fri, 29 May 2020 12:16:49 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g92sm202505pje.13.2020.05.29.12.16.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 12:16:48 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] pinctrl: bcm2835: Support for wake-up interrupts
Date: Fri, 29 May 2020 12:15:18 -0700
Message-Id: <20200529191522.27938-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_121651_567193_D4E8B7CE 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

This patch series updates the bcm2835 pinctrl driver to support
the BCM7211 SoC which is quite similar to 2711 (Raspberry Pi 4)
except that it also supports wake-up interrupts.

Thanks!

Changes in v2:

- fixed patch #3 to reference the correct data structure (Stefan)
- fixed patch #4 to use conditional initialization and fetching of
  interrupt resources to limit the memory overhead for non-7211 chips

Florian Fainelli (4):
  dt-bindings: pinctrl: Document 7211 compatible for
    brcm,bcm2835-gpio.txt
  dt-bindings: pinctrl: Document optional BCM7211 wake-up interrupts
  pinctrl: bcm2835: Match BCM7211 compatible string
  pinctrl: bcm2835: Add support for wake-up interrupts

 .../bindings/pinctrl/brcm,bcm2835-gpio.txt    |  5 +-
 drivers/pinctrl/bcm/pinctrl-bcm2835.c         | 80 ++++++++++++++++++-
 2 files changed, 83 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
