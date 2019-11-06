Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A615CF2090
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 22:22:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0wQUxX0lCHwHvXrEJk6JCQJQLGX/j2ZPZ86kBcvJ4sw=; b=cJEO7EZ/hr8Nak
	mVaembs25malPidq2bUxxQrJ3y+sZKuEvAGVGRUH2Ixl308wfI4ivi897mXFm1jsxqgKj6Yecwlm8
	LfkoK83QnGzHG8PB/9fxRQCSjq9w63kBXfqADs4MDCm9SQgcyEZb6H7r76wXxNmzqS4L5hatF4KXS
	ntTTCzynvFsL4l3Ogyqk+GeJpSE/dexsZywn9CmZFWAHgx9DchC3cl63cC5U3GclPNF7RrRH1m+bd
	Yxxr3uyiD75OClSmcHmI/AKT29lZAJ5Q29B7Di0Liuc39xd9sKThLLZyGis7Rfl4WEvexfH7f7Nzy
	ELR4qL8ecesofxgsnvFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSSkZ-00032g-8u; Wed, 06 Nov 2019 21:21:59 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSSk3-0002kB-Gx
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 21:21:28 +0000
Received: from localhost (p54B33505.dip0.t-ipconnect.de [84.179.53.5])
 by pokefinder.org (Postfix) with ESMTPSA id CF6202C0553;
 Wed,  6 Nov 2019 22:21:26 +0100 (CET)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 10/17] media: platform: sti: c8sectpfe: c8sectpfe-dvb: convert
 to use i2c_new_client_device()
Date: Wed,  6 Nov 2019 22:21:10 +0100
Message-Id: <20191106212120.27983-11-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191106212120.27983-1-wsa+renesas@sang-engineering.com>
References: <20191106212120.27983-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_132127_716102_894D710B 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: linux-kernel@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the newer API returning an ERRPTR and use the new helper to bail
out.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c b/drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c
index a79250a7f812..103872266565 100644
--- a/drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c
+++ b/drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c
@@ -170,8 +170,8 @@ int c8sectpfe_frontend_attach(struct dvb_frontend **fe,
 
 		/* attach tuner */
 		request_module("tda18212");
-		client = i2c_new_device(tsin->i2c_adapter, &tda18212_info);
-		if (!client || !client->dev.driver) {
+		client = i2c_new_client_device(tsin->i2c_adapter, &tda18212_info);
+		if (!i2c_client_has_driver(client)) {
 			dvb_frontend_detach(*fe);
 			return -ENODEV;
 		}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
