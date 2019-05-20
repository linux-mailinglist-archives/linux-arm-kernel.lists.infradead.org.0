Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE57424159
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 21:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lYuIjuSaefQ/s1lQz51dTSBWA2y8l2WDG3fYI4r9TjY=; b=T7Kd7yuEDCSep3
	6I+WCU2xe19yWdSMKJ9e5bUesccnJ9oCEEUp7raewhtKE+IwTcUMJoIDO0Ra2afGO2ceHMYcKuoAU
	xtGizo5SI0E5cL/IXj4s275RgfBtCSoSCePKFWMRFiwaV/XpTsPvqRgaxjlI2Gzn19dnpyGTQS6Y3
	yXoomMET1vg5f3f/mkcYjnuXboxBWZ6/Rx49JT7pWV33PSOoDbiMKmb1nSKOeaDL4GyGaDbnWqtUO
	xQRtVIb4ew1NgELa2jDRCw7XG2K88hsU2irCs8FrYCa7eoxIX6xhE1oJ0mz30I73OGXsxAM2rNHVQ
	CUV6Joo/6nwqluVpO4kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoCm-0000nM-AM; Mon, 20 May 2019 19:44:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoCc-0000l7-4w; Mon, 20 May 2019 19:44:07 +0000
Received: by mail-wr1-x443.google.com with SMTP id b18so15867515wrq.12;
 Mon, 20 May 2019 12:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hVta5xB/O0QdvUGc5eYkdvpzELli1ZpHwr59R5nENcw=;
 b=U+BzZHbeO1KY+dPmw/oGi3XSWlv90ycsDjx9KXI1IOImK13sc2HFLTbDBRkR1LHxH6
 +if9w9trTLebLbFzw3M2MkHFy67mF0vIIMh9//saXEcs78CYk6pfEuM2T+Yo/SbreWdx
 AUUgrkT+kPv4wm0NkTZmHzygH6OHSaOC0iGu1JsRjSWS8IK6o8lKSygaqCQIPSB9wnCd
 SQ5+pRE308Avd7zKs4DRKUUYXogC/Ay3rtZU00hDgCKcErpndPWlTi89LYl5r8fVPjvi
 O6X8lAzlYYv2egbSv9M2ilcFmWDuOVKlX/BQGBGwc91NrmxKpNuizf6i/JBen7cCTP7l
 BPmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hVta5xB/O0QdvUGc5eYkdvpzELli1ZpHwr59R5nENcw=;
 b=gH1uPBggScn/eJT7/L3w6kugZz6gqJrqX68ShKGcVi31hYC9OBe24wsIN9uUj4G0mU
 Xtd4b1dsprpi2Fcq2KJT4D5okOyXuHNNIcKf5/UFsQonxes4RW+10hHB19vST+dIsnaJ
 asoOoG/ehIwgI/lNKMO8f/4Ca2HC4/BJ0PiZD074uMatvBjJB9HuzN/vhLn18aO+cVfE
 rPCTJjGPJTnIZtmcCed8fVOk4dB/33JWO4KmsLod7+DeIwYIYmT4YWkWK2C/4zv5it5h
 lredRYkXKAvjUE+9OzcJH+4lWWCelGlczMZ+Z5V6djUIUp6/LPlQ6bDZaqtzK5kJ3X6r
 3JkQ==
X-Gm-Message-State: APjAAAUwujuHLeR+U58+IOaK2mEqU66oWUAxs2jROGtNDVWxjVgrJn3j
 A5XufpjzejGw6FtDOdsw0Ast+B2S
X-Google-Smtp-Source: APXvYqynMyqoH9GhYe+AN/gAgwqbO94OY9y/bT/SijzrVrRAbf9a6+TW6auDD4ShFC3FSuOOiz30pg==
X-Received: by 2002:a5d:6b03:: with SMTP id v3mr2725642wrw.309.1558381443684; 
 Mon, 20 May 2019 12:44:03 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133EE71009C356FA1F0E19AF9.dip0.t-ipconnect.de.
 [2003:f1:33ee:7100:9c35:6fa1:f0e1:9af9])
 by smtp.googlemail.com with ESMTPSA id p8sm9135352wro.0.2019.05.20.12.44.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 12:44:02 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 mjourdan@baylibre.com, robh+dt@kernel.org, mark.rutland@arm.com,
 devicetree@vger.kernel.org
Subject: [PATCH v2 0/5] 32-bit Meson: add the canvas module
Date: Mon, 20 May 2019 21:43:48 +0200
Message-Id: <20190520194353.24445-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_124406_215969_7AB9AE1A 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the canvas module on Meson8, Meson8b and Meson8m2. The canvas
IP is used by the video decoder hardware as well as the VPU (video
output) hardware.

Neither the VPU nor the video decoder driver support the 32-bit SoCs
yet. However, we can still add the canvas module to have it available
once these drivers gain support for the older SoCs.

I have tested this on my Meson8m2 board by hacking the VPU driver to
not re-initialize the VPU (and to use the configuration set by u-boot).
With that hack I could get some image out of the CVBS connector. No
changes to the canvas driver were required.

Due to lack of hardware I could not test Meson8, but I'm following (as
always) what the Amlogic 3.10 vendor kernel uses.
Meson8b is also not tested because u-boot of my EC-100 doesn't have
video output enabled (so I couldn't use the same hack I used on my
Meson8m2 board).

This series meant to be applied on top of "Meson8b: add support for the
RTC on EC-100 and Odroid-C1" from [0]


changes since v1 at [1]:
- added new bindings for the 32-bit SoCs because they don't support the
  "endianness" configuration (new patch #1, thanks to Maxime Jourdan
  for pointing this out)
- update the driver to reject the "endianness" configuration on the
  32-bit SoCs (new patch #2)
- patches #3 to #5 haven't changed compared to v1


[0] https://patchwork.kernel.org/cover/10899509/
[1] https://patchwork.kernel.org/cover/10899565/


Martin Blumenstingl (5):
  dt-bindings: soc: amlogic: canvas: document support for Meson8/8b/8m2
  soc: amlogic: canvas: add support for Meson8, Meson8b and Meson8m2
  ARM: dts: meson8: add the canvas module
  ARM: dts: meson8m2: update the offset of the canvas module
  ARM: dts: meson8b: add the canvas module

 .../bindings/soc/amlogic/amlogic,canvas.txt   | 10 ++++++---
 arch/arm/boot/dts/meson8.dtsi                 | 22 +++++++++++++++++++
 arch/arm/boot/dts/meson8b.dtsi                | 22 +++++++++++++++++++
 arch/arm/boot/dts/meson8m2.dtsi               | 10 +++++++++
 drivers/soc/amlogic/meson-canvas.c            | 14 +++++++++++-
 5 files changed, 74 insertions(+), 4 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
