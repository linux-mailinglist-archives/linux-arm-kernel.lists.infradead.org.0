Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3E916F944
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 09:11:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ADp0ZCf/RXeiG8WcqeiUa/p9bRVFg9MWHrmkEvydR4=; b=LGhb4fkQPVOahi
	BJtXEN4XzL/JpAolHzThXXSCz6Ga6a4XRsdusD5lW+G9d20OKblS1Li2yUXQBF3gD69zww/f2uZ89
	SCjOIeF8YUi4eRd//H2ki/ugHNFjjr7D5+6X8lBg3oTpatQ2D+Snv83BF6PgDCBec7lxy6SgUaP77
	ouDw0lLlP00NBYXZp31b5lBknpI4oolPTNfq/3hCcsnQGKORXv4xPzuVGOj8m4Aj9K9Uc1D9o+S9t
	kYan/5JdjUcE2XmXgKkvQ4mK60O74eH9QZ1nqDxgtvQHnX7+JWnWoTTiYsV+8A/TxWEOTIeLpKZQJ
	f5BizujU0K80o5bM8ckg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rnD-0001aC-97; Wed, 26 Feb 2020 08:11:43 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rmI-0000se-31
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 08:10:47 +0000
Received: by mail-pj1-x1044.google.com with SMTP id fa20so941191pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 00:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vEnVySXBYfW3b1su9MemqgqPSinDbCdHAw5n+ZVHXKA=;
 b=ZqFr2XdedoNMMzSdc2eWipJbPoWCSoIWOaxz1zsBu+w5FRw0nlJVp7B9aMcVR/ECrM
 fWpYYrpUhtSvO1rGsvHH3i7x8JxpD2QgM4DK0weubmj2twGyNSOa9Gvtg6KWDj0oARIV
 ossJG+QlPSs1QhoRE2faVAv1lrRd7/LwUBqX6m+LwRkGl9SmUJ5qeccTbXxGKO/jke+J
 hejsi+GJu4wBCG1LLI2Rb9i3hLwtSZ88dY/P2BygJXrOuCX1Xh6+4AO3P044cgvoby3X
 oVgYppEgNor2/7HskWoAIOtOe2teNJqCPhYgfnRcBTVY+U0Ce7WQEZmjOKtWi3whIYeH
 uQBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vEnVySXBYfW3b1su9MemqgqPSinDbCdHAw5n+ZVHXKA=;
 b=j3wqnMuutM7fm6+CgtpzUtqOybHnpB5v7GqNm5NrPLnZppqmIhQfo+XB29LZIR96Qs
 Jy7BnRxwn82nTsr0gsi1J1SPyTVkFBfD/FPq2K+ScOhP7bMVMYU+T7gh7VCDvj1OqGCr
 lwQ1+LNbccyZRW86D//6ySKwTfecrJ56FsWmrvWHvXykcnH8BIPijoOUTk7JgDMifSKZ
 KGWkKaKZsVGgzycQMDy2UnKCcgvfJ8NNCHS0aJEy7YIhVHyHct2MLeU2jOQsBNJAoB8p
 khuqKa1HHg9kFHvXcBokIyToppXiELRtmWg5Aixj6554KNk33a1wSglXIpxPHxncZ8sX
 wMUw==
X-Gm-Message-State: APjAAAVIaRZ6h9Ll6HvsBP2/ITar71fuZ8QWSrR6RUAlo4+/JyCCMCmC
 nfYQIUTeyMaWhjT3gpH48Ag=
X-Google-Smtp-Source: APXvYqySsTMpSDO1lKEob5Z3qPaMibUnculbDtGi+2b/LHKNJPcUDEb49L+OdYHplPurgC0YCZJGNA==
X-Received: by 2002:a17:90a:32e4:: with SMTP id
 l91mr3675046pjb.23.1582704645464; 
 Wed, 26 Feb 2020 00:10:45 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v7sm1679230pfn.61.2020.02.26.00.10.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 00:10:44 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Torsten Duwe <duwe@suse.de>, Icenowy Zheng <icenowy@aosc.io>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Stephan Gerhold <stephan@gerhold.net>, Mark Brown <broonie@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/6] dt-bindings: Add Guangdong Neweast Optoelectronics CO.
 LTD vendor prefix
Date: Wed, 26 Feb 2020 00:10:08 -0800
Message-Id: <20200226081011.1347245-4-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226081011.1347245-1-anarsoul@gmail.com>
References: <20200226081011.1347245-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_001046_126436_F508C228 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add vendor prefix for Guangdong Neweast Optoelectronics CO. LTD

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6456a6dfd83d..5dfbad67aa81 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -661,6 +661,8 @@ patternProperties:
     description: Netron DY
   "^netxeon,.*":
     description: Shenzhen Netxeon Technology CO., LTD
+  "^neweast,.*":
+    description: Guangdong Neweast Optoelectronics CO., LTD
   "^nexbox,.*":
     description: Nexbox
   "^nextthing,.*":
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
