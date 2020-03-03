Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2E2177AFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQDnIjstv52PGpYzWUEYRwERPBPxdb+LCQTgLBYiwiY=; b=W5maLsTAIWZ6iv
	4YDduy+ke0Bp7Bb87vlM6dY+Thkvzv4ERedE1d539SsYXrbJOQT2r2WaohKsiUjB4vtPjnn2RxpLh
	A/Fbqa0nkpRMGJ6t6NoIQFc2HgO82aRUoGMxN5MeeNYJfqdGnM7lw6RbFV2rPaZlyNjhpryiDcP+R
	mtwbVV0j96fkfJUz+VBWyJqyv7sPUuzoBVfczIjgWV9/yuRYSS2mdUphlzDat5k1xaYvm8Fhs8yNv
	eIVNV2R3DJLNQAJkmjXjnRd6EMX0lL+vdcbJmR3xeiqAqFvU75VOa7jTusDCb2mdqFWVVH/JgOIQx
	PdGu0EElxCZQnZbc8MHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99oF-0006oV-1J; Tue, 03 Mar 2020 15:50:15 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j99nx-0006nn-NE
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:49:58 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 7847080EE;
 Tue,  3 Mar 2020 15:50:41 +0000 (UTC)
Date: Tue, 3 Mar 2020 07:49:53 -0800
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH 3/3] bus: ti-sysc: Implement display subsystem reset quirk
Message-ID: <20200303154953.GT37466@atomide.com>
References: <20200224191230.30972-1-tony@atomide.com>
 <20200224191230.30972-4-tony@atomide.com>
 <7d4af3b5-5dd7-76b3-4d3f-4698bfde288c@ti.com>
 <20200303151349.GQ37466@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303151349.GQ37466@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_074957_799954_6A3ACEDF 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Suman Anna <s-anna@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Jyri Sarha <jsarha@ti.com>,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tony Lindgren <tony@atomide.com> [200303 15:14]:
> * Tomi Valkeinen <tomi.valkeinen@ti.com> [200303 06:03]:
> > On 24/02/2020 21:12, Tony Lindgren wrote:
> > > +	if (sysc_soc->soc == SOC_3430) {
> > > +		/* Clear DSS_SDI_CONTROL */
> > > +		sysc_write(ddata, dispc_offset + 0x44, 0);
> > > +
> > > +		/* Clear DSS_PLL_CONTROL */
> > > +		sysc_write(ddata, dispc_offset + 0x48, 0);
> > 
> > These are not dispc registers, but dss registers.
> 
> Ouch. Thanks for catching this, will include in the fix.
> 
> > > +	}
> > > +
> > > +	/* Clear DSS_CONTROL to switch DSS clock sources to PRCM if not */
> > > +	sysc_write(ddata, dispc_offset + 0x40, 0);
> > 
> > Same here.

Below is a fix using dispc offset for dss registers.

Regards,

Tony

8< ----------------------
From tony Mon Sep 17 00:00:00 2001
From: Tony Lindgren <tony@atomide.com>
Date: Tue, 3 Mar 2020 07:17:43 -0800
Subject: [PATCH] bus: ti-sysc: Fix wrong offset for display subsystem
 reset quirk

Commit 7324a7a0d5e2 ("bus: ti-sysc: Implement display subsystem reset
quirk") added support for DSS reset, but is using dispc offset also for
DSS also registers as reported by Tomi Valkeinen <tomi.valkeinen@ti.com>.
Also, we're not using dispc_offset for dispc IRQSTATUS register so let's
fix that too.

Fixes: 7324a7a0d5e2 ("bus: ti-sysc: Implement display subsystem reset quirk")
Reported-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1566,7 +1566,7 @@ static void sysc_pre_reset_quirk_dss(struct sysc *ddata)
 		return;
 
 	/* Clear IRQSTATUS */
-	sysc_write(ddata, 0x1000 + 0x18, irq_mask);
+	sysc_write(ddata, dispc_offset + 0x18, irq_mask);
 
 	/* Disable outputs */
 	val = sysc_quirk_dispc(ddata, dispc_offset, true);
@@ -1580,14 +1580,14 @@ static void sysc_pre_reset_quirk_dss(struct sysc *ddata)
 
 	if (sysc_soc->soc == SOC_3430) {
 		/* Clear DSS_SDI_CONTROL */
-		sysc_write(ddata, dispc_offset + 0x44, 0);
+		sysc_write(ddata, 0x44, 0);
 
 		/* Clear DSS_PLL_CONTROL */
-		sysc_write(ddata, dispc_offset + 0x48, 0);
+		sysc_write(ddata, 0x48, 0);
 	}
 
 	/* Clear DSS_CONTROL to switch DSS clock sources to PRCM if not */
-	sysc_write(ddata, dispc_offset + 0x40, 0);
+	sysc_write(ddata, 0x40, 0);
 }
 
 /* 1-wire needs module's internal clocks enabled for reset */
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
