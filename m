Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23E21B75A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 14:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mVKxeuJcUNm832i2qqoEVxEk5Lr0ysLTOol+7PbKRYQ=; b=nBgsgzhgQGzrca
	VYRB4s0KskV7mlW/v7xBiGpD/PnveDezYnVk92aKxZ0YkAJGZXlPrKydLhAkgHinLhdRs9+EdwWdb
	wOea3R/mwKfZeNj6EFQyU57tLy7zn3x5EvZQyNJ7zMfeAw+uxB93MxLhMMw3AbB7SeKJlnfxnQx3o
	b4nz/HTni+uX73oH3Ea3sWzcXs/zJVOjkS/0LNJjQJ5u9+n/b5xqaTIfvciHN2DnR/jQSyNwV0Cr1
	JnShW/zk/qFSiTmRaGnB6N4We3EzD6Ag6NYKcGnhYdLchzuEI8m4xB+mgxTMfmmWJ1wppPBRp/i2u
	lmcV3AjcHFb1yIv1WJ2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRxgw-0005Wh-1F; Fri, 24 Apr 2020 12:44:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRxgj-0005UE-Cz
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 12:44:15 +0000
Received: by mail-wm1-x342.google.com with SMTP id g12so10528524wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 05:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vqrR8RcK3jQJ7N6BJUpZZzAOlag+e4M/HVsKVtYGanM=;
 b=eK6sY+5096Up6Tuo/atZU75DoQn0eb/5SeL9gtwXHBOMdu1C77ORcvObcdRc5/s1cj
 G3NWka3kjRFf6NbThNWmpC38Lu0XwjP8QX3yYdDcPnXdrCK4fnp0DmI9EINtqraDs0yK
 neHsIpC4yO8+Jgzb3kGiu0u0KUcINz9NZCCozQlfSyg9qh6xwe1eU8Ogd9PbQhivuUyK
 X1BeqLMNSEncfAv0krblxEA+pTXhZwJ9mX3cORgsF8OQf5k4FPl/sIfUUXK2DFX3Hsfp
 IaCHrq+BYg5kEXj/XmLNbzHI5BQBMyT0RVYG1MGdpAFT4BHvCvzPXIQB+/G1l3FQyIeA
 Juxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vqrR8RcK3jQJ7N6BJUpZZzAOlag+e4M/HVsKVtYGanM=;
 b=PhWQzAG4rJ+UJtj4HW0HDJ77Q+SwrgAdqImR43rTP4unSis4gfqDm49Gvjdj1L1wB+
 p3QRdDiv/V2AE2t6kIPt6bbDiyxVo4hcAwUK1opato1RmXUDHyYeJH77mJv8aq60Wl9V
 2CWFbmHHL//EHKITgogdViWrQ7qfDeWKti4eNm3xNrwVykLTYv6BQp8LeDfTjars3/Ca
 kP/nbRVU1EQZ08x5OrAUvafJzQ0GDNd/RFX5DfLZHQy1byc8SczfoTWotJNfPY/Z3aDr
 Py75s2kfE04I5asLRBtFoEIioGVLvhA9q4JILitWLnCNEEAIbuuedV1Yf4k7r3qMI0VM
 EIew==
X-Gm-Message-State: AGi0PubATE5ey5V5Yct1nkfxeSM+0DVL740jzhyVlXVOZrdsRoqn90Ok
 cOTT+odleZDGwW+wgpSlBFFr9Q==
X-Google-Smtp-Source: APiQypKxnci1OIVtsyUwDnRvBaRtP0SdCtKIlKTF+ChQS3TlaLeRLU0KtKZ/IOUbIu+Q2WHUYH9qQQ==
X-Received: by 2002:a1c:c345:: with SMTP id t66mr10514947wmf.189.1587732251350; 
 Fri, 24 Apr 2020 05:44:11 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id
 q184sm2692689wma.25.2020.04.24.05.44.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 05:44:10 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 0/2] arm64: meson-sm1: add support for Hardkernel ODROID-C4
Date: Fri, 24 Apr 2020 14:44:04 +0200
Message-Id: <20200424124406.13870-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_054413_436122_48AA9E99 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Missing:
- HDMI audio

Dongjin Kim (1):
  arm64: dts: meson-sm1: add support for Hardkernel ODROID-C4

Neil Armstrong (1):
  dt-bindings: arm: amlogic: add odroid-c4 bindings

 .../devicetree/bindings/arm/amlogic.yaml      |   1 +
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../boot/dts/amlogic/meson-sm1-odroid-c4.dts  | 399 ++++++++++++++++++
 3 files changed, 401 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
