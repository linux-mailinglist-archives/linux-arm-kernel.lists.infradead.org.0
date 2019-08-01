Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F667DB43
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SACdFN1JuI6iJnkMrXFjVEOmeDWxP4C7T+8EnON4ok0=; b=WpEG5EgfFZjiAl
	IL72EugO4BBGDew6YGj5QETLMdQKWu8HulP4dwXXX7FLZ3HE2b8QzAckfFZKbZWMXU/eIIujCqdsN
	MW0qBjLy+Jjx05lhRObSC4IvToqhF++JCBA9Vvaa98Wa3CcHCkUKXWnlCKgewFzMmE54nekTjp8BZ
	T6pqoFY9MbqIbMygIA1Qd5qad53MRshM9eqIbsmeIcr3yXFrVatbP1KErJW2YYY0wOPhH3yjpD9ns
	7rQ+J/tqqFxBAmZWK0njQPSBUvfXUFo0b6ZcAiBbpz7E42dr7nVB6+PFme8Piy9JOjVehjL6spsLv
	hE60DtKjLYTZ4FN79bwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htA5C-0000EN-8f; Thu, 01 Aug 2019 12:21:22 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htA52-0000E0-7j
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:21:13 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 05:21:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="172896234"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.145])
 by fmsmga008.fm.intel.com with ESMTP; 01 Aug 2019 05:21:08 -0700
Received: from andy by smile with local (Exim 4.92)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1htA4w-0003Cp-F3; Thu, 01 Aug 2019 15:21:06 +0300
Date: Thu, 1 Aug 2019 15:21:06 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v3 5/7] drivers: Introduce device lookup variants by
 ACPI_COMPANION device
Message-ID: <20190801122106.GU23480@smile.fi.intel.com>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
 <20190723221838.12024-6-suzuki.poulose@arm.com>
 <20190726202353.GA963@kunai>
 <20190801115856.GS23480@smile.fi.intel.com>
 <20190801120830.GA1659@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801120830.GA1659@ninjato>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_052112_323692_99F35E55 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: rafael@kernel.org, gregkh@linuxfoundation.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-acpi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 linux-i2c@vger.kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 02:08:30PM +0200, Wolfram Sang wrote:
> On Thu, Aug 01, 2019 at 02:58:56PM +0300, Andy Shevchenko wrote:
> > On Fri, Jul 26, 2019 at 10:23:54PM +0200, Wolfram Sang wrote:
> > > On Tue, Jul 23, 2019 at 11:18:36PM +0100, Suzuki K Poulose wrote:
> > > > Add a generic helper to match a device by the ACPI_COMPANION device
> > > > and provide wrappers for the device lookup APIs.
> > > > 
> > > > Cc: Len Brown <lenb@kernel.org>
> > > > Cc: linux-acpi@vger.kernel.org
> > > > Cc: linux-spi@vger.kernel.org
> > > > Cc: Mark Brown <broonie@kernel.org>
> > > > Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
> > > > Cc: Wolfram Sang <wsa@the-dreams.de>
> > > > Cc: linux-i2c@vger.kernel.org
> > > > Cc: Mark Brown <broonie@kernel.org>
> > > > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > > Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> > > > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > 
> > > From my side, OK:
> > > 
> > > Acked-by: Wolfram Sang <wsa@the-dreams.de> # I2C parts
> > > 
> > > yet you missed to cc the I2C ACPI maintainers. Done so now.
> > 
> > Acked-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > 
> > Thanks, Wolfram, for notifying.
> 
> Sure. There seems to be a problem, though? Please check:
> 
> [PATCH 1/3] i2c: Revert incorrect conversion to use generic helper
> 
> which came in today.

It's again not Cc'ed to all parties.
But OK, looks good to me.
Tough may be Jarkko can test all this.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
