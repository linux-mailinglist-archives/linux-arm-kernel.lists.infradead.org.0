Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEFE134E80
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uGKtNRu7zs0ZUlhi5FYBw4Gi4d99Dl5GZZlBS9tbnLU=; b=WMgop8Wa//iElaJTAJ9jL+jw0B
	wa8lZlPZMWdjb1ZokRyT+iTtmMUSvCvQgkcCODpnaVm4LXm2WuMGnTrcS6SRrX9SQMjH27iLMEjwl
	QoxOLJ3nWTVcqVMiJ4IjHtH6BkupsK/KRIeTX9iBIWqtvqv3GuHWf7IcqrZw0Dl+cIGnZpqGt9TPp
	TaWq1j6FVyLMCQG0TlKs6XlipMoZNdZ1vZuw0I71TPcJtkMKuVld5UlHrXAwawnvGElTNSWqEOCK/
	RzXoY1+uhTfFYyL5aEfxal3KHulBH8UqyAF8W97Yhm8OXBa1cTgs1v6FOFcDMQ/XqswRFCWhHBry0
	sH2og6uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIbJ-0004Ja-TN; Wed, 08 Jan 2020 21:10:49 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIYv-0000iq-Q4
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 21:08:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=l+ozEXcAcbxudZpKacgFo3ceEpSnl6xSv3pANc4ozyU=;
 b=VLIoJRoLLX6vp+0o/gTni8uvzBtky3Is0xxi4tlzNnK7kUf/Ae49zVMQ2jgR4BHUbHJS
 MZPiuf30fuSmtQqqvfKNHJ5bw2rzqTN/2gtlu/3eDMAX1xAwebb1sIqCRnr8daACy6/VZE
 euzThXCkZxiwuPgxZNITbJsQQDJwnw7G8=
Received: by filterdrecv-p3mdw1-56c97568b5-xjbx9 with SMTP id
 filterdrecv-p3mdw1-56c97568b5-xjbx9-19-5E1644A6-39
 2020-01-08 21:07:50.55100434 +0000 UTC m=+1974283.600906199
Received: from bionic.localdomain (unknown [98.128.173.80])
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP id 2iKuRjWuSoGvt9DqI_9m9w
 Wed, 08 Jan 2020 21:07:50.352 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 08/14] clk: rockchip: set parent rate for DCLK_VOP clock on
 rk3228
Date: Wed, 08 Jan 2020 21:07:50 +0000 (UTC)
Message-Id: <20200108210740.28769-9-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h338FT8hLbQuZn3EF?=
 =?us-ascii?Q?h3noMqyfEkSUfLuG04rziUH9YtKqSQPgd3OlYiQ?=
 =?us-ascii?Q?bBtqVjSu834dHYTOnUcRfTOS81p7D20rOnJXOFs?=
 =?us-ascii?Q?RZ+AkgSPzYZCEo90IjLhUkfHfoO6Lw4Cz0LgfbR?=
 =?us-ascii?Q?xP6YjtEf38BHQlt+lpCAmDsdaW8UXq9GyEwe4OR?=
 =?us-ascii?Q?YfkaHzv0fZ+qcbBApHQgw=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_130821_928660_9BEE40AC 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [208.117.55.133 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.117.55.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Zheng Yang <zhengyang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/clk/rockchip/clk-rk3228.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index d17cfb7a3ff4..25f79af22cb8 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -410,7 +410,7 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(29), 0, 3, DFLAGS),
 	DIV(0, "sclk_vop_pre", "sclk_vop_src", 0,
 			RK2928_CLKSEL_CON(27), 8, 8, DFLAGS),
-	MUX(DCLK_VOP, "dclk_vop", mux_dclk_vop_p, 0,
+	MUX(DCLK_VOP, "dclk_vop", mux_dclk_vop_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
 			RK2928_CLKSEL_CON(27), 1, 1, MFLAGS),
 
 	FACTOR(0, "xin12m", "xin24m", 0, 1, 2),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
