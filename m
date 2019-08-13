Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1028B6F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53qjJOFe4B1Vxhzjz7mhC0h8iJ/t3bPhG4iXbU9RXrE=; b=grKYwia9XuI1Ys
	j0EBmykhDtKGmLh/da3eOq9U+lW/yu/3I6FxvRpxBcKJ9AlyCxn/dl6yv/dP+WJc9Sh2/IkPMzvXr
	7JFmqdaPMIBTjpfamrfsQVCe3sxB7MQY7E9+8BTRYuQpEn/9XPD7zaIqtsMeeaz5VoyrIa0rYRqnz
	A8a600vkdg/KY2ffJM/OMhcoOrAm+i6somxublY7EaQ7wOJTHW9Eg2zDhDXOCm6VXgSFMXxrdb7rV
	SENkf50lh17UabIkHVYbcjsv7GQDzd8DMAXNzZ3XJP2wFVrcYOXHmINFXhyoawgJdAZf9xR6FE1Ay
	HMYLLZ77bFE4geoSk85A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxV2g-00064j-K9; Tue, 13 Aug 2019 11:32:42 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUzf-0002DK-In
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:29:37 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 00CBA805C;
 Tue, 13 Aug 2019 11:30:00 +0000 (UTC)
Date: Tue, 13 Aug 2019 04:29:30 -0700
From: Tony Lindgren <tony@atomide.com>
To: Jyri Sarha <jsarha@ti.com>
Subject: Re: [PATCH 2/8] ARM: OMAP2+: Remove unconfigured midlemode for am3
 lcdc
Message-ID: <20190813112930.GO52127@atomide.com>
References: <20190723112811.44381-1-tony@atomide.com>
 <20190723112811.44381-3-tony@atomide.com>
 <bcc130a5-f7e0-e182-9f4b-5a48fc3d6e17@ti.com>
 <b5d757dc-6326-4b93-c2a2-2db02a440c26@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5d757dc-6326-4b93-c2a2-2db02a440c26@ti.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_042936_643747_F71D39E4 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-kernel@vger.kernel.org, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Jyri Sarha <jsarha@ti.com> [190813 11:05]:
> On 23/07/2019 22:03, Suman Anna wrote:
> > + Jyri
> > 
> > On 7/23/19 6:28 AM, Tony Lindgren wrote:
> >> We currently get a warning for lcdc because of a difference
> >> with dts provided configuration compared to the legacy platform
> >> data. This is because lcdc has SYSC_HAS_MIDLEMODE configured in
> >> the platform data without configuring the modes.
> > 
> > Hi Tony,
> > While I understand that you are trying to match the DT data with the
> > existing legacy data, do you know if there was a reason why this was
> > omitted in the first place? Should we be really adding the MSTANDBY_
> > flags and fix up the DTS node accordingly? I tried looking through the
> > git log, and the initial commit itself didn't add the MSTANDBY_ flags
> > but used the SYSC_HAS_MIDLEMODE.
> > 
> > Jyri,
> > Do you know the history?
> > 
> 
> Sorry. This all has happened before my time. This is all new to me.

Oh OK. Well if possible, could you please check if the following patch
behaves with v5.2 for you for LCDC? I only have rack access to a
beaglebone with hdmi right now.

TRM "Table 13-34. SYSCONFIG Register Field Descriptions" lists both
standbymode and idlemode that should be just the sidle and midle
registers where midle is currently unconfigured.

Regards,

Tony

8< ---------------------
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
@@ -255,8 +255,9 @@ static struct omap_hwmod am33xx_gpio0_hwmod = {
 static struct omap_hwmod_class_sysconfig lcdc_sysc = {
 	.rev_offs	= 0x0,
 	.sysc_offs	= 0x54,
-	.sysc_flags	= (SYSC_HAS_SIDLEMODE | SYSC_HAS_MIDLEMODE),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
+	.sysc_flags	= SYSC_HAS_SIDLEMODE | SYSC_HAS_MIDLEMODE,
+	.idlemodes	= SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
+			  MSTANDBY_FORCE | MSTANDBY_NO | MSTANDBY_SMART,
 	.sysc_fields	= &omap_hwmod_sysc_type2,
 };
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
