Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83571DCFA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XY0LJwcRDLU6S65Pxa/VxYN0g4TOd0bzNusUmFlLNg4=; b=A5wZ9DpMkV+s+1
	knUHCTTMSsZWoB5nZEJOD5l2aWjwKKT7NPw5HjVEAzfMQWfJ+/u4BJhFJqBW9B2xyXtXEx8JOLlA0
	1PjANBi7SDrr1AKiQGC+qmSpK9AGfVxyj7i8QNu89I7WfxsxurQwK4qYJAFt5Kzc7FoatvIHUe18N
	gvXutIkfUViyHE555zAuf0mM5mEkhC2xYNuj/O1bPgWXLW4cNlELeWST1Mmoug0ipZWAc2qdRmx5z
	eE8AJt34J+6ke4cdIZfQn6gZKVGvJavK3RwDELc+sgj/UW6WUb3N4jnVfewzVAZOYfnoFkopMlHAd
	epSQdV6P1Vq2X995aMHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbm7F-00068n-FB; Thu, 21 May 2020 14:24:09 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbm76-000630-Pj
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:24:02 +0000
IronPort-SDR: XXuYvTPjWMmSWAssJdvHd0mbvBD7M3zg2BV3GPu+ko9oqVeTWDR0Ef8hdKSrI72krLHJD/pAML
 FSRtylmxjdEg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 07:23:41 -0700
IronPort-SDR: HJwr70oF8r+qmhLkXdAqGrFwTDZR+Uh1JWVRI1suhxl+UzDLL/Fl2/k3MnYyHkfNDm743d3dr5
 u5ECfTDgt3EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,417,1583222400"; d="scan'208";a="253985670"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga007.fm.intel.com with ESMTP; 21 May 2020 07:23:38 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jbm6m-0082sf-QV; Thu, 21 May 2020 17:23:40 +0300
Date: Thu, 21 May 2020 17:23:40 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v12 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
Message-ID: <20200521142340.GM1634618@smile.fi.intel.com>
References: <20200521110910.45518-1-tali.perry1@gmail.com>
 <20200521110910.45518-3-tali.perry1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521110910.45518-3-tali.perry1@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_072400_884776_D1B54D5E 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Thu, May 21, 2020 at 02:09:09PM +0300, Tali Perry wrote:
> Add Nuvoton NPCM BMC I2C controller driver.

Thanks. My comments below.
After addressing them, FWIW,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

...

> +	/* Frequency larger than 1 MHZ is not supported */

1 MHZ -> 1MHz

...

> +#ifdef CONFIG_DEBUG_FS

Again, why is this here?

Have you checked debugfs.h for !CONFIG_DEBUG_FS case?

> +/* i2c debugfs directory: used to keep health monitor of i2c devices */
> +static struct dentry *npcm_i2c_debugfs_dir;
> +
> +static void i2c_init_debugfs(struct platform_device *pdev, struct npcm_i2c *bus)
> +{
> +	struct dentry *d;
> +
> +	if (!npcm_i2c_debugfs_dir)
> +		return;
> +
> +	d = debugfs_create_dir(dev_name(&pdev->dev), npcm_i2c_debugfs_dir);
> +	if (IS_ERR_OR_NULL(d))
> +		return;
> +
> +	debugfs_create_u64("ber_cnt", 0444, d, &bus->ber_cnt);
> +	debugfs_create_u64("nack_cnt", 0444, d, &bus->nack_cnt);
> +	debugfs_create_u64("rec_succ_cnt", 0444, d, &bus->rec_succ_cnt);
> +	debugfs_create_u64("rec_fail_cnt", 0444, d, &bus->rec_fail_cnt);
> +	debugfs_create_u64("timeout_cnt", 0444, d, &bus->timeout_cnt);
> +
> +	bus->debugfs = d;
> +}

> +#else
> +static void i2c_init_debugfs(struct platform_device *pdev, struct npcm_i2c *bus)
> +{
> +}

This is completely redundant.

> +#endif

...

> +#ifdef CONFIG_DEBUG_FS

Ditto.

> +static int __init npcm_i2c_init(void)
> +{
> +	struct dentry *dir;
> +
> +	dir = debugfs_create_dir("i2c", NULL);
> +	if (IS_ERR_OR_NULL(dir))
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
> +#endif

...

> +MODULE_VERSION("0.1.3");

Module version is defined by kernel commit hash. But it's up to you and
subsystem maintainer to decide.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
