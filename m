Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362A62C677
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 14:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSpTG7Ij3hXwcTXVKNijxJjhk2fD+cHREjAzcQsgG2s=; b=Y+dX/tB5QtzD3c
	CJtoF0wpxS8TVznHlyhRO2uPd40CGR+oOTaY7C5b64h/IgLKpi40jsDU6PS69Ipc51Zkh8G9VPKi+
	xaTao1C5b//rFaH+Jdak+egMgIDU5G7O4H0YESGDo8dDQA0PsYBfl7cVXODiaZX2gDW91hw8nIuAH
	TCTHUlEmIjRr8LC70cWuaP+PyrQJNL1AiHiUQOLkZTuwjR+QKZK7aZNCAP1ASjJE9XseKEiaJlh3e
	cIYZDdvNvetNl37vBDNACG3h2eFEIekTEf2BH8Bp2jF++Wreer3ZoxbHcRRflRByCdnEOSD4pDljH
	C7MC2ZpCGs3/ZCQbL8hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbCZ-0001Vb-2u; Tue, 28 May 2019 12:27:35 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbCS-0001V4-5C
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:27:29 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 4B06480F3;
 Tue, 28 May 2019 12:27:45 +0000 (UTC)
Date: Tue, 28 May 2019 05:27:22 -0700
From: Tony Lindgren <tony@atomide.com>
To: David Laight <David.Laight@ACULAB.COM>
Subject: Re: [PATCH 01/12] bus: ti-sysc: Support 16-bit writes too
Message-ID: <20190528122722.GO5447@atomide.com>
References: <20190527121348.45251-1-tony@atomide.com>
 <20190527121348.45251-2-tony@atomide.com>
 <5e9a31dfdfd843469c51106fce9ea353@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e9a31dfdfd843469c51106fce9ea353@AcuMS.aculab.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_052728_242028_2337F352 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Suman Anna <s-anna@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 Rob Herring <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* David Laight <David.Laight@ACULAB.COM> [190528 11:06]:
> From: Tony Lindgren
> > Sent: 27 May 2019 13:14
> > We need to also support 16-bit writes for i2c in addition to the reads
> > when we start configuring the sysconfig register for reset and idle modes.
> > 
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > ---
> >  drivers/bus/ti-sysc.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
> > --- a/drivers/bus/ti-sysc.c
> > +++ b/drivers/bus/ti-sysc.c
> > @@ -100,6 +100,13 @@ static void sysc_parse_dts_quirks(struct sysc *ddata, struct device_node *np,
> > 
> >  static void sysc_write(struct sysc *ddata, int offset, u32 value)
> >  {
> > +	if (ddata->cfg.quirks & SYSC_QUIRK_16BIT) {
> > +		writew_relaxed(value & 0xffff, ddata->module_va + offset);
> > +		writew_relaxed(value >> 16, ddata->module_va + offset + 4);
> 
> Should that be + 2 ???

Well the stride for I2C revision registers is 4. But while checking
that again, I noticed that the other registers do not have HI and LO
registers and should just use a single 16-bit read and write. So far
it's harmless, but should be fixed.

Updated patch below.

Regards,

Tony

8< ----------------
From tony Mon Sep 17 00:00:00 2001
From: Tony Lindgren <tony@atomide.com>
Date: Mon, 27 May 2019 04:51:53 -0700
Subject: [PATCH] bus: ti-sysc: Support 16-bit writes too

We need to also support 16-bit writes for i2c in addition to the reads
when we start configuring the sysconfig register for reset and idle modes.

Note that only i2c revision register has LO and HI registers, so let's
add a check also for 16-bit register read. This change is currently cosmetic
and does not affect anything until we enable the module specific quirk
handling for i2c reset and enable later on.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -100,6 +100,20 @@ static void sysc_parse_dts_quirks(struct sysc *ddata, struct device_node *np,
 
 static void sysc_write(struct sysc *ddata, int offset, u32 value)
 {
+	if (ddata->cfg.quirks & SYSC_QUIRK_16BIT) {
+		writew_relaxed(value & 0xffff, ddata->module_va + offset);
+
+		/* Only i2c revision has LO and HI register with stride of 4 */
+		if (ddata->offsets[SYSC_REVISION] >= 0 &&
+		    offset == ddata->offsets[SYSC_REVISION]) {
+			u16 hi = value >> 16;
+
+			writew_relaxed(hi, ddata->module_va + offset + 4);
+		}
+
+		return;
+	}
+
 	writel_relaxed(value, ddata->module_va + offset);
 }
 
@@ -109,7 +123,14 @@ static u32 sysc_read(struct sysc *ddata, int offset)
 		u32 val;
 
 		val = readw_relaxed(ddata->module_va + offset);
-		val |= (readw_relaxed(ddata->module_va + offset + 4) << 16);
+
+		/* Only i2c revision has LO and HI register with stride of 4 */
+		if (ddata->offsets[SYSC_REVISION] >= 0 &&
+		    offset == ddata->offsets[SYSC_REVISION]) {
+			u16 tmp = readw_relaxed(ddata->module_va + offset + 4);
+
+			val |= tmp << 16;
+		}
 
 		return val;
 	}
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
