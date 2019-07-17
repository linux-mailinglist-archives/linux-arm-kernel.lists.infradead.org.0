Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE116B64F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 08:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XiT59KPGpBj/KxUO0+mDLKWvuH1YJbldhpRfHl6HFCQ=; b=kAh
	ME+otZWRwa+juB9rU3phYo7vG3TyEaeJQtUYxCK6DhSKRQBdNk6+CKZcgEF9bzMImTxt7cr9Rp3XU
	PfLUgwdHjewv+ItAy0LzQ81Rvv31Mt0oz8q0mLsSQvH2Sf0CEYqkjPvvGnof+DWErYqBpzMDuqXZs
	EKKSsUSMd/CyPubK6zBMFR1WPhGdeXemzXj6XJ7uo2cQNwsKhvzvKo8PgXywCD1If0g6qDYfDliBH
	mRWQG2J7MHAgSt586/7TpUWYUPxuBfCvU07iNIdnFiTrQ9VFXg+VM3bHxp4chh1HbFe8gXgJekWPQ
	rTcVzwdxWE2y5mTkLPav+tglXr9rBbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnd9j-0006Nu-IZ; Wed, 17 Jul 2019 06:11:11 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnd9U-0006ND-G7
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 06:10:58 +0000
Received: by mail-pf1-x444.google.com with SMTP id y15so10296297pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 23:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=tcOipK/CbddDVGFHFiGY3BJRXPaA4gC2lnfl7Hga/DI=;
 b=BrJDYCZJB9PG2HE+zn1d3uzhxRGw8nkXBBsMHHsFrRnoKeB07FH6aBz2TGAHjuOp0u
 bMwUGjgVUahRq2G8WwuPSF/hj3iKHxf4F5ptDWZZfaBUevxVf/iSdoi6hZKhe/e70Bco
 /E3DzKUFLNdGkZYFhmukS2xeKpUl7SzGaXjZDi1GhwHDoJqkcrAneHe4+7mq2beYs0q9
 vQTiBYCUMuuRsxteC/AaQaqJ5pq7gq8drIUbOqlQ3FgJXQ8rbis09pge2Ixb/fASqSOG
 Yv6wFtchoJpRuhsS7sa8ITOyR0whajNhJASDzc58bridZxkGG4iSxY/IdDdloKvjMLe/
 l6LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tcOipK/CbddDVGFHFiGY3BJRXPaA4gC2lnfl7Hga/DI=;
 b=TN5Ilz6fW/Puk9jGMXQNjraMsxpVFmIZWQCxxFLPHuLoulWmfbVc3RMGvpukmbgT6u
 PFBvkJz3fX+38Ou9A2Ln4yXIhED5r8NV15qu3DKd1M+KMViM7n8YBRjSmBAqixK6iONA
 8qZviA7ZhAdpwePRMdTrbkq2y8kfV3qrWpsQH8YOqaWAAgRvbpyts+mI6p2st3EiU3vG
 F5drGMqqj9FRErnmCQEQBu/3e+EaH0gYp652S+GoAilfL2j6DAoa+4TppWZ2hbMG4DlR
 MJW//g14IN+P6JtjKKsA7b11uwifCWuoca0gKrUYgK32y56KbIFN/5za5V9WEMoyOGru
 v1HQ==
X-Gm-Message-State: APjAAAWN5F6AtSXjiobrVgQFymDKe5VoZ53dvXj6HNt0Wb7iDjjRRD3o
 1AVEe+5RNbtTwV0lnh2Kn+A0
X-Google-Smtp-Source: APXvYqy4gNVYEdgjbXvPK6KcNs5PTafuSPkKcmK8Hq2gFAval1OLYy1Y5GCOnKFcSedCx4Kq8YXApg==
X-Received: by 2002:a17:90a:dac3:: with SMTP id
 g3mr41743202pjx.45.1563343855049; 
 Tue, 16 Jul 2019 23:10:55 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7301:59e6:f493:40df:9c8a:5041])
 by smtp.gmail.com with ESMTPSA id r27sm25993313pgn.25.2019.07.16.23.10.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 23:10:54 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH 0/3] Add support for i.MXQXP AI_ML board
Date: Wed, 17 Jul 2019 11:40:36 +0530
Message-Id: <20190717061039.9271-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_231056_572895_108BA01B 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, kinjan.patel@einfochips.com,
 linux-kernel@vger.kernel.org, Darshak.Patel@einfochips.com, linux-imx@nxp.com,
 kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds support for i.MXQXP AI_ML board from Einfochips.
This board is one of the Consumer Edition boards of the 96Boards family
based on i.MX8QXP SoC from NXP/Freescale.

The initial support includes following peripherals which are tested and
known to be working:

1. Debug serial via UART2
2. uSD
3. WiFi
4. Ethernet

More information about this board can be found in Arrow website:
https://www.arrow.com/en/products/imx8-ai-ml/arrow-development-tools

Thanks,
Mani

Manivannan Sadhasivam (3):
  dt-bindings: Add Vendor prefix for Einfochips
  dt-bindings: arm: Document i.MX8QXP AI_ML board binding
  arm64: dts: freescale: Add support for i.MX8QXP AI_ML board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8qxp-ai_ml.dts      | 249 ++++++++++++++++++
 4 files changed, 253 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
