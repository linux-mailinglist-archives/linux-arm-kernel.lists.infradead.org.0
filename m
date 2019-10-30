Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A07EE9B7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 13:25:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DDH90BSphv9TcBnY0pcDxHrwBfChjfCz8SKr3FhX5AE=; b=oqZG77Hvd5DbDtAbMVgTUy35fA
	T1ZfSxEXhkYcEuCrMyaUI0DfzJF+ku6GtLeHBEk3h2UIbLhAdkTN5uxlHqH7bGfW2T5IlxOVtEF+D
	nJDJVDrtNfWUrSpBRhi2Ypwiuk3x9AuYchtvGPMHmb612o+EwJbUFaLFztBb0vMlwzrh+vzugE8qG
	I6qhZtLckTfiAoZkgxt3O7bcpyPDiGhHJSqa1VhxlG9UpXxWormbLMuKWFcS63DK6mbyoccpsy7Fu
	X/K5eAnheZSj50sh1VLOgYyBU5PhrTy8BqdnG8i/6qQgs5y8eLGmxxZwu0dpTbpDkN/7rVLugi2X6
	f1Zpx+Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPn2Z-0000O7-Qj; Wed, 30 Oct 2019 12:25:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPn1f-00074T-CC
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 12:24:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id v9so2073300wrq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 05:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bHjRV+yplRefJlnocFGPLm9WDOa+jJqsx2Sr2LtJ1vY=;
 b=wC+E7pndDd0Nu4Djtb8R4PV7qUVnvwzShce4FxVWXcyhub4y8UOBGEIaIYZUoGDfTp
 3HtWrIbS2bh+ywtcbeiFJ1clDBXQVmTO2tCkOUDp34PnjyvMp8IKSxQO8wvPyJaaUGT+
 X83hE1GgIwSnuKLMxwwlPS3wyg3R4faPTiI8PzsAdY2UzsgjmeHmiL8W+3IWAMQ6oVpQ
 ozAo7ni/foW14HXTUgqep6j4qO3SuorOTch/cY1NwfwAxB4fPrhXXJemHPAAWkuMNfma
 ldEob//Ldv1X0tODn5lAyQV75vwYKjaTu8wzUAzEgKdhYgyx+GV2xX0OSr4BY9crHC+k
 +aRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bHjRV+yplRefJlnocFGPLm9WDOa+jJqsx2Sr2LtJ1vY=;
 b=s+YnWEWL0wu3ELTjq6sJUU2hUmO25eNXQOpyMdgXC/msXMFeoxH0A0sP4FOcZo3PTF
 TyY6GFGqQl2yjYtvy2gHHw0wTrhDYYWAax2ze3AwxRLHm8PNIVByAq6M4yyPVSxUP28w
 Cnr/EMX/JKi4CJ2o/FlzQgTNVkKspJG8AOgG22RJU8T7p/aNMPdWjPNNRCCYmhBHEuP6
 CI5mgw8rHz3TQKP2JYP7ZQULNZ6dZ02ZxlmT9g/g2BsfkW0dlmStuVaV0uut2D5ROIDL
 95edyAq5CesQsPxg3m1+tndQFVcu298K7ho8qaDrhO5E75JJmJUxgeE12jhyc2Qoi9kg
 QjAg==
X-Gm-Message-State: APjAAAX4AN5y5wnOqTzN6BAopcVEZcbioVgru00gp2+OVOnIz+flS18S
 TpSGKz0OMCIuDFU/U53SWT4dRQ==
X-Google-Smtp-Source: APXvYqwnK2n5AsuwOMfvbkBWHzsINKxEYn88SMq95kpBPr5ZaZT7aBWqOr49OuFqhi8NohL7D07+BA==
X-Received: by 2002:a05:6000:4c:: with SMTP id
 k12mr26069063wrx.100.1572438273908; 
 Wed, 30 Oct 2019 05:24:33 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id p13sm2075919wma.41.2019.10.30.05.24.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 30 Oct 2019 05:24:33 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org,
 wens@csie.org, jernej.skrabec@siol.net
Subject: [PATCH v3 2/3] ARM64: dts: sun50i-h6-pine-h64: add the hdmi_connector
 label
Date: Wed, 30 Oct 2019 12:24:14 +0000
Message-Id: <1572438255-26107-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572438255-26107-1-git-send-email-clabbe@baylibre.com>
References: <1572438255-26107-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_052435_412218_CC861FF4 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For sun50i-h6-pine-h64 model A we will need to modify the connector
node, so let's add a label on it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index f9070d9e6c43..448ccbecf82b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -22,7 +22,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	connector {
+	hdmi_connector: connector {
 		compatible = "hdmi-connector";
 		type = "a";
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
