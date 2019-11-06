Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198C9F1456
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:49:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tkupkizKvF3BXAKdEC+C+VTy6OlraBawUrRFJc+zV1s=; b=DHghWMJ3NCSQcd
	nDB4TXUDCxGCkkbdESGJGYda3HhGTIakNEtZ4zptnXa8lxu+6ETaerMyoLrkbSJu2DZKtsvo8gmvr
	/1BKQDKfs1qwW8Hbg2cwDZE6mYLOX/dpyBOTyhIqsneHsBri0yp/pIiKLF2M3BIWmu8t97uJQdlA5
	LPevhHkd6atqMnN2RUArboqfAR3wKd2tvZoX1Dlr7P2oPh6QDFNzJtjHFy/Ai1LVU9t1J/Z/cRMz1
	zM81sjTeBZsVEYJk4ZUyQpReV8/Wv5BgP2Vg+iSI4Ah3YNE22yvFvdzodsg6T6fSmDG12w3Cq7Zyy
	KmHyChoHQRXomj67Jj1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIsp-0002ws-LW; Wed, 06 Nov 2019 10:49:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIsg-0002w9-LZ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:49:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id f2so16246677wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 02:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kl4ziYImo8mxXSUIUzerWcurMfUG2nKE46XW1BkCvlw=;
 b=kxBJiJoCz+uvEjlaoHMgcQr+fPhAS0j2sc8HQCdJjk0eOme7VQHHlm3TDIUwxNStV/
 IAr8TqzToP3BUIwWnA7k3eNZDWdns4KTC1BChbku6s+9vm65UyDEPJIgV4KXwCKpfUHR
 3GqU0MH9ui+CytCItnEbyCTbgcvYV7VjZW0QGrt/jtVusHHPs8WevG+USUqczTgjBlq4
 kD6WEBWIFfNMsOfhxJRESwTtuQfvK5JMtJdJfKFxXFe+hKKplRvMHMUAf5DaA7nMaRw9
 2q24dcf3jUtUASsUuACt6r/sejqO/Dx1+pNfRBy3dce6DwxTECCghcvZySDx55qOM/c5
 OeWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kl4ziYImo8mxXSUIUzerWcurMfUG2nKE46XW1BkCvlw=;
 b=NIY0QQnTEkw8CaMSZZkGDHcSMvQ6aRfy5wTvojt8NI4ArlEwoAGpw0wwaHy5jkxTs+
 R1/YZ0HjFc9M6tWN4x6m0dWsulQp2b2mG9Nnl/tHc1MbKU4djn0NKKX1ihDGh/hDeL0B
 DkU8MSiswqHvkAGOSE2TKpbqWCAewQn9UheNqqIp2OlDbeuiYz8JfioEuWDL/GDy3PjR
 a4Kv85HAmyHCew8w5JSdFLgE1JYCUr86c9raGgaV9AxgHd2LGAzDke7TDsbJc2PR+qsQ
 1LhCGGKV8HfCwxFseG2pYe+ScSZIROim2XtTMaPYNuqdpRc+angdBopZm+/qLie1Sp/0
 pTLw==
X-Gm-Message-State: APjAAAXRLJgzJ725x+GIVno1BWbRz8f2PjJBUckwLBsTvDj2pzPm6ptZ
 FHl0ux9KSkS5umrHFvIrJNUDDQ==
X-Google-Smtp-Source: APXvYqzq1lHX4GDEZEPtsCJdyQnYK9ZIjkX+6ml9wEgDrjlLUn4+3HRgIK41WbnzWNEb4WSW+nUPmg==
X-Received: by 2002:a5d:6789:: with SMTP id v9mr1978787wru.344.1573037381252; 
 Wed, 06 Nov 2019 02:49:41 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b14sm2331695wmj.18.2019.11.06.02.49.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 02:49:40 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: hverkuil@xs4all.nl,
	mchehab@kernel.org
Subject: [PATCH] MAINTAINERS: ao-cec: Update path for yaml bindings
Date: Wed,  6 Nov 2019 11:49:35 +0100
Message-Id: <20191106104935.24307-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_024942_706878_6518C026 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the path to the ao-cec bindings after convertion to DT Schemas.

Suggested-by: Hans Verkuil <hverkuil@xs4all.nl>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 296de2b51c83..11108701cadf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10581,7 +10581,7 @@ W:	http://linux-meson.com/
 S:	Supported
 F:	drivers/media/platform/meson/ao-cec.c
 F:	drivers/media/platform/meson/ao-cec-g12a.c
-F:	Documentation/devicetree/bindings/media/meson-ao-cec.txt
+F:	Documentation/devicetree/bindings/media/amlogic,meson-gx-ao-cec.yaml
 T:	git git://linuxtv.org/media_tree.git
 
 MESON NAND CONTROLLER DRIVER FOR AMLOGIC SOCS
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
