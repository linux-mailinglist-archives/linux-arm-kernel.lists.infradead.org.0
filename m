Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917659A8AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7nmqTjldOYZwDWqnMXKO1BJPN9REmeRBPfcU26vye4=; b=maeu5xPwg3z6ns
	tHJBxHzAwq0bfFwZElJo1qDvVeyDL+IjaxkTeWgliPRC4cHWYtKcS1UfG6lr07Ix6+V14qdD3ETmT
	NK+6BAB8qgWQSrWDEZ+7uGK9xe+nFC0oYogUGXdxYXXirIIQdw2GnYynbyyLHXCXpFosNZg9FiBPL
	Bn8T5OAHtE3j8Gf31NUQkXqnICMB2Xnuy9db7QoYQUladRu0VAP7nJs9NZBwGBZZAIE7BPok7Pp0r
	Hrqo98k3XKPciiWI/CY453pwYKCuUEZGkxuILzUpfOJdKli5DdqYtfx/pubDZYd42vyDxmlqn2CGe
	XmbaK3LCA7mBIXbiEiUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13uI-0005wC-Bt; Fri, 23 Aug 2019 07:22:46 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bQ-0001Gi-RO
 for linux-arm-kernel@bombadil.infradead.org; Fri, 23 Aug 2019 07:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zZM+2enzuUNFCA37SD/7zYxLMBFSG+C8Aa4ksqqieas=; b=gVj/b7soFVgwy8FGlww0xWOMCU
 TcrXwV82nA6QB5T9son3BmbWAWfxQTsiSqLwgcdAa9//M5q1nncgDsORfs5AsR0NQEKC2cPTCWDJU
 lzTfKOUFKcJuXN8ACCvWnu01C8ecXXbyFDTqzXix/J1cNj0GpCxuvub7R5v5gx0DTlUF40pGzWPOJ
 7m7vftdnA3DjmKEz6sUdHZdBcoLAVS22cPEdgTTlRFRhJWunxFAjRTySdo5uOG9JwSNmUc/IBFtq2
 fxmbZZZUtHOm/t9UBER2dR2TGOJyM8nP+31pbswyjnOlO6T6uuUqR0TrXMXrGAnRZjDCPrwRy3fPL
 QPK7V43g==;
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bN-0006V3-Pd
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:03:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id f72so7872814wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zZM+2enzuUNFCA37SD/7zYxLMBFSG+C8Aa4ksqqieas=;
 b=RcHgUPSetZMb6XVkRBcbgGh3voKANG45YMVzzKFcBxplKZXPJ6qQ79gYxNulJpGOeI
 BpeCqli79E2juPK5/L3Oo09h3P+RbZKuC86ktySK7JHgQhx2cyDTYKiHBr58swEdihU4
 wIIPqLQXAHv5XiPJlJ1rdUXO/cESPQ3k5rg7NMeWBFFOYfwzy3HVS5RdopLunT/guGbA
 33wnYMm0Lg7o7sq2ToCZ7BymmWmuLbcbUAH/roNTnFvHR7OFtunORr5PVt4e+qyB/Z05
 MFFvG6SkRWCPKzHuZzUSdeSWgFEKv2fjE+0PyWUzi9buLFxuU06W9Q6rw+pLi+4916x0
 v8yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zZM+2enzuUNFCA37SD/7zYxLMBFSG+C8Aa4ksqqieas=;
 b=prCtBdIyuThZQ658d7GswEAO4vMXG7fc0JW49QOTkiQS4Mn8HHQKkjntUxUSh/e/ih
 /CEkgHY8FryowbumBeC6IgKnI6ml03ZwNig1IcpUAqxer06UI4Yi2H9qk4Buii1qyOCd
 oqKBqWXgEZTn6PevUEnl41baFiFtYWDgp5jLOKej37PkND1Zp67tBTCHHs5tUPx+KPd7
 Wc/u2IlPY/vnm8mnuZPrnBwRmO5DxYYUO+ES/r/yNvscEMQTAxpuaBCfybjVkvLcRPrh
 0MWH30U9RK2/j2cPmWxwRxgJlULB0C8oybnGDte2tRLOnvX3dtee4b8HJRq0Uwj2TGvH
 FbAA==
X-Gm-Message-State: APjAAAVDFIvRNIzmy/pBfo1mY++rNnPcojdDbAlnDG3jzWGSmG8feHGF
 6I4CBu25JVkE82yWg7/95PHUaw==
X-Google-Smtp-Source: APXvYqyk17sTfM7f3T7mT0ImLFGi8x3Ic4MHhGFXmX6vZ1hYbXK3bzb6MkvBUg/eQKrGDTAjN2YO8g==
X-Received: by 2002:a1c:5453:: with SMTP id p19mr3357995wmi.120.1566543780920; 
 Fri, 23 Aug 2019 00:03:00 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.02.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 00:03:00 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RESEND PATCH v2 07/14] arm64: dts: meson-gx: fix periphs bus node
 name
Date: Fri, 23 Aug 2019 09:02:41 +0200
Message-Id: <20190823070248.25832-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: periphs@c8834000: $nodename:0: 'periphs@c8834000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
meson-gxl-s805x-libretech-ac.dt.yaml: periphs@c8834000: $nodename:0: 'periphs@c8834000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 74a2cdff0563..6733050d735f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -451,7 +451,7 @@
 			amlogic,canvas = <&canvas>;
 		};
 
-		periphs: periphs@c8834000 {
+		periphs: bus@c8834000 {
 			compatible = "simple-bus";
 			reg = <0x0 0xc8834000 0x0 0x2000>;
 			#address-cells = <2>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
