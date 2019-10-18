Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C95ADC963
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DfO7XEAaqEzMiu+yLt9C1SvISCjZIXZD3b08zgB4kM=; b=NeiWOCimAbawvi
	qvlTyohRwTBtfTTPPpUvknJAgQ81wx6iFHTxDH/CADXeHUf93hhhGlxcSoiPDBVaQR4CURszIqdDo
	r+bRsV+cglm1wYlQg29RS3YOWlwkjQJm04fHfwB862F9kNceNWhaEs9gKRuKG5IYmlfC1OyJToXF0
	4sNEhiYEbfBYgeu8djwHvubG88OTRqsxQydInopjUaEoMNffECUyneArhJvqUVDOMcs5bft0CNwuW
	HQAP3cwb5kGU2NxyLuXBmoCNw9KCxYBimNCthDTFau5tc7D9nVm1w7Xa9gHu98dLuJa9n/Pmpwx+6
	IW9VJSzIE1YBIeC2Af0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUVj-0006ic-LA; Fri, 18 Oct 2019 15:49:51 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOn-0008DN-BL
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E0E/Jo7kWKrGS8TJ58aOYmw7R/6JFH3CjhsgRiKHKIA=; b=ZiS08QNK41RGHWR86QuC8p9tFu
 WsS0CL6/uQx5uEW/I22aoogaW07v/0Z8mgaIwyCAIU86dQEk6EUFc3q3Hs8N1ap8vblKx5nQDEqzw
 mY9qXBGT/1geG9Sp0GaSMfN1OyG6Bhl+hhaH5/MKIer0yY1GaRrmUol/q7NQ9ksrfTJCyx44TlRl/
 yS7uGNm1aAZl74Abbcw5tKirIvTaLcROaeiiqX3w74J7U0PVVuxneJsZxfbp0NysxlaZBjq3WMCrP
 i/hOx8iKNtf1yJAVkgsEbFbEOeDg0t2l9wDWnDJ7oNeF0X4x43OBg3Bz8whf42SPGRFGS8zylS18w
 s4P+AFOQ==;
Received: from mout.kundenserver.de ([217.72.192.75])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOj-0007Wg-HJ
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:39 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M7ayR-1iOU0W0GFx-00819k; Fri, 18 Oct 2019 17:42:29 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 27/46] input: touchscreen: mainstone: fix pxa2xx+pxa3xx
 configuration
Date: Fri, 18 Oct 2019 17:41:42 +0200
Message-Id: <20191018154201.1276638-27-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Ng/eyI4thlC2GCBRgdpQcO3nmYU5CsaSTwm+I+PB6/L+XERvTt3
 mM+f2NcUCRVt671B1y+gsqqvmpOFOcfe2W3Fv7ZMf6s270ujaqjmTpnZW86HvY4KspXdIL2
 7G4rcVEFd985Q2LZzPjf6lQRJx81j9teHbdRhLAh6nUIfYMLSEHldIIZx0GGCx5wdGX6Nkb
 VF3cjt30YDf01jbjdVmTQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BwtJjcZ6s0M=:VJNJb6LSwdn18+QEAXftWz
 Yc6hA5MFJhCeUC92lhyYkd0l2evj94gw1WsMZXrEak4+MVGInJHGH/sqSH/C61E0r52sAJyJs
 vZnF5oHEkMjf/1t5qtQ55+EMku67tiU8F9Wb30edaMzg3B4SzS/re2gszOcf2AMOchXs87Vss
 KFIEIh248dVRSDa8cGA522jU8mdhOip0vKeImFDtYJ7KZkrAfQUH1g/XdlbYwtuyKhrLAd0d7
 vfIqOnGsvlf/YFxhZMhoufGydFwzrgiTL3twAuH0agB0zsnTvk+N+x2VXYPbpUDgKp8sh8pNs
 yolVUafZdH5uViVeKrT/VqzG8j6cssqk5s41GNgxhsVOIq5nx8DFtL175fENk3Rne1WtVHru7
 iFan/GJQ5E2rmeHbpcQMmlc3+4Yskz6WdqAVe6SqDOL1pYuCCQDcc8OhkgXe5WfBeQXQdEfy8
 16wwvFkIudwbnQVtR5A0o8zkRIlyQHUhRkX4ObQe2ImkUMBokBazMuRhrnLU/062g23+5IX92
 9+KoucPEL1AZA5nEddpsl2YuE7sxIyCMT23TEcJPfw9k2JIWvQkaaZ0vu/0gPNyIHBDztkkK/
 xkP731J42Vex6oKsgi0ufGg0xPDECcwyN0OYOYAPD36VLwOIqpNZFL2JhCm+L+0GPae9SDpKN
 AeTu9qN2Bs1izyk7/OUCYApw6clVtexNA/L9lO0YovOgKMMYxfvxWDX/awGlh9bYtaQ52z3yJ
 0I9oFv+ITx9f83TC6QZ3dIHsjFsq9SNSECoc5u7gS/4lUX/tUiPs0TAWIweAt9wwtykuu7ARC
 8wjaly5zkukSgfPFUT2y0P6+i+lyT/cXG7+eJxS5E9I2G+EqH7G9md3PHeliD57FE0viv6nTV
 XPJYVreGmjEVQN80iRBQ==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two different ways of flushing the ac97 queue
in this driver, selected by a compile time option.

Change this to a runtime selection to make it work when both
are enabled.

Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: linux-input@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/input/touchscreen/mainstone-wm97xx.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/input/touchscreen/mainstone-wm97xx.c b/drivers/input/touchscreen/mainstone-wm97xx.c
index 87655105ef3a..618c80847d9f 100644
--- a/drivers/input/touchscreen/mainstone-wm97xx.c
+++ b/drivers/input/touchscreen/mainstone-wm97xx.c
@@ -98,25 +98,20 @@ MODULE_PARM_DESC(ac97_touch_slot, "Touch screen data slot AC97 number");
 
 
 /* flush AC97 slot 5 FIFO on pxa machines */
-#ifdef CONFIG_PXA27x
-static void wm97xx_acc_pen_up(struct wm97xx *wm)
-{
-	schedule_timeout_uninterruptible(1);
-
-	while (MISR & (1 << 2))
-		MODR;
-}
-#else
 static void wm97xx_acc_pen_up(struct wm97xx *wm)
 {
 	unsigned int count;
 
 	schedule_timeout_uninterruptible(1);
 
-	for (count = 0; count < 16; count++)
-		MODR;
+	if (cpu_is_pxa27x()) {
+		while (MISR & (1 << 2))
+			MODR;
+	} else if (cpu_is_pxa3xx()) {
+		for (count = 0; count < 16; count++)
+			MODR;
+	}
 }
-#endif
 
 static int wm97xx_acc_pen_down(struct wm97xx *wm)
 {
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
