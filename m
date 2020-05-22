Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E501DE6DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zxonqBvJt90yy724k0ZWcrG8zVzB6rEZyvgCM1haIc=; b=qc4LqxHm3kwT7R
	vhWRMWDTxjs1lJP+WftIbpOqyNkJ+qo2Wm9o0YPD/DelEMIRNR0R2XrHS3HNdR78B+8cX+gFhGXAX
	NL6Q0CQS8OSLp4ZDY2/Q+SM3rbs6Njy1GisYZo02pR9/y/oFpoMQPfwXxHGOATWVcwH2QXKeWZ1Fp
	aEUkT8C/hpyemvjyIKdd9Ajr2DOqYZlhASAKqz42I1Akp35H95jy69OcLMhLAHFJayhu09NrUaWJ3
	B4AxGhDtSxHUnI9XtnJCefctr2XkIH/h+0uSeNYLQJKGQhlrSwh4H4O334fbkKgkAF7nzuATJd81f
	/2EsWhLDKfKvvAt+Yt3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6m5-0006Yu-O4; Fri, 22 May 2020 12:27:41 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6lu-0006YM-V7
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:27:32 +0000
IronPort-SDR: 64FyP7OYcpqahe+m8b+Ak3cseQ+m0ZqqOHQnfed6Cv068Gn2iE8EjVu1VGlO/RbxqxjL64MS0+
 RhUagdpEzBow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 05:27:29 -0700
IronPort-SDR: NWN5dJDnXUsXQ04oQAKBsYU5gIqJK6FUXRe2aHRdhrhd52IyQKR9HNREhdbx+cfpvDIsKi3bIJ
 boHtr1ha77rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,421,1583222400"; d="scan'208";a="265415473"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003.jf.intel.com with ESMTP; 22 May 2020 05:27:17 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jc6lh-008EFe-DI; Fri, 22 May 2020 15:27:17 +0300
Date: Fri, 22 May 2020 15:27:17 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v13 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
Message-ID: <20200522122717.GB1634618@smile.fi.intel.com>
References: <20200522113312.181413-1-tali.perry1@gmail.com>
 <20200522113312.181413-3-tali.perry1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522113312.181413-3-tali.perry1@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_052731_007109_8F86B2F4 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com, yuenn@google.com,
 avifishman70@gmail.com, venture@google.com, openbmc@lists.ozlabs.org,
 wsa@the-dreams.de, brendanhiggins@google.com, ofery@google.com,
 linux-kernel@vger.kernel.org, kfting@nuvoton.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 02:33:11PM +0300, Tali Perry wrote:
> Add Nuvoton NPCM BMC I2C controller driver.

I thought we are waiting for Wolfram finishing his review...


In any case see couple of comments below.

...


> +#ifdef CONFIG_DEBUG_FS

Now, do we need the rest of DEBUG_FS guards?

> +	if (status) {
> +		if (bus->rec_fail_cnt == ULLONG_MAX) {
> +			dev_dbg(bus->dev, "rec_fail_cnt reach max, reset to 0");

> +			bus->rec_fail_cnt = 0;

It's redundant, since we will anyway roll over when incrementing.
https://stackoverflow.com/q/18195715/2511795

> +		}
> +		bus->rec_fail_cnt++;
> +	} else {
> +		if (bus->rec_succ_cnt == ULLONG_MAX) {
> +			dev_dbg(bus->dev, "rec_succ_cnt reach max, reset to 0");

> +			bus->rec_succ_cnt = 0;

Ditto.

> +		}
> +		bus->rec_succ_cnt++;
> +	}
> +#endif

...

> +static int npcm_i2c_remove_bus(struct platform_device *pdev)
> +{
> +	unsigned long lock_flags;
> +	struct npcm_i2c *bus = platform_get_drvdata(pdev);
> +
> +	spin_lock_irqsave(&bus->lock, lock_flags);
> +	npcm_i2c_disable(bus);
> +	spin_unlock_irqrestore(&bus->lock, lock_flags);
> +	i2c_del_adapter(&bus->adap);

> +	debugfs_remove_recursive(bus->debugfs);

This should be in reversed order, i.e. you inited last in ->probe(), thus
should remove first in ->remove().

> +	return 0;
> +}

...

> +static int __init npcm_i2c_init(void)
> +{
> +	struct dentry *dir;
> +
> +	dir = debugfs_create_dir("i2c", NULL);

> +	if (IS_ERR_OR_NULL(dir))

IS_ERR() is redundant. And NULL already being checked inside i2c_init_debugfs()
or how do you call it?

> +		return 0;
> +
> +	npcm_i2c_debugfs_dir = dir;
> +	return 0;
> +}
> +
> +static void __exit npcm_i2c_exit(void)
> +{
> +	debugfs_remove_recursive(npcm_i2c_debugfs_dir);
> +}

> +
> +module_init(npcm_i2c_init);
> +module_exit(npcm_i2c_exit);

Slightly better to attach to the respective function, like other macros above
do.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
