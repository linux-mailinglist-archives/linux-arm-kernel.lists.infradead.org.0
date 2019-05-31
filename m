Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4EA313FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MaGO27wCm+SJcXUuM2nVz+rDzY+zmnOgN3fQ+IJSNYo=; b=eDnTW22fGEb4XdCuDDkuDwGu8z
	bYdAT60W4XwVbRBzok3SUcmgZ7DVGqbYqZ10EVJSPv9+sbKUVy0PezhmFM/AOR6HQD/Fvg0Lr8ptt
	2J9Vjq3oz/Wj3EQd4JRv7UaU7OmFrPWwZcF3WxA1nUHNsWsphbWsAu6BKWIUl+kiAinnND99cCIo+
	vr+0jYmehS7knP6jl+buEAat3WlbZZG9BBPLsVI33QyEZWBVmYTW3fsKezzcvQxpkkdyMQV8oIu8E
	QmnkkfBYricSKwLnL282JDvSHwW8TlbGgzf+dPC8QbBdwH3EPyELe1eY9+X4A6quPRnDryqIOcBaE
	MqCInbBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlUj-0005l5-MQ; Fri, 31 May 2019 17:39:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWlUH-0005PO-3V
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:38:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id s11so6602261pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 10:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H043+d/K0lU8Bwi5pfOj5dvnExTA6UuaPSOVo6O+L9g=;
 b=KE0+6rpF64j1vTYhYacaFSqLgXxD1DAk8LtuQSPG0MbcqUtdGrY9VA+RV6fqODQmDU
 ufluZYKKdg5bhEn3K2N3mfFFgQs+9wAU/6gjTkA/eDUKG8Nq1w3HistHZ5KBnTx4lT5t
 gVKFyn+UlPbAKsWogoUF4rw5MOwVHjhQ6tN0N8sdKa0rmjSq+HJoL4ySvgGAAAHnG+6k
 X5VJY0u3rbLGXi+Br0zyzQydvHOM+btMAWOVYJAr/Q2ofNk/5+6oeLggdVmwgmA3mIDJ
 1I0TWUGONAHvbaNvJ7tVyTsP9BHz1g+0OQKewztyUhd6WeEBOGugtf/HGTvZdCJamba0
 +/Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H043+d/K0lU8Bwi5pfOj5dvnExTA6UuaPSOVo6O+L9g=;
 b=LRzN9XoZJFaHgiRkF4tPsBnd2PTpyD4Sa+TkIQRQvLGHLKq4FuUlvTlaJXZq62Cgtn
 KIn4EinULuc/qyn2gVtYx9Qs2+A16cNhrM4Ja0yp6FlbpA0/C57sA/uqw4BmrteN+MrK
 X0tHJF+9KpE/O5y2Z9xTvzVweMBDHYH4VBp7QJLUv/eSlNlgGlYmycZm0vgy2FHd483o
 pRiYM1YshKHUeLbqdYOPFXSaSSsXDDPvcXCYyjLnTvJZEB3yNHfAU7U/FtFXk/n5Yo+N
 ziFP4hlXmE90ODCIUkPi1xTBD1+qRwu3NI9ZflncxRAOw9GYC2pRQsllf6eZlnQ/zQJJ
 MPxQ==
X-Gm-Message-State: APjAAAUhH2PfEKRhVIj77nKSTZAb0LZToXG9uP6vM5YIt+AKScQSbJOI
 /4xTU1aLSdVAMJtTDk64KRv/3CgG
X-Google-Smtp-Source: APXvYqzrpx5rqG3QKB3Va61sR+x4aFbmnpKZ0UizXtVWQWGQ8BqKOxWS+kAph4wLwDL3RROI+yc5QA==
X-Received: by 2002:a17:90a:840c:: with SMTP id
 j12mr10651474pjn.23.1559324319961; 
 Fri, 31 May 2019 10:38:39 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p16sm14974419pfq.153.2019.05.31.10.38.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 10:38:39 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: Enable PINCTRL for ARCH_BRCMSTB
Date: Fri, 31 May 2019 10:38:26 -0700
Message-Id: <20190531173826.6729-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531173826.6729-1-f.fainelli@gmail.com>
References: <20190531173826.6729-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_103841_343321_238E3996 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jim Quinlan <jim2101024@gmail.com>, opendmb@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, Florian Fainelli <f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Doug Berger <opendmb@gmail.com>

ARCH_BRCMSTB needs to use the BCM2835 pin controller for chips like
BCM7211 which adopted that pin controller for GPIO.

Signed-off-by: Doug Berger <opendmb@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 2d8b1afa3799..af0d1270094a 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -69,6 +69,7 @@ config ARCH_BRCMSTB
 	select BCM7038_L1_IRQ
 	select BRCMSTB_L2_IRQ
 	select GENERIC_IRQ_CHIP
+	select PINCTRL
 	help
 	  This enables support for Broadcom's ARMv8 Set Top Box SoCs
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
