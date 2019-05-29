Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F27E2D5D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 08:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z7kj0nBkbEV+y9BCDCq5EjjW+G2Wn0nbT1UWVCOb8wo=; b=sN9+ADz9SIhrBv
	0bcVyoGqsq1YcjZvPSj1EVuKzu2mosTh1WTKSID/Mb/kq+RzBvT2+CI41evgHhGNVkypKCWA4eiYY
	n9HHziHgF3gb2913yxa8nHWsUMtTvpOF6E1ehpYSex5KJMuZBMJM+xaKRuQSXKTGeR2WcGxhyvrO3
	d8cRJrTzXQ/3epBKmEoYMwUT0cQVYysSVz9Chl7d4Ga+7j2ZpPCqycBnEQ1hJFgHxafQCrW1iAVPU
	wKt4cp3EpB9Z5azuz8VWXA/kvnPN9yaAJBI+ks6tzeQV69f3J/L5/QqId+qGYgMv6WCff/e5vxlhh
	cfzC8B+RoFUgTez1Ntjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVsYz-0003qs-Ek; Wed, 29 May 2019 06:59:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVsYr-0003q1-RI
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 06:59:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id a23so999166pff.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 23:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E0bgQPgSMP42ZfwbXSuWmab92jZuGUt5fjUbtxPvUiM=;
 b=q6RbDwFuYeqmLObYFuGGv3IhcdW/xXwSAuFrYppBH6OO+8L3KNxSk+IKK4E5ymQFV3
 XhJbNHq6X7ey6lX8G0pV8nLJb+loJ/alNZktblCVwnT7ATMhZTPF0rahL4loLOQC3lKC
 BxMOT+4Dqr4qlc1+yRXKKXbMUkMbFj6JV5kI1wmp/zuMYu8i6W+P66kOxN2NY7ymNNBO
 qjLiEgCI92ckzR09fz9Et6YGDUki/35FRp4a+hZdwK7LlS+Ba8yFV+goftBnPhDiqH+u
 xnTJjYvEV9b4xEm57R3rjZFIzne99Wof9cDEatUwMMImPPcPDbdTNTiFf4ElRwOfmnpc
 PeZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E0bgQPgSMP42ZfwbXSuWmab92jZuGUt5fjUbtxPvUiM=;
 b=VE97fbxjor7wdNHMQle4s7efP9jcmX7Ripy7bPtrPz2ojT5C4CE2v31A/P698RtqWO
 zIBXbh8aOYzpJ+MS87tKk0r18tCVCwB62lbRMhtaGfyU9vCdpgkC2i9wzQK3M/BkMqnw
 kns9GkVFMTA0eymuSUikflKMpIiYIQuikrVqi8nsUI2jO1CqgcZmXT7doGmwuhn2k8rR
 vRwhGqDWVs5DWkdj9hqya9KAmzeWgPv9qoqqg1WZwqdipyXcyKgR05xoD97UcHZkiX7T
 LYLxPGqnqcE9DF+6iVw5t+IvZ4iPeebAg+FnTqhDCgluse/NDuNK0v9rvlph2Kk3doFe
 FPUg==
X-Gm-Message-State: APjAAAWxXqaVoKPcxLbbQYDPovIY1G901cHj3f3KZC9MdrHWeBPuVVot
 cyJJS2FBmXMSho7353bwZ4g=
X-Google-Smtp-Source: APXvYqygMFesjpxG7whDDRrd9WqbksrEbmnXXra+/oJvA7nDyHOwRoOVRjJk7SUc3+UOQxSR30RXgw==
X-Received: by 2002:a63:5601:: with SMTP id k1mr6195259pgb.367.1559113168357; 
 Tue, 28 May 2019 23:59:28 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id l20sm16207663pff.102.2019.05.28.23.59.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 23:59:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: 
Subject: [PATCH] usb: phy: mxs: Disable external charger detect in
 mxs_phy_hw_init()
Date: Tue, 28 May 2019 23:59:04 -0700
Message-Id: <20190529065904.4548-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_235945_996772_C6689280 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, Felipe Balbi <balbi@kernel.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since this driver already handles changer detction state, copy the
workaround code currently residing in arch/arm/mach-imx/anatop.c into
this drier to consolidate the places modifying it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Felipe Balbi <balbi@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-usb@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

The intent of this patch is to consolidate all of the code maipulating
charge detection state to a signle place and if this patch is agreed
upon I plan to follow it up with this change:

https://github.com/ndreys/linux/commit/7248f2b85b4706760fd33d2ff970e2ea12d3bea7

Thanks,
Andrey Smirnov

 drivers/usb/phy/phy-mxs-usb.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
index 1b1bb0ad40c3..6fa16ab31e2e 100644
--- a/drivers/usb/phy/phy-mxs-usb.c
+++ b/drivers/usb/phy/phy-mxs-usb.c
@@ -63,6 +63,7 @@
 
 #define ANADIG_USB1_CHRG_DETECT_SET		0x1b4
 #define ANADIG_USB1_CHRG_DETECT_CLR		0x1b8
+#define ANADIG_USB2_CHRG_DETECT_SET		0x214
 #define ANADIG_USB1_CHRG_DETECT_EN_B		BIT(20)
 #define ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B	BIT(19)
 #define ANADIG_USB1_CHRG_DETECT_CHK_CONTACT	BIT(18)
@@ -250,6 +251,19 @@ static int mxs_phy_hw_init(struct mxs_phy *mxs_phy)
 	if (mxs_phy->data->flags & MXS_PHY_NEED_IP_FIX)
 		writel(BM_USBPHY_IP_FIX, base + HW_USBPHY_IP_SET);
 
+	if (mxs_phy->regmap_anatop) {
+		unsigned int reg = mxs_phy->port_id ?
+			ANADIG_USB1_CHRG_DETECT_SET :
+			ANADIG_USB2_CHRG_DETECT_SET;
+		/*
+		 * The external charger detector needs to be disabled,
+		 * or the signal at DP will be poor
+		 */
+		regmap_write(mxs_phy->regmap_anatop, reg,
+			     ANADIG_USB1_CHRG_DETECT_EN_B |
+			     ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B);
+	}
+
 	mxs_phy_tx_init(mxs_phy);
 
 	return 0;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
