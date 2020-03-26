Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E98A19440B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 17:10:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGBoLkACx+hZ65N+Y3SojVVdkP7LCFk6cSULxXZOjoE=; b=gEBXfpILg3WvMT
	TBr6MCz/HgEkYf2yoC30Ohu85VCu3TVsseDKaCITzmIoAfQn5wOaM6NwiqtLFJfzSbhWRyP6pQ0dH
	BGhpOO5nFPVEoy8w9o0US+wFM3Ajm/47Cg+UniSngpDa1Fo2SlHNjpGrrSm4Cz/aTwwEsRhgmxcH/
	xX50lW7WUMG/K+666XZUVu4YRtuxbcjwNJS0mYMFNlMMmM0//MsevPjKYrzoQh48AeU6y4yrufnha
	gHaAZX6kJX53RPIhwhxsmwdAesiari9Y7kCItwB91jK19nBOpCcv+jlh3z/Y7ihS0ulHMI1OXzeEQ
	SRg/wUsCM/3pV+xZM2Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHV4q-0006sU-1O; Thu, 26 Mar 2020 16:09:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHV44-0005sl-CR
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 16:09:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id d1so7659327wmb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 09:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VC7vCEcb96NN2X+1RtHiNHbQQNd8PYk2Ufc78Q16YW0=;
 b=cZR32ujlzrt8nUTq/gEyjjkJGk+dPyP8jr5UHD4ls3MRy4lbAmaRqbCN7tlou/2no1
 JETsTqOyEGxkwRCFNOADjJEfIVz3k9pwZTXPaPd4F+50Dabej/sUfPhxhLdQLR0Oe46O
 UFnrlYKd86NJJ+1xYrWV6VoLRA07JelX49Gb1bTyngekW71boQFi49dkbNm/Cwu0C6gF
 G8MRp0rUvLMQYmklI0DSIQMQcuErKgZ1NzRxmSJtaAJesQ2ZX9WnkiGN8vO2I0hAirlh
 Geb+3fvYOOp90SslSoRL63PkOVDdx8bxdApTh5m+fihST6gFtkOprJQgZoXywZqXLeQp
 tBAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VC7vCEcb96NN2X+1RtHiNHbQQNd8PYk2Ufc78Q16YW0=;
 b=U5zwMIZEzVmgsHpa4YC4+x/+KgsjndE3NN1EtS2fIwPBP4LQzEW0m3Jq2QQsQmt5qr
 43LrN7CcM8I9X+3XOvmMSSO/oI8xD1XmgPzNub+4ebERKTV8T1aw/CXKCYc6cWdRTjrR
 j0v0WHH5xhMZfERpnUTIBPWPICeSx/HmSQyKCEUnGITwIH3KTwMECb9yRctoSn2cKFVL
 tnH2wsGsRZplr+gj1aQ/OsvTh89hTjFbVo7GuJqC+TgJx7eAdbIGmawHyrGIQDSbfU6G
 JHN4FPhLWvcwXyChJH1Us6gqKjdQPI3ocxFr4lFzuaWlTg6zVa+dsxgQMVmI/WslUZKa
 7N2w==
X-Gm-Message-State: ANhLgQ0y+Z0/998JashY3PNWLxdlj/JJjxny9jCNSui7dSVCHYJciTBq
 vX9nHRhJ8Pk24IwSZEeYZEEiRg==
X-Google-Smtp-Source: ADFU+vvs4kfivC/L5cN2+Rsomorx8j0QPCI1Qh8T4ckH7E9bvg+e8mxFZQeR285mqAeF3KF8/kF9GA==
X-Received: by 2002:a1c:23d5:: with SMTP id j204mr672257wmj.59.1585238942853; 
 Thu, 26 Mar 2020 09:09:02 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id z188sm4093511wme.46.2020.03.26.09.09.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 09:09:02 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 1/2] arm64: dts: meson-g12b-ugoos-am6: fix usb vbus-supply
Date: Thu, 26 Mar 2020 17:08:56 +0100
Message-Id: <20200326160857.11929-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326160857.11929-1-narmstrong@baylibre.com>
References: <20200326160857.11929-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_090904_422429_313777BB 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

The USB supply used the wrong property, fixing:
meson-g12b-ugoos-am6.dt.yaml: usb@ffe09000: 'vbus-regulator' does not match any of the regexes: '^usb@[0-9a-f]+$', 'pinctrl-[0-9]+'

Fixes: 2cd2310fca4c ("arm64: dts: meson-g12b-ugoos-am6: add initial device-tree")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
index 325e448eb09c..06c5430eb92d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
@@ -545,7 +545,7 @@
 &usb {
 	status = "okay";
 	dr_mode = "host";
-	vbus-regulator = <&usb_pwr_en>;
+	vbus-supply = <&usb_pwr_en>;
 };
 
 &usb2_phy0 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
