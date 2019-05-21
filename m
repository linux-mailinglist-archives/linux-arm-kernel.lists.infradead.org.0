Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A4524A2C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMZHY6AeHrlIHkH9YAgzlPt2Mljly7JLLIfsiwXiLPg=; b=DdPBSEkLcgDg8I
	skIXHfZT8vC6wGhQ4JITWdQuAhMYi40yuHn/SQCZkjYcD3UfMbtyMurA5/u7Kx+FmpQUoNwAaVMys
	Lw58Nn9ZAua2qzODlgDyLlvKXhSbR218DxzWhN/hPq2CatjXiWJvvIphLniCLRzcalXq6+N4TxdXB
	WtLReRjj3jdX797lflL8CKs9PExWynXV5N2EdqQhuN0eaaEaQ3aLfgN6Adp2glgf4qQMgrWhY4tj3
	+cSbcIEzpaFzBIxcNclD7MXn4cxyGDVWoT+H0NCPDH9YQH8aNprEYC3eiy+WlKnN9PGtEmoZfbtIs
	EnxVT4OG7YzIR1UZU6tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT02X-0001vo-Ga; Tue, 21 May 2019 08:22:29 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT01q-0001DW-6b
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:21:48 +0000
Received: from localhost (p54B334E1.dip0.t-ipconnect.de [84.179.52.225])
 by pokefinder.org (Postfix) with ESMTPSA id 82ACC2C776D;
 Tue, 21 May 2019 10:21:45 +0200 (CEST)
From: Wolfram Sang <wsa@the-dreams.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/8] MAINTAINERS: add I2C DT bindings to LPC platforms
Date: Tue, 21 May 2019 10:21:32 +0200
Message-Id: <20190521082137.2889-4-wsa@the-dreams.de>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521082137.2889-1-wsa@the-dreams.de>
References: <20190521082137.2889-1-wsa@the-dreams.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_012146_387605_0FE01E89 
X-CRM114-Status: UNSURE (   7.08  )
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
Cc: Vladimir Zapolskiy <vz@mleia.com>, linux-i2c@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
Cc: Vladimir Zapolskiy <vz@mleia.com>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 90abfe11b05c..01b5579cfa07 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1782,6 +1782,7 @@ ARM/LPC18XX ARCHITECTURE
 M:	Vladimir Zapolskiy <vz@mleia.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
+F:	Documentation/devicetree/bindings/i2c/i2c-lpc2k.txt
 F:	arch/arm/boot/dts/lpc43*
 F:	drivers/i2c/busses/i2c-lpc2k.c
 F:	drivers/memory/pl172.c
@@ -1795,6 +1796,7 @@ M:	Sylvain Lemieux <slemieux.tyco@gmail.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 T:	git git://github.com/vzapolskiy/linux-lpc32xx.git
 S:	Maintained
+F:	Documentation/devicetree/bindings/i2c/i2c-pnx.txt
 F:	arch/arm/boot/dts/lpc32*
 F:	arch/arm/mach-lpc32xx/
 F:	drivers/i2c/busses/i2c-pnx.c
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
