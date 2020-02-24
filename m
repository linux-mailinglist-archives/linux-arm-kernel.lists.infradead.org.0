Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2025C16B04C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xRiOSyP2MdiyUpoADpDx74ufl/KJH/BXqi0Nt1Xkwfc=; b=AFkjbhal1DFJSo5tPJvbQjHOOQ
	re959oCchEdGWWeKcZ6X1db509OFJINDOMB9/gPCoB+vodIN4+6TV8q8TSvTyv41B402UexV7Eim8
	FQ+W1ef0LQULLB1HWGLFThK1sKah7RcLB9XfQxlyR5d5waMFU9rGj947RhIidU0lxR1YO9IpZkytF
	Fju0bdNSRmypEjnQdekHaPT7iOlNTdXjP5xvvteXqK7Ez4lmxy9WMCgb4AGj1S5KNK1FEYEty3b5p
	50qG3tMKEDEdCPGWk1Crg6mFY5JEYDl4jIjHL79U3Y5bMpMcH3IfzppyLBzidkHP7bPmepW77E1F9
	LxyPu//w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JTN-0001kM-Dr; Mon, 24 Feb 2020 19:32:57 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6JSi-0001HT-Fm
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 19:32:17 +0000
Received: by mail-qt1-x841.google.com with SMTP id j23so7341699qtr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 11:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JS1d4t7lpLNpu91l+OHvnzsamaPTvyDJErubjHc93FY=;
 b=nSphT5Bj7f3rPBxV3gGIVnNxXe0paCeEFajVkvfH1ci2JeIusWR3+2L1b9CIJXP2/6
 oCpPkfp+GhzwAZOgkN4FVCfWvi0r1PneKIzsH/2g9Qo4sx+K4sS5v3rg28Hz/qDmZJ82
 GQzWO3XBPeKCvPWro/Y/8zW9VTEKYLN2764nLt+TvVCJLtw2KgfVKlEvyvLsMWMERie5
 auyYe/ckGpS0sJUh3eM8t9qP7fzZ2sokWxl0VD1uaUmKCht1z1cLH5bPpJMiXP0keHOp
 wZnAjJIFaIjwLO4mrIt4TRa5ngnABmLx1xThHfRGuQlzkBqbmZmySUS4qqVTseWeegcl
 qdpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JS1d4t7lpLNpu91l+OHvnzsamaPTvyDJErubjHc93FY=;
 b=O1h1QRrD8rKcyeDUdnwkZdrIBIvWcDFeakXo6xqAFr2xv9HgxcoKYnI6sJAity7tQ+
 pJfmMDP66F0ga17jLm+Y3PomFaCzPDcn1LPN9EFxHobbkz7xMNqZ7+ZM73d0rrvL9Th1
 79nADUV+X6n9QK0S44IS7L+Lt5pGQo9Y1HCoCNOeX59GqN5x37qKgAYO/LXoOrh+ht6y
 zL+hOB1LKBTqOBjVW8tDz6CnQgqK1yGKxpaaFxT+GTMHoH3eWqp2WUK45n1xaFkVpEjr
 f4gyKKkjcs6GgOupJd3TdZve9zhUAPt9cXxXRi+q3ObF+/nvKV+pWSARZda2UHh72X/Q
 LmNw==
X-Gm-Message-State: APjAAAVFy1Vd6qqZZ0j/OednCJcRxIqhDCQzQRbsOHpM8nf38RMKtEeD
 XwQMgZ37EKYi6SxHBkiDqUM=
X-Google-Smtp-Source: APXvYqxFJhcdjuMC0wPR7cf4ph12VyIczv1dMkxS1zEb3gHwAtJX2xrCGPoKZO9+zl6sIg6GJUWAIg==
X-Received: by 2002:ac8:40cd:: with SMTP id f13mr50070694qtm.140.1582572735140; 
 Mon, 24 Feb 2020 11:32:15 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:482:5bb::2])
 by smtp.gmail.com with ESMTPSA id g2sm6182497qkb.27.2020.02.24.11.32.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 11:32:14 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 3/6] ARM: dts: imx6ul-pico-hobbit: Add ADC support
Date: Mon, 24 Feb 2020 16:31:57 -0300
Message-Id: <20200224193200.2773-3-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200224193200.2773-1-festevam@gmail.com>
References: <20200224193200.2773-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_113216_552248_58E08A03 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: robh+dt@kernel.org, Fabio Estevam <festevam@gmail.com>,
 otavio@ossystems.com.br, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

imx6ul-pico-hobbit has a ADC081 under I2C3.

Add support for it.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx6ul-pico-hobbit.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul-pico-hobbit.dts b/arch/arm/boot/dts/imx6ul-pico-hobbit.dts
index 09f7ffa9ad8c..2a951d6ffa63 100644
--- a/arch/arm/boot/dts/imx6ul-pico-hobbit.dts
+++ b/arch/arm/boot/dts/imx6ul-pico-hobbit.dts
@@ -60,6 +60,12 @@
 &i2c3 {
 	status = "okay";
 
+	adc081c: adc@50 {
+		compatible = "ti,adc081c";
+		reg = <0x50>;
+		vref-supply = <&reg_3p3v>;
+	};
+
 	polytouch: touchscreen@38 {
 		compatible = "edt,edt-ft5x06";
 		reg = <0x38>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
