Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2261C6AD9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lRB7Wul2aRnBj14CxULP5F15s//EoedyJej/XHPvAD4=; b=I+zpl1Jff3QF6F
	uxov5ZqEUSgH3URPZQDbchHq9LPHXdrgTxubmVHzpOWOg+cEfOMFzd/HtWLay1b2zWJ0zYLHRxw7m
	yCK/x5UGl2i96DyETMOHpcWXwbIR2sCncTVlMQDF5djZnjWQclZnDlRv/ixvEhzLjGWXpEc8h5Usf
	g/6delmj/QfGjj+o8g6sAWy0uz0uAEXP0cLNnFILK1WyHCTBLJZeDloKdfEWACHb6OCFrK4AAN3Ze
	lsrwHGLUz9hSEM1AeZ95byBj0okGBRDMBIe1genGWHDV5urK6pXnM/fhBskvzp87RQq7jsvzsJr9U
	XkHRuAX1g/tOHlIZC7Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWF5U-0003Da-8q; Wed, 06 May 2020 08:07:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWF5A-00030Y-P9
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:07:11 +0000
Received: by mail-wr1-x443.google.com with SMTP id s8so1012153wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 01:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OUoKNxV4vqNDiSef+ICdZkoAIRUHcuIito46USVrX6M=;
 b=QDOkJjkIqKcQFKzMtVFjf9SjZTn75nCiyUVtEd6/RVU7pmbDF53lIX6A6pzHESbBQn
 EaBb90lnUbW8TJE9AwRJnT5uWamLTS+P+d9dXTNafMthB2LP746m4B6OyFprwbAxVfJc
 zYIItU2Fb7iUBdzQ+s2XmdsDkuh38HfV3EpwQzWyWRuRTBMcOSfaC0OJN+NCoqMMnc6V
 z0eTeuse+KwoI6EIc2PB+rvwEmmczcyElkBHX0Kaq5SoBQVnPRgUUz3Mu35CYVOdsc77
 c/EABh02rWBGO/NX33BtZ61A/lMERYWNfW07Qqd2DPxFr6k7Gx2d4166hYWlXG6Jf9A9
 PXtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OUoKNxV4vqNDiSef+ICdZkoAIRUHcuIito46USVrX6M=;
 b=Pmehwq4oo8srvUCiA9UVlNuQop8PfhEpNb1FSjXG2cLHjcDwr6CpnjwRos0O6EIe5S
 vTHqaazimlWo2QOEUFcMM3gW8gz+kqFd4uCpi1fBVde/HJk7ntU+3hVBE3/K1bOYCXEW
 yWyVTqzyrechv9uT6MpgbfQe/Xmx0NLZSAlw+6Phwk4ZBDw6PXpUMcUdI0CCTBtLkQZp
 kTFZMda5955qNu0pdvIBWgPEaDUnlrm6tKvgosOIt7BLpzhtt/QmC03h8lMg0WtLr4ZR
 4HTmiOoL7UKgXWP3vtxRmMyvjemG9lu9X8gpWCAyG5Py4pTAIvb6q7RpH9VBv2Pb2Mxm
 pxwQ==
X-Gm-Message-State: AGi0PuYKGWNRbNaqYlaTmEFuCYi5BCX53Vo2SteK56U7DtV6WGJF/plv
 IJIlnp54okcO2N+OWPOgjep/eA==
X-Google-Smtp-Source: APiQypLFXloAanL5BZXsPuyvyXKqG7TKKwVlSQtxJg0wIvbD0RxyshxpV59rlJmEtRwk/c2IWPXQcA==
X-Received: by 2002:adf:a1cb:: with SMTP id v11mr6651006wrv.39.1588752426703; 
 Wed, 06 May 2020 01:07:06 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id
 185sm1872098wmc.32.2020.05.06.01.07.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 01:07:06 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 0/2] arm64: meson-sm1: add support for Hardkernel ODROID-C4
Date: Wed,  6 May 2020 10:07:00 +0200
Message-Id: <20200506080702.6645-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_010708_868514_A9D02E3A 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This serie adds support for the Hardkernel Odroid-C4 single board computer.

The Odroid-C4 is the Odroid-C2 successor with same form factor, but using
a modern Amlogic S905X3 (SM1) SoC and 4x USB3 ports.

Fully functionnal:
- USB2+USB3
- USB2 OTG
- eMMC
- SDCard
- HDMI
- DVFS
- Gigabit Ethernet with RTL8211F PHY
- ADC
- Debug UART
- Infrared Receiver

Missing:
- HDMI audio

Changes since v1 at [1]:
- Add missing IR node

[1] http://lore.kernel.org/r/20200424124406.13870-1-narmstrong@baylibre.com

Dongjin Kim (1):
  arm64: dts: meson-sm1: add support for Hardkernel ODROID-C4

Neil Armstrong (1):
  dt-bindings: arm: amlogic: add odroid-c4 bindings

 .../devicetree/bindings/arm/amlogic.yaml      |   1 +
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../boot/dts/amlogic/meson-sm1-odroid-c4.dts  | 402 ++++++++++++++++++
 3 files changed, 404 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
