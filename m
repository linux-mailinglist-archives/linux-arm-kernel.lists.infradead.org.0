Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36357F29CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:52:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XDqPETF68oKhczFIaS9ewilvIQUBgI/Twmj6DfDgB8=; b=SFM19Q2uH6qIvO
	ecdSJVM19CrwInmtEPBoZYQRWuQjETGVdoC1BZnIUlDUIVVYE5FXmHBwkq5GqsYG3q9BDS2lvA4rR
	lF2F+mXtkw3XgqMI1hmGF4o8svkha+IgIwdB857T5jO5GiBDMrDyLUlNAgVjoiik2qtdfa/Lneab5
	WLUEiWDDpo+z8rzFhrDcy89ajas3xccMKZAvezHylQfu8g+9nGUOUoOQwE0le2lHaJ9Yu8XQ7HKOr
	mDoCavj7yz9XwkFN9PEGpl1JiBL2kSWazQX8+DQjCE94SrhTMI/HE71PjmswnFvZt/gd6yOjpwbge
	UBU+kzLHVYyoOjlX/XEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdX7-0005vh-Q3; Thu, 07 Nov 2019 08:52:49 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdWt-0005sR-L4
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:52:36 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 00:52:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,277,1569308400"; d="scan'208";a="214533458"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga002.jf.intel.com with ESMTP; 07 Nov 2019 00:52:30 -0800
Received: from andy by smile with local (Exim 4.93-RC1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iSdWn-0001R1-Nb; Thu, 07 Nov 2019 10:52:29 +0200
Date: Thu, 7 Nov 2019 10:52:29 +0200
From: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 0/2] Add definition for GPIO direction
Message-ID: <20191107085229.GU32742@smile.fi.intel.com>
References: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
 <20191106120846.5bunrqj3uz4khih5@earth.universe>
 <ddcd02cc6c709837a28cae2cbfa672c506927659.camel@fi.rohmeurope.com>
 <20191106142441.GC32742@smile.fi.intel.com>
 <CACRpkdZ2F3zR2bdHgUV9GJX8iSojiM34BTWizTV_z+j7sS4jtw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZ2F3zR2bdHgUV9GJX8iSojiM34BTWizTV_z+j7sS4jtw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_005235_730673_BEADBB72 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 "andrew@aj.id.au" <andrew@aj.id.au>, "Vaittinen,
 Matti" <Matti.Vaittinen@fi.rohmeurope.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 09:26:43AM +0100, Linus Walleij wrote:
> On Wed, Nov 6, 2019 at 3:25 PM andriy.shevchenko@linux.intel.com
> <andriy.shevchenko@linux.intel.com> wrote:
> > On Wed, Nov 06, 2019 at 12:25:18PM +0000, Vaittinen, Matti wrote:

> > For pin control Intel, since we send PR to Linus and it won't be different to
> > him, we would like to see patch per driver.
> 
> It is generally good to bundle these changes because so many
> driver maintainers are passive. (Not Intel!)
> 
> If you are concerned, what about we just make a separate patch
> for the drivers under drivers/pinctrl/intel and bundle the rest?

Fine with me!

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
