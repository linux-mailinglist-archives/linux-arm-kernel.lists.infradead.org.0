Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E972D5D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z7kj0nBkbEV+y9BCDCq5EjjW+G2Wn0nbT1UWVCOb8wo=; b=GxYI/mVQG1+8Hp
	ARHIZKR4p28G88JGsaAiF5JDjyRpSfQIgRFGXjXaRLMWPnOBwnh3Oko+DsrWTK8Lsy3K4nhe+JGQB
	J0X3sGhbjlXzTv4vUFgfJX8PLYejU7oo1h9o8jn3pUbTdkMtx3MHYqwItPr4Y33dHOLLV0nhmB0oL
	uw2jfa9c6n8QybTDWsUpzPLXZifWTVuEMA43xxn/daa4m1oy97e6UCgO5T/nr65fDPu5IE8Tl6uLt
	H00mkJcRePNIQIhIOWJe12/EXRxbNctsNpIW4kx6Ga1x4Yp1EinwKhZPGtC7wAyz/6rPgdfLJTmA6
	lS7RW9qGYLAnb0qOQg6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVsZH-00043r-33; Wed, 29 May 2019 07:00:11 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVsZ3-0003zq-Mt
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 06:59:59 +0000
Received: by mail-pl1-x642.google.com with SMTP id g69so643126plb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 23:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E0bgQPgSMP42ZfwbXSuWmab92jZuGUt5fjUbtxPvUiM=;
 b=rU4iITG5VmFx4XAjZ9SqdhuxUFPZ5ojPBvVmPgPP/iEB6Zl/SxjPjIhLou+meUEEfo
 aE4bNXDzRYOC52gv/f5psxBu4D6JI7J6aOPwmyzHEcDMbGLTHhck2r15OHzLmzlbdGJL
 ZxzX9vyrueX+suCwX9Z7LOdPfuG1sHClnSaZTFHe16dyt5wMErqzI0FE+56QgZgrDG8u
 xmLcJgBSPX7ytWo6jVTC8OqdPumPG6Yp0P5f6jBe8QSAi1BZT4qzCR0OCuNHMmSVCzfK
 zt2xQpFO3cRe92LHNxjXUGN40xSP3L+QKjWQXcus4oiZaeS93tMwmAl/ycm41hJHFZck
 4FtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E0bgQPgSMP42ZfwbXSuWmab92jZuGUt5fjUbtxPvUiM=;
 b=SbqdkxIZpzOL60a2ocXIZVW8b+4pSFv2lMQVtNDmNJalBHFCGO1+vd/M2bwX/fl1Vw
 +2alQLaWoSAjWWbKP9hYCKFqvCyXXeXQpAtQzv2BLosy/fOBYT9+cghIGXXBSNNQCeV3
 XosndzSHasTikl+CH0WwxhjUKg5BpEhRmzTAwVG9hG/RiJ5q6sutyxw/b8YXkwcWx6SN
 Ra8WVOWCmElwV2S+tN8hMAX1/gUhYKaFcCo3o4qe+kRxPHlup4F4j1lGCvoU93rg1MVB
 e2uF3nBEZdMrWDn55n8lKpEXOt4b2SgA2Ikr2GJbUwn7pyPuC1NOysEMVy6KuGzng5XR
 jGyw==
X-Gm-Message-State: APjAAAVweylEmXYBQkfJlAjGDY/4F/4IDhdfFvPh51JgaePjJoHFQvF2
 FkB8lYdY2tI4IbbRKLGJBYA=
X-Google-Smtp-Source: APXvYqwF0bRsJzR50vWxAWCgVKZ565U++Ct5+ACgxT7OgKqHLP7z1VO2l4M9Il82ZYGhPqwdHZzBZg==
X-Received: by 2002:a17:902:9305:: with SMTP id
 bc5mr39755419plb.193.1559113196710; 
 Tue, 28 May 2019 23:59:56 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id g19sm13460036pgj.75.2019.05.28.23.59.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 23:59:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-usb@vger.kernel.org
Subject: [PATCH] usb: phy: mxs: Disable external charger detect in
 mxs_phy_hw_init()
Date: Tue, 28 May 2019 23:59:48 -0700
Message-Id: <20190529065948.5492-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_235957_824738_96F93D0E 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
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
