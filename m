Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969921C2622
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 16:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ugDOqIN3zIS7Ud/JDgeaFx2BWqLwZQ9zig0eHyvEXeg=; b=jNfQTIaahOrBdK
	leekir2y50POFbk6njj8vsKuwSiX2ylGC2fOmPYGdCn9SoqnhKujUU91wBjDq+Nje+syUWRZ8opLP
	uUlMujN90jP0RrrOqgpt9ErRbQ0t+BnmgUSGZ+jvQcogDNpfImK/9FxNWX4AcguCDq4fDKE5eoAvh
	0/XrNqQRZ8X3W6oaWV9+XWhaOYnl3e28+KFUN293nXOacwwmD/UVBjcPu0G2t9QM2/+CVV8/pQ2AI
	WHf13CncvUTR7tnN3YH9+HTyigM59mq6X2vBxB2jvFR/DTuDdrPwH5meiUt061o6LO1DlJwhsQPof
	FP0pMktDQrtofZFmhz4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUt6u-0001lN-4G; Sat, 02 May 2020 14:27:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUt6h-0001h6-H2
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 14:27:10 +0000
Received: from localhost (p5486C608.dip0.t-ipconnect.de [84.134.198.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7ABDA2496B;
 Sat,  2 May 2020 14:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588429627;
 bh=SWAgqFjQtH+44KzNB37D3YGOf7TBc55dGtMgscD5tck=;
 h=From:To:Cc:Subject:Date:From;
 b=R/cAwhPZR5OcZx2udyqGygLoioE2/RPOjZzU81BkV1Bbxd4/Xsd3lQuOESkBKbeoe
 284fPMtqJeVoN8K6AWgWiNHhxmLhAuQG1B0cV/WN4jip15NVyRez4zUmHvLg+t3SwX
 M6zp+ufgHWECupQ8pCJWfoVhieunt71VFxl4tBPI=
From: Wolfram Sang <wsa@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] rtc: stmp3xxx: update contact email
Date: Sat,  2 May 2020 16:27:04 +0200
Message-Id: <20200502142704.19308-1-wsa@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_072707_637376_6CBBC4E4 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, kernel@pengutronix.de,
 Wolfram Sang <wsa@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 'pengutronix' address is defunct for years. Use the proper contact
address.

Signed-off-by: Wolfram Sang <wsa@kernel.org>
---
 drivers/rtc/rtc-stmp3xxx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-stmp3xxx.c b/drivers/rtc/rtc-stmp3xxx.c
index ff6488be385f..c9bc3d4a1e66 100644
--- a/drivers/rtc/rtc-stmp3xxx.c
+++ b/drivers/rtc/rtc-stmp3xxx.c
@@ -416,5 +416,5 @@ module_platform_driver(stmp3xxx_rtcdrv);
 
 MODULE_DESCRIPTION("STMP3xxx RTC Driver");
 MODULE_AUTHOR("dmitry pervushin <dpervushin@embeddedalley.com> and "
-		"Wolfram Sang <w.sang@pengutronix.de>");
+		"Wolfram Sang <kernel@pengutronix.de>");
 MODULE_LICENSE("GPL");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
