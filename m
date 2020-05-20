Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D23491DB01B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 12:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NaEPk6NHLuR2VOue4jL6hmWPDoEUvX7LFz5Etu2WtCc=; b=DRh7lzacHzipwn
	cLIFBv25G7vc/eOWMJ+KDltARymRpo9aX/0OmEvzRywEVe9MKdIUh62Mx8JyErY4bnY6+l/NQc8uA
	eXtmVUQIE4rXDT8dJYtOAbwEOviQ8LwThF1NrLIlU9brPGAGGufuT1/z6zCqJvDwFk7ljEm2gHpZC
	j+CE9ybCQPWG59Bc2vbjNMSOr/Zkn1Xbmtl7GL2vRr3cF/72GWoVVPY6ect3bJXxge5US0BbsYefp
	IwAJx6ht86UPSs4EbZgrePURve3z2w2LBl99KIpT8kJuNrna08bvgGF7Nt5EM3rBzKE7msrUQR0gb
	AqH+rj6guY62QPp7bxZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLvF-0001km-C4; Wed, 20 May 2020 10:26:01 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLuC-0007Lu-Mn
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 10:24:59 +0000
IronPort-SDR: i7H1MCZRkSt8geEvA1QTY9oxJ+iGo7yyam1JUC1euousRQRGrCVYCdNnWbUSGqJJ3xw0Ex0CDG
 UrCqr6+gZ6uw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 03:24:53 -0700
IronPort-SDR: Nhksymg73kKZB1ULTIzriSwEHijsFG3lboDHBnmMS2BN0DW2yzcwXvhIDWAJqgHL4zldive+jM
 9zD0x8K4JzHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,413,1583222400"; d="scan'208";a="264633133"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003.jf.intel.com with ESMTP; 20 May 2020 03:24:49 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jbLu8-007omv-GV; Wed, 20 May 2020 13:24:52 +0300
Date: Wed, 20 May 2020 13:24:52 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v11 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
Message-ID: <20200520102452.GP1634618@smile.fi.intel.com>
References: <20200520095113.185414-1-tali.perry1@gmail.com>
 <20200520095113.185414-3-tali.perry1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520095113.185414-3-tali.perry1@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_032456_915640_3FD42756 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

On Wed, May 20, 2020 at 12:51:12PM +0300, Tali Perry wrote:
> Add Nuvoton NPCM BMC I2C controller driver.

...

> +#ifdef CONFIG_DEBUG_FS

Why?!

> +#include <linux/debugfs.h>
> +#endif


...

> +/* Status of one I2C module */
> +struct npcm_i2c {
> +	struct i2c_adapter adap;

> +	struct device *dev;

Isn't it adap.dev->parent?

> +};

...

> +static void npcm_i2c_master_abort(struct npcm_i2c *bus)
> +{
> +	/* Only current master is allowed to issue a stop condition */

> +	if (npcm_i2c_is_master(bus)) {

	if (!npcm_i2c_is_master(bus))
		return;

?

> +		npcm_i2c_eob_int(bus, true);
> +		npcm_i2c_master_stop(bus);
> +		npcm_i2c_clear_master_status(bus);
> +	}
> +}

...

> +/* SDA status is set - TX or RX, master */
> +static void npcm_i2c_irq_handle_sda(struct npcm_i2c *bus, u8 i2cst)
> +{
> +	u8 fif_cts;

> +	if (bus->state == I2C_IDLE) {
> +		if (npcm_i2c_is_master(bus)) {

	if (a) {
		if (b) {
			...
		}
	}

==

	if (a && b) {
		...
	}

Check whole code for such pattern.

> +		}
> +
> +	/* SDA interrupt, after start\restart */
> +	} else {
> +		if (NPCM_I2CST_XMIT & i2cst) {
> +			bus->operation = I2C_WRITE_OPER;
> +			npcm_i2c_irq_master_handler_write(bus);
> +		} else {
> +			bus->operation = I2C_READ_OPER;
> +			npcm_i2c_irq_master_handler_read(bus);
> +		}
> +	}
> +}

...


> +	}
> +

+ /* 1MHz */ ?

> +	else if (bus_freq_hz <= I2C_MAX_FAST_MODE_PLUS_FREQ) {

> +	}
> +
> +	/* Frequency larger than 1 MHZ is not supported */
> +	else
> +		return -EINVAL;

...

> +	// master and slave modes share a single irq.

It's again being inconsistent with comment style. Choose one and fix all
comments accordingly (SPDX is another story, though)

...

> +static int i2c_debugfs_get(void *data, u64 *val)
> +{
> +	*val = *(u64 *)(data);
> +	return 0;
> +}
> +DEFINE_DEBUGFS_ATTRIBUTE(i2c_debugfs_ops, i2c_debugfs_get, NULL, "0x%02llx\n");

Why not to use debugfs_create_u64(), or how is it called?

> +static void i2c_init_debugfs(struct platform_device *pdev, struct npcm_i2c *bus)
> +{
> +	if (!npcm_i2c_debugfs_dir)
> +		return;
> +

> +	if (!pdev || !bus)
> +		return;

How is it possible?

> +	bus->debugfs = debugfs_create_dir(dev_name(&pdev->dev),
> +					  npcm_i2c_debugfs_dir);
> +	if (IS_ERR_OR_NULL(bus->debugfs)) {
> +		bus->debugfs = NULL;
> +		return;
> +	}

	struct dentry *d;

	d = create(...);
	if (IS_ERR_OR_NULL(d))
		return;

	bus->... = d;

> +
> +	debugfs_create_file("ber_count", 0444, bus->debugfs,
> +			    &bus->ber_count,
> +			    &i2c_debugfs_ops);
> +
> +	debugfs_create_file("rec_succ_count", 0444, bus->debugfs,
> +			    &bus->rec_succ_count,
> +			    &i2c_debugfs_ops);
> +
> +	debugfs_create_file("rec_fail_count", 0444, bus->debugfs,
> +			    &bus->rec_fail_count,
> +			    &i2c_debugfs_ops);
> +
> +	debugfs_create_file("nack_count", 0444, bus->debugfs,
> +			    &bus->nack_count,
> +			    &i2c_debugfs_ops);
> +
> +	debugfs_create_file("timeout_count", 0444, bus->debugfs,
> +			    &bus->timeout_count,
> +			    &i2c_debugfs_ops);
> +}

...

> +#ifdef CONFIG_DEBUG_FS

Why?!

> +	i2c_init_debugfs(pdev, bus);
> +#endif

...

> +#ifdef CONFIG_DEBUG_FS

Ditto.

> +	debugfs_remove_recursive(bus->debugfs);
> +#endif

> +static int __init npcm_i2c_init(void)
> +{

> +	npcm_i2c_debugfs_dir = debugfs_create_dir("i2c", NULL);

You didn't compile this with !CONFIG_DEBUG_FS?

> +	if (IS_ERR_OR_NULL(npcm_i2c_debugfs_dir)) {
> +		pr_warn("i2c init of debugfs failed\n");
> +		npcm_i2c_debugfs_dir = NULL;
> +	}

See above for the better pattern. Why do you need noisy warning? What does it
say to user? Can they use device or not?

> +	return 0;
> +}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
