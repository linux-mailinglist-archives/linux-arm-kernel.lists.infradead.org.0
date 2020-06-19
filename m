Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFD8200B34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 16:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9sl9dRxV67r8Snzcgn0begG87RGxlmo3gUEYs/XbkSU=; b=DHTMEUwiiP3TjA
	KXmdUL5tDRn3qr2adz2JhBqL6PegvYAHed6xgRWB45ThHUjLvibBguvaid+5j13aD5H1K8kj5pJ+A
	H33tMHJaT7hSiLUca2e4Z3u6PKjcTmfINRXRSS7Ces0OfeLNANETSSQrbjzLyVUXTYQMBDGbuJKxu
	F76fKBbMrLNagPfOpq5lG/YoW5J1rr+WZIpjoEfIrTD4kiwLYYCtuAIv3qXi7Jo4XCFpYj2HpO/mb
	Jx45tXGs1n/geSWpm8ql+xzTuak8uDNhTxTe5RJdkuMiu57x4JtZZWkIp56AU3NwLhd45SKH/n5qq
	7VpJ3lKMfdKeTzYWieHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmHrw-0005vN-Ff; Fri, 19 Jun 2020 14:19:48 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmHro-0005uj-R4
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 14:19:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592576380; x=1624112380;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ros1udrNYa0R2yOGLKL28tb4ZWwAiFbhELcD5GmGfWE=;
 b=fwd+SZP/dzxwhkP4UxUqHFt05ri86H0zHxuqDtGlTLNzPFAe/3YgBgWj
 nbjUS+ClozeXsH2gaWU3pOn6PRTMT9mPpNHBdIwpFCooYcWmRMinZdxt+
 mm2ugzxESp8yUHKeSgSuWcjqe4kn2Sfd4r4jg5CW5pXxzUAMiVTzMk8Jr
 zilwTjf67qJ/4XosTUA385u6JlvULex0QBsI05KopHj4UH2YMDlVDvd9Q
 mNp74FgZsZyEIopQEeErXw2YnWt6JJdT3iEN4d0I4vkZcKHXS+jaFcuiO
 bGtO6LHBA97sBbhN3QD/j01b5fhz34jUndnnlYMVnmEwzmPOppdKC6SuQ Q==;
IronPort-SDR: ttCeUGkYrT5A6qXqYkzgvjaXNmyeSXotP+seJRIRHv6vitXQAeCdnf8aed2SxV1GglISnQLQz0
 k+Q/g1ImcJ5izfZ7NWlTuZMCWlg33tXhghqh+COpF74n/5IeIIRjq4idz9FEVd0rVLNbvZP0TE
 eHaIil9LhzxeUNJVkG5bg/JnIvCxa/HY00nY8xdpc/gVd3nvmiLIhfmYvEoNh452lQpEX0nLGO
 mpKByhimmbiCJxz+K03d4SGiVsTC8JN2p2RCZvNDaKaRUlfcgw/dm+a7k1xMT5F8DVeNZCxZW7
 sVs=
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="79100746"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2020 07:19:33 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 19 Jun 2020 07:19:32 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 19 Jun 2020 07:19:05 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [RFC PATCH 0/4] i2c: core: add generic GPIO bus recovery
Date: Fri, 19 Jun 2020 17:19:00 +0300
Message-ID: <20200619141904.910889-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_071940_965595_10240107 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [68.232.149.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com,
 linux@armlinux.org.uk, wsa@kernel.org, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GPIO recovery has been added already for some I2C bus drivers, such as
imx, pxa and at91. These drivers use similar bindings and have more or
less the same code for recovery. For this reason, we aim to move the
GPIO bus recovery implementation to the I2C core so that other drivers
can benefit from it, with small modifications.
This implementation initializes the pinctrl states and the SDA/SCL
GPIOs based on common bindings. The I2C bus drivers can still use
different bindings or other particular recovery steps if needed.
The ugly part with this patch series is the handle of PROBE_DEFER
which could be returned by devm_gpiod_get(). This changes things a
little for i2c_register_adapter() and for this reason this step is
implemented in a sperate patch.
The at91 Microchip driver is the first to use this implementation,
with an AI to move the rest of the drivers in the following steps.

Codrin Ciubotariu (4):
  dt-binding: i2c: add generic properties for GPIO bus recovery
  i2c: core: add generic I2C GPIO recovery
  i2c: core: treat EPROBE_DEFER when acquiring SCL/SDA GPIOs
  i2c: at91: Move to generic GPIO bus recovery

 Documentation/devicetree/bindings/i2c/i2c.txt |  10 ++
 drivers/i2c/busses/i2c-at91-master.c          |  69 +--------
 drivers/i2c/i2c-core-base.c                   | 139 +++++++++++++++++-
 include/linux/i2c.h                           |  11 ++
 4 files changed, 158 insertions(+), 71 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
