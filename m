Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1706456A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 09:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SmGEJawr4BIJWNrEzJQI5DbwBf9hQNmUhViKnDdAcTs=; b=W0joEj8Ir1IYP3
	AVq2w6xLusSaDZtnYmq/6wMYV65s+PVMKWZSB1SbnSrTHd+nhs023dL7LBPZaR7XAu1Qb+4kkSqe6
	p01/v2UtClm0j1ZFrvE3XfYtro2/GWnwJ1L85AqeWAoHfGN+acgoFPkFrhxKzMLqxole6QyT6sxJE
	e3iAUcLYuSWAyL0kfyVrAtg8uSZzzKyyTgoWfhblvfnFyw98baZON0RXrmzYVqvbq4YyOaZtJNqjm
	iDe05zfGTjRXKNSwZVT/baZgiDlnQRfT3NOBFpySY9xsk44ssJPWPYQhKaVB8sw6vO7eW8E2ifshy
	ziG9z0hJ1bUOfJWdud5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbguj-0000OG-DW; Fri, 14 Jun 2019 07:46:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbguU-0000NV-TY
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 07:46:08 +0000
Received: by mail-pf1-x443.google.com with SMTP id 19so920853pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 00:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0tbbGEv4x1CahB7ZQlkzlL+YIAqtJwnEeeWd2qin2uQ=;
 b=Rg3kCUrIv9jP4E3Wtg/dMoXR2W1io0SYwkKQBvpanMUTfGuq7dxji19gaBBejmhEgK
 nuOGR87LsFRMxIgrLL7mMamVDZP+gpHd1xmCOFTRISMaDXQBxF44PnVhvLKSYymjuuoH
 P907xdbeecTJ+wVjLN2JmMT5TG3aGUI2pLDbxJrr3ElCJC5/0vgBCXyOG7KMeY+HxILT
 yrsUbMq+/ribD56GjK0bJjEC+AvcpW6pcgZtlbSnMO/yg6ELe8lVXCb1na3C6VvOKhXq
 DsN9WrwE2ix0mejv6O5hMI7Kwp+o2zQTQTthwO8YGB5ARp6FuCpU+DnQPYLK9QBSfpdh
 oSyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0tbbGEv4x1CahB7ZQlkzlL+YIAqtJwnEeeWd2qin2uQ=;
 b=stcpo1LLXg2jFz13aR2+46O+JuHlawv7LdxhKDYkeztPad5LoSf+4oqiiO4Bvj8id3
 O/gtirUIJT1o0bUoyF15q3hqat0jvn47aJnEfMEoVftYyPY1jmOPeTQ5tT4LvVXpekXR
 VVi4Y7giJfOSdSpWuO8wMfCqF1upZcWoC3UAQ/eMJ7ta2T/1qNr+g65JfufP55NV8hhA
 S75v1yixhXZ+5/sdu+UjyPrLLUqb9pJYaRbe8ZAup/1QMaTKwqhLUTVOeKZa+jKHcRtc
 4CHkJQTE/IeCfM+kAe3fP3ZFUOyH4QXOZvC2jU/9X6+Z2Aic1m9RUwL/kfNgBuSMJVZT
 5dXA==
X-Gm-Message-State: APjAAAUt2Fqt8sqf2HS5VV2lzhQAsSOBpiS/39Hbhqvn6V/cS0+hZtTZ
 9/aKUMqhQh/zj7t0CUZN/xLJ1/Yc9aM=
X-Google-Smtp-Source: APXvYqyAK0GiKVcKQOfn7IYbgFctVcr39CHQwfSj7KLFUhTi+qMZK1wvt29jGNP8jCo7yX8Glcvi2A==
X-Received: by 2002:a63:2159:: with SMTP id s25mr32504026pgm.234.1560498365578; 
 Fri, 14 Jun 2019 00:46:05 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id b17sm2128349pfb.18.2019.06.14.00.46.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 00:46:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: imx7d-zii-rpu2: Fix incorrrect 'stdout-path'
Date: Fri, 14 Jun 2019 00:43:47 -0700
Message-Id: <20190614074348.17210-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_004606_958708_B9A937FC 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RPU2 uses UART2 as a serial console and UART1 is not used at all. Fix
incorrrectly specified 'stdout-path' to reflect that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/imx7d-zii-rpu2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7d-zii-rpu2.dts b/arch/arm/boot/dts/imx7d-zii-rpu2.dts
index 3e467a94e8a6..6b8b2fc307d8 100644
--- a/arch/arm/boot/dts/imx7d-zii-rpu2.dts
+++ b/arch/arm/boot/dts/imx7d-zii-rpu2.dts
@@ -16,7 +16,7 @@
 	compatible = "zii,imx7d-rpu2", "fsl,imx7d";
 
 	chosen {
-		stdout-path = &uart1;
+		stdout-path = &uart2;
 	};
 
 	cs2000_ref: oscillator {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
