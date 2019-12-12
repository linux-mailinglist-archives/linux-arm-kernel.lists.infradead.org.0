Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C58D11C1A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 01:50:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O0t6/bJjSaQuliaCWVxqFY1No6pkw+CmcbC1bqoQ2Vc=; b=DSzMNMgyMfDCwcyq17VPiP2Wo
	PHsruHGNV/rosdEwC4VR73g6zIJmolWdbNag6vP/gDGWAndup6ZH0JxlzNwNkj6w0T+clDP5AmIOU
	MEfy2F5Cpng0VXKBSeS/k5FtJQyv83IMOQW6tX7bKxmMAtE7OMAXEUk3nHg9Q8XZ0IenVkL0lDvmc
	JsEiASX3xkb71BBO9/iNcX00YhD8VDZGgCdvfBpeTsbJYOxAq4lkKwb72UaAGAMdzLd0ZHDLx3+jM
	YgfXPz0X6W8h4CIMwFw0MYf/aCIDvjQQPjwlM63W2n59Mk2GIWmCJAs0X8pHOfJNtoItRfwO3NsaU
	VfvHVlp3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCgI-0006tr-Lt; Thu, 12 Dec 2019 00:50:14 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCg9-0006NZ-3L
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 00:50:06 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 16:50:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="388124032"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.143])
 ([10.7.153.143])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2019 16:50:04 -0800
Subject: Re: [PATCH v11 06/14] peci: Add Aspeed PECI adapter driver
To: Andy Shevchenko <andriy.shevchenko@intel.com>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-7-jae.hyun.yoo@linux.intel.com>
 <20191211202818.GD32742@smile.fi.intel.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <e05cdec0-1120-7e2d-bac0-e4a1ba1ceb3d@linux.intel.com>
Date: Wed, 11 Dec 2019 16:50:04 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191211202818.GD32742@smile.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_165005_192106_8EC05966 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On 12/11/2019 12:28 PM, Andy Shevchenko wrote:
> On Wed, Dec 11, 2019 at 11:46:16AM -0800, Jae Hyun Yoo wrote:
>> This commit adds Aspeed PECI adapter driver for Aspeed
>> AST24xx/25xx/26xx SoCs.
> 
> ...
> 
>> +#define   ASPEED_PECI_CMD_IDLE_MASK		(ASPEED_PECI_CMD_STS_MASK | \
>> +						 ASPEED_PECI_CMD_PIN_MON)
> 
> Better looking when the value completely occupies second line without touching
> the first.

Yes. Will change it.

> ...
> 
>> +static int aspeed_peci_check_idle(struct aspeed_peci *priv)
>> +{
>> +	ulong timeout = jiffies + usecs_to_jiffies(ASPEED_PECI_IDLE_CHECK_TIMEOUT_USEC);
>> +	u32 cmd_sts;
> 
> Like in the previous patch this one has hard to read timeout loops with inefficient code.
> 
>> +	for (;;) {
>> +		cmd_sts = readl(priv->base + ASPEED_PECI_CMD);
>> +		if (!(cmd_sts & ASPEED_PECI_CMD_IDLE_MASK))
>> +			break;
> 
>> +		if (time_after(jiffies, timeout)) {
> 
> This is actually main exit condition (vs. infinite loop).
> 
>> +			cmd_sts = readl(priv->base + ASPEED_PECI_CMD);
> 
> This make no sense. If you would like to have one more iteration, just spell it
> explicitly.
> 
>> +			break;
>> +		}
> 
>> +		usleep_range((ASPEED_PECI_IDLE_CHECK_INTERVAL_USEC >> 2) + 1,
>> +			     ASPEED_PECI_IDLE_CHECK_INTERVAL_USEC);
>> +	}
>> +
> 
>> +	return !(cmd_sts & ASPEED_PECI_CMD_IDLE_MASK) ? 0 : -ETIMEDOUT;
> 
> Ditto.
> 
>> +}
> 
> Now look at the other variant:
> 
> 	do {
> 		...do something...
> 		if (success)
> 			return 0;
> 		usleep(...);
> 	} while (time_before(...));
> 
> 	return -ETIMEDOUT;
> 
> * Easy
> * less LOCs
> * guaranteed always to be at least one iteration
> * has explicitly spelled exit condition
> 
> BUT!
> 
> In this very case you may do even better if you read iopoll.h, i.e
> readl_poll_timeout() has this functionality embedded in the macro.
> 

I see. I'll simplify this function like below:

#include <linux/iopoll.h>

static inline int aspeed_peci_check_idle(struct aspeed_peci *priv)
{
	u32 cmd_sts;

	return readl_poll_timeout(priv->base + ASPEED_PECI_CMD,
				  cmd_sts,
				  !(cmd_sts & ASPEED_PECI_CMD_IDLE_MASK),
				  ASPEED_PECI_IDLE_CHECK_INTERVAL_USEC,
				  ASPEED_PECI_IDLE_CHECK_TIMEOUT_USEC);
}

Thanks a lot for your review!

-Jae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
