Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28161687E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 20:54:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0h+tSmTaVfqFsMOtk5ARWmu3TyWNq2ER+ajdnpTR/Z8=; b=q2ruuQEsmzE9QD
	q/ooZgy4Wrrubi/iJREApUFAFKvezYkl4NhKafoMCBkO7O9qNHjAIAfz6C924X4ZeCULJgeMO9XYs
	Az9xkcDO7s3gCcMQCrazLrhDvEeAoXdDLKaqNoA8ibhqZS/uuOC2JcRO8fX4v/GRUimmTeRm5guC9
	dBZfDdzihZeC4RLEb+7ix5x/YCDyoEgqBfAROZUFUijBVNdw3KTpV+q3/qhEOGnKica98MkHBclhu
	DqF496HUr1VXCg7gGjqeBrmhdndNWUFjhBCQrrBbY6xgv/skijtuhrmsmddnmisbi4G+BCfs/p/IU
	mRMzrdzhJFsb0W9LJBjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ENF-0005z6-TA; Fri, 21 Feb 2020 19:54:09 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5EML-0005KP-QQ
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 19:53:15 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 42F958192;
 Fri, 21 Feb 2020 19:53:57 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 3/7] ti-sysc: Improve reset to work with modules with no
 sysconfig
Date: Fri, 21 Feb 2020 11:52:52 -0800
Message-Id: <20200221195256.54016-4-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200221195256.54016-1-tony@atomide.com>
References: <20200221195256.54016-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_115313_944154_B492B729 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andr=C3=A9=20Hentschel?= <nerv@dawncrow.de>,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At least display susbsystem (DSS) has modules with no sysconfig registers
and rely on custom function for module reset handling. Let's make reset
work with that too.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1571,7 +1571,7 @@ static int sysc_reset(struct sysc *ddata)
 	sysc_offset = ddata->offsets[SYSC_SYSCONFIG];
 	syss_offset = ddata->offsets[SYSC_SYSSTATUS];
 
-	if (ddata->legacy_mode || sysc_offset < 0 ||
+	if (ddata->legacy_mode ||
 	    ddata->cap->regbits->srst_shift < 0 ||
 	    ddata->cfg.quirks & SYSC_QUIRK_NO_RESET_ON_INIT)
 		return 0;
@@ -1586,9 +1586,11 @@ static int sysc_reset(struct sysc *ddata)
 	if (ddata->pre_reset_quirk)
 		ddata->pre_reset_quirk(ddata);
 
-	sysc_val = sysc_read_sysconfig(ddata);
-	sysc_val |= sysc_mask;
-	sysc_write(ddata, sysc_offset, sysc_val);
+	if (sysc_offset >= 0) {
+		sysc_val = sysc_read_sysconfig(ddata);
+		sysc_val |= sysc_mask;
+		sysc_write(ddata, sysc_offset, sysc_val);
+	}
 
 	if (ddata->cfg.srst_udelay)
 		usleep_range(ddata->cfg.srst_udelay,
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
