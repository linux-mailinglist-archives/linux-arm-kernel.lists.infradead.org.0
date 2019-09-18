Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948DAB677E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 17:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9bSoJPTIdJT6Dmx88aGbXNx2vCCguqTp9gd8vKtMWE=; b=RxjnAcl4BOtsfu
	eVCWlMIdalcng81rG/HPswmhsj2eMzK0khbrfRyiYsra7CB4f0ceYY69SC2MTMi6ru4LDJqXdgP2R
	sQ8Bw0AtiGbfFSLgg6X5fAGhuxzHxhWfKlBlIVMXOeeCqYBrB8ilI4VikVQ8ulmFTJqBlbk19zE/O
	OryXCzZvk6moCSyHYC5dTWHdrBXlUSUit1j24kC5VBk+G5vB6cfJ8jO7bxBi5WXBrw+1vlZ8Sqrok
	k7cu6cBZuPVintWsW9hVO5tlbhXeCOAZ2lbBg8IUc365++MHLt4b96T7NJl0A4l2jFz/zKugHeOX0
	+3ISqLh0VXUduWrpStYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcF0-0002lb-MB; Wed, 18 Sep 2019 15:51:38 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAcEb-0002ao-1c
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:51:14 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 19871806C;
 Wed, 18 Sep 2019 15:51:42 +0000 (UTC)
Date: Wed, 18 Sep 2019 08:51:08 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 5/8] ARM: dts: Drop bogus ahclkr clocks for dra7 mcasp 3
 to 8
Message-ID: <20190918155108.GD5610@atomide.com>
References: <20190723112811.44381-1-tony@atomide.com>
 <20190723112811.44381-6-tony@atomide.com>
 <2c750847-700e-c835-ee53-a656b363c36c@ti.com>
 <20190724064758.GU5447@atomide.com>
 <931eb0e1-8024-3003-1fb3-6f6ad8b74bf9@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <931eb0e1-8024-3003-1fb3-6f6ad8b74bf9@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_085113_266443_7C826817 
X-CRM114-Status: GOOD (  16.06  )
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
Cc: Nishanth Menon <nm@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [190917 07:22]:
> On 24/07/2019 09:47, Tony Lindgren wrote:
> > * Suman Anna <s-anna@ti.com> [190723 21:02]:
> > > Hi Tony,
> > > 
> > > On 7/23/19 6:28 AM, Tony Lindgren wrote:
> > > > The ahclkr clkctrl clock bit 28 only exists for mcasp 1 and 2 on dra7.
> > > > Otherwise we get the following warning on beagle-x15:
> > ...
> > > > @@ -2962,9 +2958,8 @@
> > > >   					<SYSC_IDLE_SMART>;
> > > >   			/* Domains (P, C): l4per_pwrdm, l4per2_clkdm */
> > > >   			clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 0>,
> > > > -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 24>,
> > > > -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 28>;
> > > > -			clock-names = "fck", "ahclkx", "ahclkr";
> > > > +				 <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 24>;
> > > > +			clock-names = "fck", "ahclkx";
> > > 
> > > The equivalent change to MCASP8 is missing.
> > 
> > Thanks for spotting it, probably should be set up the same way as
> > MCASP4 too looking at the TRM.
> > 
> > Tero, care to check the dra7 mcasp clocks we have defined?
> 
> Sorry, missed this earlier.
> 
> > 
> > $ grep MCASP drivers/clk/ti/clk-7xx.c
> >          { DRA7_IPU_MCASP1_CLKCTRL, dra7_mcasp1_bit_data, CLKF_SW_SUP, "ipu-clkctrl:0000:22" },
> >          { DRA7_L4PER2_MCASP2_CLKCTRL, dra7_mcasp2_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:0154:22" },
> >          { DRA7_L4PER2_MCASP3_CLKCTRL, dra7_mcasp3_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:015c:22" },
> >          { DRA7_L4PER2_MCASP5_CLKCTRL, dra7_mcasp5_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:016c:22" },
> >          { DRA7_L4PER2_MCASP8_CLKCTRL, dra7_mcasp8_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:0184:24" },
> >          { DRA7_L4PER2_MCASP4_CLKCTRL, dra7_mcasp4_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:018c:22" },
> >          { DRA7_L4PER2_MCASP6_CLKCTRL, dra7_mcasp6_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:01f8:22" },
> >          { DRA7_L4PER2_MCASP7_CLKCTRL, dra7_mcasp7_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:01fc:22" },
> > 
> > Is bit 24 above correct for MCASP8 or should it too be 22 like
> > adjacent MCASP4 in the TRM?
> 
> So yeah, mcasp8 is wrong here, should be 22 as rest of them. I did fix
> mcasp8 clocks partially when doing the conversion but missed the parenting
> here; it was completely broken before.

OK thanks, I'll post a patch to fix that and an updated mcasp dts fix.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
