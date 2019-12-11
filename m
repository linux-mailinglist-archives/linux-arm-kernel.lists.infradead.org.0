Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDB511BDD8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 21:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYWxOatU0mOx/pL7gp23nmuLd9pIPUtUON/UNJ7D0Gk=; b=HBpy2Jbj/NCIdN
	N2HdI1lvHped36wBzPYvJw11n5qMgYucArFPXgu+ZMl7J2idBimbD3EqCFiZO0MV/OccZdOHqNpHc
	lskA1nlsFDC/ELUcJhcqQV3uGOCwFz2juk6JVe5nYVYpWoyeXOtpprHYh1xWm88keInv4xy324BQJ
	n7F/yhmVjlSPHO2KNF4dEkQOw/N4+/64J7bQRWljI8DrMWjVsGhR13yVbiCrji6hSoWbpt53b43Lw
	YGZVJW0z/GzIG/4FmZnb61KmZ+wfPzEdaQazmKBG0aL0Z1N6rJO0AqBuX8clGNAkBVQ+PyLKdBkS9
	R9LOGrMaEY3wPm6QO1uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8b9-0006eO-6Z; Wed, 11 Dec 2019 20:28:39 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8az-0006dy-Ty
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 20:28:31 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 12:28:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="245423821"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga002.fm.intel.com with ESMTP; 11 Dec 2019 12:28:20 -0800
Received: from andy by smile with local (Exim 4.93-RC7)
 (envelope-from <andriy.shevchenko@intel.com>)
 id 1if8ao-0005om-8s; Wed, 11 Dec 2019 22:28:18 +0200
Date: Wed, 11 Dec 2019 22:28:18 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH v11 06/14] peci: Add Aspeed PECI adapter driver
Message-ID: <20191211202818.GD32742@smile.fi.intel.com>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-7-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211194624.2872-7-jae.hyun.yoo@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_122829_979149_F7C70843 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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

On Wed, Dec 11, 2019 at 11:46:16AM -0800, Jae Hyun Yoo wrote:
> This commit adds Aspeed PECI adapter driver for Aspeed
> AST24xx/25xx/26xx SoCs.

...

> +#define   ASPEED_PECI_CMD_IDLE_MASK		(ASPEED_PECI_CMD_STS_MASK | \
> +						 ASPEED_PECI_CMD_PIN_MON)

Better looking when the value completely occupies second line without touching
the first.

...

> +static int aspeed_peci_check_idle(struct aspeed_peci *priv)
> +{
> +	ulong timeout = jiffies + usecs_to_jiffies(ASPEED_PECI_IDLE_CHECK_TIMEOUT_USEC);
> +	u32 cmd_sts;

Like in the previous patch this one has hard to read timeout loops with inefficient code.

> +	for (;;) {
> +		cmd_sts = readl(priv->base + ASPEED_PECI_CMD);
> +		if (!(cmd_sts & ASPEED_PECI_CMD_IDLE_MASK))
> +			break;

> +		if (time_after(jiffies, timeout)) {

This is actually main exit condition (vs. infinite loop).

> +			cmd_sts = readl(priv->base + ASPEED_PECI_CMD);

This make no sense. If you would like to have one more iteration, just spell it
explicitly.

> +			break;
> +		}

> +		usleep_range((ASPEED_PECI_IDLE_CHECK_INTERVAL_USEC >> 2) + 1,
> +			     ASPEED_PECI_IDLE_CHECK_INTERVAL_USEC);
> +	}
> +

> +	return !(cmd_sts & ASPEED_PECI_CMD_IDLE_MASK) ? 0 : -ETIMEDOUT;

Ditto.

> +}

Now look at the other variant:

	do {
		...do something...
		if (success)
			return 0;
		usleep(...);
	} while (time_before(...));

	return -ETIMEDOUT;

* Easy
* less LOCs
* guaranteed always to be at least one iteration
* has explicitly spelled exit condition

BUT!

In this very case you may do even better if you read iopoll.h, i.e
readl_poll_timeout() has this functionality embedded in the macro.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
