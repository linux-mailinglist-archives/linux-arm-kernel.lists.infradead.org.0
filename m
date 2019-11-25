Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D7D108E4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 13:55:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+fIC5QwddgB/T3GUBTjH2L+RuM8eC6/TELE/u4+M4w=; b=Ncb9Na/D3dF2UZ
	aRR9Dsv4d5eI6mg5y7ftvg6NS5mKWxn+jmn85ZTN1T9PKsPUFNs9qHPvC2JtNd1mcBoeiSp2cpS8i
	1e2IQ+/kRnvtSVDKX14ugJRaxZx38W6dhp+Aq8Kcr94afKZkCySAWTlf8FLXzLrSi5wp91OoxJFS1
	PlFWCeZ80gY3ADLHGpUVY89dUUz3vMSUoHEblcO/7o1ZaUXVd8i735723WOdAWq8z+QXL6lavozrR
	8YZloLlJkdOHDe7Px4z+oIpx3FWiyfjL4yetY9coXVpkHbkeY9lPkHqGyIodnjUrfX7wC2EYmxFxE
	6i3LsYBcrHo3pUJ3UQuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDta-0003Cx-9s; Mon, 25 Nov 2019 12:55:14 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDtD-0002jw-Fi
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 12:54:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lGiS2h5LkAFhAPuwBNqfpb6MGmFChlVpjwcOwc0zxAU=; b=yWGq8b994ljO+OiBl8buR4HBn
 2Kod0h4Rh7hjAFR44DOIK3EFprUO2pO6TuZZ5Att8Q9ueVnh+imfh2H2+tsaga3Z5LUd5P64h2NXd
 ceQd4w0+muTw6hA1kYnnCXUtOlYki1OL4B1nm/+5d+ney0EYZkfBw1HumqMGb91l1fGh1lwalmIie
 F8c6VnQA9wal8jrJe9RVVQVPUGAnjcTllUnFRQzk9H41ekrOcGONXiM4xYpbDwbku1GB18eKQqjCQ
 7+sTpb2/Yv3n1Il3fT5unU7RuC3GrHUbdMztePhyTSUyB5eVEkI2up5/7L27XTEmyEQdP4pYGS12R
 7rSLUHhVQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44420)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iZDr0-0007lR-03; Mon, 25 Nov 2019 12:52:34 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iZDqx-0006g2-VL; Mon, 25 Nov 2019 12:52:31 +0000
Date: Mon, 25 Nov 2019 12:52:31 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v1] clk: Add devm_clk_{prepare,enable,prepare_enable}
Message-ID: <20191125125231.GO25745@shell.armlinux.org.uk>
References: <1d7a1b3b-e9bf-1d80-609d-a9c0c932b15a@free.fr>
 <34e32662-c909-9eb3-e561-3274ad0bf3cc@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <34e32662-c909-9eb3-e561-3274ad0bf3cc@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_045452_109542_9C650601 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 01:46:51PM +0100, Marc Gonzalez wrote:
> On 15/07/2019 17:34, Marc Gonzalez wrote:
> 
> > Provide devm variants for automatic resource release on device removal.
> > probe() error-handling is simpler, and remove is no longer required.
> > 
> > Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> > ---
> >  Documentation/driver-model/devres.rst |  3 +++
> >  drivers/clk/clk.c                     | 24 ++++++++++++++++++++++++
> >  include/linux/clk.h                   |  8 ++++++++
> >  3 files changed, 35 insertions(+)
> > 
> > diff --git a/Documentation/driver-model/devres.rst b/Documentation/driver-model/devres.rst
> > index 1b6ced8e4294..9357260576ef 100644
> > --- a/Documentation/driver-model/devres.rst
> > +++ b/Documentation/driver-model/devres.rst
> > @@ -253,6 +253,9 @@ CLOCK
> >    devm_clk_hw_register()
> >    devm_of_clk_add_hw_provider()
> >    devm_clk_hw_register_clkdev()
> > +  devm_clk_prepare()
> > +  devm_clk_enable()
> > +  devm_clk_prepare_enable()
> >  
> >  DMA
> >    dmaenginem_async_device_register()
> > diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> > index c0990703ce54..5e85548357c0 100644
> > --- a/drivers/clk/clk.c
> > +++ b/drivers/clk/clk.c
> > @@ -914,6 +914,18 @@ int clk_prepare(struct clk *clk)
> >  }
> >  EXPORT_SYMBOL_GPL(clk_prepare);
> >  
> > +static void unprepare(void *clk)
> > +{
> > +	clk_unprepare(clk);
> > +}
> > +
> > +int devm_clk_prepare(struct device *dev, struct clk *clk)
> > +{
> > +	int rc = clk_prepare(clk);
> > +	return rc ? : devm_add_action_or_reset(dev, unprepare, clk);
> > +}
> > +EXPORT_SYMBOL_GPL(devm_clk_prepare);
> > +
> >  static void clk_core_disable(struct clk_core *core)
> >  {
> >  	lockdep_assert_held(&enable_lock);
> > @@ -1136,6 +1148,18 @@ int clk_enable(struct clk *clk)
> >  }
> >  EXPORT_SYMBOL_GPL(clk_enable);
> >  
> > +static void disable(void *clk)
> > +{
> > +	clk_disable(clk);
> > +}
> > +
> > +int devm_clk_enable(struct device *dev, struct clk *clk)
> > +{
> > +	int rc = clk_enable(clk);
> > +	return rc ? : devm_add_action_or_reset(dev, disable, clk);
> > +}
> > +EXPORT_SYMBOL_GPL(devm_clk_enable);
> > +
> >  static int clk_core_prepare_enable(struct clk_core *core)
> >  {
> >  	int ret;
> > diff --git a/include/linux/clk.h b/include/linux/clk.h
> > index 3c096c7a51dc..d09b5207e3f1 100644
> > --- a/include/linux/clk.h
> > +++ b/include/linux/clk.h
> > @@ -895,6 +895,14 @@ static inline void clk_restore_context(void) {}
> >  
> >  #endif
> >  
> > +int devm_clk_prepare(struct device *dev, struct clk *clk);
> > +int devm_clk_enable(struct device *dev, struct clk *clk);
> > +static inline int devm_clk_prepare_enable(struct device *dev, struct clk *clk)
> > +{
> > +	int rc = devm_clk_prepare(dev, clk);
> > +	return rc ? : devm_clk_enable(dev, clk);
> > +}
> > +
> >  /* clk_prepare_enable helps cases using clk_enable in non-atomic context. */
> >  static inline int clk_prepare_enable(struct clk *clk)
> >  {
> 
> Thoughts? Comments?

These are part of the clk API rather than the CCF API, and belong in
drivers/clk/clk-devres.c.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
