Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F73296FB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hqRnys2i7Lwcci5Qb0SxJ/UJALToS4TUKp4o5Wbzvg4=; b=E2xjgDYSr6GT2wK6cIToRpQ3oO
	cIouRzGQbX+K4N6uPYwyw30dvfA3sb26ldACsOGFDkrc4TtDyuKo9GdVxoa19AYQZgO/BGG+OLcxa
	QD/wHi3rDZ/tvvVn2z/cLTN2zWp7moPIlmJ3GrdKG7ckTtBYDjSxun5CY6PI8TWBPnCQ63d0ABTBX
	7v+cRIAjWjKWrEFkayP/yDzPWnIEPV175Ot+HahOE3gAo3UdfIDG+vbJMk7gg8Xzwx3Ftegn2TGlm
	V7VtVtDSBLOENqZSj2gAihuQh3VzysGFYuc6BlP9NMHlq2c8PNAKsP/phzlCkd/fCGuP6TY11snjP
	rLC1fx/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GZd-0006w7-Pg; Wed, 21 Aug 2019 02:42:09 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GYl-00060w-Ue
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:41:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id w10so412627pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZOe0QY1KzUF5P+bCoUM0BJ5F01MAdy4sijBj6AsQWEY=;
 b=HWmyO/ZOIBs+A7zmQrIMqVgyxPQ2jB0Ddy0+rEqooIS+YxUle0+bJYmfSvbdeKYUX2
 0EmoZ95HMKoXzihfE59cWYZwRpKM9O3xOMZfsCGegfiFytsqkv6Xc5JccykPm9L3PRrk
 Up8koMo3E6TXR/qynopS8F42HgAN/sDyd2zFCFyoZVGuzp1O9a26qm6MlXTXfsiE7QAy
 hq1I8SJNFGSQes+82DZeGKlJHrnp0OS41f/RCV9JHQomXmBFHLimNj1BNCq0gLiaNgCw
 Xb4mIjU/7I8lyINue6igBtz/3bWVguWnPYITjEV2KwbOQ6Zn61NLBpnXGt8RiZmShFeX
 +fww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZOe0QY1KzUF5P+bCoUM0BJ5F01MAdy4sijBj6AsQWEY=;
 b=VMOul6o0ZFToRwNZN2Zc8uKwfV39a8Gp21Gn6mswzMLN165M/IUP3j6mo5pmJIaqFb
 YSgCT1Eaz/PLnL9PljgKhgWY+dqfGOKZ8cUWg/uIm5SIqgeepHZxSnhwAhZH2XDX8UNL
 HkZs49/AXq+Y3DWt3QvdnFLv6GWtI/QMN2zbwswd2vQzMbL4EktZwq6fjG0ysh9Zpc02
 O7WIKeq7pC3IN86OESODtMP7uTwwWOv9jnR0H9yBnSqa5SGQMr7CE4jyhYcTNgGRbHsT
 Y3rXp5F2XGEptQfrKwYgiykhThmsYdpTRyT7uHDutL6iS9/JtO2gfIomKo45k9uMFUal
 MO4Q==
X-Gm-Message-State: APjAAAWs1w6+CdU3h8Ao2Jr7k3A6MuexxFcgF0f6Xzz9r1Ap94Jmisso
 EKEVPBMcsMjbmfAXUaHe+9to
X-Google-Smtp-Source: APXvYqx8as53UWMctePrdUCwm/ptziUdDjmDttJKVhO0LjcJc5tCGhcTtg3y6wHbQE7foFo3/P5+Gg==
X-Received: by 2002:a63:4e05:: with SMTP id c5mr26433918pgb.82.1566355274706; 
 Tue, 20 Aug 2019 19:41:14 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id
 b126sm26091608pfa.177.2019.08.20.19.41.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 19:41:14 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v2 6/7] MAINTAINERS: Add entry for Actions Semi SD/MMC driver
 and binding
Date: Wed, 21 Aug 2019 08:10:13 +0530
Message-Id: <20190821024014.14070-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
References: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_194115_995673_82D04967 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for Actions Semi SD/MMC driver with its binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c31e6492b601..247d5332f7b7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1375,6 +1375,7 @@ F:	drivers/clk/actions/
 F:	drivers/clocksource/timer-owl*
 F:	drivers/dma/owl-dma.c
 F:	drivers/i2c/busses/i2c-owl.c
+F:	drivers/mmc/host/owl-mmc.c
 F:	drivers/pinctrl/actions/*
 F:	drivers/soc/actions/
 F:	include/dt-bindings/power/owl-*
@@ -1383,6 +1384,7 @@ F:	Documentation/devicetree/bindings/arm/actions.yaml
 F:	Documentation/devicetree/bindings/clock/actions,owl-cmu.txt
 F:	Documentation/devicetree/bindings/dma/owl-dma.txt
 F:	Documentation/devicetree/bindings/i2c/i2c-owl.txt
+F:	Documentation/devicetree/bindings/mmc/owl-mmc.txt
 F:	Documentation/devicetree/bindings/pinctrl/actions,s900-pinctrl.txt
 F:	Documentation/devicetree/bindings/power/actions,owl-sps.txt
 F:	Documentation/devicetree/bindings/timer/actions,owl-timer.txt
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
