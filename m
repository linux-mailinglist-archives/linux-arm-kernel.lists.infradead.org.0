Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BE611C87B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 09:50:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqiajwq8Pg5hwmGsYqkGEO4cg5r5zm4RcUcdKipWtPQ=; b=ttICTtPQLvLAX0
	GI7wa1EVf9M3U8zcui36EB2epyYMRraye3GMLJBm4ulK/bo/qV2Sh3QfKhcK+kW+Eqi9RGyXkTqD7
	QX5H+WCiWDT9upS5Wg1qj0FpCpjzg+7ztN8ZETbmCpok2KgEIk9tPdhqy2JNTmhfSy8hUch5ghiK1
	SGVKlaX7jDRcENlO5mRWMRs6mfJCFksbQ5nFVFJyQDsP5STe3AOUj+pj8vJz6IEE+JKGFPpov7qVN
	Xv2oNKLBPvD2YAtJNAm6RKV9y44fqMeMfciJ9/al9keAvRhzYdRLBNTWahcA4ZHKV35SrtT1HTZb8
	LTNjzdpquXK5HOakxhsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKAe-0004sQ-5X; Thu, 12 Dec 2019 08:50:04 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKAS-0004rt-Uk
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 08:49:54 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 00:48:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; d="scan'208";a="238866800"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga004.fm.intel.com with ESMTP; 12 Dec 2019 00:47:59 -0800
Received: from andy by smile with local (Exim 4.93-RC7)
 (envelope-from <andriy.shevchenko@intel.com>)
 id 1ifK8c-0007tI-Bw; Thu, 12 Dec 2019 10:47:58 +0200
Date: Thu, 12 Dec 2019 10:47:58 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH v11 06/14] peci: Add Aspeed PECI adapter driver
Message-ID: <20191212084758.GE32742@smile.fi.intel.com>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-7-jae.hyun.yoo@linux.intel.com>
 <20191211202818.GD32742@smile.fi.intel.com>
 <e05cdec0-1120-7e2d-bac0-e4a1ba1ceb3d@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e05cdec0-1120-7e2d-bac0-e4a1ba1ceb3d@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_004953_001185_BD50839E 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Randy Dunlap <rdunlap@infradead.org>,
 Tomer Maimon <tmaimon77@gmail.com>, devicetree@vger.kernel.org,
 Frederic Barrat <fbarrat@linux.vnet.ibm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Eric Sandeen <sandeen@redhat.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, openbmc@lists.ozlabs.org,
 linux-doc@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Joel Stanley <joel@jms.id.au>, "Bryant G . Ly" <bryantly@linux.vnet.ibm.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 David Kershner <david.kershner@unisys.com>, Guenter Roeck <linux@roeck-us.net>,
 Wu Hao <hao.wu@intel.com>, linux-hwmon@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Arnd Bergmann <arnd@arndb.de>,
 Philippe Ombredanne <pombredanne@nexb.com>, Johan Hovold <johan@kernel.org>,
 Tomohiro Kusumi <kusumi.tomohiro@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Sagar Dharia <sdharia@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org, Juergen Gross <jgross@suse.com>,
 Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>,
 Ryan Chen <ryan_chen@aspeedtech.com>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Vinod Koul <vkoul@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 04:50:04PM -0800, Jae Hyun Yoo wrote:
> On 12/11/2019 12:28 PM, Andy Shevchenko wrote:
> > On Wed, Dec 11, 2019 at 11:46:16AM -0800, Jae Hyun Yoo wrote:

> > Like in the previous patch...

(1)

> I see. I'll simplify this function like below:
> 
> #include <linux/iopoll.h>
> 
> static inline int aspeed_peci_check_idle(struct aspeed_peci *priv)
> {
> 	u32 cmd_sts;
> 
> 	return readl_poll_timeout(priv->base + ASPEED_PECI_CMD,
> 				  cmd_sts,
> 				  !(cmd_sts & ASPEED_PECI_CMD_IDLE_MASK),
> 				  ASPEED_PECI_IDLE_CHECK_INTERVAL_USEC,
> 				  ASPEED_PECI_IDLE_CHECK_TIMEOUT_USEC);
> }

Good for *this* case, but please fix all the rest accordingly.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
