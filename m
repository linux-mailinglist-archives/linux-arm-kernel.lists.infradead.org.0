Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D17E70A28
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hqk0tZ0/GBgERyzPyXh1xzJfwXQzik8SNgPBULUJwWg=; b=UIRYTtUHbAZ595
	82AGgVqmK6/8S5/kB0JSdYMzRbqXHEaxAwMAYkBdseeoOdtZvyYMA6T9GQFcq44/CIjiZ616t3so0
	cnykXDqF7nyO/QS9wvGzo/ZdB9Zu8a9deGRCpcn8LYLPVFlMA2VtwcrrhxTa+0+pDIKjJWCNfkvjs
	br32zac0sVb4PXt5H3uG1yU1JEXyuQLGSnS6+QjEljKcESJic2Xic7TixtaJSAl/yiRSkceelJegY
	few68CFEtRU9wmvFfIRjqzW6fewpo0APxC4UFwIYU9r6TOLZOj8iarwdYnR/eaAaBnWuJ4j2C9ru0
	NjJK/68Pr7g3/FqoYRUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeNa-00047M-BZ; Mon, 22 Jul 2019 19:53:53 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeN4-00046v-F6
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:53:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id u25so26093033wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 12:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8cpB3PKFs/+RNz6CzNu73YznyTKNKRjiULkUbbvNL4A=;
 b=FMeIQosVJpsSyQizbAdM5w5gCoNZ9YjgkrhzQyFpPEZ6yGbnaVaGTKix5MpzA1+nFw
 TPLF9F94ldsU+stwhCSShs0/EKCsuqeMcgvWDXIaN4um2tcwd3hEoAogW6Dh/fMr0uz0
 ErIl9pc9vwThWFvq9+PsG0EKASzESlzNUxGe0SfrGPvnu0Wh2Zh5GbTwhFQglLasZUx0
 IRSHPoybDQe40mn5Z/vt46KEz4GkAwZ+pFjFqXfTlgBgKmYxxXoLxET4ecnTGPQ9+lTp
 QREBlHnF0q4kGWdHeKPc+oRLOwyy6RVY1+JMKxymOdPhsaWD5UjvVNTi3tmUXfgjwH50
 yp4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8cpB3PKFs/+RNz6CzNu73YznyTKNKRjiULkUbbvNL4A=;
 b=dADl8pcGjLEfW8zltilnv2m0IVT/BUy1tzNGheXORACAItJ7aqz+BdkvI9Jr5IjksX
 /gsjsmSVOqizSoPIeKVJphEUPgnn+XBLTbwu0GMD0UUIqaJ73Y7/qP3eZ2VzupH6w49z
 /gvuoAtvGqRod0Lz919EgRJIed62nOjkJf9UEFPK/eShBHW6JsaRCiJNE0jO/+qdQdEF
 FvU2LhTeC4mMaWFfGXILS54qqqrXGJCVDajb9IJCrThP6Fn/4/+9/K1BsJmLCaoEZHwH
 bCliB+p6aV2TwE2Sp0Zx97khu6ElXAos7C6pcwZuNZoygDZwMpmMdMJFYofRjsjMdSGg
 uSiA==
X-Gm-Message-State: APjAAAVpPonmT3XN30Ly5WtmnnWRPdv1+IVBeDGYGZWEQ+84WbnvNGyq
 MgwFbnQlr24KBqidTWW5K/I=
X-Google-Smtp-Source: APXvYqwLmtg3xVtKc23mGLVZUIKYCwmvX8GSvq1g5RqXzcH4QIoCHY9XDNowPeTdHmt+tEdUgSidRw==
X-Received: by 2002:a05:600c:22ce:: with SMTP id
 14mr66479064wmg.27.1563825196792; 
 Mon, 22 Jul 2019 12:53:16 -0700 (PDT)
Received: from localhost.localdomain (nat-113.starnet.cz. [178.255.168.113])
 by smtp.googlemail.com with ESMTPSA id c65sm37382975wma.44.2019.07.22.12.53.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 12:53:16 -0700 (PDT)
From: Evgeny Kolesnikov <evgenyz@gmail.com>
To: 
Subject: [PATCH 0/5] Add support for WD MyCloud EX2 Ultra (+ versatile
 UART-based restart/poweroff drivers)
Date: Mon, 22 Jul 2019 21:53:00 +0200
Message-Id: <cover.1563822216.git.evgenyz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_125318_542119_4B1D204C 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (evgenyz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, linux-pm@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Reichel <sre@kernel.org>, Evgeny Kolesnikov <evgenyz@gmail.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset consists of the DTS, which describes the WD MyCloud EX2 Ultra device,
'poweroff' and 'resert' drivers for power-managing MCUs connected to a board via UART
(these drivers are more versatile than qnap-poweroff and could be used as a substitude),
and DT bindings for these drivers.

The difference between uart-poweroff and qnap-poweroff is small, but important:
uart-poweroff is able to send to an MCU a command of arbitrary length, and the command
itself is defined in a DTS file for a specific device/board, thus making this driver
applicable to wider range of devices.

Evgeny Kolesnikov (5):
  power: reset: Add UART-based MCU poweroff DT bindings
  power: reset: Add UART-based MCU restart DT bindings
  power/reset: Add a power off driver for UART-based PM MCUs
  power/reset: Add a restart driver for UART-based PM MCUs
  ARM: dts: armada385-wd-mcex2u: Add DTS file for WD My Cloud EX2 Ultra

 .../bindings/power/reset/uart-poweroff.txt    |  38 +++
 .../bindings/power/reset/uart-restart.txt     |  39 +++
 arch/arm/boot/dts/armada-385-wd-mcex2u.dts    | 313 ++++++++++++++++++
 drivers/power/reset/Kconfig                   |  14 +
 drivers/power/reset/Makefile                  |   2 +
 drivers/power/reset/uart-poweroff.c           | 155 +++++++++
 drivers/power/reset/uart-restart.c            | 204 ++++++++++++
 7 files changed, 765 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/reset/uart-poweroff.txt
 create mode 100644 Documentation/devicetree/bindings/power/reset/uart-restart.txt
 create mode 100644 arch/arm/boot/dts/armada-385-wd-mcex2u.dts
 create mode 100644 drivers/power/reset/uart-poweroff.c
 create mode 100644 drivers/power/reset/uart-restart.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
