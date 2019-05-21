Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3329324A27
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmLaxNiQ1kNQAYqTwmfI4BoOIL1q9DTGz60sphqUPX0=; b=KSX+H1enw+J3zR
	k055OQ4XtQ26/vi8IeuiJz/hBt8SOuHLv/CrUt1hzHJ3jxCG5IDNSiwgsuQoISXzcMXeS3Uo2rImG
	gbZ7seozbQ9+0hHDDZp3gly1RNF4A9ygAWmhBvn1u9Y9StJoZnMuWnjDasQsWzbbBNbta0JeCKlId
	+2/jiBCtT0XCQsXuuxPONS2YgiAxgYNPZzrzMVtyo61FRqxiHDdqVCtS/BKc5lRq/i8kEYPoZImJQ
	+af92rZ9x5e6m1Y1T4WutrywoOsstd2pxtA7q5KDJIQHloTDbYYMvyvI/8AS5GJlnrFDQMGzUMtkm
	3FUtWHS1K2/0EaQk8PQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT026-0001Ot-Kw; Tue, 21 May 2019 08:22:02 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT01p-0001DS-Ry
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:21:47 +0000
Received: from localhost (p54B334E1.dip0.t-ipconnect.de [84.179.52.225])
 by pokefinder.org (Postfix) with ESMTPSA id 21EB52C7769;
 Tue, 21 May 2019 10:21:45 +0200 (CEST)
From: Wolfram Sang <wsa@the-dreams.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/8] MAINTAINERS: add I2C DT bindings to DaVinci platform
Date: Tue, 21 May 2019 10:21:31 +0200
Message-Id: <20190521082137.2889-3-wsa@the-dreams.de>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521082137.2889-1-wsa@the-dreams.de>
References: <20190521082137.2889-1-wsa@the-dreams.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_012146_058354_6F5FB3D5 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Kevin Hilman <khilman@kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 linux-i2c@vger.kernel.org, Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
Cc: Sekhar Nori <nsekhar@ti.com>
Cc: Kevin Hilman <khilman@kernel.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5cb019f8e597..90abfe11b05c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15684,6 +15684,7 @@ R:	Bartosz Golaszewski <bgolaszewski@baylibre.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git
 S:	Supported
+F:	Documentation/devicetree/bindings/i2c/i2c-davinci.txt
 F:	arch/arm/mach-davinci/
 F:	drivers/i2c/busses/i2c-davinci.c
 F:	arch/arm/boot/dts/da850*
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
