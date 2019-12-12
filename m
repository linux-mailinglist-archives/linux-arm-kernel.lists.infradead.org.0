Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CEE11D65A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 19:52:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YXlCWXkB2u/rC4nCEP6XXdDxS3ThpPqEm5d6Aaqz8Cw=; b=NhP2bA7iFONH5a67lODc1tRAo
	TQrtb8S2a2lEF7xXlQW/66g4IAFb+SwYdVhUpQ/cqJSUJqqK5yOE83cFQH2Fx+Dcq6jrEIrmFyNii
	Y6wKhfAtE8068HWF/EJGwobk9SsUeu+fCcGwbCJwnyhmmWOJZ8kDwxKSq/LW6DeH3QEH7ZUB8ipol
	0cI0cNM69yCzUQI1mXesXR1XN53QA9a8YPmzHeuf7AyVu/+3Z61CpeVwcafQg7md1FNXZyS1wCZiv
	C4SSFU2z2VamVQXGzcO1sn1qjLdzj7WkA00mgT5aTf6SnHFeDsCwxT4kc7isetJXLNLN5hqSYi8aA
	wYpYkslmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifTZ9-0005AY-U6; Thu, 12 Dec 2019 18:51:59 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifTZ2-0005AF-ND
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 18:51:53 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 10:51:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="364064186"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.147])
 ([10.7.153.147])
 by orsmga004.jf.intel.com with ESMTP; 12 Dec 2019 10:51:51 -0800
Subject: Re: [PATCH v11 06/14] peci: Add Aspeed PECI adapter driver
To: Andy Shevchenko <andriy.shevchenko@intel.com>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-7-jae.hyun.yoo@linux.intel.com>
 <20191211202818.GD32742@smile.fi.intel.com>
 <e05cdec0-1120-7e2d-bac0-e4a1ba1ceb3d@linux.intel.com>
 <20191212084758.GE32742@smile.fi.intel.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <bce54a12-a58b-a4a5-4e75-103499747ca6@linux.intel.com>
Date: Thu, 12 Dec 2019 10:51:51 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191212084758.GE32742@smile.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_105152_768423_C2BC0F1B 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On 12/12/2019 12:47 AM, Andy Shevchenko wrote:
> On Wed, Dec 11, 2019 at 04:50:04PM -0800, Jae Hyun Yoo wrote:
>> On 12/11/2019 12:28 PM, Andy Shevchenko wrote:
>>> On Wed, Dec 11, 2019 at 11:46:16AM -0800, Jae Hyun Yoo wrote:
> 
>>> Like in the previous patch...
> 
> (1)
> 
>> I see. I'll simplify this function like below:
>>
>> #include <linux/iopoll.h>
>>
>> static inline int aspeed_peci_check_idle(struct aspeed_peci *priv)
>> {
>> 	u32 cmd_sts;
>>
>> 	return readl_poll_timeout(priv->base + ASPEED_PECI_CMD,
>> 				  cmd_sts,
>> 				  !(cmd_sts & ASPEED_PECI_CMD_IDLE_MASK),
>> 				  ASPEED_PECI_IDLE_CHECK_INTERVAL_USEC,
>> 				  ASPEED_PECI_IDLE_CHECK_TIMEOUT_USEC);
>> }
> 
> Good for *this* case, but please fix all the rest accordingly.

Sure. Will do that.

Thanks,

Jae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
